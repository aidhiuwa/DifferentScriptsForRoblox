local link = "https://raw.githubusercontent.com/aidhiuwa/DifferentScriptsForRoblox/refs/heads/main/ScriptHub.lua"
local response = game:HttpGet(link, true)
local module = loadstring(response)()

local Killer = nil
local plr = game.Players.LocalPlayer
local PlayersMatch = game:GetService("ReplicatedStorage").Match.Players

local BreakVaultSpeed = false

local function SetKiller()
	for _, plr in pairs(game.Players:GetPlayers()) do
		if plr.Backpack.Scripts.Killer.Value == true then
			Killer = plr
			break
		end
	end
end

local function PlayerButtons()
	for i, SelectePlr in pairs(game.Players:GetPlayers()) do
		
		local Tab = module.AddTab(SelectePlr.Name)
		
		if SelectePlr ~= Killer then
			module.AddButton({ -- Heal Button
				SelectePlr.Name.."_H";
				"Heal "..SelectePlr.Name;
				Tab,
				function()
					local function ProgressRemote(player)
						local args = {
							[1] = {
								["D9v8"] = {
									["C21"] = player.Backpack.Scripts.values.HealProgress,
									["C20"] = "1000", -- progress /1000
									["C22"] = "S101"
								},
								["Bbh1O"] = {}, --[[DUPLICATE]]
								["Dvh1O"] = {}, --[[DUPLICATE]]
								["Dbh1O"] = {}, --[[DUPLICATE]]
								["Dhv8"] = {} --[[DUPLICATE]]
							}
						}

						args[1].Bbh1O = args[1].D9v8
						args[1].Dvh1O = args[1].D9v8
						args[1].Dbh1O = args[1].D9v8
						args[1].Dhv8 = args[1].D9v8
						game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvents"):FindFirstChild("NewPropertie"):FireServer(unpack(args))
					end

					local function StartHealProcess(player)
						local args = {
							[1] = player.Name, -- player
							[2] = "Normal" -- keep like this
						}

						game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvents"):FindFirstChild("ClientToServer"):FindFirstChild("HealingEvent"):FireServer(unpack(args))
					end

					local function HealAnimation(player)
						local args = {
							[1] = {
								["D9v8"] = {
									["C21"] = player.Backpack.Scripts.values.Action, -- FIXED PLAYER REFERENCE
									["C20"] = "GettingHealing",
									["C22"] = "S101"
								},
								["Bbh1O"] = {}, --[[DUPLICATE]]
								["Dvh1O"] = {}, --[[DUPLICATE]]
								["Dbh1O"] = {}, --[[DUPLICATE]]
								["Dhv8"] = {} --[[DUPLICATE]]
							}
						}

						args[1].Bbh1O = args[1].D9v8
						args[1].Dvh1O = args[1].D9v8
						args[1].Dbh1O = args[1].D9v8
						args[1].Dhv8 = args[1].D9v8
						game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvents"):FindFirstChild("NewPropertie"):FireServer(unpack(args))
					end
					
					ProgressRemote(SelectePlr)
					StartHealProcess(SelectePlr)
					HealAnimation(SelectePlr)
				end,
			})
			
			module.AddButton({ -- Teleport To Button
				"TP_"..SelectePlr.Name;
				"Teleport to "..SelectePlr.Name;
				Tab,
				function()
					plr.Character:MoveTo(SelectePlr.Character.HumanoidRootPart.Position + Vector3.new(0, 5, 0))
				end,
			})
		end
	end
end

if module then
	repeat
		task.wait(2)
		for _, plr in pairs(game.Players:GetPlayers()) do
			if plr.Backpack.Scripts.Killer.Value == true and plr.Backpack.Scripts.Killer then
				Killer = plr
			end
		end
		
		if Killer then
			print("KILLER HAS BEEN FOUND:"..Killer.Name)
		else
			print("LOCATING KILLER")
		end
	until Killer ~= nil
	
	module.ConnectGUI()
	
	local KillerTab = module.AddTab("Killer")
	
	module.AddButton({ -- Blind Killer
		"BlindKiller";
		"Blinds Killer";
		KillerTab;
		function()
			if not Killer then warn("Killer No Select") return end

			local args = {
				[1] = "StartBlinding",
				[2] = Killer.Character.Flash_Zone
			}

			plr.Backpack.Scripts.GlobalSurvivor.Action.UseItem.Flashlight.Flashlight:FireServer(unpack(args))

			wait(4)

			local args = {
				[1] = "StopBlinding"
			}

			plr.Backpack.Scripts.GlobalSurvivor.Action.UseItem.Flashlight.Flashlight:FireServer(unpack(args))
		end,
	})
	
	module.AddButton({ -- Force Wiggle
		"ForceWig",
		"Force Your Own Wiggle",
		KillerTab;
		function()
			local count = 0

			if not Killer then
				warn("No Killer Selected")
				return
			end

			repeat
				task.wait()
				count = count + 1

				local args = {
					[1] = "Wiggle",
					[2] = Killer
				}

				game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvents"):FindFirstChild("Server_Event"):FireServer(unpack(args))
			until count >= 200
		end,
	})
	
	module.AddButton({ -- Unhook all
		"UA";
		"Unhook all other survivors";
		nil;
		function()
			local function UnhookEvent(Plrare, Hook)
				if Plrare ~= plr then
					local args = {
						[1] = "Hook",
						[2] = "Unhook",
						[3] = Plrare.Character, -- plr character
						[4] = Hook
					}

					game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Server_Event"):FireServer(unpack(args))
				end
			end
			
			for i, hook in pairs(game.Workspace:GetChildren()) do
				if string.find(hook.Name, "Hook") then
					if game.Players:FindFirstChild(hook.Panel.Player.Value) then
						UnhookEvent(game.Players:FindFirstChild(hook.Panel.Player.Value), hook)
					end
				end
			end
		end,
	})
	
	local ActiveBK = false
	
	module.AddButton({ -- Killer Break Time
		"BK";
		"Break Killer (1 - 100)s";
		KillerTab;
		function()
			if not Killer then warn("No killer Selected") return end
			
			ActiveBK = not ActiveBK
			
			local function one()
				local args = {
					[1] = {
						["D9v8"] = {
							["C21"] = Killer.Backpack.Scripts.values.KillerAction,
							["C20"] = "Stun",
							["C22"] = "S101"
						},
						["Bbh1O"] = {} --[[DUPLICATE]],
						["Dvh1O"] = {} --[[DUPLICATE]],
						["Dbh1O"] = {} --[[DUPLICATE]],
						["Dhv8"] = {} --[[DUPLICATE]]
					}
				}

				args[1].Bbh1O = args[1].D9v8
				args[1].Dvh1O = args[1].D9v8
				args[1].Dbh1O = args[1].D9v8
				args[1].Dhv8 = args[1].D9v8
				game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvents"):FindFirstChild("NewPropertie"):FireServer(unpack(args))
			end

			local function two()
				local args = {
					[1] = {
						["D9v8"] = {
							["C21"] = Killer.Backpack.Scripts.values.Stunned.Kind,
							["C20"] = "Normal",
							["C22"] = "S101"
						},
						["Bbh1O"] = {} --[[DUPLICATE]],
						["Dvh1O"] = {} --[[DUPLICATE]],
						["Dbh1O"] = {} --[[DUPLICATE]],
						["Dhv8"] = {} --[[DUPLICATE]]
					}
				}

				args[1].Bbh1O = args[1].D9v8
				args[1].Dvh1O = args[1].D9v8
				args[1].Dbh1O = args[1].D9v8
				args[1].Dhv8 = args[1].D9v8
				game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvents"):FindFirstChild("NewPropertie"):FireServer(unpack(args))
			end
			-- Killer.Backpack.Scripts.values.KillerAction,
			local function eh()
				local args = {
					[1] = {
						["D9v8"] = {
							["C21"] = Killer.Backpack.Scripts.values.KillerAction,
							["C20"] = "Nothing",
							["C22"] = "S101"
						},
						["Bbh1O"] = {} --[[DUPLICATE]],
						["Dvh1O"] = {} --[[DUPLICATE]],
						["Dbh1O"] = {} --[[DUPLICATE]],
						["Dhv8"] = {} --[[DUPLICATE]]
					}
				}

				args[1].Bbh1O = args[1].D9v8
				args[1].Dvh1O = args[1].D9v8
				args[1].Dbh1O = args[1].D9v8
				args[1].Dhv8 = args[1].D9v8
				game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("NewPropertie"):FireServer(unpack(args))
			end

			local function three()
				local args = {
					[1] = {
						["D9v8"] = {
							["C21"] = Killer.Backpack.Scripts.values.Stunned,
							["C20"] = false,
							["C22"] = "B101"
						},
						["Bbh1O"] = {} --[[DUPLICATE]],
						["Dvh1O"] = {} --[[DUPLICATE]],
						["Dbh1O"] = {} --[[DUPLICATE]],
						["Dhv8"] = {} --[[DUPLICATE]]
					}
				}

				args[1].Bbh1O = args[1].D9v8
				args[1].Dvh1O = args[1].D9v8
				args[1].Dbh1O = args[1].D9v8
				args[1].Dhv8 = args[1].D9v8

				game:GetService("ReplicatedStorage"):FindFirstChild("RemoteEvents"):FindFirstChild("NewPropertie"):FireServer(unpack(args))
			end
			
			if ActiveBK then
				one()
				two()
			else
				three()
				eh()
			end
		end,
	})
	
	module.AddTextBox({ -- Vault Speed
		"VS";
		"Change Vault Speed (0.1(Fast) - 300(Slow))";
		nil;
		function(text)
			if not tonumber(text) then warn("Use Numbers from 0.1-300") return end	
			
			local ActionConfig = PlayersMatch:FindFirstChild(plr.Name).Movement
			if tonumber(text) <= 300 and tonumber(text) >= 0.1 then
				ActionConfig:SetAttribute("WindowVaultSpeed", tonumber(text))
			end
		end,
	})
	
	module.AddButton({ -- Player Auras
		"PA";
		"Highlight Players";
		nil;
		function()
			for i, player in pairs(game.Players:GetPlayers()) do
				local HL = Instance.new("Highlight", player.Character)
				if player == Killer then
					HL.FillColor = Color3.new(1, 0, 0)
				else
					HL.FillColor = Color3.new(1, 1, 0)
				end
			end
		end,
	})
	
	module.AddButton({ -- Give Max Stacks for Resourceful
		"MSfR";
		"Fill Resourcful Stacks (Needs perk equipped)";
		nil;
		function()
			plr.Character:SetAttribute("Resourceful", 4)
		end
	})
	
	PlayerButtons() -- adds heal player buttons
else
	warn("Failed to load module from GitHub")
end
