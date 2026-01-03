-- ts file was generated at discord.gg/25ms


Ignore = "\r\n--/ run speed \\\\--\r\ngetgenv().RunSpeed = 100\r\n\r\n--/ jump power while running \\\\--\r\ngetgenv().RunJump = 100\r\n\r\n--/ instant kill (first and second skill) \\\\--\r\ngetgenv().InstaKill = false\r\n\r\n--/ chance to revive after dying (100% in this case) \\\\--\r\ngetgenv().RevivePercent = 100\r\n\r\n--// walk anim \\\\\\--\r\ngetgenv().ChangeWalk = true\r\n\r\n--/ idle anim \\\\--\r\ngetgenv().ChangeIdle = true\r\n\r\n--/ night time \\\\--\r\ngetgenv().Night = true\r\n\r\n--/ side dash no cooldown \\\\--\r\ngetgenv().DashNoCooldown = true\r\n\r\n--/ extra skills \\\\--\r\ngetgenv().ExtraSkills = true\r\n"
function execute()
    local vu1 = true
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
        Text = "\239\191\189\239\191\189\229\189\161 Made by friedpotatomatoe \229\189\161\226\152\133. \n\n Just find me on Discord, I can make you your own private moveset for some $",
        Color = Color3.fromRGB(0, 255, 127),
        Font = Enum.Font.GothamBlack,
        FontSize = Enum.FontSize.Size48
    })
    if getgenv().RunSpeed == nil then
        getgenv().RunSpeed = 100
    end
    if getgenv().RunJump == nil then
        getgenv().RunJump = 100
    end
    if getgenv().InstaKill == nil then
        getgenv().InstaKill = true
    end
    if getgenv().RevivePercent == nil then
        getgenv().RevivePercent = 0
    end
    if getgenv().ChangeWalk == nil then
        getgenv().ChangeWalk = true
    end
    if getgenv().ChangeIdle == nil then
        getgenv().ChangeIdle = true
    end
    if getgenv().Night == nil then
        getgenv().Night = false
    end
    if getgenv().DashNoCooldown == nil then
        getgenv().DashNoCooldown = true
    end
    if getgenv().ExtraSkills == nil then
        getgenv().ExtraSkills = true
    end
    function LoadModel(p2)
        return game:GetObjects("rbxassetid://" .. tostring(p2))[1]
    end
    if getgenv().Night == true then
        local vu3 = game:GetService("Lighting")
        local vu4 = {
            vu3.TimeOfDay,
            vu3.Ambient,
            vu3.OutdoorAmbient,
            vu3.FogColor,
            vu3.FogStart,
            vu3.FogEnd
        }
        vu3.TimeOfDay = "2:00:00"
        local vu6 = vu3.Changed:Connect(function(p5)
            if p5 == "TimeOfDay" and vu3.TimeOfDay ~= "2:00:00" then
                vu3.TimeOfDay = "2:00:00"
            end
        end)
        vu3.Ambient = Color3.fromRGB(120, 120, 120)
        vu3.OutdoorAmbient = Color3.fromRGB(80, 80, 80)
        vu3.FogColor = Color3.fromRGB(100, 100, 100)
        vu3.FogStart = 0
        vu3.FogEnd = 500
        local vu7 = LoadModel(8744860436)
        vu7.CelestialBodiesShown = true
        vu7.MoonAngularSize = 30
        vu7.SunAngularSize = 20
        vu7.StarCount = 5000
        vu7.Parent = vu3
        task.spawn(function()
            repeat
                task.wait(0.2)
            until not vu1
            vu6:Disconnect()
            vu3.TimeOfDay = vu4[1]
            vu3.Ambient = vu4[2]
            vu3.OutdoorAmbient = vu4[3]
            vu3.FogColor = vu4[4]
            vu3.FogStart = vu4[5]
            vu3.FogEnd = vu4[6]
            vu7:Destroy()
        end)
    end
    function GetGitSoundID(p8, p9)
        local v10 = "sounds/" .. p9 .. ".mp3"
        if not isfile(v10) then
            writefile(v10, game:HttpGet(p8))
        end
        return (getcustomasset or getsynasset)(v10)
    end
    local v11, _ = pcall(function()
        GetGitSoundID("https://github.com/yes1nt/yes/raw/refs/heads/main/CHAINSAW%20MAN/GRUNT%201.mp3", "Chainsaw Man Hit1")
    end)
    if not v11 then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Skill Issue Detected",
            Text = "Bruh, your executor is trash. Upgrade ASAP. Some sounds will not work",
            Duration = 10
        })
        function GetGitSoundID()
            return ""
        end
    end
    RespawnSFX = GetGitSoundID("https://github.com/yes1nt/yes/raw/refs/heads/main/CHAINSAW%20MAN/Chainsaw%20Man%20Respawn.mp3", "Chainsaw Man Respawn")
    Hit1SFX = GetGitSoundID("https://github.com/yes1nt/yes/raw/refs/heads/main/CHAINSAW%20MAN/GRUNT%201.mp3", "Chainsaw Man Hit1")
    Hit2SFX = GetGitSoundID("https://github.com/yes1nt/yes/raw/refs/heads/main/CHAINSAW%20MAN/GRUNT%202.mp3", "Chainsaw Man Hit2")
    Scream1SFX = GetGitSoundID("https://github.com/yes1nt/yes/raw/refs/heads/main/CHAINSAW%20MAN/SCREAM%201.mp3", "Chainsaw Man Scream")
    LaughSFX = GetGitSoundID("https://github.com/yes1nt/yes/raw/refs/heads/main/CHAINSAW%20MAN/Chainsaw%20man%20Laugh.mp3", "Chainsaw Man Laugh")
    LoadedChainsawManModel = LoadModel(11720660151)
    LoadedChainsawManModel.Parent = game:GetService("ReplicatedStorage")
    function MorphToChainsawMan()
        task.spawn(function()
            local v12 = LoadedChainsawManModel:Clone()
            local v13, v14, v15 = pairs(Character:GetDescendants())
            local v16 = {
                Accessory = true,
                Shirt = true,
                Pants = true,
                CharacterMesh = true,
                BodyColors = true
            }
            while true do
                local v17
                v15, v17 = v13(v14, v15)
                if v15 == nil then
                    break
                end
                if v16[v17.ClassName] then
                    v17:Destroy()
                end
            end
            local v18 = Character.Head:FindFirstChild("face")
            if v18 then
                v18:Destroy()
            end
            local v19, v20, v21 = pairs(Character:GetDescendants())
            while true do
                local v22
                v21, v22 = v19(v20, v21)
                if v21 == nil then
                    break
                end
                if v22:IsA("BasePart") then
                    v22.Transparency = 1
                    v22.Anchored = true
                end
            end
            v12.Parent = Character
            local v23, v24, v25 = pairs(v12:GetDescendants())
            local function v29(p26, p27)
                local v28 = Instance.new("WeldConstraint")
                v28.Part0 = p26
                v28.Part1 = p27
                v28.Parent = p26
            end
            while true do
                local v30
                v25, v30 = v23(v24, v25)
                if v25 == nil then
                    break
                end
                if v30:IsA("BasePart") then
                    v30.Massless = true
                    v30.Anchored = false
                    v30.CanCollide = false
                end
            end
            local v31 = {
                v12.Head,
                v12["Left Arm"],
                v12["Right Arm"],
                v12["Left Leg"],
                v12["Right Leg"],
                v12.Torso
            }
            local v32, v33, v34 = pairs(v31)
            while true do
                local v35
                v34, v35 = v32(v33, v34)
                if v34 == nil then
                    break
                end
                local v36, v37, v38 = pairs(v35:GetDescendants())
                while true do
                    local v39
                    v38, v39 = v36(v37, v38)
                    if v38 == nil then
                        break
                    end
                    if v39:IsA("BasePart") then
                        v29(v35, v39)
                    end
                end
            end
            local function v43(p40, p41)
                p41.CFrame = p40.CFrame
                p41.Parent = p40
                local v42 = Instance.new("WeldConstraint")
                v42.Part0 = p40
                v42.Part1 = p41
                v42.Parent = p40
            end
            v43(Character.Head, v12.Head)
            v43(Character["Left Arm"], v12["Left Arm"])
            v43(Character["Right Arm"], v12["Right Arm"])
            v43(Character["Left Leg"], v12["Left Leg"])
            v43(Character["Right Leg"], v12["Right Leg"])
            v43(Character.Torso, v12.Torso)
            v12:Destroy()
            local v44, v45, v46 = pairs(Character:GetDescendants())
            while true do
                local v47
                v46, v47 = v44(v45, v46)
                if v46 == nil then
                    break
                end
                if v47:IsA("BasePart") then
                    v47.Anchored = false
                end
            end
            local v48 = {
                Character["Left Arm"]["Left Arm"],
                Character["Right Arm"]["Right Arm"]
            }
            local v49 = {
                Character["Left Leg"]["Left Leg"],
                Character["Right Leg"]["Right Leg"]
            }
            local v50, v51, v52 = pairs(v48)
            while true do
                local v53
                v52, v53 = v50(v51, v52)
                if v52 == nil then
                    break
                end
                v53.Size = v53.Size * 0.9
            end
            local v54, v55, v56 = pairs(v49)
            while true do
                local v57
                v56, v57 = v54(v55, v56)
                if v56 == nil then
                    break
                end
                v57.Size = v57.Size * 0.7
            end
            task.spawn(function()
                local vu58 = false
                Character.Humanoid.Died:Connect(function()
                    vu58 = true
                end)
                while not vu58 and task.wait() do
                    if Character:FindFirstChild("Left Arm") and Character:FindFirstChild("Left Arm").Transparency ~= 1 then
                        Character:FindFirstChild("Left Arm").Transparency = 1
                    end
                    if Character:FindFirstChild("Right Arm") and Character:FindFirstChild("Right Arm").Transparency ~= 1 then
                        Character:FindFirstChild("Right Arm").Transparency = 1
                    end
                    if Character:FindFirstChild("Head") and Character:FindFirstChild("Head").Transparency ~= 1 then
                        Character:FindFirstChild("Head").Transparency = 1
                    end
                end
            end)
            Character.Torso.Torso.Size = Character.Torso.Torso.Size * 0.9
        end)
    end
    function Start()
        Players = game:GetService("Players")
        LocalPlayer = Players.LocalPlayer
        Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        Backpack = LocalPlayer:WaitForChild("Backpack")
        RunService = game:GetService("RunService")
        repeat
            task.wait()
        until Character:FindFirstChild("Humanoid")
        function ChangePos(p59, p60)
            p59.CFrame = p59.CFrame - p59.CFrame.Position + Vector3.new(p60.X, p60.Y, p60.Z)
        end
        function FixCam()
            FixingCamera = true
            local function v61()
                workspace.CurrentCamera:Destroy()
            end
            setfenv(v61, getgenv())
            v61()
            task.wait()
            task.wait()
            local function v64()
                local v62 = game.Players.LocalPlayer
                local v63 = v62.Character or v62.CharacterAdded:Wait()
                workspace.CurrentCamera.CameraSubject = v63:WaitForChild("Humanoid")
                workspace.CurrentCamera.CameraType = Enum.CameraType.Track
                v62.CameraMinZoomDistance = 0.5
                v62.CameraMaxZoomDistance = 400
            end
            setfenv(v64, getgenv())
            v64()
            FixingCamera = false
        end
        function FixCam()
        end
        function UnfreezeCam()
            while FixingCamera do
                task.wait()
            end
            game.Workspace.CurrentCamera.CameraSubject = Character.Humanoid
        end
        function FreezeCam(p65)
            while FixingCamera do
                task.wait()
            end
            local v66 = Instance.new("Part")
            v66.Parent = workspace
            v66.CFrame = p65 or Character.Head.CFrame
            game.Workspace.CurrentCamera.CameraSubject = v66
            v66:Destroy()
        end
        function AddBlockAim()
            return Character.Humanoid.Animator.AnimationPlayed:Connect(function(p67)
                if p67.Animation.AnimationId == "rbxassetid://10470389827" then
                    local vu68 = true
                    task.spawn(function()
                        while task.wait() and vu68 do
                            local v69 = GetClosestPlayer().HumanoidRootPart.Position
                            Character.HumanoidRootPart.CFrame = CFrame.lookAt(Character.HumanoidRootPart.Position, v69 + Vector3.new(0, Character.HumanoidRootPart.Position.Y - v69.Y, 0))
                        end
                    end)
                    p67.Stopped:Wait()
                    vu68 = false
                end
            end)
        end
        local vu70 = RunService
        local vu71 = nil
        local vu72 = {
            Vector3.new(0, 0.1, 0),
            Vector3.new(0, - 0.1, 0)
        }
        task.spawn(function()
            while not Dead do
                repeat
                    task.wait()
                until vu71 and vu71 ~= 0
                for v73 = 1, 2 do
                    vu70.Heartbeat:Wait()
                    local v74 = Character.HumanoidRootPart.Velocity
                    Character.HumanoidRootPart.Velocity = Character.HumanoidRootPart.CFrame.LookVector * vu71
                    vu70.RenderStepped:Wait()
                    Character.HumanoidRootPart.Velocity = v74
                    vu70.Stepped:Wait()
                    Character.HumanoidRootPart.Velocity = v74 + vu72[v73]
                end
            end
        end)
        task.spawn(function()
            local vu75 = false
            Character.Humanoid.Animator.AnimationPlayed:Connect(function(p76)
                if p76.Animation.AnimationId == "rbxassetid://13813955149" then
                    vu75 = true
                end
            end)
            while true do
                repeat
                    task.wait()
                until Character:FindFirstChild("Trash Can")
                local v77 = Character:FindFirstChild("Trash Can")
                repeat
                    task.wait()
                until vu75 == true
                vu71 = strength
                repeat
                    task.wait()
                until not Character:FindFirstChild(v77.Name)
                vu71 = 0
                vu75 = false
            end
        end)
        function AddTrashcanStrength(p78)
            strength = p78
        end
        function ChangeMeshID(pu79, pu80)
            task.spawn(function()
                pcall(function()
                    local v81 = game:GetService("InsertService"):CreateMeshPartAsync(pu80, pu79.CollisionFidelity, pu79.RenderFidelity)
                    pu79:ApplyMesh(v81)
                    task.wait(1)
                    v81:destroy()
                end)
            end)
        end
        function M1()
            pcall(function()
                local function v84(p82)
                    local v83 = {
                        {
                            Goal = p82,
                            Mobile = true
                        }
                    }
                    game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(v83))
                end
                v84("LeftClick")
                v84("LeftClickRelease")
            end)
        end
        function PlayAnimation(p85, p86, p87, p88)
            PlayedAnimation = true
            local vu89 = p88 or false
            local v90 = Instance.new("Animation")
            v90.AnimationId = p85
            local vu91 = Character.Humanoid.Animator:LoadAnimation(v90)
            vu91:Play()
            vu91.TimePosition = p87 or 0
            vu91:AdjustSpeed(p86 or 1)
            if vu89 then
                task.spawn(function()
                    task.wait(vu89)
                    vu91:Stop()
                end)
            end
            PlayedAnimation = false
            return vu91
        end
        function StopAllAnimation(p92)
            local v93, v94, v95 = pairs(Character.Humanoid:GetPlayingAnimationTracks())
            while true do
                local v96
                v95, v96 = v93(v94, v95)
                if v95 == nil then
                    break
                end
                if v96.Animation.AnimationId ~= p92 then
                    v96:Stop()
                end
            end
        end
        function StopAnimation(p97)
            local v98, v99, v100 = pairs(Character.Humanoid:FindFirstChildOfClass("Animator"):GetPlayingAnimationTracks())
            while true do
                local v101
                v100, v101 = v98(v99, v100)
                if v100 == nil then
                    break
                end
                if v101.Animation.AnimationId == p97 then
                    v101:Stop()
                end
            end
        end
        function MoveModel(p102, p103)
            local v104 = Vector3.new(p103.X, p103.Y, p103.Z)
            local v105, v106, v107 = pairs(p102:GetDescendants())
            local v108 = {}
            while true do
                local v109
                v107, v109 = v105(v106, v107)
                if v107 == nil then
                    break
                end
                if v109:IsA("BasePart") then
                    table.insert(v108, v109)
                end
            end
            if # v108 ~= 0 then
                local v110 = v108[1].Position
                local v111, v112, v113 = pairs(v108)
                while true do
                    local v114
                    v113, v114 = v111(v112, v113)
                    if v113 == nil then
                        break
                    end
                    v114.CFrame = v114.CFrame - v110 + v104
                end
            end
        end
        function LoadModel(p115)
            return game:GetObjects("rbxassetid://" .. tostring(p115))[1]
        end
        function makeclone(p116, p117)
            local vu118 = game.Players.LocalPlayer.Character:Clone()
            vu118.Parent = workspace
            local v119 = p116 or game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            vu118.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
            vu118.HumanoidRootPart.CFrame = v119
            vu118.HumanoidRootPart.Anchored = true
            if p117 then
                local v120, v121, v122 = pairs(Character.Humanoid:GetPlayingAnimationTracks())
                while true do
                    local vu123
                    v122, vu123 = v120(v121, v122)
                    if v122 == nil then
                        break
                    end
                    local v124 = vu123.Animation.AnimationId
                    local v125 = vu118.Humanoid.Animator
                    local v126 = Instance.new("Animation")
                    v126.AnimationId = v124
                    local vu127 = v125:LoadAnimation(v126)
                    local v128 = vu127
                    vu127.Play(v128)
                    local vu129 = true
                    task.spawn(function()
                        while task.wait() and vu129 do
                            if math.abs(vu127.TimePosition - vu123.TimePosition) > 0.1 then
                                vu127.TimePosition = vu123.TimePosition
                            end
                            if vu127.Speed ~= vu123.Speed then
                                vu127:AdjustSpeed(vu123.Speed)
                            end
                        end
                    end)
                    vu123.Stopped:Connect(function()
                        vu127:Stop()
                        vu129 = false
                    end)
                end
                local vu137 = game.Players.LocalPlayer.Character.Humanoid.Animator.AnimationPlayed:Connect(function(pu130)
                    local v131 = pu130.Animation.AnimationId
                    local v132 = vu118.Humanoid.Animator
                    local v133 = Instance.new("Animation")
                    v133.AnimationId = v131
                    local vu134 = v132:LoadAnimation(v133)
                    local v135 = vu134
                    vu134.Play(v135)
                    local vu136 = true
                    task.spawn(function()
                        while task.wait() and vu136 do
                            if math.abs(vu134.TimePosition - pu130.TimePosition) > 0.1 then
                                vu134.TimePosition = pu130.TimePosition
                            end
                            if vu134.Speed ~= pu130.Speed then
                                vu134:AdjustSpeed(pu130.Speed)
                            end
                        end
                    end)
                    pu130.Stopped:Connect(function()
                        vu134:Stop()
                        vu136 = false
                    end)
                end)
                vu118.Destroying:Once(function()
                    vu137:Disconnect()
                end)
            end
            return vu118
        end
        function Dialogue(p138, pu139, p140, pu141, p142, p143, p144, p145)
            local v146 = p145 or Vector3.new(0, 0, 0)
            local v147 = Instance.new("Part")
            v147.Size = Vector3.new(1, 1, 1)
            v147.Transparency = 1
            v147.Massless = true
            v147.CanCollide = false
            v147.Anchored = false
            v147.Parent = p138.Character
            local v148 = p138.Character:FindFirstChild("Head")
            if v148 then
                v147.CFrame = v148.CFrame
                local v149 = Instance.new("WeldConstraint")
                v149.Part0 = v147
                v149.Part1 = v148
                v149.Parent = v147
            end
            local v150 = Instance.new("BillboardGui")
            v150.Size = UDim2.new(0, 30 * p140, 0, 50)
            v150.StudsOffset = v146 or Vector3.new(0, 0, 0) + Vector3.new(0, 3, 0)
            v150.Adornee = v147
            v150.Parent = v147
            local vu151 = Instance.new("TextLabel")
            vu151.Size = UDim2.new(1, 0, 1, 0)
            vu151.BackgroundTransparency = 1
            vu151.Text = ""
            vu151.TextScaled = true
            vu151.TextWrapped = true
            vu151.Font = p144 or Enum.Font.SourceSans
            vu151.TextColor3 = p143 or Color3.new(1, 1, 1)
            vu151.TextSize = 100
            vu151.Parent = v150
            task.spawn(function()
                for v152 = 1, # pu139 do
                    vu151.Text = pu139:sub(1, v152)
                    task.wait(pu141)
                end
            end)
            game:GetService("Debris"):AddItem(v147, p142)
        end
        function PlaySound(p153, p154, p155, p156, p157)
            local vu158 = Instance.new("Sound")
            vu158.SoundId = p153
            vu158.PlaybackSpeed = p154 or 1
            vu158.Volume = p155 or 1
            local vu159 = Instance.new("Part")
            vu159.Anchored = true
            vu159.CanCollide = false
            vu159.Transparency = 1
            local v160 = workspace
            if p156 then
                vu159.CFrame = p156
                vu159.Parent = workspace
                v160 = vu159
            end
            vu158.TimePosition = p157 or 0
            vu158.Parent = v160
            vu158:Play()
            vu158.Ended:Connect(function()
                vu158:Destroy()
                vu159:Destroy()
            end)
            return vu158
        end
        function GetGitSoundID(p161, p162)
            local v163 = "sounds/" .. p162 .. ".mp3"
            if not isfile(v163) then
                writefile(v163, game:HttpGet(p161))
            end
            return (getcustomasset or getsynasset)(v163)
        end
        function GetClosestPlayer()
            local v164 = math.huge
            local v165 = next
            local v166, v167 = game.Workspace.Live:GetChildren()
            local v168 = nil
            while true do
                local v169
                v167, v169 = v165(v166, v167)
                if v167 == nil then
                    break
                end
                if v169.Name ~= LocalPlayer.Name and (v169:FindFirstChild("HumanoidRootPart") ~= nil and (v169:FindFirstChild("Humanoid") ~= nil and v169:FindFirstChild("Humanoid").Health > 0)) then
                    local v170 = (v169.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
                    if v170 < v164 then
                        v168 = v169
                        v164 = v170
                    end
                end
            end
            return v168
        end
        animationCallbacks = {}
        game.Players.LocalPlayer.Character.Humanoid.Animator.AnimationPlayed:Connect(function(p171)
            local v172 = p171.Animation.AnimationId
            if animationCallbacks[v172] and not PlayedAnimation then
                animationCallbacks[v172](p171)
            end
        end)
        function AddFunctionToAnimation(p173, p174)
            animationCallbacks[p173] = p174
        end
        soundCallbacks = {}
        trackedServices = {
            workspace,
            Players,
            game:GetService("ReplicatedStorage")
        }
        local v175, v176, v177 = pairs(trackedServices)
        local vu178 = {}
        while true do
            local v179
            v177, v179 = v175(v176, v177)
            if v177 == nil then
                break
            end
            local v182 = v179.DescendantAdded:Connect(function(p180)
                if p180:IsA("Sound") then
                    local v181 = p180.SoundId
                    if soundCallbacks[v181] and not PlayedSound then
                        task.wait()
                        soundCallbacks[v181](p180)
                    end
                end
            end)
            table.insert(vu178, v182)
        end
        Character.Humanoid.Died:Once(function()
            local v183, v184, v185 = pairs(vu178)
            while true do
                local vu186
                v185, vu186 = v183(v184, v185)
                if v185 == nil then
                    break
                end
                if vu186.Connected then
                    pcall(function()
                        vu186:Disconnect()
                    end)
                end
            end
            table.clear(vu178)
        end)
        function AddFunctionToSound(p187, p188)
            soundCallbacks[p187] = p188
        end
        function ChangeSkillName(p189, p190, p191)
            local v192, v193, v194 = pairs(LocalPlayer.PlayerGui.Hotbar.Backpack.Hotbar:GetChildren())
            while true do
                local v195
                v194, v195 = v192(v193, v194)
                if v194 == nil then
                    break
                end
                if v195:FindFirstChild("Base") and (v195.Base:FindFirstChild("ToolName") and v195.Base.ToolName.Text == p189) then
                    if p190 then
                        v195.Base.ToolName.Text = p190
                    end
                    if p191 then
                        v195.Base.Reuse.Visible = true
                        v195.Base.Reuse.Text = p191
                        v195.Base.Reuse.Reuse.Text = p191
                    elseif p191 == false then
                        v195.Base.Reuse.Visible = false
                    end
                end
            end
        end
        local vu196 = LoadModel(15377532492)
        vu196.PebblesParticles:Destroy()
        local vu197 = LoadModel(17099551823)
        vu197.Transparency = 1
        vu197.CanCollide = false
        vu197.Massless = true
        function AddRunningVfx(p198, p199)
            local function vu203(p200, p201)
                local v202 = Instance.new("WeldConstraint")
                v202.Part0 = p200
                v202.Part1 = p201
                v202.Parent = p200
            end
            local function v210(p204, p205)
                if p204:IsA("BasePart") then
                    vu203(p205, p204)
                end
                local v206, v207, v208 = pairs(p204:GetDescendants())
                while true do
                    local v209
                    v208, v209 = v206(v207, v208)
                    if v208 == nil then
                        break
                    end
                    if v209:IsA("BasePart") then
                        vu203(p205, v209)
                    end
                end
            end
            local v211 = Instance.new("Model", p198)
            v211.Name = "Run Vfx"
            local v212 = vu203
            local function v214(p213)
                return p213:Clone()
            end
            for _ = 1, 3 do
                local v215 = v214(vu196)
                MoveModel(v215, p198.HumanoidRootPart.CFrame - Vector3.new(0, 2, 0))
                v215.Parent = v211
                v210(v215, p198.HumanoidRootPart)
            end
            if p199 then
                local v216 = v214(vu197)
                v216.CFrame = p198.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(270), 0, 0) + p198.HumanoidRootPart.CFrame.LookVector * 3
                v216.Parent = v211
                v212(v216, p198.HumanoidRootPart)
            end
            return v211
        end
        function CounterCounter()
            Character.Humanoid.Animator.AnimationPlayed:Connect(function(p217)
                if p217.Animation.AnimationId == "rbxassetid://11343250001" then
                    task.wait(0.2)
                    FixCam()
                    task.wait(3.8)
                    local v218 = tick()
                    local v219 = Character.HumanoidRootPart.CFrame
                    FreezeCam(v219)
                    while task.wait() and tick() - v218 < 4 do
                        local v220 = Vector3.new(69000000, - 500, 69000000)
                        Character.HumanoidRootPart.CFrame = CFrame.lookAt(v220, v220 + Vector3.new(0, 1, 0))
                        Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                    end
                    ChangePos(Character.HumanoidRootPart, v219)
                    Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                    UnfreezeCam()
                    game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Track
                end
            end)
        end
        function morphToChar(p221)
            if p221 then
                local v222, v223, v224 = pairs(Character:GetDescendants())
                local v225 = {
                    Accessory = true,
                    Shirt = true,
                    Pants = true,
                    CharacterMesh = true,
                    BodyColors = true
                }
                while true do
                    local v226
                    v224, v226 = v222(v223, v224)
                    if v224 == nil then
                        break
                    end
                    if v225[v226.ClassName] then
                        v226:Destroy()
                    end
                end
                local v227 = Character.Head:FindFirstChild("face")
                if v227 then
                    v227:Destroy()
                end
                local v228, v229, v230 = pairs(p221:GetChildren())
                while true do
                    local v231
                    v230, v231 = v228(v229, v230)
                    if v230 == nil then
                        break
                    end
                    if v231:IsA("Shirt") or (v231:IsA("Pants") or v231:IsA("BodyColors")) then
                        v231.Parent = Character
                    elseif v231:IsA("Accessory") then
                        Character.Humanoid:AddAccessory(v231)
                    elseif v231.Name == Character.Humanoid.RigType.Name then
                        local v232 = v231:FindFirstChildOfClass("CharacterMesh")
                        if v232 then
                            v232.Parent = Character
                        end
                    end
                end
                local v233 = p221:FindFirstChild("face")
                if v233 then
                    v233.Parent = Character.Head
                else
                    local v234 = Instance.new("Decal")
                    v234.Name = "face"
                    v234.Face = "Front"
                    v234.Texture = "rbxasset://textures/face.png"
                    v234.Parent = Character.Head
                end
                local v235 = Character.Parent
                local v236, v237, v238 = pairs(Character.HumanoidRootPart:GetChildren())
                while true do
                    local v239
                    v238, v239 = v236(v237, v238)
                    if v238 == nil then
                        break
                    end
                    if v239:IsA("BodyVelocity") then
                        v239:Destroy()
                    end
                end
                Character.Parent = nil
                Character.Parent = v235
            end
        end
        function Skill(p240, pu241, p242, pu243)
            local vu244 = Instance.new("Tool")
            vu244.Name = p240
            vu244.RequiresHandle = false
            vu244.Parent = Backpack
            vu244:SetAttribute("Cooldown", p242)
            local vu245 = nil
            local vu246 = nil
            local vu247 = p242 or 0
            local vu248 = LocalPlayer.PlayerGui.Hotbar.Backpack.LocalScript.Cooldown:Clone()
            if Backpack:GetAttribute("CustomSkills") == nil then
                Backpack:SetAttribute("CustomSkills", - 1)
            end
            Backpack:SetAttribute("CustomSkills", Backpack:GetAttribute("CustomSkills") + 1)
            for v249 = 1, 13 do
                local v250 = v249
                local v251 = LocalPlayer.PlayerGui.Hotbar.Backpack.Hotbar[tostring(v250)].Base.ToolName.Text
                if v251 == vu244.Name then
                    vu245 = LocalPlayer.PlayerGui.Hotbar.Backpack.Hotbar[tostring(v250)].Base
                    vu244.Name = vu244.Name .. "ID:" .. tostring(Backpack:GetAttribute("CustomSkills"))
                    LocalPlayer.PlayerGui.Hotbar.Backpack.Hotbar[tostring(v250)].Base.ToolName.Text = v251
                end
            end
            vu248.Parent = vu245.Parent
            vu248.Size = UDim2.new(1, 0, 0, 0)
            if Backpack:GetAttribute("CustomSkills") == nil then
                Backpack:SetAttribute("CustomSkills", - 1)
            end
            Backpack:SetAttribute("CustomSkills", Backpack:GetAttribute("CustomSkills") + 1)
            local vu252 = vu245.Activated:Connect(function()
                if not IPlacedThisForSpacing then
                    vu245.Overlay.Visible = false
                    if vu247 == 1234 or vu248.Size ~= UDim2.new(1, 0, 0, 0) then
                        if vu247 == 1234 then
                            if vu246 or vu248.Size ~= UDim2.new(1, 0, 0, 0) then
                                if vu246 and vu248.Size == UDim2.new(1, 0, - 1, 0) then
                                    vu246 = false
                                    pu243 = pu243 or 0.2
                                    vu248.Size = UDim2.new(1, 0, - 1, 0)
                                    game:GetService("TweenService"):Create(vu248, TweenInfo.new(pu243, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                                        Size = UDim2.new(1, 0, 0, 0)
                                    }):Play()
                                    pu241()
                                end
                            else
                                vu246 = true
                                vu248.Size = UDim2.new(1, 0, - 1, 0)
                                pu241()
                            end
                        end
                    else
                        vu248.Size = UDim2.new(1, 0, - 1, 0)
                        game:GetService("TweenService"):Create(vu248, TweenInfo.new(vu247, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                            Size = UDim2.new(1, 0, 0, 0)
                        }):Play()
                        pu241()
                    end
                end
            end)
            local function vu254(p253)
                return ({
                    Enum.KeyCode.Zero,
                    Enum.KeyCode.One,
                    Enum.KeyCode.Two,
                    Enum.KeyCode.Three,
                    Enum.KeyCode.Four,
                    Enum.KeyCode.Five,
                    Enum.KeyCode.Six,
                    Enum.KeyCode.Seven,
                    Enum.KeyCode.Eight,
                    Enum.KeyCode.Nine
                })[p253 + 1]
            end
            local vu256 = game:GetService("UserInputService").InputBegan:Connect(function(p255)
                if p255.KeyCode == vu254(tostring(vu245.Parent)) then
                    vu245.Overlay.Visible = false
                    if vu247 == 1234 or vu248.Size ~= UDim2.new(1, 0, 0, 0) then
                        if vu247 == 1234 then
                            if vu246 or vu248.Size ~= UDim2.new(1, 0, 0, 0) then
                                if vu246 and vu248.Size == UDim2.new(1, 0, - 1, 0) then
                                    vu246 = false
                                    pu243 = pu243 or 0.2
                                    vu248.Size = UDim2.new(1, 0, - 1, 0)
                                    game:GetService("TweenService"):Create(vu248, TweenInfo.new(pu243, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                                        Size = UDim2.new(1, 0, 0, 0)
                                    }):Play()
                                    pu241()
                                end
                            else
                                vu246 = true
                                vu248.Size = UDim2.new(1, 0, - 1, 0)
                                pu241()
                            end
                        end
                    else
                        vu248.Size = UDim2.new(1, 0, - 1, 0)
                        game:GetService("TweenService"):Create(vu248, TweenInfo.new(vu247, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                            Size = UDim2.new(1, 0, 0, 0)
                        }):Play()
                        pu241()
                    end
                end
            end)
            local vu258 = vu244.AncestryChanged:Connect(function(_, p257)
                if p257 == nil then
                    vu252:Disconnect()
                    vu256:Disconnect()
                    PlayerDied:Disconnect()
                elseif p257 == workspace.Live:FindFirstChild(LocalPlayer.Name) then
                    task.wait()
                    vu244.Parent = Backpack
                end
            end)
            Character.Humanoid.Died:Once(function()
                vu252:Disconnect()
                vu256:Disconnect()
                vu258:Disconnect()
            end)
            return vu244
        end
        function CubicleParticle(pu259, p260, pu261, p262, p263, p264, pu265)
            local vu266 = ({
                "Spin",
                "Orbital",
                "Float",
                "Fall",
                "Freeze"
            })[p264]
            local vu267 = Instance.new("Part")
            vu267.Anchored = true
            vu267.Material = Enum.Material.Neon
            vu267.CanCollide = false
            vu267.CFrame = pu259 * CFrame.Angles(math.random(0, 100), math.random(0, 100), math.random(0, 100))
            vu267.Color = p260
            vu267.Size = Vector3.new(pu261, pu261, pu261)
            vu267.Transparency = p262
            vu267.Parent = workspace
            local vu268 = Instance.new("PointLight")
            vu268.Brightness = p263
            vu268.Color = p260
            vu268.Range = pu261 * 5
            vu268.Parent = vu267
            local vu269 = true
            task.spawn(function()
                local vu270 = pu261 / 100
                local vu271 = pu261 / 100
                local vu272 = pu261 / 100
                task.spawn(function()
                    pcall(function()
                        while vu269 do
                            for _ = 1, 20 do
                                vu267.CFrame = vu267.CFrame * CFrame.Angles(vu270, vu271, vu272)
                                task.wait()
                            end
                            vu270 = math.random(1, 2) == 1 and pu261 / 100 or - 1 * pu261 / 50
                            vu271 = math.random(1, 2) == 1 and pu261 / 100 or - 1 * pu261 / 50
                            vu272 = math.random(1, 2) == 1 and pu261 / 100 or - 1 * pu261 / 50
                        end
                    end)
                end)
                if vu266 ~= "Spin" then
                    if vu266 ~= "Orbital" then
                        if vu266 ~= "Float" then
                            if vu266 ~= "Fall" then
                                if vu266 == "Freeze" then
                                    vu269 = false
                                    vu267.CFrame = pu259
                                end
                            else
                                task.spawn(function()
                                    pcall(function()
                                        while task.wait() do
                                            vu267.Position = vu267.Position - Vector3.new(0, pu261 / 20, 0)
                                        end
                                    end)
                                end)
                            end
                        else
                            task.spawn(function()
                                pcall(function()
                                    while task.wait() do
                                        vu267.Position = vu267.Position + Vector3.new(0, pu261 / 20, 0)
                                    end
                                end)
                            end)
                        end
                    else
                        task.spawn(function()
                            pcall(function()
                                local v273 = 0
                                while task.wait() do
                                    v273 = v273 + math.rad(5)
                                    local v274 = pu261 * 3 * math.cos(v273)
                                    local v275 = pu261 * 3 * math.sin(v273)
                                    vu267.Position = pu259.Position + Vector3.new(v274, 0, v275)
                                end
                            end)
                        end)
                    end
                end
            end)
            if pu265 > 0.2 then
                task.spawn(function()
                    task.wait(pu265 - 0.2)
                    vu267.Size = Vector3.new(pu261, pu261, pu261)
                    game:GetService("TweenService"):Create(vu267, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                        Size = Vector3.new(0.1, 0.1, 0.1)
                    }):Play()
                end)
            else
                vu267.Size = Vector3.new(pu261, pu261, pu261)
                game:GetService("TweenService"):Create(vu267, TweenInfo.new(pu265, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                    Size = Vector3.new(0.1, 0.1, 0.1)
                }):Play()
            end
            task.spawn(function()
                task.wait(pu265)
                vu267:Destroy()
                vu267 = nil
                vu268:Destroy()
                vu268 = nil
            end)
            return vu267
        end
        function AddWings(p276)
            local function vu280(p277, p278)
                local v279 = Instance.new("WeldConstraint")
                v279.Part0 = p277
                v279.Part1 = p278
                v279.Parent = p277
            end
            local function v294(p281)
                local v282 = Instance.new("Part")
                v282.Name = "PrimaryPart"
                v282.Size = Vector3.new(1, 1, 1)
                v282.Transparency = 1
                v282.Anchored = true
                v282.CanCollide = false
                local v283 = Vector3.new(0, 0, 0)
                local v284, v285, v286 = pairs(p281:GetDescendants())
                while true do
                    local v287
                    v286, v287 = v284(v285, v286)
                    if v286 == nil then
                        break
                    end
                    if v287:IsA("BasePart") then
                        v283 = v283 + v287.Position
                    end
                end
                local v288 = v283 / # p281:GetDescendants()
                v282.CFrame = CFrame.new(v288)
                v282.CFrame = v282.CFrame + v282.CFrame.LookVector - Vector3.new(0, 2, 0)
                v282.Parent = p281
                p281.PrimaryPart = v282
                local v289, v290, v291 = pairs(p281:GetDescendants())
                local v292 = 0
                while true do
                    local v293
                    v291, v293 = v289(v290, v291)
                    if v291 == nil then
                        break
                    end
                    if v293:IsA("BasePart") and v293 ~= v282 then
                        if v292 % 200 == 0 then
                            task.wait()
                        end
                        v293.Anchored = false
                        vu280(v282, v293)
                    end
                end
                return v282
            end
            local vu295 = Instance.new("Model", p276)
            vu295.Name = "Wings"
            local function v300(p296, p297, p298)
                local v299 = Instance.new("Part")
                v299.Anchored = true
                v299.Color = p296
                v299.Size = p297
                v299.CFrame = p298
                v299.CanCollide = false
                v299.Massless = true
                v299.CastShadow = false
                v299.Material = Enum.Material.Neon
                v299.Parent = vu295
            end
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(360.732727, - 6.197299, - 49.303627, - 0.965898514, 0.0000423174351, 0.258920968, 0.0244072285, 0.995562017, 0.0908878744, - 0.257768035, 0.0941080004, - 0.961612821))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(362.347412, - 5.99922276, - 51.3982925, 0.499970257, - 0.0000145807862, - 0.866042674, - 0.0815577209, 0.995555043, - 0.0471004248, 0.862193882, 0.0941812694, 0.497746766))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(361.821869, - 6.18379402, - 49.4464188, - 0.866021514, - 0.0000258088112, - 0.500006795, - 0.0471151285, 0.995554745, 0.0815529451, 0.497782022, 0.0941844806, - 0.86217308))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(360.386688, - 5.94976997, - 51.9213333, 0.866021514, - 0.0000258088112, 0.500006795, 0.0471151285, 0.995554745, - 0.0815529451, - 0.497782022, 0.0941844806, 0.86217308))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(361.475861, - 5.93627071, - 52.064064, 0.965898514, 0.0000423174351, - 0.258920968, - 0.0244072285, 0.995562017, - 0.0908878744, 0.257768035, 0.0941080004, 0.96161288))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.9999998807907104, 0.6044883728027344, 0.3155517578125), CFrame.new(364.306915, - 7.25881386, - 49.3042679, - 0.970375419, - 0.136544615, 0.19931677, - 0.139339149, 0.990244746, 6.54347241e-6, - 0.197373271, - 0.0277662762, - 0.979935169))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.0474975109100342, 0.23617839813232422, 0.3155517578125), CFrame.new(365.754395, - 7.00014687, - 49.0098648, - 0.970375419, - 0.136544615, 0.19931677, - 0.139339149, 0.990244746, 6.54347241e-6, - 0.197373271, - 0.0277662762, - 0.979935169))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.0474975109100342, 0.23617839813232422, 0.3155517578125), CFrame.new(365.689423, - 5.78818512, - 49.0230179, - 0.915372968, - 0.349710763, 0.199486494, - 0.356892884, 0.934145331, - 0.0000470206141, - 0.186332941, - 0.0712383538, - 0.979900599))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.9999998807907104, 0.6044883728027344, 0.3155517578125), CFrame.new(364.335052, - 6.3700676, - 49.2987137, - 0.915372968, - 0.349710763, 0.199486494, - 0.356892884, 0.934145331, - 0.0000470206141, - 0.186332941, - 0.0712383538, - 0.979900599))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.9999998807907104, 0.6044883728027344, 0.3155517578125), CFrame.new(357.901642, - 7.25881386, - 49.3042679, - 0.970375419, 0.136544615, - 0.19931677, 0.139339149, 0.990244746, 6.54347241e-6, 0.197373271, - 0.0277662762, - 0.979935169))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.0474975109100342, 0.23617839813232422, 0.3155517578125), CFrame.new(365.689423, - 9.60411167, - 49.0230179, 0.915372849, - 0.349710763, 0.199486494, - 0.356892884, - 0.934145331, 0.0000470206141, 0.186332941, - 0.0712383538, - 0.979900599))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.9999998807907104, 0.6044883728027344, 0.3155517578125), CFrame.new(364.335052, - 9.02222729, - 49.2987137, 0.915372849, - 0.349710763, 0.199486494, - 0.356892884, - 0.934145331, 0.0000470206141, 0.186332941, - 0.0712383538, - 0.979900599))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.9999998807907104, 0.6044883728027344, 0.3155517578125), CFrame.new(364.306915, - 8.13348198, - 49.3042679, 0.970375419, - 0.136544615, 0.19931677, - 0.139339149, - 0.990244746, - 6.54347241e-6, 0.197373271, - 0.0277662762, - 0.979935169))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.0474975109100342, 0.23617839813232422, 0.3155517578125), CFrame.new(365.754395, - 8.39214802, - 49.0098648, 0.970375419, - 0.136544615, 0.19931677, - 0.139339149, - 0.990244746, - 6.54347241e-6, 0.197373271, - 0.0277662762, - 0.979935169))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(359.861328, - 6.13433266, - 49.9694595, - 0.499970794, - 0.0000145807862, 0.866042674, 0.0815577209, 0.995555043, 0.0471004248, - 0.862193882, 0.0941812694, - 0.497747183))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(362.490662, - 6.10175323, - 50.3140335, - 0.258897305, - 0.0000377446413, - 0.965904891, - 0.0909474716, 0.995558262, 0.0243382938, 0.961613595, 0.0941477269, - 0.25775075))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.0474975109100342, 0.23617839813232422, 0.3155517578125), CFrame.new(356.454163, - 8.39214802, - 49.0098648, 0.970375419, 0.136544615, - 0.19931677, 0.139339149, - 0.990244746, - 6.54347241e-6, - 0.197373271, - 0.0277662762, - 0.979935169))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.9999998807907104, 0.6044883728027344, 0.3155517578125), CFrame.new(357.901642, - 8.13348198, - 49.3042679, 0.970375419, 0.136544615, - 0.19931677, 0.139339149, - 0.990244746, - 6.54347241e-6, - 0.197373271, - 0.0277662762, - 0.979935169))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.9999998807907104, 0.6044883728027344, 0.3155517578125), CFrame.new(357.873505, - 9.02222729, - 49.2987137, 0.915372849, 0.349710763, - 0.199486494, 0.356892884, - 0.934145331, 0.0000470206141, - 0.186332941, - 0.0712383538, - 0.979900599))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.0474975109100342, 0.23617839813232422, 0.3155517578125), CFrame.new(356.519135, - 9.60411167, - 49.0230179, 0.915372849, 0.349710763, - 0.199486494, 0.356892884, - 0.934145331, 0.0000470206141, - 0.186332941, - 0.0712383538, - 0.979900599))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.9999998807907104, 0.6044883728027344, 0.3155517578125), CFrame.new(357.873505, - 6.3700676, - 49.2987137, - 0.915372968, 0.349710763, - 0.199486494, 0.356892884, 0.934145331, - 0.0000470206141, 0.186332941, - 0.0712383538, - 0.979900599))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.0474975109100342, 0.23617839813232422, 0.3155517578125), CFrame.new(356.519135, - 5.78818512, - 49.0230179, - 0.915372968, 0.349710763, - 0.199486494, 0.356892884, 0.934145331, - 0.0000470206141, 0.186332941, - 0.0712383538, - 0.979900599))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1.0474975109100342, 0.23617839813232422, 0.3155517578125), CFrame.new(356.454163, - 7.00014687, - 49.0098648, - 0.970375419, 0.136544615, - 0.19931677, 0.139339149, 0.990244746, 6.54347241e-6, 0.197373271, - 0.0277662762, - 0.979935169))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(362.119202, - 5.971241, - 51.6942825, 0.707077563, 2.72318721e-6, - 0.707135975, - 0.066594556, 0.995555937, - 0.0665852129, 0.703993261, 0.0941723138, 0.703935385))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(360.089355, - 6.16232491, - 49.6735306, - 0.707077622, 2.72318721e-6, 0.707135975, 0.066594556, 0.995555937, 0.0665852129, - 0.703993261, 0.0941723138, - 0.703935504))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(362.119202, - 6.16232586, - 49.6734695, - 0.707143664, - 7.12648034e-6, - 0.707069993, - 0.0665914416, 0.995555937, 0.0665883273, 0.703927279, 0.0941723138, - 0.704001546))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(362.539612, - 6.06677437, - 50.683876, - 0.0000977516174, - 4.60445881e-6, - 1.00000012, - 0.0941393524, 0.995559037, 4.60445881e-6, 0.995559096, 0.0941393524, - 0.0000977516174))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(360.089355, - 5.97123909, - 51.694313, 0.707143545, - 7.12648034e-6, 0.707069993, 0.0665914416, 0.995555937, - 0.0665883273, - 0.703927279, 0.0941723138, 0.704001427))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(361.10437, - 5.93165874, - 52.1128922, 1, - 4.06851314e-6, - 0.0000862260786, - 4.06851314e-6, 0.995557189, - 0.0941588804, 0.0000862260786, 0.0941588804, 0.995557189))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(0.5, 0.05000000447034836, 0.502471923828125), CFrame.new(361.104279, - 6.06690311, - 50.6826248, - 1, - 4.06851314e-6, 0.0000862260786, 4.06851314e-6, 0.995557189, 0.0941588804, - 0.0000862260786, 0.0941588804, - 0.995557189))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(361.104187, - 6.20190048, - 49.2549515, - 1, - 4.06851314e-6, 0.0000862260786, 4.06851314e-6, 0.995557189, 0.0941588804, - 0.0000862260786, 0.0941588804, - 0.995557189))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(359.668945, - 6.06677151, - 50.6840286, 0.0000976324081, - 4.60445881e-6, 1, 0.0941393375, 0.995559037, - 4.60445881e-6, - 0.995558977, 0.0941393375, 0.0000976324081))
            v300(Color3.new(1, 0.941176, 0.439216), Vector3.new(1, 0.05000000447034836, 0.502471923828125), CFrame.new(359.717896, - 6.03180504, - 51.0537796, 0.258897305, - 0.0000377446413, 0.965904891, 0.0909474716, 0.995558262, - 0.0243382938, - 0.961613595, 0.0941477269, 0.25775075))
            local v301 = v294(vu295)
            v301.CFrame = p276.HumanoidRootPart.CFrame
            v301.Anchored = false
            vu280(p276.HumanoidRootPart, v301)
            v301.Massless = true
            p276.Humanoid.Died:Once(function()
                vu295:destroy()
            end)
            return vu295
        end
        function Collusion(pu302, p303)
            if pcall(function()
                return pu302.CanCollide
            end) then
                if pu302:GetAttribute("OldCollusion") == nil then
                    pu302:SetAttribute("OldCollusion", pu302.CanCollide)
                end
                pu302.CanCollide = p303
            end
            local v304, v305, v306 = pairs(pu302:GetDescendants())
            while true do
                local vu307
                v306, vu307 = v304(v305, v306)
                if v306 == nil then
                    break
                end
                if pcall(function()
                    return vu307.CanCollide
                end) then
                    if vu307:GetAttribute("OldCollusion") == nil then
                        vu307:SetAttribute("OldCollusion", vu307.CanCollide)
                    end
                    vu307.CanCollide = p303
                end
            end
            return pu302
        end
        function UndoCollusion(pu308)
            if pcall(function()
                return pu308.CanCollide
            end) and pu308:GetAttribute("OldCollusion") ~= nil then
                pu308.CanCollide = pu308:GetAttribute("OldCollusion")
                pu308:SetAttribute("OldCollusion", nil)
            end
            local v309, v310, v311 = pairs(pu308:GetDescendants())
            while true do
                local vu312
                v311, vu312 = v309(v310, v311)
                if v311 == nil then
                    break
                end
                if pcall(function()
                    return vu312.CanCollide
                end) and vu312:GetAttribute("OldCollusion") ~= nil then
                    vu312.CanCollide = vu312:GetAttribute("OldCollusion")
                    vu312:SetAttribute("OldCollusion", nil)
                end
            end
            return pu308
        end
        function BloodParticle(p313, p314)
            local vu315 = p314 or 1
            local function v319(p316, p317)
                local v318 = Instance.new("WeldConstraint")
                v318.Part0 = p316
                v318.Part1 = p317
                v318.Parent = p316
            end
            if p313:FindFirstChild("HumanoidRootPart") then
                local vu320 = Instance.new("Part", p313.HumanoidRootPart)
                vu320.CanCollide = false
                vu320.Transparency = 1
                vu320.Massless = true
                vu320.CFrame = p313.HumanoidRootPart.CFrame - Vector3.new(0, 0.7, 0) + CFrame.lookAt(p313.HumanoidRootPart.Position, LocalPlayer.Character.HumanoidRootPart.Position).LookVector * 2
                v319(p313.HumanoidRootPart, vu320)
                task.spawn(function()
                    for _ = 1, 20 * vu315 do
                        task.wait()
                        local v321 = {
                            vu320,
                            "rbxassetid://16668936898",
                            0,
                            2,
                            Color3.new(0.39215686274509803, 0, 0),
                            Color3.new(0.39215686274509803, 0, 0),
                            1,
                            0.2,
                            - 360,
                            360,
                            10,
                            10,
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,
                            0
                        }
                        EmitParticle(v321, vu315)
                        local v322 = {
                            vu320,
                            "rbxassetid://241576804",
                            0,
                            0.5,
                            Color3.new(0.39215686274509803, 0, 0),
                            Color3.new(0.39215686274509803, 0, 0),
                            10,
                            0.5,
                            0,
                            0,
                            - 360,
                            360,
                            5,
                            10,
                            2,
                            10,
                            0,
                            0,
                            0
                        }
                        EmitParticle(v322, 5 * vu315)
                        local v323 = {
                            vu320,
                            "rbxassetid://4509687978",
                            0,
                            0.2,
                            Color3.new(0.39215686274509803, 0, 0),
                            Color3.new(0.39215686274509803, 0, 0),
                            10,
                            0.5,
                            0,
                            0,
                            - 360,
                            360,
                            5,
                            10,
                            2,
                            4,
                            0,
                            0,
                            0
                        }
                        EmitParticle(v323, 10 * vu315)
                    end
                end)
            end
        end
        function HurtParticle(p324, p325, p326)
            StrongMone = Instance.new("Attachment")
            game.Debris:AddItem(StrongMone, 3)
            Shockwaves2 = Instance.new("ParticleEmitter")
            Shockwaves3 = Instance.new("ParticleEmitter")
            DustShockwaves = Instance.new("ParticleEmitter")
            RedDust2 = Instance.new("ParticleEmitter")
            Push = Instance.new("ParticleEmitter")
            StrongMone.Name = "StrongMone"
            local vu327 = Instance.new("Part")
            vu327.Anchored = true
            vu327.CanCollide = false
            vu327.Transparency = 1
            vu327.CFrame = p325.CFrame - p325.Position + p324.Position
            if p326 then
                vu327.CFrame = CFrame.lookAt(p324.Position, p324.Position + p326)
            end
            vu327.Parent = workspace
            StrongMone.Parent = vu327
            Shockwaves2.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.new(0.466667, 0.470588, 0.470588), 0),
                ColorSequenceKeypoint.new(0.495, Color3.new(0, 0, 0), 0),
                ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0), 0)
            })
            Shockwaves2.Drag = 5
            Shockwaves2.EmissionDirection = Enum.NormalId.Back
            Shockwaves2.Enabled = false
            Shockwaves2:Emit(15)
            Shockwaves2.FlipbookFramerate = NumberRange.new(18, 20)
            Shockwaves2.Lifetime = NumberRange.new(1, 3)
            Shockwaves2.LightEmission = 1
            Shockwaves2.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
            Shockwaves2.Rate = 40
            Shockwaves2.RotSpeed = NumberRange.new(100, 400)
            Shockwaves2.Rotation = NumberRange.new(0, 360)
            Shockwaves2.Size = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0, 0),
                NumberSequenceKeypoint.new(0.1, 5.11184, 1.94737),
                NumberSequenceKeypoint.new(0.2, 8.93842, 3.89474),
                NumberSequenceKeypoint.new(0.3, 11.1292, 7.78947),
                NumberSequenceKeypoint.new(0.517, 15.7153, 11.6842),
                NumberSequenceKeypoint.new(1, 20.4474, 11.6842)
            })
            Shockwaves2.Speed = NumberRange.new(0.0146053, 0.0146053)
            Shockwaves2.SpreadAngle = Vector2.new(2, 2)
            Shockwaves2.Texture = "http://www.roblox.com/asset/?id=11703233149"
            Shockwaves2.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0.8, 0.2),
                NumberSequenceKeypoint.new(1, 1, 0)
            })
            Shockwaves2.Name = "Shockwaves2"
            Shockwaves2.Parent = StrongMone
            Shockwaves3.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.new(0.466667, 0.470588, 0.470588), 0),
                ColorSequenceKeypoint.new(0.495, Color3.new(0, 0, 0), 0),
                ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0), 0)
            })
            Shockwaves3.Drag = 5
            Shockwaves3.EmissionDirection = Enum.NormalId.Back
            Shockwaves3.Enabled = false
            Shockwaves3.FlipbookFramerate = NumberRange.new(18, 20)
            Shockwaves3.Lifetime = NumberRange.new(0.5, 0.5)
            Shockwaves3.LightEmission = 1
            Shockwaves3.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
            Shockwaves3.Rate = 55
            Shockwaves3:Emit(15)
            Shockwaves3.RotSpeed = NumberRange.new(100, 400)
            Shockwaves3.Rotation = NumberRange.new(0, 360)
            Shockwaves3.Size = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0, 0),
                NumberSequenceKeypoint.new(0.1, 10.2237, 3.89474),
                NumberSequenceKeypoint.new(0.2, 17.8768, 7.78947),
                NumberSequenceKeypoint.new(0.3, 22.2584, 15.5789),
                NumberSequenceKeypoint.new(0.517, 31.4305, 23.3684),
                NumberSequenceKeypoint.new(1, 40.8947, 23.3684)
            })
            Shockwaves3.Speed = NumberRange.new(0.0146053, 0.0146053)
            Shockwaves3.Texture = "http://www.roblox.com/asset/?id=11703233149"
            Shockwaves3.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0.8, 0.2),
                NumberSequenceKeypoint.new(1, 1, 0)
            })
            Shockwaves3.Name = "Shockwaves3"
            Shockwaves3.Parent = StrongMone
            DustShockwaves.Brightness = 5
            DustShockwaves.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.new(0.988312, 0.991241, 1), 0),
                ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0), 0)
            })
            DustShockwaves.Drag = 5
            DustShockwaves.EmissionDirection = Enum.NormalId.Back
            DustShockwaves.Enabled = false
            DustShockwaves.FlipbookFramerate = NumberRange.new(18, 20)
            DustShockwaves.Lifetime = NumberRange.new(0.2, 1.05)
            DustShockwaves.LightEmission = 1
            DustShockwaves.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
            DustShockwaves.Rate = 25
            DustShockwaves.Rotation = NumberRange.new(0, 360)
            DustShockwaves.Size = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0, 0),
                NumberSequenceKeypoint.new(1, 58.421, 0)
            })
            DustShockwaves.Speed = NumberRange.new(0.0146053, 0.0146053)
            DustShockwaves.SpreadAngle = Vector2.new(10, 10)
            DustShockwaves.Texture = "http://www.roblox.com/asset/?id=11703216487"
            DustShockwaves.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0.96, 0.04),
                NumberSequenceKeypoint.new(1, 1, 0)
            })
            DustShockwaves.Name = "DustShockwaves"
            DustShockwaves.Parent = StrongMone
            DustShockwaves:Emit(15)
            RedDust2.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.new(0.988235, 0.988235, 0.988235), 0),
                ColorSequenceKeypoint.new(1, Color3.new(0.988235, 0.988235, 0.988235), 0)
            })
            RedDust2.Drag = 4
            RedDust2.EmissionDirection = Enum.NormalId.Back
            RedDust2.Enabled = false
            RedDust2.Lifetime = NumberRange.new(0.1, 1)
            RedDust2.LightEmission = 0.800000011920929
            RedDust2.Orientation = Enum.ParticleOrientation.VelocityParallel
            RedDust2.Rate = 40
            RedDust2.Size = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0, 0),
                NumberSequenceKeypoint.new(0.281, 2.91889, 2.74074),
                NumberSequenceKeypoint.new(1, 7.30263, 3.89474)
            })
            RedDust2.Speed = NumberRange.new(18.75, 90)
            RedDust2.SpreadAngle = Vector2.new(25, 25)
            RedDust2.Squash = NumberSequence.new({
                NumberSequenceKeypoint.new(0, - 0.5, 0.5),
                NumberSequenceKeypoint.new(1, - 1, 1)
            })
            RedDust2.Texture = "rbxassetid://7216854921"
            RedDust2.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0, 0),
                NumberSequenceKeypoint.new(0.339323, 0, 0),
                NumberSequenceKeypoint.new(0.80798, 0.3625, 0),
                NumberSequenceKeypoint.new(1, 1, 0)
            })
            RedDust2.Name = "RedDust2"
            RedDust2.Parent = StrongMone
            RedDust2:Emit(15)
            Push.Brightness = 2
            Push.Drag = 10
            Push.EmissionDirection = Enum.NormalId.Back
            Push.Enabled = false
            Push.FlipbookFramerate = NumberRange.new(30, 30)
            Push.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
            Push.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
            Push.Lifetime = NumberRange.new(0.1, 0.5)
            Push.Rate = 115
            Push.RotSpeed = NumberRange.new(- 35, 35)
            Push.Rotation = NumberRange.new(- 25, 25)
            Push.Size = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 2.36514, 0.8125),
                NumberSequenceKeypoint.new(0.632135, 12.9375, 0),
                NumberSequenceKeypoint.new(1, 12.9375, 0)
            })
            Push.Speed = NumberRange.new(0, 375)
            Push.SpreadAngle = Vector2.new(- 15, 15)
            Push.Texture = "http://www.roblox.com/asset/?id=9160490836"
            Push.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 1, 0),
                NumberSequenceKeypoint.new(1, 0.9375, 0.0625)
            })
            Push.ZOffset = 1
            Push.Name = "Push"
            Push.Parent = StrongMone
            Push:Emit(15)
            task.spawn(function()
                task.wait(1.5)
                vu327:destroy()
            end)
        end
        function AddHitbox(p328)
            local v329 = p328:FindFirstChild("HumanoidRootPart")
            if v329 then
                local v330 = Instance.new("Part")
                v330.Size = Vector3.new(5, 8, 5)
                v330.Transparency = 0.7
                v330.Color = Color3.fromRGB(255, 0, 0)
                v330.Material = Enum.Material.Neon
                v330.CanCollide = false
                v330.Massless = true
                v330.Anchored = false
                v330.Parent = p328
                v330.CFrame = v329.CFrame + Vector3.new(0, v330.Size.Y / 2 - 5, 0)
                local v331 = Instance.new("WeldConstraint")
                v331.Part0 = v329
                v331.Part1 = v330
                v331.Parent = v330
                return v330
            end
        end
        function UnfreezeCam()
            game.Workspace.CurrentCamera.CameraSubject = Character.Humanoid
        end
        function FreezeCam(p332)
            local v333 = Instance.new("Part")
            v333.Parent = workspace
            v333.CFrame = p332 or Character.Head.CFrame
            game.Workspace.CurrentCamera.CameraSubject = v333
            v333:Destroy()
        end
        function MoveDirection2()
            local v334 = Character.Humanoid
            local v335 = Vector3.new(v334.MoveDirection.X, 0, v334.MoveDirection.Z)
            if v335.Magnitude <= 0 then
                return Vector3.new(0, 0, 0)
            else
                return v335.Unit
            end
        end
        function MoveDirection3()
            local v336 = Character.Humanoid
            local v337 = workspace.CurrentCamera
            local v338 = Vector3.new(v336.MoveDirection.X, 0, v336.MoveDirection.Z)
            if v338.Magnitude <= 0 then
                return Vector3.new(0, 0, 0)
            end
            local v339 = Vector3.new(v337.CFrame.RightVector.X, 0, v337.CFrame.RightVector.Z).Unit
            local v340 = - (math.atan2(v338.Z, v338.X) - math.atan2(v339.Z, v339.X)) % (2 * math.pi)
            return (v337.CFrame.LookVector * math.sin(v340) + v337.CFrame.RightVector * math.cos(v340)).Unit
        end
        function MoveDirectionAngle()
            local v341 = workspace.CurrentCamera
            local v342 = MoveDirection2()
            if v342.Magnitude <= 0 then
                return math.pi / 2
            end
            local v343 = Vector3.new(v341.CFrame.RightVector.X, 0, v341.CFrame.RightVector.Z).Unit
            return - (math.atan2(v342.Z, v342.X) - math.atan2(v343.Z, v343.X)) % (2 * math.pi)
        end
        function CameraOrigin()
            local v344 = workspace.CurrentCamera
            return v344.CFrame - v344.CFrame.Position + v344.Focus.Position
        end
        function ChangeWalkAnim(pu345, pu346)
            RunWalkSpeed = 25
            local vu347 = nil
            Character.Humanoid.Animator.AnimationPlayed:Connect(function(p348)
                if p348.Animation.AnimationId == "rbxassetid://7815618175" then
                    p348:Stop()
                    if not vu347 then
                        vu347 = PlayAnimation(pu345, pu346)
                        repeat
                            task.wait()
                        until Character.Humanoid.WalkSpeed ~= RunWalkSpeed or MoveDirection2().Magnitude == 0
                        vu347:Stop()
                        vu347 = false
                    end
                end
            end)
            Character.Animate.walk.WalkAnim.AnimationId = pu345
            Character.Humanoid.Animator.AnimationPlayed:Connect(function(p349)
                if p349.Animation == Character.Animate.walk.WalkAnim then
                    p349:AdjustSpeed(pu346)
                end
            end)
        end
        local vu350 = tick()
        function EnableInfiniteDash(p351)
            local vu352 = p351 or 0
            task.spawn(function()
                pcall(function()
                    local v353 = LocalPlayer.PlayerGui.TouchGui.TouchControlFrame.JumpButton.DashButton
                    while task.wait() do
                        if v353.Image == "rbxassetid://12253813495" and vu352 < tick() - vu350 then
                            local v354 = MoveDirectionAngle() * (180 / math.pi)
                            if v354 <= 45 or 315 <= v354 then
                                FakeDash("Right")
                            elseif 135 <= v354 and v354 <= 225 then
                                FakeDash("Left")
                            end
                            repeat
                                task.wait()
                            until v353.Image ~= "rbxassetid://12253813495"
                        end
                    end
                end)
            end)
            task.spawn(function()
                game:GetService("UserInputService").InputBegan:Connect(function(p355)
                    if p355.KeyCode == Enum.KeyCode.Q and vu352 < tick() - vu350 then
                        local v356 = MoveDirectionAngle() * (180 / math.pi)
                        if v356 <= 45 or 315 <= v356 then
                            FakeDash("Right")
                        elseif 135 <= v356 and v356 <= 225 then
                            FakeDash("Left")
                        end
                    end
                end)
                Character.Humanoid.Animator.AnimationPlayed:Connect(function(p357)
                    local v358 = p357.Animation.AnimationId
                    if v358 == "rbxassetid://10480796021" or v358 == "rbxassetid://10480793962" then
                        vu350 = tick()
                    end
                end)
            end)
        end
        function ChangeIdleAnim(p359, pu360, pu361, pu362, pu363, p364)
            Character.Animate.idle.Animation1.AnimationId = p359
            local vu365 = p364 or 1
            Character.Humanoid.Animator.AnimationPlayed:Connect(function(p366)
                if p366.Animation == Character.Animate.idle.Animation1 then
                    p366.TimePosition = pu361
                    p366:AdjustSpeed(pu360)
                    task.wait(pu362)
                    if pu363 then
                        local v367 = p366.TimePosition
                        while task.wait() do
                            repeat
                                task.wait()
                            until p366.TimePosition > v367 + pu363
                            p366:AdjustSpeed(- vu365)
                            repeat
                                task.wait()
                            until p366.TimePosition < v367 - pu363
                            p366:AdjustSpeed(vu365)
                        end
                    else
                        p366:AdjustSpeed(0)
                    end
                end
            end)
        end
        function WallComboEverywhere()
            local vu368 = 0
            RunService.Heartbeat:Connect(function()
                if Character:GetAttribute("Combo") == 5 then
                    vu368 = tick()
                    Character:SetAttribute("Combo", 0)
                end
            end)
            local function vu369()
                if tick() - vu368 < 0.6 then
                    return true
                end
            end
            local function vu370()
                if Character:FindFirstChild("WallCombo") then
                    return true
                end
            end
            local vu371 = 1
            local vu372 = false
            return RunService.Heartbeat:Connect(function()
                if vu369() == true and not vu372 then
                    task.spawn(function()
                        local v373 = tick()
                        local v374 = Character.HumanoidRootPart.CFrame
                        FreezeCam(Character.Head.CFrame)
                        local v375 = 0.5
                        while true do
                            if vu370() == true or tick() - v373 > 0.2 then
                                UnfreezeCam()
                                Character.Communicate:FireServer({
                                    Goal = "Wall Combo"
                                })
                                return
                            end
                            for _ = 1, 2 do
                                RunService.Heartbeat:Wait()
                                if vu370() == true or tick() - v373 > 0.2 then
                                    break
                                end
                                FreezeCam(Character.Head.CFrame)
                                Character.HumanoidRootPart.CFrame = CFrame.lookAt(v374.Position, v374.Position - Vector3.new(0, 1, 0) + v374.LookVector * v375)
                                RunService.RenderStepped:Wait()
                                if vu370() == true or tick() - v373 > 0.2 then
                                    break
                                end
                                Character.HumanoidRootPart.CFrame = v374
                                FreezeCam(Character.Head.CFrame)
                                RunService.Stepped:Wait()
                                if vu370() == true or tick() - v373 > 0.2 then
                                    break
                                end
                                Character.HumanoidRootPart.CFrame = v374
                                FreezeCam(Character.Head.CFrame)
                            end
                        end
                    end)
                    vu372 = true
                    task.wait(vu371)
                    vu372 = false
                end
            end)
        end
        function FakeDash(pu376)
            if pu376 == "Right" or pu376 == "Left" then
                local function v384(p377, p378, p379, p380)
                    local vu381 = p380 or false
                    local v382 = Instance.new("Animation")
                    v382.AnimationId = p377
                    local vu383 = Character.Humanoid.Animator:LoadAnimation(v382)
                    vu383:Play()
                    vu383.TimePosition = p379 or 0
                    vu383:AdjustSpeed(p378 or 1)
                    if vu381 then
                        task.spawn(function()
                            task.wait(vu381)
                            vu383:Stop()
                        end)
                    end
                    return vu383
                end
                local vu385 = Instance.new("BodyVelocity")
                vu385.MaxForce = Vector3.new(50000, 0, 50000)
                vu385.P = 1250
                if pu376 == "Right" then
                    v384("rbxassetid://10480793962")
                elseif pu376 == "Left" then
                    v384("rbxassetid://10480796021")
                end
                local v386, v387, v388 = pairs(Character.HumanoidRootPart:GetChildren())
                local function vu391(p389)
                    local v390 = Vector3.new(Character.HumanoidRootPart.CFrame.RightVector.X, 0, Character.HumanoidRootPart.CFrame.RightVector.Z).Unit
                    if pu376 ~= "Right" then
                        if pu376 == "Left" then
                            vu385.Velocity = - v390 * p389
                        end
                    else
                        vu385.Velocity = v390 * p389
                    end
                end
                while true do
                    local v392
                    v388, v392 = v386(v387, v388)
                    if v388 == nil then
                        break
                    end
                    if v392:IsA("BodyVelocity") then
                        v392:Destroy()
                    end
                end
                vu385.Parent = Character.HumanoidRootPart
                Character.Communicate:FireServer({
                    Dash = Enum.KeyCode.A,
                    Key = Enum.KeyCode.Q,
                    Goal = "KeyPress"
                })
                task.spawn(function()
                    task.wait()
                    local v393 = tick()
                    local v394 = 0.47
                    local v395 = 166
                    local v396 = 14
                    while task.wait() and tick() - v393 < v394 do
                        local v397 = (tick() - v393) / v394
                        vu391(v396 + (v395 - v396) * math.exp(- 3 * v397))
                    end
                    vu385:Destroy()
                end)
            end
        end
        function ResetCharacter()
            task.spawn(function()
                local vu398 = Character.HumanoidRootPart.CFrame
                local vu399 = false
                local vu400 = false
                local function vu402()
                    local v401 = Instance.new("Part", workspace)
                    v401.CFrame = vu398
                    game.Workspace.CurrentCamera.CameraSubject = v401
                    v401:destroy()
                end
                Character.Humanoid.Died:Connect(function()
                    vu399 = true
                    vu400 = true
                    task.wait()
                    vu402()
                end)
                local v403 = vu402
                while not vu400 do
                    vu399 = false
                    local vu404 = true
                    task.spawn(function()
                        task.wait(0.5)
                        vu404 = false
                    end)
                    local vu405 = vu399
                    local v406 = vu404
                    while task.wait() and v406 do
                        v403()
                        local v407 = CFrame.new(0, 0, 0)
                        local function v408()
                            return math.random(- 100000, 100000)
                        end
                        Character.HumanoidRootPart.CFrame = v407 + Vector3.new(v408(), 69000, v408())
                    end
                    task.spawn(function()
                        task.wait(0.5)
                        vu405 = true
                    end)
                    while task.wait() and not vu405 do
                        v403()
                        Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(0, 0, 0).Unit)
                    end
                end
            end)
        end
        function EmitParticle(p409, p410)
            local vu411 = p410 or 1
            local v412, v413, v414, v415, v416, v417, v418, vu419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430 = table.unpack(p409)
            local vu431 = Instance.new("ParticleEmitter")
            vu431.Shape = Enum.ParticleEmitterShape.Sphere
            vu431.ShapeStyle = Enum.ParticleEmitterShapeStyle.Surface
            vu431.Rate = 0
            vu431.LockedToPart = true
            vu431.Parent = v412
            vu431.Texture = v413
            vu431.Size = NumberSequence.new({
                NumberSequenceKeypoint.new(0, v414),
                NumberSequenceKeypoint.new(1, v415)
            })
            vu431.Color = ColorSequence.new(v416, v417)
            vu431.TimeScale = v418
            vu431.Lifetime = NumberRange.new(vu419)
            vu431.Rotation = NumberRange.new(v420, v421)
            vu431.SpreadAngle = Vector2.new(v422, v423)
            vu431.Speed = NumberRange.new(v424, v425)
            vu431.Orientation = ({
                Enum.ParticleOrientation.FacingCamera,
                Enum.ParticleOrientation.VelocityParallel,
                Enum.ParticleOrientation.FacingCameraWorldUp,
                Enum.ParticleOrientation.VelocityPerpendicular
            })[v426] or Enum.ParticleOrientation.FacingCamera
            vu431.Acceleration = Vector3.new(0, - v427 * 10, 0)
            vu431.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, v428),
                NumberSequenceKeypoint.new(1, v429)
            })
            vu431.LightEmission = v430
            task.spawn(function()
                task.wait()
                vu431:Emit(vu411)
                task.wait(vu419)
                vu431:Destroy()
            end)
            return vu431
        end
        function AddFunctionToSpawn(pu432, pu433)
            local vu435 = {
                running = true,
                Stop = function(p434)
                    p434.running = false
                end
            }
            task.spawn(function()
                while vu435.running and pu432.CharacterAdded:Wait() do
                    if vu435.running then
                        pu433()
                    end
                end
            end)
            return vu435
        end
        Ignore = "  \r\nCamera Functions  \r\n- UnfreezeCam() \226\128\147 Resets the camera to follow the player.  \r\n- FreezeCam(cFrame) \226\128\147 Locks the camera at a specific position.  \r\n- CameraOrigin() \226\128\147 Returns the camera\226\128\153s original position (CFrame).  \r\n\r\nCharacter & Movement  \r\n- ChangePos(Part, Position) \226\128\147 Moves a part without changing its orientation.  \r\n- ChangeWalkAnim(ID) \226\128\147 Updates the walk animation.  \r\n- ChangeIdleAnim(ID, Speed, StartTime, StopTime, LoopedTime, LoopedSpeed) \226\128\147 Updates the idle animation.  \r\n- MoveDirection2() \226\128\147 Returns movement direction in 2D (Vector3).  \r\n- MoveDirection3() \226\128\147 Returns movement direction in 3D (Vector3).  \r\n- MorphToChar(char) \226\128\147 Morphs the character to another\'s appearance.  \r\n- AddWings(char) \226\128\147 Adds wings to the character.  \r\n- AddHitbox(char) \226\128\147 Adds a hitbox to the character.  \r\n- FakeDash(Direction) \226\128\147 Direction can be \"Left\" or \"Right\".  \r\n- ResetCharacter() \226\128\147 Forces the character to reset.  \r\n- EmitParticle(Properties) \226\128\147 Creates a particle effect with given properties. Properties is a table: {parent, texture, size1, size2, color1, color2, speed, lifespan, rotation1, rotation2, spreadAngle1, spreadAngle2, spreadSpeed1, spreadSpeed2, orientation, gravity, transparency1, transparency2, lightEmission}.  \r\n- AddFunctionToSpawn(Player, callback) \226\128\147 Adds a function that runs when a player respawns.  \r\n- LoadModel(ID) -- Loads model based on ID.\r\n- MorphToChainsawMan() -- Morphs to ChainsawMan\r\n- EnableInfiniteDash() -- Disables dash cooldown.\r\n- AddBlockAim() -- Adds block assist. can be disconnected. returns a connection.\r\n\r\nAnimation & Effects  \r\n- PlayAnimation(ID, Speed, StartTime, StopTime) \226\128\147 Plays an animation with adjustable settings.  \r\n- StopAnimation(ID) \226\128\147 Stops a specific animation.  \r\n- StopAllAnimation() \226\128\147 Stops all animations.  \r\n- AddFunctionToAnimation(anim, callback) \226\128\147 Triggers a callback when an animation plays.  \r\n- CounterCounter() \226\128\147 Anti-Saitama counter.  \r\n- CubicleParticle(cFrame, color, size, transparency, brightness, typeIndex, lifespan) \226\128\147 Creates neon particles with custom behavior.  \r\n- HurtParticle(rootPart, hitterRootPart, offset) \226\128\147 Generates a hit effect based on impact direction.  \r\n- HitParticle2(Character) \226\128\147 Generates a hit effect on character.  \r\n- Dialogue(Player, Text, Length, TypeSpeed, LifeSpan, TextColor, Font, Offset) -- Generates Dialogue effect on player\r\n- makeclone(cframe, animscopystate) -- Makes a clone of character. animscopystate true will copy all animations played by you.\r\n- AddRunningVfx(Character) -- Adds dust effects to foot\r\n- FixCam() -- Restores Camera\r\n\r\nSkills & Abilities  \r\n- Skill(SkillName, callback, Cooldown) \226\128\147 Creates a custom skill with cooldown.  \r\n- ChangeSkillName(OldName, NewName) \226\128\147 Renames a skill in the hotbar.  \r\n\r\nSound & Audio  \r\n- PlaySound(ID, Speed, Volume, Position, StartTime) \226\128\147 Plays a sound with adjustable settings.  \r\n- AddFunctionToSound(sound, callback) \226\128\147 Triggers a callback when a sound plays.  \r\n- GetGitSoundID(GithubSnd, SoundName) \226\128\147 Converts a GitHub MP3 link into a playable sound ID.  \r\n\r\nCombat  \r\n- M1() \226\128\147 Simulates a left mouse click.  \r\n- GetClosestPlayer() \226\128\147 Finds the nearest alive player.  \r\n\r\nCollision & Physics  \r\n- Collusion(model, state) \226\128\147 Changes collision properties for a model\226\128\153s descendants.  \r\n- UndoCollusion(model) \226\128\147 Reverts changes made by Collusion().  \r\n- ChangeMeshID(mesh, id) \226\128\147 Changes a mesh ID.  \r\n- MoveModel(model, position) -- Moves Model.\r\n- AddTrashcanStrength(num) -- Changes Trashcan Throw Strength.\r\n- WallComboEverywhere() -- makes m4 wall combo anywhere. returns connection. can be disconnected.\r\n"
        repeat
            task.wait()
        until Backpack:FindFirstChild("Flowing Water")
        AddFunctionToAnimation("rbxassetid://13532562418", function()
            StopAnimation("rbxassetid://13532562418")
            PlayAnimation("rbxassetid://17325513870")
            PlaySound("rbxassetid://4815024605", 1, 0.25)
            PlaySound(Hit1SFX, 1, 1.5)
        end)
        AddFunctionToAnimation("rbxassetid://13532600125", function()
            StopAnimation("rbxassetid://13532600125")
            StopAnimation("rbxassetid://17325513870")
            PlayAnimation("rbxassetid://17325510002")
            PlaySound("rbxassetid://4815024605", 1, 0.25)
            PlaySound(Hit2SFX, 1, 1.5)
        end)
        AddFunctionToAnimation("rbxassetid://13532604085", function()
            StopAnimation("rbxassetid://13532604085")
            StopAnimation("rbxassetid://17325510002")
            PlayAnimation("rbxassetid://17325522388")
            PlaySound("rbxassetid://4815024605", 1, 0.25)
            PlaySound(Hit1SFX, 1, 1.5)
        end)
        AddFunctionToAnimation("rbxassetid://13294471966", function()
            StopAnimation("rbxassetid://13294471966")
            StopAnimation("rbxassetid://17325522388")
            PlayAnimation("rbxassetid://17325510002")
            PlaySound("rbxassetid://4815024605", 1, 0.25)
            PlaySound(Hit2SFX, 1, 1.5)
        end)
        AddFunctionToAnimation("rbxassetid://10470104242", function()
            StopAnimation("rbxassetid://10470104242")
            StopAnimation("rbxassetid://17325522388")
            PlayAnimation("rbxassetid://98542310119798", 1.5, 0.7, 0.8)
            PlaySound(Hit2SFX, 1, 1.5)
        end)
        AddFunctionToAnimation("rbxassetid://10479335397", function()
            StopAnimation("rbxassetid://10479335397")
            PlayAnimation("rbxassetid://13630786846", 1, 0.3)
            PlaySound("rbxassetid://4815024605", 1, 0.25)
            task.wait(0.4)
            PlaySound(Hit1SFX, 1, 1.5)
        end)
        AddFunctionToAnimation("rbxassetid://10480793962", function()
            StopAnimation("rbxassetid://10480793962")
            PlayAnimation("rbxassetid://17799224866", 1.5, 2)
        end)
        AddFunctionToAnimation("rbxassetid://10480796021", function()
            StopAnimation("rbxassetid://10480796021")
            PlayAnimation("rbxassetid://13501296372", 1, 0.5)
        end)
        FlowingWaterInitiateDebounce = tick()
        AddFunctionToAnimation("rbxassetid://12272894215", function()
            if tick() - FlowingWaterInitiateDebounce > 0.5 then
                FlowingWaterInitiateDebounce = tick()
                StopAnimation("rbxassetid://12272894215")
                PlayAnimation("rbxassetid://17354976067", 2, 0.3, 0.7)
                PlaySound("rbxassetid://137396441027315")
                PlaySound(Hit2SFX, 1, 1.5)
            end
        end)
        AddFunctionToAnimation("rbxassetid://12273188754", function()
            PlaySound(LaughSFX, 1, 2, nil, 0.5)
            task.spawn(function()
                if getgenv().InstaKill == true then
                    InstaKillingInProgress = true
                    task.wait(1.2)
                    local vu436 = true
                    task.spawn(function()
                        task.wait(0.5)
                        vu436 = false
                    end)
                    OldPos = Character.HumanoidRootPart.CFrame
                    FreezeCam(OldPos)
                    while vu436 do
                        local v437 = Vector3.new(69000000, - 500, 69000000)
                        Character.HumanoidRootPart.CFrame = CFrame.lookAt(v437, v437 - Vector3.new(0, 1, 0))
                        Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                        task.wait()
                    end
                    PlaySound("rbxassetid://9126102254", 1, 5, OldPos)
                    ChangePos(Character.HumanoidRootPart, OldPos)
                    UnfreezeCam()
                    InstaKillingInProgress = false
                end
            end)
            StopAnimation("rbxassetid://12273188754")
            StopAnimation("rbxassetid://17354976067")
            task.spawn(function()
                PlayAnimation("rbxassetid://112620365240235", 0.5, 3, 1.5)
                task.wait(1.5)
                PlaySound(Hit2SFX, 1, 1.5)
                PlaySound("rbxassetid://4815024605", 1, 0.4)
                PlayAnimation("rbxassetid://110898544937927", 1, 0, 1)
            end)
            local vu439 = workspace.Thrown.ChildAdded:Connect(function(p438)
                task.wait()
                if p438.Name == "Clone_Rig" then
                    p438:Destroy()
                end
            end)
            local vu440 = true
            task.spawn(function()
                task.wait(1)
                vu440 = false
            end)
            task.spawn(function()
                task.wait(1.5)
                vu439:Disconnect()
            end)
            local v441 = Character.HumanoidRootPart.Position
            local vu442 = AddRunningVfx(Character, true)
            local v443 = vu440
            while task.wait() and v443 do
                v441 = v441 + Vector3.new(Character.HumanoidRootPart.CFrame.LookVector.X, 0, Character.HumanoidRootPart.CFrame.LookVector.Z).Unit * 5
                ChangePos(Character.HumanoidRootPart, v441)
            end
            task.wait(0.7)
            pcall(function()
                vu442:Destroy()
            end)
        end)
        AddFunctionToAnimation("rbxassetid://14374357351", function()
            PlaySound(LaughSFX, 1, 5, nil, 0.5)
            MoreBlood = true
            StopAnimation("rbxassetid://14374357351")
            StopAnimation("rbxassetid://17354976067")
            local vu444 = 0.4
            task.spawn(function()
                PlayAnimation("rbxassetid://112620365240235", 0.5, 3, 1.5 + vu444)
                task.wait(1.5 + vu444)
                PlaySound(Hit2SFX, 1, 1.5)
                PlaySound("rbxassetid://4815024605", 1, 0.4)
                PlayAnimation("rbxassetid://98542310119798", 1.5, 0.7, 0.8)
            end)
            local vu446 = workspace.Thrown.ChildAdded:Connect(function(p445)
                task.wait()
                if p445.Name == "Clone_Rig" then
                    p445:Destroy()
                end
            end)
            local vu447 = true
            task.spawn(function()
                task.wait(1 + vu444)
                vu447 = false
            end)
            task.spawn(function()
                task.wait(1.5 + vu444)
                vu446:Disconnect()
            end)
            local v448 = Character.HumanoidRootPart.Position
            local vu449 = AddRunningVfx(Character, true)
            local v450 = vu447
            while task.wait() and v450 do
                v448 = v448 + Vector3.new(Character.HumanoidRootPart.CFrame.LookVector.X, 0, Character.HumanoidRootPart.CFrame.LookVector.Z).Unit * 5
                ChangePos(Character.HumanoidRootPart, v448)
            end
            task.wait(0.7)
            pcall(function()
                vu449:Destroy()
            end)
            MoreBlood = false
        end)
        AddFunctionToAnimation("rbxassetid://12296882427", function()
            StopAnimation("rbxassetid://12296882427")
            PlayAnimation("rbxassetid://12272894215", - 1, 0.7, 0.7)
            PlaySound("rbxassetid://137396441027315")
            PlaySound(Hit2SFX, 1, 1.5)
        end)
        AddFunctionToAnimation("rbxassetid://12296113986", function()
            PlaySound(Scream1SFX, 1, 1.5)
            MoreBlood = true
            StopAnimation("rbxassetid://12296113986")
            StopAnimation("rbxassetid://12272894215")
            PlaySound("rbxassetid://3352260042", 1, 0.6, nil, 1)
            task.spawn(function()
                if getgenv().InstaKill == true then
                    InstaKillingInProgress = true
                    task.wait(1.2)
                    local vu451 = true
                    task.spawn(function()
                        task.wait(0.5)
                        vu451 = false
                    end)
                    OldPos = Character.HumanoidRootPart.CFrame
                    FreezeCam(OldPos)
                    while vu451 do
                        local v452 = Vector3.new(69000000, - 500, 69000000)
                        Character.HumanoidRootPart.CFrame = CFrame.lookAt(v452, v452 - Vector3.new(0, 1, 0))
                        Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                        task.wait()
                    end
                    PlaySound("rbxassetid://9126102254", 1, 5, OldPos)
                    ChangePos(Character.HumanoidRootPart, OldPos)
                    UnfreezeCam()
                    InstaKillingInProgress = false
                end
            end)
            task.spawn(function()
                Character.HumanoidRootPart:WaitForChild("moveme"):Destroy()
            end)
            PlayAnimation("rbxassetid://17889458563", 0.05, 0.3, 1)
            task.wait(1)
            PlayAnimation("rbxassetid://100558589307006", 1, 0, 1.5)
            MoreBlood = false
        end)
        AddFunctionToAnimation("rbxassetid://12307656616", function()
            task.wait(0.1)
        end)
        AddFunctionToAnimation("rbxassetid://12309835105", function()
            PlaySound(Hit1SFX, 1, 1.5)
            task.wait(0.2)
            StopAnimation("rbxassetid://12309835105")
            PlayAnimation("rbxassetid://137561511768861", 1, 1, 0.7)
            task.wait(0.5);
            (function(p453)
                local v454 = {
                    Character["Left Arm"]["Left Arm"],
                    Character["Right Arm"]["Right Arm"]
                }
                local v455, v456, v457 = pairs(v454)
                local v458 = {}
                while true do
                    local v459
                    v457, v459 = v455(v456, v457)
                    if v457 == nil then
                        break
                    end
                    local v460, v461, v462 = pairs(v459:GetChildren())
                    while true do
                        local v463
                        v462, v463 = v460(v461, v462)
                        if v462 == nil then
                            break
                        end
                        if v463.Name == "Union" and v463:IsA("BasePart") then
                            table.insert(v458, v463)
                        end
                    end
                end
                local v464, v465, v466 = pairs(v458)
                while true do
                    local v467
                    v466, v467 = v464(v465, v466)
                    if v466 == nil then
                        break
                    end
                    game:GetService("TweenService"):Create(v467, TweenInfo.new(0.5), {
                        Transparency = p453 and 1 or 0
                    }):Play()
                    local v468, v469, v470 = pairs(v467:GetChildren())
                    while true do
                        local v471
                        v470, v471 = v468(v469, v470)
                        if v470 == nil then
                            break
                        end
                        local v472 = p453 and 1 or 0.6
                        if v471.Name == "Texture" then
                            game:GetService("TweenService"):Create(v471, TweenInfo.new(0.5), {
                                Transparency = v472
                            }):Play()
                        end
                    end
                end
            end)(false)
        end)
        AddFunctionToAnimation("rbxassetid://12351854556", function()
            StopAnimation("rbxassetid://12351854556")
            PlayAnimation("rbxassetid://16523080348", 0.5, 0, 1)
            PlaySound("rbxassetid://137396441027315")
            PlaySound(Hit2SFX, 1, 1.5)
        end)
        PreysPerilDebounce = tick()
        AddFunctionToAnimation("rbxassetid://13603396939", function()
            MoreBlood = true
            if tick() - PreysPerilDebounce > 0.5 then
                PreysPerilDebounce = tick()
                PlaySound(Scream1SFX, 1, 1.5)
            end
            StopAnimation("rbxassetid://13603396939")
            StopAnimation("rbxassetid://16523080348")
            PlayAnimation("rbxassetid://17106466215", 0.3, 1.5, 2)
            PlaySound("rbxassetid://3352260042", 1, 0.6, nil, 1)
            task.wait(2)
            PlayAnimation("rbxassetid://17106466215", - 0.4, 1.5, 1)
            MoreBlood = false
        end)
        function MakeRunSkill()
            local vu473 = Character.Humanoid.JumpPower
            local vu474 = false
            RunSkill = Skill("RUN", function()
                vu474 = not vu474
                if vu474 then
                    local function vu475()
                        PlayAnimation("rbxassetid://18897115785").Stopped:Once(function()
                            if vu474 then
                                vu475()
                            end
                        end)
                    end
                    vu475()
                    local vu476 = Character.Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
                        if Character.Humanoid.JumpPower ~= getgenv().RunJump then
                            Character.Humanoid.JumpPower = getgenv().RunJump
                        end
                    end)
                    Character.Humanoid.JumpPower = getgenv().RunJump
                    local vu477 = AddRunningVfx(Character)
                    while task.wait() and vu474 do
                        if not InstaKillingInProgress then
                            ChangePos(Character.HumanoidRootPart, Character.HumanoidRootPart.CFrame + Character.HumanoidRootPart.CFrame.LookVector * getgenv().RunSpeed * 0.04)
                        end
                    end
                    pcall(function()
                        vu477:Destroy()
                    end)
                    StopAnimation("rbxassetid://18897115785")
                    pcall(function()
                        vu476:Disconnect()
                    end)
                    Character.Humanoid.JumpPower = vu473
                end
            end, 1234, 7)
        end
        function ChangeMeshID(pu478, _)
            task.spawn(function()
                pcall(function()
                    local v479 = game:GetService("InsertService"):CreateMeshPartAsync("rbxassetid://536944822", pu478.CollisionFidelity, pu478.RenderFidelity)
                    pu478:ApplyMesh(v479)
                    task.wait(1)
                    v479:destroy()
                end)
            end)
        end
        local vu480 = Instance.new("MeshPart")
        local v481 = vu480
        vu480.ApplyMesh(v481, game:GetService("InsertService"):CreateMeshPartAsync("rbxassetid://536944822", vu480.CollisionFidelity, vu480.RenderFidelity))
        vu480.TextureID = "rbxassetid://536944939"
        function MakeGetTrashcanSkill()
            local function vu502(p482)
                local v483 = {
                    Character["Left Arm"]["Left Arm"],
                    Character["Right Arm"]["Right Arm"]
                }
                local v484, v485, v486 = pairs(v483)
                local v487 = {}
                while true do
                    local v488
                    v486, v488 = v484(v485, v486)
                    if v486 == nil then
                        break
                    end
                    local v489, v490, v491 = pairs(v488:GetChildren())
                    while true do
                        local v492
                        v491, v492 = v489(v490, v491)
                        if v491 == nil then
                            break
                        end
                        if v492.Name == "Union" and v492:IsA("BasePart") then
                            table.insert(v487, v492)
                        end
                    end
                end
                local v493, v494, v495 = pairs(v487)
                while true do
                    local v496
                    v495, v496 = v493(v494, v495)
                    if v495 == nil then
                        break
                    end
                    game:GetService("TweenService"):Create(v496, TweenInfo.new(0.5), {
                        Transparency = p482 and 1 or 0
                    }):Play()
                    local v497, v498, v499 = pairs(v496:GetChildren())
                    while true do
                        local v500
                        v499, v500 = v497(v498, v499)
                        if v499 == nil then
                            break
                        end
                        local v501 = p482 and 1 or 0.6
                        if v500.Name == "Texture" then
                            game:GetService("TweenService"):Create(v500, TweenInfo.new(0.5), {
                                Transparency = v501
                            }):Play()
                        end
                    end
                end
            end
            TrashcanSkill = Skill("Throwable Chainsaw", function()
                if not UsingTrashcanSkill and (not Character:FindFirstChild("Trash Can") and not InstaKillingInProgress == true) then
                    UsingTrashcanSkill = true
                    local function v507()
                        local v503, v504, v505 = pairs(workspace.Map.Trash:GetChildren())
                        while true do
                            local v506
                            v505, v506 = v503(v504, v505)
                            if v505 == nil then
                                break
                            end
                            if not v506:GetAttribute("Broken") then
                                return v506.Trashcan
                            end
                        end
                    end
                    if v507() then
                        local _ = Character.HumanoidRootPart.CFrame
                        local vu508 = makeclone(Character.HumanoidRootPart.CFrame, true)
                        game.Workspace.CurrentCamera.CameraSubject = vu508.Humanoid
                        while task.wait() and not Dead and (not Character:FindFirstChild("Trash Can") and Character:FindFirstChild("Humanoid")) do
                            vu508.HumanoidRootPart.CFrame = CFrame.lookAt(vu508.HumanoidRootPart.Position + Character.Humanoid.MoveDirection, vu508.HumanoidRootPart.Position + Character.Humanoid.MoveDirection + Vector3.new(Character.HumanoidRootPart.Position.X, 0, Character.HumanoidRootPart.Position.Z))
                            ChangePos(Character.HumanoidRootPart, v507().CFrame - Character.HumanoidRootPart.CFrame.LookVector * 5)
                            Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            M1()
                        end
                        pcall(function()
                            vu502(true)
                        end)
                        pcall(function()
                            local v509 = Character:FindFirstChild("Trash Can")
                            v509.Size = Vector3.new(15.311, 14.128, 52.964) * 0.1
                            v509:ApplyMesh(vu480)
                            v509.Massless = true
                            v509.Rotation = v509.Rotation + Vector3.new(0, 95, 0)
                        end)
                        pcall(function()
                            UnfreezeCam()
                            ChangePos(Character.HumanoidRootPart, vu508.HumanoidRootPart.CFrame)
                            Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                        end)
                        pcall(function()
                            vu508:Destroy()
                        end)
                        task.spawn(function()
                            while task.wait() and not Dead and Character:FindFirstChild("Trash Can") do
                                ChangePos(Character.HumanoidRootPart, Character.HumanoidRootPart.CFrame + Character.Humanoid.MoveDirection)
                            end
                            pcall(function()
                                vu502(false)
                            end)
                        end)
                    end
                    UsingTrashcanSkill = false
                end
            end, 0.7)
        end
        AddTrashcanStrength(1400)
        AddBlockAim()
        task.spawn(function()
            StopAllAnimation()
            task.wait()
            MorphToChainsawMan()
        end)
        local vu515 = Character.DescendantAdded:Connect(function(p510)
            task.wait()
            local v511, v512, v513 = pairs({
                "3",
                "4",
                "Start",
                "2",
                "WaterTrail",
                "Smoke",
                "Spinparticle1",
                "Spinparticle2",
                "1",
                "5",
                "4-2",
                "4-3",
                "6",
                "7",
                "8"
            })
            while true do
                local v514
                v513, v514 = v511(v512, v513)
                if v513 == nil then
                    break
                end
                if p510.Name == v514 then
                    if p510:IsA("ParticleEmitter") or p510:IsA("Trail") then
                        p510:Destroy()
                    end
                    break
                end
            end
        end)
        Character.Humanoid.Died:Once(function()
            vu515:Disconnect()
        end)
        CounterCounter()
        if getgenv().DashNoCooldown == true then
            EnableInfiniteDash(0.5)
        end
        if getgenv().ChangeWalk == true then
            ChangeWalkAnim("rbxassetid://17269023470", 0.7)
        end
        if getgenv().ChangeIdle == true then
            ChangeIdleAnim("rbxassetid://15963602367", 2, 0, 1.5, 1, 1)
        end
        if getgenv().ExtraSkills == true then
            MakeRunSkill()
            MakeGetTrashcanSkill()
        end
        task.spawn(function()
            local vu516 = false
            Character.Humanoid.Died:Connect(function()
                vu516 = true
            end)
            while not vu516 do
                repeat
                    task.wait()
                until Backpack:FindFirstChild("Flowing Water")
                local v517 = getgenv().InstaKill == true and "Insta Kill" or nil
                ChangeSkillName("Flowing Water", "Ripping Rush", v517)
                ChangeSkillName("Lethal Whirlwind Stream", "Gut Wrecker", v517)
                ChangeSkillName("Hunter\'s Grasp", "Brutal Toss")
                ChangeSkillName("Prey\'s Peril", "Revenant Counter")
                repeat
                    task.wait()
                until not Backpack:FindFirstChild("Flowing Water")
            end
        end)
        local v518 = {
            "rbxassetid://7406698155",
            "rbxassetid://7409174141",
            "rbxassetid://10472839127",
            "rbxassetid://13293923011",
            "rbxassetid://10472843302",
            "rbxassetid://13293741841",
            "rbxassetid://7408635405",
            "rbxassetid://7406698049",
            "rbxassetid://507150998",
            "rbxassetid://10479817490",
            "rbxassetid://12333253300",
            "rbxassetid://12272991772",
            "rbxassetid://12424750285",
            "rbxassetid://12273093651",
            "rbxassetid://8701825353",
            "rbxassetid://12273059009",
            "rbxassetid://12296842385",
            "rbxassetid://12296507848",
            "rbxassetid://12308667107",
            "rbxassetid://13293934460",
            "rbxassetid://4847026667",
            "rbxassetid://10495327847"
        }
        local function vu524(p519)
            local v520, v521, v522 = pairs(LocalPlayer.Character.Parent:GetChildren())
            while true do
                local v523
                v522, v523 = v520(v521, v522)
                if v522 == nil then
                    break
                end
                if p519:IsDescendantOf(v523) then
                    return v523
                end
            end
            return nil
        end
        for v525 = 1, # v518 do
            AddFunctionToSound(v518[v525], function(pu526)
                pcall(function()
                    local v527 = vu524(pu526.Parent)
                    if v527.Parent == workspace.Live and v527:GetAttribute("LastHit") == LocalPlayer.Name then
                        pu526:Destroy()
                    end
                end)
            end)
        end
        task.spawn(function()
            local v528 = {
                "rbxassetid://12392245642",
                "rbxassetid://13814438383",
                "rbxassetid://12392244609"
            }
            local vu529 = tick()
            for v530 = 1, # v528 do
                AddFunctionToSound(v528[v530], function(pu531)
                    pcall(function()
                        if pu531.Parent.Size == Vector3.new(15.311, 14.128, 52.964) * 0.1 then
                            local v532 = pu531.Parent
                            pu531:Destroy()
                            if tick() - vu529 > 0.5 then
                                vu529 = tick()
                                PlaySound("rbxassetid://76893078342903", 1, 2).Parent = v532
                                PlaySound("rbxassetid://6816619450", 1, 4, nil, 0.5).Parent = v532
                            end
                        end
                    end)
                end)
            end
        end)
        task.spawn(function()
            local v533, v534, v535 = pairs(workspace.Live:GetChildren())
            local vu536 = {}
            while true do
                local vu537
                v535, vu537 = v533(v534, v535)
                if v535 == nil then
                    break
                end
                if vu537:FindFirstChild("Humanoid") then
                    vu537:SetAttribute("LastHitTime", 0)
                    local vu538 = vu537.Humanoid.MaxHealth
                    local v541 = vu537.Humanoid.HealthChanged:Connect(function(p539)
                        if p539 < vu538 and p539 < vu537.Humanoid.MaxHealth and vu537:GetAttribute("LastHit") == LocalPlayer.Name then
                            local v540 = vu537
                            if os.clock() - v540:GetAttribute("LastHitTime") > 0.25 then
                                if MoreBlood then
                                    BloodParticle(vu537, 3)
                                else
                                    BloodParticle(vu537)
                                end
                                vu537:SetAttribute("LastHitTime", os.clock())
                            end
                        end
                        vu538 = p539
                    end)
                    table.insert(vu536, v541)
                end
            end
            local v547 = workspace.Live.ChildAdded:Connect(function(pu542)
                pu542:WaitForChild("Humanoid")
                if pu542:FindFirstChild("Humanoid") then
                    pu542:SetAttribute("LastHitTime", 0)
                    local vu543 = pu542.Humanoid.MaxHealth
                    local v546 = pu542.Humanoid.HealthChanged:Connect(function(p544)
                        if p544 < vu543 and p544 < pu542.Humanoid.MaxHealth and pu542:GetAttribute("LastHit") == LocalPlayer.Name then
                            local v545 = pu542
                            if os.clock() - v545:GetAttribute("LastHitTime") > 0.25 then
                                if MoreBlood then
                                    BloodParticle(pu542, 3)
                                else
                                    BloodParticle(pu542)
                                end
                                pu542:SetAttribute("LastHitTime", os.clock())
                            end
                        end
                        vu543 = p544
                    end)
                    table.insert(vu536, v546)
                end
            end)
            table.insert(vu536, v547)
            task.spawn(function()
                repeat
                    task.wait()
                until not vu1
                local v548, v549, v550 = pairs(vu536)
                while true do
                    local v551
                    v550, v551 = v548(v549, v550)
                    if v550 == nil then
                        break
                    end
                    if typeof(v551) == "RBXScriptConnection" then
                        v551:Disconnect()
                    end
                end
            end)
        end)
        function idlerepeat()
            local vu552 = Character.Humanoid
            local vu553 = PlaySound("rbxassetid://6015692344", 1, 3, nil, 0.3)
            vu553.Ended:Once(function()
                if vu552 then
                    idlerepeat()
                end
            end)
            vu552.Died:Once(function()
                vu553:Stop()
                vu552 = false
            end)
        end
        idlerepeat()
    end
    task.spawn(function()
        local vu554 = false
        game.Players.LocalPlayer.Character.Humanoid.Died:Once(function()
            vu554 = true
        end)
        local v555 = vu554
        while task.wait() and not v555 do
            local v556, v557, v558 = pairs(workspace.Live:GetChildren())
            while true do
                local v559
                v558, v559 = v556(v557, v558)
                if v558 == nil then
                    break
                end
                if v559 ~= game.Players.LocalPlayer.Character then
                    local v560, v561, v562 = pairs(v559:GetDescendants())
                    while true do
                        local v563
                        v562, v563 = v560(v561, v562)
                        if v562 == nil then
                            break
                        end
                        if v563:IsA("BasePart") and v563.CanCollide then
                            v563.CanCollide = false
                        end
                    end
                end
            end
        end
    end)
    function AddFunctionToSpawn(pu564, pu565)
        task.spawn(function()
            pcall(function()
                while pu564.CharacterAdded:Wait() do
                    pcall(function()
                        pu565()
                    end)
                end
            end)
        end)
    end
    function TrackDeathLocation()
        local vu566 = false
        game.Players.LocalPlayer.Character.Humanoid.Died:Once(function()
            vu566 = true
        end)
        local v567 = Vector3.new(- 456, 435, 775)
        local v568 = Vector3.new(648, 745, - 967)
        local v569 = vu566
        while task.wait() and not v569 do
            local v570 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            if (v570.X >= math.min(v567.X, v568.X) and (v570.X <= math.max(v567.X, v568.X) and (v570.Y >= math.min(v567.Y, v568.Y) and (v570.Y <= math.max(v567.Y, v568.Y) and (v570.Z >= math.min(v567.Z, v568.Z) and v570.Z <= math.max(v567.Z, v568.Z)))))) == true then
                DiedLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end
    task.spawn(TrackDeathLocation)
    Start()
    local vu571 = nil
    vu571 = AddFunctionToSpawn(game.Players.LocalPlayer, function()
        task.wait(1.5)
        if math.random() < 1 - getgenv().RevivePercent * 0.01 or not game.Players.LocalPlayer.Backpack:FindFirstChild("Flowing Water") then
            vu571:Stop()
            vu1 = false
        else
            InstaKillingInProgress = false
            task.spawn(TrackDeathLocation)
            PlaySound(RespawnSFX, 1, 1.5)
            Dialogue(game.Players.LocalPlayer, "Do you really think that you can stop me!??", 10, 0.05, 7, Color3.new(0.5, 0, 0), Enum.Font.Creepster, Vector3.new(0, 2, 0))
            task.spawn(function()
                local v572 = tick()
                local v573 = DiedLocation.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame - game.Players.LocalPlayer.Character.HumanoidRootPart.Position + v573 - Vector3.new(0, 10, 0)
                while task.wait() and tick() - v572 < 0.5 do
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame - game.Players.LocalPlayer.Character.HumanoidRootPart.Position + v573 - Vector3.new(0, 5 - (tick() - v572) * 10, 0)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                end
            end)
            Start()
        end
    end)
end
local vu574 = Instance.new("ScreenGui")
local v575 = Instance.new("Frame")
local v576 = Instance.new("TextLabel")
local v577 = Instance.new("TextLabel")
local v578 = Instance.new("TextButton")
local v579 = Instance.new("TextButton")
vu574.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
v575.Name = "Base"
v575.Parent = vu574
v575.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
v575.BackgroundTransparency = 0.35
v575.BorderColor3 = Color3.fromRGB(0, 0, 0)
v575.BorderSizePixel = 0
v575.AnchorPoint = Vector2.new(0.5, 0.5)
v575.Position = UDim2.new(0.5, 0, 0.5, 0)
v575.Size = UDim2.new(0, 328, 0, 97)
v576.Name = "Title"
v576.Parent = v575
v576.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
v576.BorderColor3 = Color3.fromRGB(0, 0, 0)
v576.Size = UDim2.new(0, 328, 0, 19)
v576.Font = Enum.Font.Highway
v576.Text = "Join Discord"
v576.TextColor3 = Color3.fromRGB(255, 255, 255)
v576.TextSize = 19
v577.Name = "Text"
v577.Parent = v575
v577.BackgroundTransparency = 1
v577.Position = UDim2.new(0, 0, 0.268041223, 0)
v577.Size = UDim2.new(0, 328, 0, 38)
v577.Font = Enum.Font.Cartoon
v577.Text = "For more awesome scripts, Join friedpotato\'s server. Credits to @nt3.c (Golden Heads Co Owner) for making this possible."
v577.TextColor3 = Color3.fromRGB(255, 255, 255)
v577.TextSize = 13
v577.TextWrapped = true
v578.Name = "Button"
v578.Parent = v575
v578.BackgroundColor3 = Color3.fromRGB(111, 111, 111)
v578.BackgroundTransparency = 0.5
v578.BorderColor3 = Color3.fromRGB(0, 0, 0)
v578.Position = UDim2.new(0.195121944, 0, 0.659793794, 0)
v578.Size = UDim2.new(0, 104, 0, 33)
v578.Font = Enum.Font.Cartoon
v578.Text = "Copy Link"
v578.TextColor3 = Color3.fromRGB(255, 255, 255)
v578.TextSize = 14
v578.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/mhFwYE4aG4")
end)
v579.Name = "Button"
v579.Parent = v575
v579.BackgroundColor3 = Color3.fromRGB(111, 111, 111)
v579.BackgroundTransparency = 0.5
v579.BorderColor3 = Color3.fromRGB(0, 0, 0)
v579.Position = UDim2.new(0.51219511, 0, 0.659793794, 0)
v579.Size = UDim2.new(0, 96, 0, 33)
v579.Font = Enum.Font.Cartoon
v579.Text = "Close"
v579.TextColor3 = Color3.fromRGB(255, 255, 255)
v579.TextSize = 14
v579.MouseButton1Click:Connect(function()
    vu574:Destroy()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Flowing Water") then
        execute()
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Wrong Hero!",
            Text = "Please use Hero Hunter and then execute again.",
            Duration = 5
        })
    end
end)
