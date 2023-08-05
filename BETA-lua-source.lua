local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local GlobalTI = TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)

local LPlayer = game:GetService("Players").LocalPlayer

--CUSTOMIZED FUCTION AREA--

local NametagActive = false

local function NameTagAdvancerHandler(Type,Text1,Text2,Text3,Text4)
	local function RainbowNameTag()

		if NametagActive == true then return end
		NametagActive = true

		local Remote = game:GetService("ReplicatedStorage"):WaitForChild("RoleplayNametag")

		local Nametag = Text1
		local TagHeight = 4

		local function Change(Color)
			Remote:FireServer(Nametag,Color,TagHeight)
		end

		local ColorStage = 1

		local CurrentColor = Color3.fromRGB(0,0,0)

		repeat
			if ColorStage == 1 then
				if CurrentColor == Color3.fromRGB(0,0,0) then
					CurrentColor = Color3.fromRGB(255,0,0)
					ColorStage += 1
				else
					CurrentColor = Color3.fromRGB(255,0,(CurrentColor.B*255)-1)
					if CurrentColor == Color3.fromRGB(255,0,0) or (CurrentColor.B*255) <= 0 then
						ColorStage += 1
					end
				end
			elseif ColorStage == 2 then
				CurrentColor = Color3.fromRGB(255,(CurrentColor.G*255)+1,0)
				if CurrentColor == Color3.fromRGB(255,255,0) or (CurrentColor.G*255) >= 255 then
					ColorStage += 1
				end
			elseif ColorStage == 3 then
				CurrentColor = Color3.fromRGB((CurrentColor.R*255)-1,255,0)
				if CurrentColor == Color3.fromRGB(0,255,0) or (CurrentColor.R*255) <= 0 then
					ColorStage += 1
				end
			elseif ColorStage == 4 then
				CurrentColor = Color3.fromRGB(0,255,(CurrentColor.B*255)+1)
				if CurrentColor == Color3.fromRGB(0,255,255) or (CurrentColor.B*255) >= 255 then
					ColorStage += 1
				end
			elseif ColorStage == 5 then
				CurrentColor = Color3.fromRGB(0,(CurrentColor.G*255)-1,255)
				if CurrentColor == Color3.fromRGB(0,0,255) or (CurrentColor.G*255) <= 0 then
					ColorStage += 1
				end
			elseif ColorStage == 6 then
				CurrentColor = Color3.fromRGB((CurrentColor.R*255)+1,0,255)
				if CurrentColor == Color3.fromRGB(255,0,255) or (CurrentColor.R*255) >= 255 then
					ColorStage = 1
				end
			end
			Change(CurrentColor)
			game:GetService("RunService").RenderStepped:Wait()
		until game:GetService("Players").LocalPlayer.Character.Humanoid.Health < 50 or NametagActive == false
	end
	local function SwapperNameTag()

		if NametagActive == true then return end
		NametagActive = true

		local Remote = game:GetService("ReplicatedStorage"):WaitForChild("RoleplayNametag")

		local SwitchDelay = 0.03

		local function Change(Swronguy)
			Remote:FireServer(Swronguy,Color3.fromRGB(255, 255, 255), 4)
		end

		repeat
			Change(Text1)
			task.wait(SwitchDelay)
			Change(Text2)
			task.wait(SwitchDelay)
			Change(Text3)
			task.wait(SwitchDelay)
			Change(Text4)
			task.wait(SwitchDelay)
		until game:GetService("Players").LocalPlayer.Character.Humanoid.Health < 50 or NametagActive == false
	end
	if Type == "Rainbow" then
		RainbowNameTag()
	else
		SwapperNameTag()
	end
	--[[NametagStopButton.MouseButton1Click:Connect(function()
		NametagActive = false
	end)
	NametagRainbowButton.MouseButton1Click:Connect(RainbowNameTag)
	NametagSwapperButton.MouseButton1Click:Connect(SwapperNameTag)]]
end


local MusicValid = false
local playing = false

local function SetMusic(ID)
	if playing == false then
		game:GetService("ReplicatedStorage").MusicPlayer:InvokeServer(ID)
		playing = true
	else
		playing = false
		local HRP = LPlayer.Character:FindFirstChild("HumanoidRootPart")
		if HRP then
			local AudioPlayer = HRP:FindFirstChild("MusicPlayer_Sound")
			if AudioPlayer then
				game:GetService("ReplicatedStorage").MusicPlayer:InvokeServer(AudioPlayer)
			end
		end
	end
end
--[[MusicPlayStopButton.MouseButton1Click:Connect(function()
	if MusicValid == true then
		SetMusic(MusicTextArea.Text)
	end
end)]]
local function ValidateSong(songID)
	local MarketplaceService = game:GetService("MarketplaceService")
	if not songID or not tonumber(songID) then return false end

	local success, result = pcall(function()
		return MarketplaceService:GetProductInfo(songID)
	end)

	if success and result and result.AssetTypeId == 3 then
		MusicValid = true
		return true
	else
		MusicValid = false
		return false
	end
end
--[[MusicTextArea.Focused:Connect(function()
	MusicIDValidator.TextColor3 = Color3.fromRGB(255, 195, 121)
end)
MusicTextArea.FocusLost:Connect(function()
	ValidateSong(MusicTextArea.Text)
end)
MusicFixButton.MouseButton1Click:Connect(function()
	playing = false
	TextLabel_18.Text = "PLAY"
end)]]


--PANELS & BUTTONS--

local UniversalTabs = {
	["Universal"] = {
		Order = 0,
		Elements = {
			["Title1"] = {Type = "Title",Text = "Features for every game",Order = 1},
			["Button2"] = {
				Type = "Button",
				Text = "Infinite Yield",
				Function = function()
					-- Activated Code
					loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
				end,
				Order = 2
			},
		}
	}
}

local GameIDList = {
	["1343871267"] = {
		["General"] = {
			Order = 1,
			Elements = {
				["Title1"] = {Type = "Title",Text = "FMRP - General Features",Order = 1},
				["Button1"] = {
					Type = "Button",
					Text = "Unlock All Characters V2",
					Function = function()
						-- Activated Code
						local function UnlockAllV2()
							local function UnlockDevCharacters()
								local function Unlock()
									local UIArea = LPlayer.PlayerGui.MainMenu["Char_Frames"].Classic.Classic3
									UIArea.Visible = true
									for _, v in pairs(UIArea:GetChildren()) do
										if v:IsA("ImageButton") then
											v.Visible = true
										end
									end
								end
								Unlock()
							end

							local function UnlockOtherCharacters()
								for _,v in pairs(LPlayer.PlayerGui.MainMenu:GetDescendants()) do
									if v:IsA("ImageButton") then
										if v:FindFirstChild("Viewport")then
											v.Image = ""
											v.Viewport.Visible = true
										end
									end
								end
							end

							game:GetService("RunService").RenderStepped:Connect(function()
								UnlockOtherCharacters()
								UnlockDevCharacters()
								task.wait(1)
							end)
						end
						UnlockAllV2()
					end,
					Order = 2
				},
				["Button2"] = {
					Type = "Button",
					Text = "Always have Jumpscare",
					Function = function()
						-- Activated Code
						local Players = game:GetService("Players")
						local Player = Players.LocalPlayer
						local PlayerGui = Player.PlayerGui
						game:GetService("RunService").RenderStepped:Connect(function()
							for _,jumpscareFrame in pairs(PlayerGui:FindFirstChild("Animations"):GetDescendants()) do
								if jumpscareFrame.Name == "jumpscare" then
									jumpscareFrame.Active = true
									jumpscareFrame.NoUse.Visible = false
								end
							end
							task.wait(1)
						end)
					end,
					Order = 3
				},
			}
		},
		["Audio"] = {
			Order = 2,
			Elements = {
				["Title1"] = {Type = "Title", Text = "FMRP - Audio Features",Order = 1},
				["Button1"] = {
					Type = "Button",
					Text = "Spam Jumpscare Sounds",
					Function = function()
						-- Activated Code
						local args = {
							[1] = game:GetService("Players").LocalPlayer.Character.LowerTorso,
							[2] = workspace:WaitForChild(game:GetService("Players").LocalPlayer.Name)
						}

						local a = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("CharacterFunctions"):WaitForChild("Jumpscares")

						for i, v in pairs(a:GetChildren()) do
							v:FireServer(unpack(args))
						end
					end,
					Order = 2
				},
				["ToggleButtonWithInputs1"] = {
					Type = "ToggleButtonWithInputs",
					Text = "Custom Music Player",
					Active = false,
					Inputs = {
						[1] = "Audio ID",
					},
					Function = function(Active,inputs)
						if Active == true then
							-- on code
							if ValidateSong(inputs[1]) == true then
								if MusicValid == true then
									SetMusic(inputs[1])
								end
							end
						else
							-- off code
							playing = false
							local HRP = LPlayer.Character:FindFirstChild("HumanoidRootPart")
							if HRP then
								local AudioPlayer = HRP:FindFirstChild("MusicPlayer_Sound")
								if AudioPlayer then
									game:GetService("ReplicatedStorage").MusicPlayer:InvokeServer(AudioPlayer)
								end
							end
						end
					end,
					Order = 3
				},
				["Button2"] = {
					Type = "Button",
					Text = "Fix Music, if broken",
					Function = function()
						-- Activated Code
						playing = false
						local HRP = LPlayer.Character:FindFirstChild("HumanoidRootPart")
						if HRP then
							local AudioPlayer = HRP:FindFirstChild("MusicPlayer_Sound")
							if AudioPlayer then
								game:GetService("ReplicatedStorage").MusicPlayer:InvokeServer(AudioPlayer)
							end
						end
					end,
					Order = 4
				},
			}
		},
		["Nametags"] = {
			Order = 3,
			Elements = {
				["Title"] = {Text = "FMRP - Nametag Features",Order = 1},
				["ToggleButtonWithInputs1"] = {
					Type = "ToggleButtonWithInputs",
					Text = "Rainbow Nametag",
					Active = false,
					Inputs = {
						[1] = "Name",
					},
					Function = function(Active,inputs)
						if Active == true then
							-- on code
							NameTagAdvancerHandler("Rainbow",inputs[1],"","","")
						else
							-- off code
							NametagActive = false
						end
					end,
					Order = 2
				},
				["ToggleButtonWithInputs2"] = {
					Type = "ToggleButtonWithInputs",
					Text = "Nametag Swapper",
					Active = false,
					Inputs = {
						[1] = "Name 1",
						[2] = "Name 2",
						[3] = "Name 3",
						[4] = "Name 4",
					},
					Function = function(Active,inputs)
						if Active == true then
							-- on code
							NameTagAdvancerHandler("Swap",inputs[1],inputs[2],inputs[3],inputs[4])
						else
							-- off code
							NametagActive = false
						end
					end,
					Order = 3
				},
			}
		},
	}
}

--CORE GUI CREATION--

local _LH_SYSTEM = Instance.new("ScreenGui")
local CoreFrame = Instance.new("Frame")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

_LH_SYSTEM.Name = "_LH_SYSTEM"
_LH_SYSTEM.Parent = CoreGui
_LH_SYSTEM.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_LH_SYSTEM.DisplayOrder = 1000
_LH_SYSTEM.ResetOnSpawn = false

CoreFrame.Name = "CoreFrame"
CoreFrame.Parent = _LH_SYSTEM
CoreFrame.AnchorPoint = Vector2.new(0.5, 0.5)
CoreFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CoreFrame.BackgroundTransparency = 1.000
CoreFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
CoreFrame.BorderSizePixel = 0
CoreFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
CoreFrame.Size = UDim2.new(0.326739937, 0, 0.365885407, 0)

UIAspectRatioConstraint.Parent = CoreFrame
UIAspectRatioConstraint.AspectRatio = 1.587

--UI CREATION--

local UT_UIToggler = Instance.new("ImageButton")
local UT_UICorner = Instance.new("UICorner")
local UT_TextLabel = Instance.new("TextLabel")
local UT_TextLabel_2 = Instance.new("TextLabel")

UT_UIToggler.Name = "UT_UIToggler"
UT_UIToggler.Visible = false
UT_UIToggler.Parent = _LH_SYSTEM
UT_UIToggler.AnchorPoint = Vector2.new(0, 0.5)
UT_UIToggler.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
UT_UIToggler.BorderColor3 = Color3.fromRGB(0, 0, 0)
UT_UIToggler.BorderSizePixel = 0
UT_UIToggler.Position = UDim2.new(0.00600000005, 0, 0.5, 0)
UT_UIToggler.Size = UDim2.new(0.0366526321, 0, 0.0658461675, 0)
UT_UIToggler.ImageTransparency = 1.000

UT_UICorner.CornerRadius = UDim.new(1, 0)
UT_UICorner.Name = "UT_UICorner"
UT_UICorner.Parent = UT_UIToggler

UT_TextLabel.Name = "UT_TextLabel"
UT_TextLabel.Parent = UT_UIToggler
UT_TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
UT_TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UT_TextLabel.BackgroundTransparency = 1.000
UT_TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
UT_TextLabel.BorderSizePixel = 0
UT_TextLabel.Position = UDim2.new(0.479999989, 0, 0.5, 0)
UT_TextLabel.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
UT_TextLabel.ZIndex = 2
UT_TextLabel.Font = Enum.Font.Unknown
UT_TextLabel.Text = "L"
UT_TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
UT_TextLabel.TextScaled = true
UT_TextLabel.TextSize = 14.000
UT_TextLabel.TextWrapped = true

UT_TextLabel_2.Name = "UT_TextLabel"
UT_TextLabel_2.Parent = UT_UIToggler
UT_TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
UT_TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UT_TextLabel_2.BackgroundTransparency = 1.000
UT_TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
UT_TextLabel_2.BorderSizePixel = 0
UT_TextLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
UT_TextLabel_2.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
UT_TextLabel_2.Font = Enum.Font.Unknown
UT_TextLabel_2.Text = "H"
UT_TextLabel_2.TextColor3 = Color3.fromRGB(32, 99, 255)
UT_TextLabel_2.TextScaled = true
UT_TextLabel_2.TextSize = 14.000
UT_TextLabel_2.TextWrapped = true
UT_TextLabel_2.TextYAlignment = Enum.TextYAlignment.Bottom

local LD_Loading = Instance.new("Frame")
local LD_UICorner = Instance.new("UICorner")
local LD_Overlap = Instance.new("Frame")
local LD_UICorner_2 = Instance.new("UICorner")
local LD_LoadingBar = Instance.new("Frame")
local LD_UICorner_3 = Instance.new("UICorner")
local LD_Progress = Instance.new("Frame")
local LD_UICorner_4 = Instance.new("UICorner")
local LD_ImageLabel = Instance.new("ImageLabel")
local LD_UICorner_5 = Instance.new("UICorner")
local LD_UIGradient = Instance.new("UIGradient")
local LD_Title = Instance.new("TextLabel")
local LD_UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local LD_Title_2 = Instance.new("TextLabel")
local LD_UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local LD_Status = Instance.new("TextLabel")
local LD_UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")

LD_Loading.Name = "LD_Loading"
LD_Loading.Visible = false
LD_Loading.Parent = CoreFrame
LD_Loading.AnchorPoint = Vector2.new(0.5, 0.5)
LD_Loading.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
LD_Loading.BorderColor3 = Color3.fromRGB(0, 0, 0)
LD_Loading.BorderSizePixel = 0
LD_Loading.Position = UDim2.new(0.5, 0, 0.5, 0)
LD_Loading.Size = UDim2.new(0.899999917, 0, 0.400000006, 0)

LD_UICorner.CornerRadius = UDim.new(0.0711743757, 0)
LD_UICorner.Name = "LD_UICorner"
LD_UICorner.Parent = LD_Loading

LD_Overlap.Name = "LD_Overlap"
LD_Overlap.Parent = LD_Loading
LD_Overlap.AnchorPoint = Vector2.new(0.5, 0)
LD_Overlap.BackgroundColor3 = Color3.fromRGB(32, 34, 39)
LD_Overlap.BorderColor3 = Color3.fromRGB(0, 0, 0)
LD_Overlap.BorderSizePixel = 0
LD_Overlap.Position = UDim2.new(0.5, 0, 0, 0)
LD_Overlap.Size = UDim2.new(1, 0, 0.950591326, 0)

LD_UICorner_2.CornerRadius = UDim.new(0.0748737901, 0)
LD_UICorner_2.Name = "LD_UICorner"
LD_UICorner_2.Parent = LD_Overlap

LD_LoadingBar.Name = "LD_LoadingBar"
LD_LoadingBar.Parent = LD_Overlap
LD_LoadingBar.AnchorPoint = Vector2.new(0.5, 1)
LD_LoadingBar.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
LD_LoadingBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
LD_LoadingBar.BorderSizePixel = 0
LD_LoadingBar.Position = UDim2.new(0.5, 0, 0.899999976, 0)
LD_LoadingBar.Size = UDim2.new(0.899999976, 0, 0.075000003, 0)

LD_UICorner_3.CornerRadius = UDim.new(1, 0)
LD_UICorner_3.Name = "LD_UICorner"
LD_UICorner_3.Parent = LD_LoadingBar

LD_Progress.Name = "LD_Progress"
LD_Progress.Parent = LD_LoadingBar
LD_Progress.AnchorPoint = Vector2.new(0, 0.5)
LD_Progress.BackgroundColor3 = Color3.fromRGB(32, 99, 255)
LD_Progress.BorderColor3 = Color3.fromRGB(0, 0, 0)
LD_Progress.BorderSizePixel = 0
LD_Progress.Position = UDim2.new(0, 0, 0.5, 0)
LD_Progress.Size = UDim2.new(0.5, 0, 1, 0)

LD_UICorner_4.CornerRadius = UDim.new(1, 0)
LD_UICorner_4.Name = "LD_UICorner"
LD_UICorner_4.Parent = LD_Progress

LD_ImageLabel.Name = "LD_ImageLabel"
LD_ImageLabel.Parent = LD_Overlap
LD_ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LD_ImageLabel.BackgroundTransparency = 1.000
LD_ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
LD_ImageLabel.BorderSizePixel = 0
LD_ImageLabel.Size = UDim2.new(1, 0, 1, 0)
LD_ImageLabel.ZIndex = 0
LD_ImageLabel.Image = "rbxassetid://7029770407"
LD_ImageLabel.ImageColor3 = Color3.fromRGB(0, 89, 255)
LD_ImageLabel.ImageTransparency = 0.800
LD_ImageLabel.ScaleType = Enum.ScaleType.Tile
LD_ImageLabel.TileSize = UDim2.new(0.100000001, 0, 0.379999995, 0)

LD_UICorner_5.CornerRadius = UDim.new(0.0748737901, 0)
LD_UICorner_5.Name = "LD_UICorner"
LD_UICorner_5.Parent = LD_ImageLabel

LD_UIGradient.Rotation = -75
LD_UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
LD_UIGradient.Name = "LD_UIGradient"
LD_UIGradient.Parent = LD_ImageLabel

LD_Title.Name = "LD_Title"
LD_Title.Parent = LD_Loading
LD_Title.AnchorPoint = Vector2.new(0.5, 0.5)
LD_Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LD_Title.BackgroundTransparency = 1.000
LD_Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
LD_Title.BorderSizePixel = 0
LD_Title.Position = UDim2.new(0.502491593, 0, 0.329657853, 0)
LD_Title.Size = UDim2.new(0.949999988, 0, 0.374645323, 0)
LD_Title.Text = "Lookin' Hackable"
LD_Title.TextColor3 = Color3.fromRGB(32, 99, 255)
LD_Title.TextScaled = true
LD_Title.TextSize = 14.000
LD_Title.TextWrapped = true

LD_UITextSizeConstraint.Name = "LD_UITextSizeConstraint"
LD_UITextSizeConstraint.Parent = LD_Title

LD_Title_2.Name = "LD_Title"
LD_Title_2.Parent = LD_Loading
LD_Title_2.AnchorPoint = Vector2.new(0.5, 0.5)
LD_Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LD_Title_2.BackgroundTransparency = 1.000
LD_Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
LD_Title_2.BorderSizePixel = 0
LD_Title_2.Position = UDim2.new(0.502491593, -2, 0.327178419, -2)
LD_Title_2.Size = UDim2.new(0.949999988, 0, 0.374645352, 0)
LD_Title_2.Text = "Lookin' Hackable"
LD_Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
LD_Title_2.TextScaled = true
LD_Title_2.TextSize = 14.000
LD_Title_2.TextWrapped = true

LD_UITextSizeConstraint_2.Name = "LD_UITextSizeConstraint"
LD_UITextSizeConstraint_2.Parent = LD_Title_2

LD_Status.Name = "LD_Status"
LD_Status.Parent = LD_Loading
LD_Status.AnchorPoint = Vector2.new(0.5, 0.5)
LD_Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LD_Status.BackgroundTransparency = 1.000
LD_Status.BorderColor3 = Color3.fromRGB(0, 0, 0)
LD_Status.BorderSizePixel = 0
LD_Status.Position = UDim2.new(0.50747472, -2, 0.702354312, -2)
LD_Status.Size = UDim2.new(0.949999988, 0, 0.155437365, 0)
LD_Status.Text = "LOADING : PROGRAMED WAIT"
LD_Status.TextColor3 = Color3.fromRGB(255, 255, 255)
LD_Status.TextScaled = true
LD_Status.TextSize = 14.000
LD_Status.TextTransparency = 0.800
LD_Status.TextWrapped = true

LD_UITextSizeConstraint_3.Name = "LD_UITextSizeConstraint"
LD_UITextSizeConstraint_3.Parent = LD_Status

local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Overlap = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Topbar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Cover = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_5 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local Pages = Instance.new("Folder")
local Preset = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Preset_Title = Instance.new("Frame")
local Frame = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UICorner_6 = Instance.new("UICorner")
local Preset_ButtonInputs = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UICorner_7 = Instance.new("UICorner")
local Actions = Instance.new("Frame")
local Inputs = Instance.new("Frame")
local Preset_2 = Instance.new("TextBox")
local UICorner_8 = Instance.new("UICorner")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local TextButton_2 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local Preset_Button = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local UICorner_10 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
local Buttons = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Preset_3 = Instance.new("Frame")
local TextButton_4 = Instance.new("TextButton")
local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
local UICorner_12 = Instance.new("UICorner")

Main.Name = "Main"
Main.Visible = false
Main.Parent = CoreFrame
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(1, 0, 1, 0)

UICorner.CornerRadius = UDim.new(0.0284697507, 0)
UICorner.Parent = Main

Overlap.Name = "Overlap"
Overlap.Parent = Main
Overlap.AnchorPoint = Vector2.new(0.5, 0)
Overlap.BackgroundColor3 = Color3.fromRGB(32, 34, 39)
Overlap.BorderColor3 = Color3.fromRGB(0, 0, 0)
Overlap.BorderSizePixel = 0
Overlap.Position = UDim2.new(0.5, 0, 0, 0)
Overlap.Size = UDim2.new(1, 0, 0.98392427, 0)

UICorner_2.CornerRadius = UDim.new(0.0289348997, 0)
UICorner_2.Parent = Overlap

Topbar.Name = "Topbar"
Topbar.Parent = Overlap
Topbar.AnchorPoint = Vector2.new(0.5, 0)
Topbar.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Topbar.BorderSizePixel = 0
Topbar.Position = UDim2.new(0.5, 0, 0, 0)
Topbar.Size = UDim2.new(1, 0, 0.0599999949, 0)

UICorner_3.CornerRadius = UDim.new(0.482248366, 0)
UICorner_3.Parent = Topbar

Cover.Name = "Cover"
Cover.Parent = Topbar
Cover.AnchorPoint = Vector2.new(0.5, 1)
Cover.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
Cover.BorderColor3 = Color3.fromRGB(0, 0, 0)
Cover.BorderSizePixel = 0
Cover.Position = UDim2.new(0.5, 0, 1.00000167, 0)
Cover.Size = UDim2.new(1, 0, 0.5, 0)

TextLabel.Parent = Topbar
TextLabel.AnchorPoint = Vector2.new(0, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0200000796, 0, 0.499999642, 0)
TextLabel.Size = UDim2.new(0.479999989, 0, 0.800000012, 0)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "Lookin' Hackable"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextButton.Parent = Topbar
TextButton.AnchorPoint = Vector2.new(1, 0.5)
TextButton.BackgroundColor3 = Color3.fromRGB(255, 236, 92)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.995000005, 0, 0.499999642, 0)
TextButton.Size = UDim2.new(0.11243546, 0, 0.800000012, 0)
TextButton.AutoButtonColor = false
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0.602810442, 0)
UICorner_4.Parent = TextButton

ImageLabel.Parent = Overlap
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.ZIndex = 0
ImageLabel.Image = "rbxassetid://7029770407"
ImageLabel.ImageColor3 = Color3.fromRGB(0, 89, 255)
ImageLabel.ImageTransparency = 0.900
ImageLabel.ScaleType = Enum.ScaleType.Tile
ImageLabel.TileSize = UDim2.new(0.075000003, 0, 0.119999997, 0)

UICorner_5.CornerRadius = UDim.new(0.0748737901, 0)
UICorner_5.Parent = ImageLabel

UIGradient.Offset = Vector2.new(-0.800000012, 0.200000003)
UIGradient.Rotation = -75
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient.Parent = ImageLabel

Pages.Name = "Pages"
Pages.Parent = Main

Preset.Name = "Preset"
Preset.Parent = Pages
Preset.AnchorPoint = Vector2.new(0.5, 0.5)
Preset.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Preset.BackgroundTransparency = 1.000
Preset.BorderColor3 = Color3.fromRGB(0, 0, 0)
Preset.BorderSizePixel = 0
Preset.ClipsDescendants = false
Preset.Position = UDim2.new(0.5, 0, 0.571832597, 0)
Preset.Selectable = false
Preset.Size = UDim2.new(0.961997688, 0, 0.813825369, 0)
Preset.CanvasSize = UDim2.new(0, 0, 0.5, 0)
Preset.ScrollBarThickness = 3
Preset.Visible = false

local CoverStone = Instance.new("Frame")
CoverStone.BackgroundColor3 = Color3.fromRGB(32, 34, 39)
CoverStone.Parent = Preset
CoverStone.Name = "Cover"
CoverStone.BackgroundTransparency = 1
CoverStone.Visible = true

UIListLayout.Parent = Preset
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Preset_Title.Name = "Preset_Title"
Preset_Title.Parent = Preset
Preset_Title.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
Preset_Title.BackgroundTransparency = 1.000
Preset_Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Preset_Title.BorderSizePixel = 0
Preset_Title.Position = UDim2.new(0, 0, -0.0230021887, 0)
Preset_Title.Size = UDim2.new(1, 0, 0.137222931, 0)
Preset_Title.Visible = false

Frame.Parent = Preset_Title
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(1, 0, 0.899999976, 0)

TextLabel_2.Parent = Frame
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_2.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
TextLabel_2.Font = Enum.Font.Unknown
TextLabel_2.Text = "Blank"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

UITextSizeConstraint.Parent = TextLabel_2

UICorner_6.CornerRadius = UDim.new(0.306272447, 0)
UICorner_6.Parent = Frame

Preset_ButtonInputs.Name = "Preset_ButtonInputs"
Preset_ButtonInputs.Parent = Preset
Preset_ButtonInputs.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
Preset_ButtonInputs.BackgroundTransparency = 1.000
Preset_ButtonInputs.BorderColor3 = Color3.fromRGB(0, 0, 0)
Preset_ButtonInputs.BorderSizePixel = 0
Preset_ButtonInputs.Position = UDim2.new(0, 0, 0.137223125, 0)
Preset_ButtonInputs.Size = UDim2.new(1, 0, 0.163945109, 0)
Preset_ButtonInputs.Visible = false

Frame_2.Parent = Preset_ButtonInputs
Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_2.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame_2.Size = UDim2.new(1, 0, 0.899999976, 0)

TextLabel_3.Parent = Frame_2
TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.5, 0, 0.241800085, 0)
TextLabel_3.Size = UDim2.new(0.949999988, 0, 0.433600038, 0)
TextLabel_3.Font = Enum.Font.Unknown
TextLabel_3.Text = "Blank"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

UITextSizeConstraint_2.Parent = TextLabel_3

UICorner_7.CornerRadius = UDim.new(0.306272447, 0)
UICorner_7.Parent = Frame_2

Actions.Name = "Actions"
Actions.Parent = Frame_2
Actions.AnchorPoint = Vector2.new(0.5, 1)
Actions.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Actions.BackgroundTransparency = 1.000
Actions.BorderColor3 = Color3.fromRGB(0, 0, 0)
Actions.BorderSizePixel = 0
Actions.Position = UDim2.new(0.5, 0, 0.950002253, 0)
Actions.Size = UDim2.new(0.949999988, 0, 0.491401076, 0)

Inputs.Name = "Inputs"
Inputs.Parent = Actions
Inputs.AnchorPoint = Vector2.new(0, 0.5)
Inputs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Inputs.BackgroundTransparency = 1.000
Inputs.BorderColor3 = Color3.fromRGB(0, 0, 0)
Inputs.BorderSizePixel = 0
Inputs.Position = UDim2.new(0, 0, 0.5, 0)
Inputs.Size = UDim2.new(0.699999988, 0, 1, 0)

Preset_2.Name = "Preset"
Preset_2.Parent = Inputs
Preset_2.BackgroundColor3 = Color3.fromRGB(167, 212, 255)
Preset_2.BackgroundTransparency = 0.900
Preset_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Preset_2.BorderSizePixel = 0
Preset_2.Size = UDim2.new(1, 0, 1, 0)
Preset_2.Font = Enum.Font.Unknown
Preset_2.PlaceholderText = "INPUT"
Preset_2.Text = ""
Preset_2.Visible = false
Preset_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Preset_2.TextScaled = true
Preset_2.TextSize = 14.000
Preset_2.TextWrapped = true

local NewLayoutthing = Instance.new("UIListLayout")
NewLayoutthing.Parent = Inputs
NewLayoutthing.VerticalAlignment = Enum.VerticalAlignment.Center
NewLayoutthing.HorizontalAlignment = Enum.HorizontalAlignment.Left
NewLayoutthing.FillDirection = Enum.FillDirection.Horizontal

UICorner_8.CornerRadius = UDim.new(1, 0)
UICorner_8.Parent = Preset_2

UITextSizeConstraint_3.Parent = Preset_2

TextButton_2.Parent = Actions
TextButton_2.AnchorPoint = Vector2.new(1, 0.5)
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 68, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(1, 0, 0.5, 0)
TextButton_2.Size = UDim2.new(0.276370704, 0, 1, 0)
TextButton_2.Font = Enum.Font.Unknown
TextButton_2.Text = "ACTIVATE"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(1, 0)
UICorner_9.Parent = TextButton_2

UITextSizeConstraint_4.Parent = TextButton_2

Preset_Button.Name = "Preset_Button"
Preset_Button.Parent = Preset
Preset_Button.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
Preset_Button.BackgroundTransparency = 1.000
Preset_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Preset_Button.BorderSizePixel = 0
Preset_Button.Position = UDim2.new(0, 0, -0.0230021887, 0)
Preset_Button.Size = UDim2.new(1, 0, 0.137222931, 0)
Preset_Button.Visible = false

Frame_3.Parent = Preset_Button
Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_3.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame_3.Size = UDim2.new(1, 0, 0.899999976, 0)

TextLabel_4.Parent = Frame_3
TextLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.365999997, 0, 0.5, 0)
TextLabel_4.Size = UDim2.new(0.651855171, 0, 0.762556493, 0)
TextLabel_4.Font = Enum.Font.Unknown
TextLabel_4.Text = "Blank"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint_5.Parent = TextLabel_4

UICorner_10.CornerRadius = UDim.new(0.306272447, 0)
UICorner_10.Parent = Frame_3

TextButton_3.Parent = Frame_3
TextButton_3.AnchorPoint = Vector2.new(1, 0.5)
TextButton_3.BackgroundColor3 = Color3.fromRGB(0, 68, 255)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.988344967, 0, 0.47405073, 0)
TextButton_3.Size = UDim2.new(0.276370704, 0, 0.627010643, 0)
TextButton_3.Font = Enum.Font.Unknown
TextButton_3.Text = "ACTIVATE"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

UICorner_11.CornerRadius = UDim.new(1, 0)
UICorner_11.Parent = TextButton_3

UITextSizeConstraint_6.Parent = TextButton_3

Buttons.Name = "Buttons"
Buttons.Parent = Main
Buttons.AnchorPoint = Vector2.new(0.5, 0.5)
Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Buttons.BackgroundTransparency = 1.000
Buttons.BorderColor3 = Color3.fromRGB(0, 0, 0)
Buttons.BorderSizePixel = 0
Buttons.Position = UDim2.new(0.5, 0, 0.107117459, 0)
Buttons.Size = UDim2.new(0.961997688, 0, 0.0747330934, 0)

UIListLayout_2.Parent = Buttons
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

Preset_3.Name = "Preset"
Preset_3.Parent = Buttons
Preset_3.AnchorPoint = Vector2.new(0.5, 0.5)
Preset_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Preset_3.BackgroundTransparency = 1.000
Preset_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Preset_3.BorderSizePixel = 0
Preset_3.Size = UDim2.new(1, 0, 1, 0)
Preset_3.Visible = false

TextButton_4.Parent = Preset_3
TextButton_4.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_4.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.5, 0, 0.5, 0)
TextButton_4.Size = UDim2.new(0.95, 0, 1, 0)
TextButton_4.Font = Enum.Font.Unknown
TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true

UITextSizeConstraint_7.Parent = TextButton_4

UICorner_12.CornerRadius = UDim.new(1, 0)
UICorner_12.Parent = TextButton_4


local HPC_ = Instance.new("ScrollingFrame")
local HPC__2 = Instance.new("UIListLayout")
local HPC__3 = Instance.new("Frame")
local HPC__4 = Instance.new("Frame")
local HPC__5 = Instance.new("TextLabel")
local HPC__6 = Instance.new("UITextSizeConstraint")
local HPC__7 = Instance.new("UICorner")
local HPC__8 = Instance.new("Frame")
local HPC__9 = Instance.new("Frame")
local HPC__10 = Instance.new("TextLabel")
local HPC__11 = Instance.new("UITextSizeConstraint")
local HPC__12 = Instance.new("UICorner")
local HPC__13 = Instance.new("Frame")
local HPC__14 = Instance.new("Frame")
local HPC__15 = Instance.new("TextLabel")
local HPC__16 = Instance.new("UITextSizeConstraint")
local HPC__17 = Instance.new("UICorner")
local HPC__18 = Instance.new("Frame")
local HPC__19 = Instance.new("Frame")
local HPC__20 = Instance.new("TextLabel")
local HPC__21 = Instance.new("UITextSizeConstraint")
local HPC__22 = Instance.new("UICorner")
local HPC__23 = Instance.new("Frame")
local HPC__24 = Instance.new("Frame")
local HPC__25 = Instance.new("TextLabel")
local HPC__26 = Instance.new("UITextSizeConstraint")
local HPC__27 = Instance.new("UICorner")
local HPC__28 = Instance.new("Frame")
local HPC__29 = Instance.new("Frame")
local HPC__30 = Instance.new("TextLabel")
local HPC__31 = Instance.new("UITextSizeConstraint")
local HPC__32 = Instance.new("UICorner")
local HPC__33 = Instance.new("Frame")
local HPC__34 = Instance.new("Frame")
local HPC__35 = Instance.new("TextLabel")
local HPC__36 = Instance.new("UITextSizeConstraint")
local HPC__37 = Instance.new("UICorner")

HPC_.Name = "HPC_"
HPC_.Parent = Pages
HPC_.Visible = true
HPC_.AnchorPoint = Vector2.new(0.5, 0.5)
HPC_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HPC_.BackgroundTransparency = 1.000
HPC_.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC_.BorderSizePixel = 0
HPC_.ClipsDescendants = false
HPC_.Position = UDim2.new(0.5, 0, 0.571832597, 0)
HPC_.Selectable = false
HPC_.Size = UDim2.new(0.961997688, 0, 0.813825369, 0)
HPC_.CanvasSize = UDim2.new(0, 0, 0.5, 0)
HPC_.ScrollBarThickness = 3

HPC__2.Name = "HPC_"
HPC__2.Parent = HPC_
HPC__2.HorizontalAlignment = Enum.HorizontalAlignment.Center
HPC__2.SortOrder = Enum.SortOrder.LayoutOrder

HPC__3.Name = "HPC_"
HPC__3.Parent = HPC_
HPC__3.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
HPC__3.BackgroundTransparency = 1.000
HPC__3.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__3.BorderSizePixel = 0
HPC__3.Position = UDim2.new(0, 0, -0.0230021887, 0)
HPC__3.Size = UDim2.new(1, 0, 0.137222931, 0)

HPC__4.Name = "HPC_"
HPC__4.Parent = HPC__3
HPC__4.AnchorPoint = Vector2.new(0.5, 0.5)
HPC__4.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
HPC__4.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__4.BorderSizePixel = 0
HPC__4.Position = UDim2.new(0.5, 0, 0.5, 0)
HPC__4.Size = UDim2.new(1, 0, 0.899999976, 0)

HPC__5.Name = "HPC_"
HPC__5.Parent = HPC__4
HPC__5.AnchorPoint = Vector2.new(0.5, 0.5)
HPC__5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HPC__5.BackgroundTransparency = 1.000
HPC__5.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__5.BorderSizePixel = 0
HPC__5.Position = UDim2.new(0.5, 0, 0.5, 0)
HPC__5.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
HPC__5.Font = Enum.Font.Unknown
HPC__5.Text = "Thank you for using Lookin' Hackable!"
HPC__5.TextColor3 = Color3.fromRGB(255, 255, 255)
HPC__5.TextScaled = true
HPC__5.TextSize = 14.000
HPC__5.TextWrapped = true

HPC__6.Name = "HPC_"
HPC__6.Parent = HPC__5

HPC__7.CornerRadius = UDim.new(0.306272447, 0)
HPC__7.Name = "HPC_"
HPC__7.Parent = HPC__4

HPC__8.Name = "HPC_"
HPC__8.Parent = HPC_
HPC__8.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
HPC__8.BackgroundTransparency = 1.000
HPC__8.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__8.BorderSizePixel = 0
HPC__8.LayoutOrder = 1
HPC__8.Position = UDim2.new(0, 0, -0.0230021887, 0)
HPC__8.Size = UDim2.new(1, 0, 0.137222931, 0)

HPC__9.Name = "HPC_"
HPC__9.Parent = HPC__8
HPC__9.AnchorPoint = Vector2.new(0.5, 0.5)
HPC__9.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
HPC__9.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__9.BorderSizePixel = 0
HPC__9.Position = UDim2.new(0.5, 0, 0.5, 0)
HPC__9.Size = UDim2.new(1, 0, 0.899999976, 0)

HPC__10.Name = "HPC_"
HPC__10.Parent = HPC__9
HPC__10.AnchorPoint = Vector2.new(0.5, 0.5)
HPC__10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HPC__10.BackgroundTransparency = 1.000
HPC__10.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__10.BorderSizePixel = 0
HPC__10.Position = UDim2.new(0.5, 0, 0.5, 0)
HPC__10.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
HPC__10.Font = Enum.Font.Unknown
HPC__10.Text = "Press any tab to begin"
HPC__10.TextColor3 = Color3.fromRGB(255, 255, 255)
HPC__10.TextScaled = true
HPC__10.TextSize = 14.000
HPC__10.TextWrapped = true

HPC__11.Name = "HPC_"
HPC__11.Parent = HPC__10

HPC__12.CornerRadius = UDim.new(0.306272447, 0)
HPC__12.Name = "HPC_"
HPC__12.Parent = HPC__9

HPC__13.Name = "HPC_"
HPC__13.Parent = HPC_
HPC__13.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
HPC__13.BackgroundTransparency = 1.000
HPC__13.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__13.BorderSizePixel = 0
HPC__13.LayoutOrder = 5
HPC__13.Position = UDim2.new(0, 0, -0.0230021887, 0)
HPC__13.Size = UDim2.new(1, 0, 0.137222931, 0)

HPC__14.Name = "HPC_"
HPC__14.Parent = HPC__13
HPC__14.AnchorPoint = Vector2.new(0.5, 0.5)
HPC__14.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
HPC__14.BackgroundTransparency = 1.000
HPC__14.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__14.BorderSizePixel = 0
HPC__14.Position = UDim2.new(0.5, 0, 0.5, 0)
HPC__14.Size = UDim2.new(1, 0, 0.899999976, 0)

HPC__15.Name = "HPC_"
HPC__15.Parent = HPC__14
HPC__15.AnchorPoint = Vector2.new(0.5, 0.5)
HPC__15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HPC__15.BackgroundTransparency = 1.000
HPC__15.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__15.BorderSizePixel = 0
HPC__15.Position = UDim2.new(0.5, 0, 0.5, 0)
HPC__15.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
HPC__15.Font = Enum.Font.Unknown
HPC__15.Text = "V3.0.0"
HPC__15.TextColor3 = Color3.fromRGB(255, 255, 255)
HPC__15.TextScaled = true
HPC__15.TextSize = 14.000
HPC__15.TextTransparency = 1.000
HPC__15.TextWrapped = true

HPC__16.Name = "HPC_"
HPC__16.Parent = HPC__15

HPC__17.CornerRadius = UDim.new(0.306272447, 0)
HPC__17.Name = "HPC_"
HPC__17.Parent = HPC__14

HPC__18.Name = "HPC_"
HPC__18.Parent = HPC_
HPC__18.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
HPC__18.BackgroundTransparency = 1.000
HPC__18.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__18.BorderSizePixel = 0
HPC__18.LayoutOrder = 3
HPC__18.Position = UDim2.new(0, 0, -0.0230021887, 0)
HPC__18.Size = UDim2.new(1, 0, 0.137222931, 0)

HPC__19.Name = "HPC_"
HPC__19.Parent = HPC__18
HPC__19.AnchorPoint = Vector2.new(0.5, 0.5)
HPC__19.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
HPC__19.BackgroundTransparency = 1.000
HPC__19.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__19.BorderSizePixel = 0
HPC__19.Position = UDim2.new(0.5, 0, 0.5, 0)
HPC__19.Size = UDim2.new(1, 0, 0.899999976, 0)

HPC__20.Name = "HPC_"
HPC__20.Parent = HPC__19
HPC__20.AnchorPoint = Vector2.new(0.5, 0.5)
HPC__20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HPC__20.BackgroundTransparency = 1.000
HPC__20.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__20.BorderSizePixel = 0
HPC__20.Position = UDim2.new(0.5, 0, 0.5, 0)
HPC__20.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
HPC__20.Font = Enum.Font.Unknown
HPC__20.Text = "V3.0.0"
HPC__20.TextColor3 = Color3.fromRGB(255, 255, 255)
HPC__20.TextScaled = true
HPC__20.TextSize = 14.000
HPC__20.TextWrapped = true

HPC__21.Name = "HPC_"
HPC__21.Parent = HPC__20

HPC__22.CornerRadius = UDim.new(0.306272447, 0)
HPC__22.Name = "HPC_"
HPC__22.Parent = HPC__19

HPC__23.Name = "HPC_"
HPC__23.Parent = HPC_
HPC__23.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
HPC__23.BackgroundTransparency = 1.000
HPC__23.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__23.BorderSizePixel = 0
HPC__23.LayoutOrder = 4
HPC__23.Position = UDim2.new(0, 0, -0.0230021887, 0)
HPC__23.Size = UDim2.new(1, 0, 0.137222931, 0)

HPC__24.Name = "HPC_"
HPC__24.Parent = HPC__23
HPC__24.AnchorPoint = Vector2.new(0.5, 0.5)
HPC__24.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
HPC__24.BackgroundTransparency = 1.000
HPC__24.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__24.BorderSizePixel = 0
HPC__24.Position = UDim2.new(0.5, 0, 0.5, 0)
HPC__24.Size = UDim2.new(1, 0, 0.899999976, 0)

HPC__25.Name = "HPC_"
HPC__25.Parent = HPC__24
HPC__25.AnchorPoint = Vector2.new(0.5, 0.5)
HPC__25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HPC__25.BackgroundTransparency = 1.000
HPC__25.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__25.BorderSizePixel = 0
HPC__25.Position = UDim2.new(0.5, 0, 0.5, 0)
HPC__25.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
HPC__25.Font = Enum.Font.Unknown
HPC__25.Text = "By MechanicManAaron"
HPC__25.TextColor3 = Color3.fromRGB(255, 255, 255)
HPC__25.TextScaled = true
HPC__25.TextSize = 14.000
HPC__25.TextWrapped = true

HPC__26.Name = "HPC_"
HPC__26.Parent = HPC__25

HPC__27.CornerRadius = UDim.new(0.306272447, 0)
HPC__27.Name = "HPC_"
HPC__27.Parent = HPC__24

HPC__28.Name = "HPC_"
HPC__28.Parent = HPC_
HPC__28.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
HPC__28.BackgroundTransparency = 1.000
HPC__28.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__28.BorderSizePixel = 0
HPC__28.LayoutOrder = 6
HPC__28.Position = UDim2.new(0, 0, -0.0230021887, 0)
HPC__28.Size = UDim2.new(1, 0, 0.137222931, 0)

HPC__29.Name = "HPC_"
HPC__29.Parent = HPC__28
HPC__29.AnchorPoint = Vector2.new(0.5, 0.5)
HPC__29.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
HPC__29.BackgroundTransparency = 1.000
HPC__29.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__29.BorderSizePixel = 0
HPC__29.Position = UDim2.new(0.5, 0, 0.5, 0)
HPC__29.Size = UDim2.new(1, 0, 0.899999976, 0)

HPC__30.Name = "HPC_"
HPC__30.Parent = HPC__29
HPC__30.AnchorPoint = Vector2.new(0.5, 0.5)
HPC__30.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HPC__30.BackgroundTransparency = 1.000
HPC__30.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__30.BorderSizePixel = 0
HPC__30.Position = UDim2.new(0.5, 0, 0.5, 0)
HPC__30.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
HPC__30.Font = Enum.Font.Unknown
HPC__30.Text = "LOADED WITH 0 ERRORS"
HPC__30.TextColor3 = Color3.fromRGB(255, 255, 255)
HPC__30.TextScaled = true
HPC__30.TextSize = 14.000
HPC__30.TextWrapped = true

HPC__31.Name = "HPC_"
HPC__31.Parent = HPC__30

HPC__32.CornerRadius = UDim.new(0.306272447, 0)
HPC__32.Name = "HPC_"
HPC__32.Parent = HPC__29

HPC__33.Name = "HPC_"
HPC__33.Parent = HPC_
HPC__33.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
HPC__33.BackgroundTransparency = 1.000
HPC__33.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__33.BorderSizePixel = 0
HPC__33.LayoutOrder = 2
HPC__33.Position = UDim2.new(0, 0, -0.0230021887, 0)
HPC__33.Size = UDim2.new(1, 0, 0.137222931, 0)

HPC__34.Name = "HPC_"
HPC__34.Parent = HPC__33
HPC__34.AnchorPoint = Vector2.new(0.5, 0.5)
HPC__34.BackgroundColor3 = Color3.fromRGB(12, 15, 18)
HPC__34.BackgroundTransparency = 1.000
HPC__34.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__34.BorderSizePixel = 0
HPC__34.Position = UDim2.new(0.5, 0, 0.5, 0)
HPC__34.Size = UDim2.new(1, 0, 0.899999976, 0)

HPC__35.Name = "HPC_"
HPC__35.Parent = HPC__34
HPC__35.AnchorPoint = Vector2.new(0.5, 0.5)
HPC__35.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HPC__35.BackgroundTransparency = 1.000
HPC__35.BorderColor3 = Color3.fromRGB(0, 0, 0)
HPC__35.BorderSizePixel = 0
HPC__35.Position = UDim2.new(0.5, 0, 0.5, 0)
HPC__35.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
HPC__35.Font = Enum.Font.Unknown
HPC__35.Text = "V3.0.0"
HPC__35.TextColor3 = Color3.fromRGB(255, 255, 255)
HPC__35.TextScaled = true
HPC__35.TextSize = 14.000
HPC__35.TextTransparency = 1.000
HPC__35.TextWrapped = true

HPC__36.Name = "HPC_"
HPC__36.Parent = HPC__35

HPC__37.CornerRadius = UDim.new(0.306272447, 0)
HPC__37.Name = "HPC_"
HPC__37.Parent = HPC__34



--DRAGIFY CODE--

local UIS = game:GetService("UserInputService")

function dragify(Frame)
	dragToggle = nil
	dragSpeed = 0.15
	dragInput = nil
	dragStart = nil
	dragPos = nil
	function updateInput(input)
		Delta = input.Position - dragStart
		Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
	end
	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	Frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)
end

dragify(Main)


--UI FUNCTIONS--

local BTI = TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
local function AnimateButton(Button:TextButton,OnColor)
	local OffColor = Button.BackgroundColor3
	local OnTween = TweenService:Create(Button,BTI,{BackgroundColor3 = OnColor})
	local OffTween = TweenService:Create(Button,BTI,{BackgroundColor3 = OffColor})
	Button.AutoButtonColor = false
	Button.MouseEnter:Connect(function()
		OnTween:Play()
	end)
	Button.MouseLeave:Connect(function()
		OffTween:Play()
	end)
end

local function FrameFade(frame,bool)
	if bool == true then
		TweenService:Create(frame,BTI,{BackgroundTransparency = 0}):Play()
	else
		TweenService:Create(frame,BTI,{BackgroundTransparency = 1}):Play()
	end
end

local function ResizeChildrenToFrame(Frame:Frame)
	local Count = 0
	for _,frame in Frame:GetChildren() do
		if frame.Name ~= "Preset" then
			if frame:IsA("TextBox") or frame:IsA("TextButton") or frame:IsA("Frame") then
				Count += 1
			end
		end
	end
	local SizePerFrame = UDim2.fromScale((Frame.AbsoluteSize.X/Count)/Frame.AbsoluteSize.X,1)
	for _,frame in Frame:GetChildren() do
		if frame.Name ~= "Preset" then
			if frame:IsA("TextBox") or frame:IsA("TextButton") or frame:IsA("Frame") then
				frame.Size = SizePerFrame
			end
		end
	end
end

local function SetupElements(Table,Frame)
	local PS_Button = Frame.Preset_Button
	local PS_ButtonInputs = Frame.Preset_ButtonInputs
	local PS_Title = Frame.Preset_Title
	local orderCount = 0
	for _, Data in pairs(Table) do
		orderCount += 1
		if Data.Type == "Title" then
			local Element = PS_Title:Clone()
			Element.Name = "Element"
			Element.LayoutOrder = Data.Order
			Element.Parent = Frame

			Element.Frame.TextLabel.Text = Data.Text

			Element.Visible = true
		elseif Data.Type == "ToggleButton" then
			local Element = PS_Button:Clone()
			Element.Name = "Element"
			Element.LayoutOrder = Data.Order
			Element.Parent = Frame

			Element.Frame.TextLabel.Text = Data.Text
			if Data.Active == true then
				Element.Frame.TextButton.Text = "Disable"
			else
				Element.Frame.TextButton.Text = "Enable"
			end
			AnimateButton(Element.Frame.TextButton,Color3.fromRGB(55, 108, 255))
			Element.Frame.TextButton.Activated:Connect(function()
				Data.Active = not Data.Active
				if Data.Active == true then
					Element.Frame.TextButton.Text = "Disable"
				else
					Element.Frame.TextButton.Text = "Enable"
				end
				Data.Function(Data.Active)
			end)

			Element.Visible = true
		elseif Data.Type == "ToggleButtonWithInputs" then
			local Element = PS_ButtonInputs:Clone()
			Element.Name = "Element"
			Element.LayoutOrder = Data.Order
			Element.Parent = Frame

			local function GetInputs()
				local inputs = {}
				for i=1,#Element.Frame.Actions.Inputs:GetChildren(),1 do
					for _,frame in Element.Frame.Actions.Inputs:GetChildren() do
						if frame:IsA("TextBox") and frame.LayoutOrder == i then
							table.insert(inputs,frame.Text)
						end
					end
				end
				return inputs
			end

			for count,input in pairs(Data.Inputs) do
				local UIClone_Input = Element.Frame.Actions.Inputs.Preset:Clone()
				UIClone_Input.Name = input
				UIClone_Input.LayoutOrder = count
				UIClone_Input.PlaceholderText = input
				UIClone_Input.Visible = true
				UIClone_Input.Parent = Element.Frame.Actions.Inputs
			end

			ResizeChildrenToFrame(Element.Frame.Actions.Inputs)

			Element.Frame.TextLabel.Text = Data.Text
			if Data.Active == true then
				Element.Frame.Actions.TextButton.Text = "Disable"
			else
				Element.Frame.Actions.TextButton.Text = "Enable"
			end
			AnimateButton(Element.Frame.Actions.TextButton,Color3.fromRGB(55, 108, 255))
			Element.Frame.Actions.TextButton.Activated:Connect(function()
				Data.Active = not Data.Active
				if Data.Active == true then
					Element.Frame.Actions.TextButton.Text = "Disable"
				else
					Element.Frame.Actions.TextButton.Text = "Enable"
				end
				Data.Function(Data.Active,GetInputs())
			end)

			ResizeChildrenToFrame(Element.Frame.Actions.Inputs)
			Element.Visible = true
		elseif Data.Type  == "Button" then
			local Element = PS_Button:Clone()
			Element.LayoutOrder = Data.Order
			Element.Name = "Element"
			Element.Parent = Frame

			Element.Frame.TextLabel.Text = Data.Text
			AnimateButton(Element.Frame.TextButton,Color3.fromRGB(55, 108, 255))
			Element.Frame.TextButton.Activated:Connect(function()
				Data.Function()
			end)

			Element.Visible = true
		elseif Data.Type  == "ButtonWithInputs" then
			local Element = PS_ButtonInputs:Clone()
			Element.LayoutOrder = orderCount
			Element.Name = "Element"
			Element.Parent = Frame

			local function GetInputs()
				local inputs = {}
				for i=1,#Element.Frame.Actions.Inputs:GetChildren(),1 do
					for _,frame in Element.Frame.Actions.Inputs:GetChildren() do
						if frame:IsA("TextBox") and frame.LayoutOrder == i then
							table.insert(inputs,frame.Text)
						end
					end
				end
				return inputs
			end

			for count,input in pairs(Data.Inputs) do
				local UIClone_Input = Element.Frame.Actions.Inputs.Preset:Clone()
				UIClone_Input.Name = input
				UIClone_Input.LayoutOrder = count
				UIClone_Input.PlaceholderText = input
				UIClone_Input.Visible = true
				UIClone_Input.Parent = Element.Frame.Actions.Inputs
			end

			ResizeChildrenToFrame(Element.Frame.Actions.Inputs)

			Element.Frame.TextLabel.Text = Data.Text
			AnimateButton(Element.Frame.Actions.TextButton,Color3.fromRGB(55, 108, 255))
			Element.Frame.Actions.TextButton.Activated:Connect(function()
				Data.Function(GetInputs())
			end)

			Element.Visible = true
		end
	end 
end

local function SetupTabs()
	local SwapDB = false
	for tabName, tab in pairs(UniversalTabs) do
		local PG_UIClone = Preset:Clone()
		local TB_UIClone = Preset_3:Clone()

		PG_UIClone.Name = tabName
		TB_UIClone.Name = tabName
		PG_UIClone.Parent = Pages
		TB_UIClone.Parent = Buttons
		TB_UIClone.LayoutOrder = tab.Order
		TB_UIClone.Visible = true
		TB_UIClone.TextButton.Text = tabName
		AnimateButton(TB_UIClone.TextButton,Color3.fromRGB(22, 29, 34))
		TB_UIClone.TextButton.Activated:Connect(function()
			if SwapDB == false then
				SwapDB = true
				FrameFade(CoverStone,true)
				task.wait(0.2)
				for _,page in Pages:GetChildren() do
					if page:IsA("ScrollingFrame") and page.Name ~= "Preset" then
						page.Visible = false
					end
				end
				Pages[TB_UIClone.Name].Visible = true
				FrameFade(CoverStone,false)
				task.wait(0.2)
				SwapDB = false
			end
		end)
		SetupElements(tab.Elements,PG_UIClone)
	end
	if GameIDList[tostring(game.PlaceId)] then
		for tabName, tab in pairs(GameIDList[tostring(game.PlaceId)]) do
			local PG_UIClone = Preset:Clone()
			local TB_UIClone = Preset_3:Clone()

			PG_UIClone.Name = tabName
			TB_UIClone.Name = tabName
			PG_UIClone.Parent = Pages
			TB_UIClone.Parent = Buttons
			TB_UIClone.LayoutOrder = tab.Order
			TB_UIClone.Visible = true
			TB_UIClone.TextButton.Text = tabName
			AnimateButton(TB_UIClone.TextButton,Color3.fromRGB(22, 29, 34))
			TB_UIClone.TextButton.Activated:Connect(function()
				if SwapDB == false then
					SwapDB = true
					FrameFade(CoverStone,true)
					task.wait(0.2)
					for _,page in Pages:GetChildren() do
						if page:IsA("ScrollingFrame") and page.Name ~= "Preset" then
							page.Visible = false
						end
					end
					Pages[TB_UIClone.Name].Visible = true
					FrameFade(CoverStone,false)
					task.wait(0.2)
					SwapDB = false
				end
			end)
			SetupElements(tab.Elements,PG_UIClone)
		end
	end
	Preset.Visible = true
	Preset.ZIndex = 10
	CoverStone.Visible = true
	CoverStone.ZIndex = 10
	CoverStone.Size = UDim2.fromScale(1,1)
	ResizeChildrenToFrame(Buttons)
end

local function LoadLHUI()
	LD_Loading.Size = UDim2.fromScale(0.899999917, 0)
	LD_Loading.Visible = true
	TweenService:Create(LD_Loading,GlobalTI,{Size = UDim2.fromScale(0.899999917, 0.400000006)}):Play()
	local function ChangeBar(Value)
		local NewXSize = Value/100
		TweenService:Create(LD_Progress,GlobalTI,{Size = UDim2.fromScale(NewXSize,1)}):Play()
	end
	ChangeBar(1)
	LD_Status.Text = "LOADING : WAITING FOR GAME"
	repeat task.wait() until game:IsLoaded()
	ChangeBar(5)
	LD_Status.Text = "LOADING : PROGRAMED WAIT"
	task.wait(3)
	ChangeBar(15)
	LD_Status.Text = "LOADING : MAIN INTERFACE"
	SetupTabs()
	task.wait(0.2)
	ChangeBar(95)
	LD_Status.Text = "LOADING : INITIALIZING"
	task.wait(0.1)
	ChangeBar(100)
	LD_Status.Text = "LOADING : COMPLETED"
	TweenService:Create(LD_Loading,GlobalTI,{Size = UDim2.fromScale(0.899999917, 0)}):Play()
	Main.Size = UDim2.fromScale(1, 0)
	Main.Visible = true
	UT_UIToggler.Visible = true
	TweenService:Create(Main,GlobalTI,{Size = UDim2.fromScale(1, 1)}):Play()
	task.wait(0.2)
	LD_Loading:Destroy()
end

UT_UIToggler.Activated:Connect(function()
	Main.Visible = not Main.Visible
end)

Topbar.TextButton.Activated:Connect(function()
	Main.Visible = not Main.Visible
end)

AnimateButton(Topbar.TextButton,Color3.fromRGB(255, 244, 164))

LoadLHUI()
