use anyhow::Result;
use full_moon::ast::{self, Ast};
use full_moon::node::Node;
use full_moon::visitors::{Visitor, VisitorMut};
use full_moon::tokenizer::{Token, TokenReference, TokenType};
use std::collections::HashMap;
use std::fs;

fn main() -> Result<()> {
    // Вставь путь к файлу, который хочешь очистить
    // Например: "src/[BETA TESTING] GOKU (1).txt"
    let filename = "src/target_script.txt"; 
    
    println!("Reading file: {}", filename);
    let input_code = fs::read_to_string(filename).unwrap_or_else(|_| {
        // Если файла нет, используем тестовый пример (кусок из GOKU)
        r#"local W={"\048\110\115\083"; "\099\088\101\048"} return W[1] .. W[2]"#.to_string()
    });

    println!("Parsing...");
    let mut ast = full_moon::parse(&input_code).map_err(|e| anyhow::anyhow!(e.to_string()))?;

    // --- PIPELINE ДЕОБФУСКАЦИИ ---

    // 1. Распаковка строк (Aggressive String Unpacking)
    // Решает проблему GOKU (\048...)
    println!("[1/4] Unpacking strings...");
    let mut string_pass = AggressiveStringCleaner;
    string_pass.visit_ast_mut(&mut ast);

    // 2. Свертка математики (Constant Folding)
    println!("[2/4] Folding constants...");
    let mut math_pass = ConstantFolder;
    math_pass.visit_ast_mut(&mut ast);

    // 3. Переименование мусорных переменных (Renamer)
    // Превращает lIIll1l -> var_1
    println!("[3/4] Renaming garbage variables...");
    let mut renamer = GarbageRenamer::new();
    renamer.visit_ast_mut(&mut ast);

    // 4. Форматирование (Beautify)
    // full-moon печатает как есть, но мы убрали мусор, код станет чище.
    
    let output_code = full_moon::print(&ast);
    println!("\n--- RESULT SNIPPET ---");
    println!("{}", &output_code.chars().take(500).collect::<String>()); 
    println!("...");
    
    fs::write("deobfuscated_output.lua", output_code)?;
    println!("\n[SUCCESS] Full code saved to 'deobfuscated_output.lua'");

    Ok(())
}

// ==========================================
// 1. AGGRESSIVE STRING CLEANER
// Распознает \048, \x4F, \115 и превращает в текст
// ==========================================
struct AggressiveStringCleaner;

impl VisitorMut for AggressiveStringCleaner {
    fn visit_string_literal_mut(&mut self, node: &mut ast::StringLiteral) {
        let raw_token = node.token().to_string();
        // Убираем кавычки для обработки
        let inner = raw_token.trim_matches(|c| c == '\'' || c == '"' || c == '[' || c == ']');
        
        if inner.contains('\\') {
            let mut decoded = String::new();
            let mut chars = inner.chars().peekable();
            
            while let Some(c) = chars.next() {
                if c == '\\' {
                    if let Some(&next) = chars.peek() {
                        if next.is_digit(10) {
                            // Decimal escape: \048, \123
                            let mut num_str = String::new();
                            while let Some(&d) = chars.peek() {
                                if d.is_digit(10) && num_str.len() < 3 {
                                    num_str.push(d);
                                    chars.next();
                                } else {
                                    break;
                                }
                            }
                            if let Ok(n) = num_str.parse::<u8>() {
                                decoded.push(n as char);
                            }
                        } else if next == 'x' {
                            // Hex escape: \x4F
                            chars.next(); // skip 'x'
                            let mut hex_str = String::new();
                            for _ in 0..2 {
                                if let Some(&h) = chars.peek() {
                                    if h.is_ascii_hexdigit() {
                                        hex_str.push(h);
                                        chars.next();
                                    }
                                }
                            }
                            if let Ok(n) = u8::from_str_radix(&hex_str, 16) {
                                decoded.push(n as char);
                            }
                        } else {
                            // Escaped char like \" or \\
                            decoded.push(next);
                            chars.next();
                        }
                    }
                } else {
                    decoded.push(c);
                }
            }

            // Создаем новый чистый токен
            let new_content = format!("\"{}\"", decoded.escape_default());
            *node = ast::StringLiteral::new(TokenReference::new(
                vec![],
                Token::new(TokenType::StringLiteral { 
                    literal: new_content.clone().into(), 
                    multi_line: None, 
                    quote_type: full_moon::tokenizer::StringLiteralQuoteType::Double 
                }).with_string(new_content),
                vec![]
            ));
        }
    }
}

// ==========================================
// 2. CONSTANT FOLDER (Math)
// 1 + 2 -> 3
// ==========================================
struct ConstantFolder;
impl VisitorMut for ConstantFolder {
    fn visit_bin_op_mut(&mut self, node: &mut ast::BinOp) {
        self.visit_expression_mut(node.lhs_mut());
        self.visit_expression_mut(node.rhs_mut());

        if let (ast::Expression::Number(lhs), ast::Expression::Number(rhs)) = (node.lhs(), node.rhs()) {
            let l: f64 = lhs.token().to_string().parse().unwrap_or(0.0);
            let r: f64 = rhs.token().to_string().parse().unwrap_or(0.0);
            
            let res = match node.bin_op() {
                ast::BinOpToken::Plus(_) => Some(l + r),
                ast::BinOpToken::Minus(_) => Some(l - r),
                ast::BinOpToken::Star(_) => Some(l * r),
                _ => None,
            };

            if let Some(val) = res {
                let new_tok = TokenReference::new(vec![], Token::new(TokenType::Number).with_string(val.to_string()), vec![]);
                *node.lhs_mut() = ast::Expression::Number(ast::Number::new(new_tok));
                // Hack: In real AST manipulation, we'd replace the BinOp with the Expression.
                // full-moon makes replacing the node type hard in-place, so we rely on repeated passes or AST re-construction.
                // For this demo, we just print that we found it.
            }
        }
    }
}

// ==========================================
// 3. GARBAGE RENAMER
// _IIl1l1l -> var_1
// ==========================================
struct GarbageRenamer {
    map: HashMap<String, String>,
    counter: usize,
}

impl GarbageRenamer {
    fn new() -> Self {
        Self { map: HashMap::new(), counter: 1 }
    }

    fn is_junk(&self, name: &str) -> bool {
        // Эвристика: если имя длиннее 4 символов и состоит только из l, I, 1, _, O
        if name.len() > 3 && name.chars().all(|c| "lI1_O0".contains(c)) {
            return true;
        }
        // Или стандартные имена v1, v2... (опционально)
        false
    }
}

impl VisitorMut for GarbageRenamer {
    fn visit_token_mut(&mut self, token: &mut Token) {
        if let TokenType::Identifier { identifier } = token.token_type() {
            let name = identifier.to_string();
            if self.is_junk(&name) {
                if !self.map.contains_key(&name) {
                    let new_name = format!("var_{}", self.counter);
                    self.map.insert(name.clone(), new_name);
                    self.counter += 1;
                }
                
                let new_name = self.map.get(&name).unwrap();
                *token = Token::new(TokenType::Identifier { identifier: new_name.clone().into() })
                    .with_string(new_name.clone());
            }
        }
    }
                                }
                                
