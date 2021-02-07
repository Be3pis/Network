local NetworkOwnership = {
	["PluginName"] = "Network",
	["PluginDescription"] = "Yes",
	["Commands"] = {
		["Claimkill"] = {
			["ListName"] = "Claimkill {Target}",
			["Description"] = "Uhh claimkill?",
			["Aliases"] = {},
			["Function"] = function(args,speaker)
				for i,v in pairs(getPlayer(args[1])) do
					local Target = game:GetService("Players")[v]
	
					local LocalPlayer = game:GetService("Players").LocalPlayer
					Target.Character:BreakJoints()
				end
			end,
		},
		["Claim"] = {
			["ListName"] = "Claim {Target}",
			["Description"] = "Uhh claim?",
			["Aliases"] = {},
			["Function"] = function(args,speaker)
				for i,v in pairs(getPlayer(args[1])) do
					local Target = game:GetService("Players")[v]
					local Player = Target
					local LocalPlayer = game:GetService("Players").LocalPlayer
					
    game:GetService("RunService").Heartbeat:Connect(function()
        LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge) * math.huge
        pcall(function() sethiddenproperty(LocalPlayer, "SimulationRadius", math.pow(math.huge, math.huge) * math.huge) end)

        for i, v in pairs(game.Players:GetPlayers()) do
            if v ~= LocalPlayer then
                LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge) * math.huge
                pcall(function() settings().Physics.AllowSleep = false ; sethiddenproperty(LocalPlayer, "SimulationRadius", math.pow(math.huge, math.huge) * math.huge) end)
                LocalPlayer.ReplicationFocus = Workspace
            end
        end
    end)
				
				local Tool = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
				LocalPlayer.Character.Humanoid:Destroy()
				Instance.new("Humanoid",LocalPlayer.Character)
				Tool.Parent = LocalPlayer.Character
				 local CurrentCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                               local CurrentCFrame2 = LocalPlayer.Character.HumanoidRootPart.CFrame
                               LocalPlayer.Character.PrimaryPart = LocalPlayer.Character.HumanoidRootPart
                                repeat
                                   Player.Character.HumanoidRootPart.CFrame = (CFrame.new(Vector3.new(0,1000000,0)))
                                    LocalPlayer.Character.HumanoidRootPart.CFrame = (Player.Character.HumanoidRootPart.CFrame) 
                                    game:GetService("RunService").Heartbeat:Wait()
                                until Tool.Parent == Player.Character
				     
                                    LocalPlayer.Character:WaitForChild'HumanoidRootPart'.CFrame = CurrentCFrame2
                                workspace.FallenPartsDestroyHeight = 0/1/0
                                                                                    for i = 1,5  do
                                                                   LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(Vector3.new(0,math.huge,0)))
                                end    
                                wait(.1)
                                    for i = 1,5  do
                                    LocalPlayer.Character:WaitForChild'HumanoidRootPart'.CFrame = CurrentCFrame2
                                    end
                            Wait(.2)
                                        
                                
                                if not Player.Character:FindFirstChild("-Claimed") then
                                    local Claimed = Instance.new("ObjectValue")
                                    Claimed.Name = "-Claimed"
                                    Claimed.Parent = Player.Character
                                end
                                LocalPlayer.Character:BreakJoints()
				end
			end,
		},

	},
}
