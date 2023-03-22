--[[

██╗░░░░░░█████╗░░█████╗░██╗░░██╗██╗███╗░░██╗██╗
██║░░░░░██╔══██╗██╔══██╗██║░██╔╝██║████╗░██║╚█║
██║░░░░░██║░░██║██║░░██║█████═╝░██║██╔██╗██║░╚╝
██║░░░░░██║░░██║██║░░██║██╔═██╗░██║██║╚████║░░░
███████╗╚█████╔╝╚█████╔╝██║░╚██╗██║██║░╚███║░░░
╚══════╝░╚════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░╚══╝░░░

██╗░░██╗░█████╗░░█████╗░██╗░░██╗░█████╗░██████╗░██╗░░░░░███████╗
██║░░██║██╔══██╗██╔══██╗██║░██╔╝██╔══██╗██╔══██╗██║░░░░░██╔════╝
███████║███████║██║░░╚═╝█████═╝░███████║██████╦╝██║░░░░░█████╗░░
██╔══██║██╔══██║██║░░██╗██╔═██╗░██╔══██║██╔══██╗██║░░░░░██╔══╝░░
██║░░██║██║░░██║╚█████╔╝██║░╚██╗██║░░██║██████╦╝███████╗███████╗
╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░╚══════╝╚══════╝

██╗░░░██╗██████╗░░░░░█████╗░░░██╗██╗░░░███████╗
██║░░░██║╚════██╗░░░██╔══██╗░██╔╝██║░░░╚════██║
╚██╗░██╔╝░░███╔═╝░░░╚█████╔╝██╔╝░██║░░░░░░░██╔╝
░╚████╔╝░██╔══╝░░░░░██╔══██╗███████║░░░░░░██╔╝░
░░╚██╔╝░░███████╗██╗╚█████╔╝╚════██║██╗░░██╔╝░░
░░░╚═╝░░░╚══════╝╚═╝░╚════╝░░░░░░╚═╝╚═╝░░╚═╝░░░


Thank you for using our Panel!

FEATURES:
- Press RightAlt to close or open the panel
- Hold and drag the top area to move it around

GAMES:
- FMRP : https://www.roblox.com/games/1343871267

]]--


--Source


local Players = game:GetService("Players")
local LPlayer = Players.LocalPlayer

local LH_MMA_FMRP = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Topbar = Instance.new("Frame")
local Topbar_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Minimize = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Title_2 = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local Page = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Chips = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local General = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local Music = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local Nametags = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local Home = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local TextLabel_4 = Instance.new("TextLabel")
local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
local Credits = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local TextLabel_5 = Instance.new("TextLabel")
local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
local Home_2 = Instance.new("Frame")
local Text = Instance.new("TextLabel")
local UITextSizeConstraint_8 = Instance.new("UITextSizeConstraint")
local Text_2 = Instance.new("TextLabel")
local UITextSizeConstraint_9 = Instance.new("UITextSizeConstraint")
local Text_3 = Instance.new("TextLabel")
local UITextSizeConstraint_10 = Instance.new("UITextSizeConstraint")
local Text_4 = Instance.new("TextLabel")
local UITextSizeConstraint_11 = Instance.new("UITextSizeConstraint")
local Text_5 = Instance.new("TextLabel")
local UITextSizeConstraint_12 = Instance.new("UITextSizeConstraint")
local PageTitle = Instance.new("TextLabel")
local UITextSizeConstraint_13 = Instance.new("UITextSizeConstraint")
local Cover = Instance.new("Frame")
local General_2 = Instance.new("Frame")
local Buttons = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local UnlockAll = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local TextLabel_6 = Instance.new("TextLabel")
local UITextSizeConstraint_14 = Instance.new("UITextSizeConstraint")
local TextLabel_7 = Instance.new("TextLabel")
local UITextSizeConstraint_15 = Instance.new("UITextSizeConstraint")
local UnlockAllButton = Instance.new("TextButton")
local UITextSizeConstraint_16 = Instance.new("UITextSizeConstraint")
local UICorner_12 = Instance.new("UICorner")
local TextLabel_8 = Instance.new("TextLabel")
local UITextSizeConstraint_17 = Instance.new("UITextSizeConstraint")
local Jumpscare = Instance.new("Frame")
local UICorner_13 = Instance.new("UICorner")
local TextLabel_9 = Instance.new("TextLabel")
local UITextSizeConstraint_18 = Instance.new("UITextSizeConstraint")
local TextLabel_10 = Instance.new("TextLabel")
local UITextSizeConstraint_19 = Instance.new("UITextSizeConstraint")
local AllwaysJumpscareButton = Instance.new("TextButton")
local UITextSizeConstraint_20 = Instance.new("UITextSizeConstraint")
local UICorner_14 = Instance.new("UICorner")
local TextLabel_11 = Instance.new("TextLabel")
local UITextSizeConstraint_21 = Instance.new("UITextSizeConstraint")
local SpamAllJump = Instance.new("Frame")
local UICorner_15 = Instance.new("UICorner")
local TextLabel_12 = Instance.new("TextLabel")
local UITextSizeConstraint_22 = Instance.new("UITextSizeConstraint")
local TextLabel_13 = Instance.new("TextLabel")
local UITextSizeConstraint_23 = Instance.new("UITextSizeConstraint")
local JumpscareSpamButton = Instance.new("TextButton")
local UITextSizeConstraint_24 = Instance.new("UITextSizeConstraint")
local UICorner_16 = Instance.new("UICorner")
local TextLabel_14 = Instance.new("TextLabel")
local UITextSizeConstraint_25 = Instance.new("UITextSizeConstraint")
local IY = Instance.new("Frame")
local UICorner_17 = Instance.new("UICorner")
local TextLabel_15 = Instance.new("TextLabel")
local UITextSizeConstraint_26 = Instance.new("UITextSizeConstraint")
local TextLabel_16 = Instance.new("TextLabel")
local UITextSizeConstraint_27 = Instance.new("UITextSizeConstraint")
local OpenIY = Instance.new("TextButton")
local UITextSizeConstraint_28 = Instance.new("UITextSizeConstraint")
local UICorner_18 = Instance.new("UICorner")
local TextLabel_17 = Instance.new("TextLabel")
local UITextSizeConstraint_29 = Instance.new("UITextSizeConstraint")
local Credits_2 = Instance.new("Frame")
local Text_6 = Instance.new("TextLabel")
local UITextSizeConstraint_30 = Instance.new("UITextSizeConstraint")
local Text_7 = Instance.new("TextLabel")
local UITextSizeConstraint_31 = Instance.new("UITextSizeConstraint")
local Text_8 = Instance.new("TextLabel")
local UITextSizeConstraint_32 = Instance.new("UITextSizeConstraint")
local Text_9 = Instance.new("TextLabel")
local UITextSizeConstraint_33 = Instance.new("UITextSizeConstraint")
local Music_2 = Instance.new("Frame")
local Text_10 = Instance.new("TextLabel")
local UITextSizeConstraint_34 = Instance.new("UITextSizeConstraint")
local MusicIDValidator = Instance.new("TextLabel")
local UITextSizeConstraint_35 = Instance.new("UITextSizeConstraint")
local MusicPlayStopButton = Instance.new("TextButton")
local UITextSizeConstraint_36 = Instance.new("UITextSizeConstraint")
local UICorner_19 = Instance.new("UICorner")
local TextLabel_18 = Instance.new("TextLabel")
local UITextSizeConstraint_37 = Instance.new("UITextSizeConstraint")
local MusicFixButton = Instance.new("TextButton")
local UITextSizeConstraint_38 = Instance.new("UITextSizeConstraint")
local UICorner_20 = Instance.new("UICorner")
local TextLabel_19 = Instance.new("TextLabel")
local UITextSizeConstraint_39 = Instance.new("UITextSizeConstraint")
local Text_11 = Instance.new("TextLabel")
local UITextSizeConstraint_40 = Instance.new("UITextSizeConstraint")
local MusicTextArea = Instance.new("TextBox")
local UICorner_21 = Instance.new("UICorner")
local UITextSizeConstraint_41 = Instance.new("UITextSizeConstraint")
local Nametags_2 = Instance.new("Frame")
local NametagSwapperButton = Instance.new("TextButton")
local UITextSizeConstraint_42 = Instance.new("UITextSizeConstraint")
local UICorner_22 = Instance.new("UICorner")
local TextLabel_20 = Instance.new("TextLabel")
local UITextSizeConstraint_43 = Instance.new("UITextSizeConstraint")
local NametagTextArea1 = Instance.new("TextBox")
local UICorner_23 = Instance.new("UICorner")
local UITextSizeConstraint_44 = Instance.new("UITextSizeConstraint")
local NametagTextArea3 = Instance.new("TextBox")
local UICorner_24 = Instance.new("UICorner")
local UITextSizeConstraint_45 = Instance.new("UITextSizeConstraint")
local NametagTextArea4 = Instance.new("TextBox")
local UICorner_25 = Instance.new("UICorner")
local UITextSizeConstraint_46 = Instance.new("UITextSizeConstraint")
local NametagTextArea2 = Instance.new("TextBox")
local UICorner_26 = Instance.new("UICorner")
local UITextSizeConstraint_47 = Instance.new("UITextSizeConstraint")
local NametagRainbowButton = Instance.new("TextButton")
local UITextSizeConstraint_48 = Instance.new("UITextSizeConstraint")
local UICorner_27 = Instance.new("UICorner")
local TextLabel_21 = Instance.new("TextLabel")
local UITextSizeConstraint_49 = Instance.new("UITextSizeConstraint")
local NametagStopButton = Instance.new("TextButton")
local UITextSizeConstraint_50 = Instance.new("UITextSizeConstraint")
local UICorner_28 = Instance.new("UICorner")
local TextLabel_22 = Instance.new("TextLabel")
local UITextSizeConstraint_51 = Instance.new("UITextSizeConstraint")
local Line = Instance.new("Frame")
local UICorner_29 = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

--Properties:

LH_MMA_FMRP.Name = "LH_MMA_FMRP"
LH_MMA_FMRP.Parent = game.CoreGui
LH_MMA_FMRP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = LH_MMA_FMRP
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(20, 22, 26)
Main.BackgroundTransparency = 1.000
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.294062465, 0)
Main.Size = UDim2.new(0.389887363, 0, 0.0427814946, 0)

UICorner.CornerRadius = UDim.new(0.0244384687, 0)
UICorner.Parent = Main

Topbar.Name = "Topbar"
Topbar.Parent = Main
Topbar.BackgroundColor3 = Color3.fromRGB(12, 13, 16)
Topbar.BorderSizePixel = 0
Topbar.Position = UDim2.new(0, 0, 0.584364831, 0)
Topbar.Size = UDim2.new(0.999740899, 0, 0.432862818, 0)
Topbar.ZIndex = 2

Topbar_2.Name = "Topbar"
Topbar_2.Parent = Main
Topbar_2.BackgroundColor3 = Color3.fromRGB(12, 13, 16)
Topbar_2.BorderSizePixel = 0
Topbar_2.Size = UDim2.new(0.999740899, 0, 0.822439373, 0)
Topbar_2.ZIndex = 2

UICorner_2.CornerRadius = UDim.new(0.315789461, 0)
UICorner_2.Parent = Topbar_2

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0147020724, 0, 0.17314513, 0)
Title.Size = UDim2.new(0.437052518, 0, 0.670937359, 0)
Title.ZIndex = 2
Title.Font = Enum.Font.Unknown
Title.Text = "Lookin' Hackable"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint.Parent = Title

Minimize.Name = "Minimize"
Minimize.Parent = Main
Minimize.BackgroundColor3 = Color3.fromRGB(255, 233, 111)
Minimize.Position = UDim2.new(0.887470543, 0, 0.151501983, 0)
Minimize.Size = UDim2.new(0.0414331108, 0, 0.692580521, 0)
Minimize.ZIndex = 2
Minimize.AutoButtonColor = false
Minimize.Font = Enum.Font.SourceSans
Minimize.Text = ""
Minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
Minimize.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(0.25, 0)
UICorner_3.Parent = Minimize

Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.fromRGB(255, 101, 101)
Close.Position = UDim2.new(0.946278811, 0, 0.151501983, 0)
Close.Size = UDim2.new(0.0414331108, 0, 0.692580521, 0)
Close.ZIndex = 2
Close.AutoButtonColor = false
Close.Font = Enum.Font.SourceSans
Close.Text = ""
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0.25, 0)
UICorner_4.Parent = Close

Title_2.Name = "Title"
Title_2.Parent = Main
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.BorderSizePixel = 0
Title_2.Position = UDim2.new(0.430369765, 0, 0.216431409, 0)
Title_2.Size = UDim2.new(0.437052518, 0, 0.56272167, 0)
Title_2.ZIndex = 2
Title_2.Font = Enum.Font.Unknown
Title_2.Text = "V2.54.2"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextScaled = true
Title_2.TextSize = 14.000
Title_2.TextTransparency = 0.800
Title_2.TextWrapped = true
Title_2.TextXAlignment = Enum.TextXAlignment.Right

UITextSizeConstraint_2.Parent = Title_2

Page.Name = "Page"
Page.Parent = Main
Page.BackgroundColor3 = Color3.fromRGB(20, 22, 26)
Page.BorderSizePixel = 0
Page.Position = UDim2.new(0, 0, 0.584366143, 0)
Page.Size = UDim2.new(0.999740899, 0, 9.28522491, 0)

UICorner_5.CornerRadius = UDim.new(0.02722474, 0)
UICorner_5.Parent = Page

Chips.Name = "Chips"
Chips.Parent = Page
Chips.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Chips.BackgroundTransparency = 1.000
Chips.BorderSizePixel = 0
Chips.Position = UDim2.new(0.0173799619, 0, 0.0722586066, 0)
Chips.Size = UDim2.new(0.963919461, 0, 0.100229681, 0)

UIListLayout.Parent = Chips
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0.0250000004, 0)

General.Name = "General"
General.Parent = Chips
General.BackgroundColor3 = Color3.fromRGB(12, 13, 15)
General.BorderSizePixel = 0
General.LayoutOrder = 3
General.Position = UDim2.new(0.102356717, 0, 0.0746828988, 0)
General.Size = UDim2.new(0.167280689, 0, 0.850634217, 0)
General.AutoButtonColor = false
General.Font = Enum.Font.SourceSans
General.Text = ""
General.TextColor3 = Color3.fromRGB(0, 0, 0)
General.TextSize = 14.000

UICorner_6.CornerRadius = UDim.new(1, 0)
UICorner_6.Parent = General

TextLabel.Parent = General
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0919986367, 0, 0.17838347, 0)
TextLabel.Size = UDim2.new(0.803623974, 0, 0.625856459, 0)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "General"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UITextSizeConstraint_3.Parent = TextLabel

Music.Name = "Music"
Music.Parent = Chips
Music.BackgroundColor3 = Color3.fromRGB(12, 13, 15)
Music.BorderSizePixel = 0
Music.LayoutOrder = 4
Music.Position = UDim2.new(0.312872052, 0, 0.0746828988, 0)
Music.Size = UDim2.new(0.17462793, 0, 0.850634217, 0)
Music.AutoButtonColor = false
Music.Font = Enum.Font.SourceSans
Music.Text = ""
Music.TextColor3 = Color3.fromRGB(0, 0, 0)
Music.TextSize = 14.000

UICorner_7.CornerRadius = UDim.new(1, 0)
UICorner_7.Parent = Music

TextLabel_2.Parent = Music
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0919986367, 0, 0.17838347, 0)
TextLabel_2.Size = UDim2.new(0.803623974, 0, 0.625856459, 0)
TextLabel_2.Font = Enum.Font.Unknown
TextLabel_2.Text = "FE Music"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

UITextSizeConstraint_4.Parent = TextLabel_2

Nametags.Name = "Nametags"
Nametags.Parent = Chips
Nametags.BackgroundColor3 = Color3.fromRGB(12, 13, 15)
Nametags.BorderSizePixel = 0
Nametags.LayoutOrder = 5
Nametags.Position = UDim2.new(0.584161818, 0, 0.0746828988, 0)
Nametags.Size = UDim2.new(0.200768352, 0, 0.850634217, 0)
Nametags.AutoButtonColor = false
Nametags.Font = Enum.Font.SourceSans
Nametags.Text = ""
Nametags.TextColor3 = Color3.fromRGB(0, 0, 0)
Nametags.TextSize = 14.000

UICorner_8.CornerRadius = UDim.new(1, 0)
UICorner_8.Parent = Nametags

TextLabel_3.Parent = Nametags
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0919986367, 0, 0.17838347, 0)
TextLabel_3.Size = UDim2.new(0.803623974, 0, 0.625856459, 0)
TextLabel_3.Font = Enum.Font.Unknown
TextLabel_3.Text = "Nametags"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

UITextSizeConstraint_5.Parent = TextLabel_3

Home.Name = "Home"
Home.Parent = Chips
Home.BackgroundColor3 = Color3.fromRGB(12, 13, 15)
Home.BorderSizePixel = 0
Home.LayoutOrder = 1
Home.Position = UDim2.new(0.61911726, 0, 0.0746828988, 0)
Home.Size = UDim2.new(0.144139066, 0, 0.850634217, 0)
Home.AutoButtonColor = false
Home.Font = Enum.Font.SourceSans
Home.Text = ""
Home.TextColor3 = Color3.fromRGB(0, 0, 0)
Home.TextSize = 14.000

UICorner_9.CornerRadius = UDim.new(1, 0)
UICorner_9.Parent = Home

TextLabel_4.Parent = Home
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.0919986367, 0, 0.17838347, 0)
TextLabel_4.Size = UDim2.new(0.803623974, 0, 0.625856459, 0)
TextLabel_4.Font = Enum.Font.Unknown
TextLabel_4.Text = "Home"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

UITextSizeConstraint_6.Parent = TextLabel_4

Credits.Name = "Credits"
Credits.Parent = Chips
Credits.BackgroundColor3 = Color3.fromRGB(12, 13, 15)
Credits.BorderSizePixel = 0
Credits.LayoutOrder = 6
Credits.Position = UDim2.new(0.858562827, 0, 0.0746828988, 0)
Credits.Size = UDim2.new(0.16083765, 0, 0.850634217, 0)
Credits.AutoButtonColor = false
Credits.Font = Enum.Font.SourceSans
Credits.Text = ""
Credits.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits.TextSize = 14.000

UICorner_10.CornerRadius = UDim.new(1, 0)
UICorner_10.Parent = Credits

TextLabel_5.Parent = Credits
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.0919986367, 0, 0.17838347, 0)
TextLabel_5.Size = UDim2.new(0.803623974, 0, 0.625856459, 0)
TextLabel_5.Font = Enum.Font.Unknown
TextLabel_5.Text = "Credits"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true

UITextSizeConstraint_7.Parent = TextLabel_5

Home_2.Name = "Home"
Home_2.Parent = Page
Home_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Home_2.BackgroundTransparency = 1.000
Home_2.BorderSizePixel = 0
Home_2.Position = UDim2.new(0.0133692017, 0, 0.193466589, 0)
Home_2.Size = UDim2.new(0.973277926, 0, 0.78785187, 0)
Home_2.Visible = false

Text.Name = "Text"
Text.Parent = Home_2
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.191430643, 0, 0.147738829, 0)
Text.Size = UDim2.new(0.617620647, 0, 0.0946807042, 0)
Text.Font = Enum.Font.Unknown
Text.Text = "Thank you for your Support!"
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextScaled = true
Text.TextSize = 14.000
Text.TextWrapped = true

UITextSizeConstraint_8.Parent = Text

Text_2.Name = "Text"
Text_2.Parent = Home_2
Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_2.BackgroundTransparency = 1.000
Text_2.BorderSizePixel = 0
Text_2.Position = UDim2.new(0.188683391, 0, 0.242413387, 0)
Text_2.Size = UDim2.new(0.617620647, 0, 0.0946807042, 0)
Text_2.Font = Enum.Font.Unknown
Text_2.Text = "More feature will be added!"
Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_2.TextScaled = true
Text_2.TextSize = 14.000
Text_2.TextWrapped = true

UITextSizeConstraint_9.Parent = Text_2

Text_3.Name = "Text"
Text_3.Parent = Home_2
Text_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_3.BackgroundTransparency = 1.000
Text_3.BorderSizePixel = 0
Text_3.Position = UDim2.new(0.188683391, 0, 0.381466687, 0)
Text_3.Size = UDim2.new(0.617620647, 0, 0.249130726, 0)
Text_3.Font = Enum.Font.Unknown
Text_3.Text = "Lookin'"
Text_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_3.TextScaled = true
Text_3.TextSize = 14.000
Text_3.TextWrapped = true

UITextSizeConstraint_10.Parent = Text_3

Text_4.Name = "Text"
Text_4.Parent = Home_2
Text_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_4.BackgroundTransparency = 1.000
Text_4.BorderSizePixel = 0
Text_4.Position = UDim2.new(0.188683391, 0, 0.553064287, 0)
Text_4.Size = UDim2.new(0.617620647, 0, 0.249130726, 0)
Text_4.Font = Enum.Font.Unknown
Text_4.Text = "Hackable"
Text_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_4.TextScaled = true
Text_4.TextSize = 14.000
Text_4.TextWrapped = true

UITextSizeConstraint_11.Parent = Text_4

Text_5.Name = "Text"
Text_5.Parent = Home_2
Text_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_5.BackgroundTransparency = 1.000
Text_5.BorderSizePixel = 0
Text_5.Position = UDim2.new(0.188683391, 0, 0.748735964, 0)
Text_5.Size = UDim2.new(0.617620647, 0, 0.0978377387, 0)
Text_5.Font = Enum.Font.Unknown
Text_5.Text = "V2.84.7"
Text_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_5.TextScaled = true
Text_5.TextSize = 14.000
Text_5.TextWrapped = true

UITextSizeConstraint_12.Parent = Text_5

PageTitle.Name = "PageTitle"
PageTitle.Parent = Page
PageTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageTitle.BackgroundTransparency = 1.000
PageTitle.BorderSizePixel = 0
PageTitle.Position = UDim2.new(0.331540555, 0, 0.221797094, 0)
PageTitle.Size = UDim2.new(0.334668308, 0, 0.0561588481, 0)
PageTitle.Font = Enum.Font.Unknown
PageTitle.Text = "Page Title Here"
PageTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
PageTitle.TextScaled = true
PageTitle.TextSize = 14.000
PageTitle.TextWrapped = true

UITextSizeConstraint_13.Parent = PageTitle

Cover.Name = "Cover"
Cover.Parent = Page
Cover.BackgroundColor3 = Color3.fromRGB(20, 22, 26)
Cover.BackgroundTransparency = 1.000
Cover.BorderSizePixel = 0
Cover.Position = UDim2.new(0.0133692017, 0, 0.193466589, 0)
Cover.Size = UDim2.new(0.973277926, 0, 0.78785187, 0)
Cover.Visible = false
Cover.ZIndex = 100

General_2.Name = "General"
General_2.Parent = Page
General_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
General_2.BackgroundTransparency = 1.000
General_2.BorderSizePixel = 0
General_2.Position = UDim2.new(0.0133692017, 0, 0.193466589, 0)
General_2.Size = UDim2.new(0.973277926, 0, 0.78785187, 0)
General_2.Visible = false

Buttons.Name = "Buttons"
Buttons.Parent = General_2
Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Buttons.BackgroundTransparency = 1.000
Buttons.BorderSizePixel = 0
Buttons.Position = UDim2.new(0.0274725277, 0, 0.147928998, 0)
Buttons.Size = UDim2.new(0.9436813, 0, 0.781065106, 0)

UIListLayout_2.Parent = Buttons
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0.0399999991, 0)

UnlockAll.Name = "UnlockAll"
UnlockAll.Parent = Buttons
UnlockAll.BackgroundColor3 = Color3.fromRGB(30, 34, 40)
UnlockAll.LayoutOrder = 1
UnlockAll.Position = UDim2.new(0.244541481, 0, 0.117424242, 0)
UnlockAll.Size = UDim2.new(1.02183402, 0, 0.193181813, 0)

UICorner_11.CornerRadius = UDim.new(0.235294119, 0)
UICorner_11.Parent = UnlockAll

TextLabel_6.Parent = UnlockAll
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.0213675238, 0, 0.196078435, 0)
TextLabel_6.Size = UDim2.new(0.584620714, 0, 0.573087275, 0)
TextLabel_6.Font = Enum.Font.Unknown
TextLabel_6.Text = "Unlock All Animatronics"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint_14.Parent = TextLabel_6

TextLabel_7.Parent = UnlockAll
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.574082375, 0, 0.196078435, 0)
TextLabel_7.Size = UDim2.new(0.191268519, 0, 0.573087275, 0)
TextLabel_7.Font = Enum.Font.Unknown
TextLabel_7.Text = "STABLE"
TextLabel_7.TextColor3 = Color3.fromRGB(75, 186, 255)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14.000
TextLabel_7.TextWrapped = true

UITextSizeConstraint_15.Parent = TextLabel_7

UnlockAllButton.Name = "UnlockAllButton"
UnlockAllButton.Parent = UnlockAll
UnlockAllButton.Active = false
UnlockAllButton.BackgroundColor3 = Color3.fromRGB(26, 79, 255)
UnlockAllButton.BorderSizePixel = 0
UnlockAllButton.Position = UDim2.new(0.776747048, 0, 0.0980392173, 0)
UnlockAllButton.Selectable = false
UnlockAllButton.Size = UDim2.new(0.210826039, 0, 0.769165695, 0)
UnlockAllButton.Font = Enum.Font.Unknown
UnlockAllButton.Text = ""
UnlockAllButton.TextColor3 = Color3.fromRGB(75, 186, 255)
UnlockAllButton.TextScaled = true
UnlockAllButton.TextSize = 14.000
UnlockAllButton.TextWrapped = true

UITextSizeConstraint_16.Parent = UnlockAllButton

UICorner_12.CornerRadius = UDim.new(0, 12)
UICorner_12.Parent = UnlockAllButton

TextLabel_8.Parent = UnlockAllButton
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.0337838158, 0, 0.178446472, 0)
TextLabel_8.Size = UDim2.new(0.928746462, 0, 0.674841642, 0)
TextLabel_8.Font = Enum.Font.Unknown
TextLabel_8.Text = "EXECUTE"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14.000
TextLabel_8.TextWrapped = true

UITextSizeConstraint_17.Parent = TextLabel_8

Jumpscare.Name = "Jumpscare"
Jumpscare.Parent = Buttons
Jumpscare.BackgroundColor3 = Color3.fromRGB(30, 34, 40)
Jumpscare.LayoutOrder = 2
Jumpscare.Position = UDim2.new(0.244541481, 0, 0.117424242, 0)
Jumpscare.Size = UDim2.new(1.02183402, 0, 0.193181813, 0)

UICorner_13.CornerRadius = UDim.new(0.235294119, 0)
UICorner_13.Parent = Jumpscare

TextLabel_9.Parent = Jumpscare
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0.0213675238, 0, 0.196078435, 0)
TextLabel_9.Size = UDim2.new(0.584620714, 0, 0.573087275, 0)
TextLabel_9.Font = Enum.Font.Unknown
TextLabel_9.Text = "Always have Jumpscares"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14.000
TextLabel_9.TextWrapped = true
TextLabel_9.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint_18.Parent = TextLabel_9

TextLabel_10.Parent = Jumpscare
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0.574082375, 0, 0.196078435, 0)
TextLabel_10.Size = UDim2.new(0.191268519, 0, 0.573087275, 0)
TextLabel_10.Font = Enum.Font.Unknown
TextLabel_10.Text = "STABLE"
TextLabel_10.TextColor3 = Color3.fromRGB(75, 186, 255)
TextLabel_10.TextScaled = true
TextLabel_10.TextSize = 14.000
TextLabel_10.TextWrapped = true

UITextSizeConstraint_19.Parent = TextLabel_10

AllwaysJumpscareButton.Name = "AllwaysJumpscareButton"
AllwaysJumpscareButton.Parent = Jumpscare
AllwaysJumpscareButton.Active = false
AllwaysJumpscareButton.BackgroundColor3 = Color3.fromRGB(26, 79, 255)
AllwaysJumpscareButton.BorderSizePixel = 0
AllwaysJumpscareButton.Position = UDim2.new(0.776747048, 0, 0.0980392173, 0)
AllwaysJumpscareButton.Selectable = false
AllwaysJumpscareButton.Size = UDim2.new(0.210826039, 0, 0.769165695, 0)
AllwaysJumpscareButton.Font = Enum.Font.Unknown
AllwaysJumpscareButton.Text = ""
AllwaysJumpscareButton.TextColor3 = Color3.fromRGB(75, 186, 255)
AllwaysJumpscareButton.TextScaled = true
AllwaysJumpscareButton.TextSize = 14.000
AllwaysJumpscareButton.TextWrapped = true

UITextSizeConstraint_20.Parent = AllwaysJumpscareButton

UICorner_14.CornerRadius = UDim.new(0, 12)
UICorner_14.Parent = AllwaysJumpscareButton

TextLabel_11.Parent = AllwaysJumpscareButton
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Position = UDim2.new(0.0337838158, 0, 0.178446472, 0)
TextLabel_11.Size = UDim2.new(0.928746462, 0, 0.674841642, 0)
TextLabel_11.Font = Enum.Font.Unknown
TextLabel_11.Text = "EXECUTE"
TextLabel_11.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.TextScaled = true
TextLabel_11.TextSize = 14.000
TextLabel_11.TextWrapped = true

UITextSizeConstraint_21.Parent = TextLabel_11

SpamAllJump.Name = "SpamAllJump"
SpamAllJump.Parent = Buttons
SpamAllJump.BackgroundColor3 = Color3.fromRGB(30, 34, 40)
SpamAllJump.LayoutOrder = 3
SpamAllJump.Position = UDim2.new(0.244541481, 0, 0.117424242, 0)
SpamAllJump.Size = UDim2.new(1.02183402, 0, 0.193181813, 0)

UICorner_15.CornerRadius = UDim.new(0.235294119, 0)
UICorner_15.Parent = SpamAllJump

TextLabel_12.Parent = SpamAllJump
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Position = UDim2.new(0.0213675238, 0, 0.196078435, 0)
TextLabel_12.Size = UDim2.new(0.584620714, 0, 0.573087275, 0)
TextLabel_12.Font = Enum.Font.Unknown
TextLabel_12.Text = "All Jumpscares No Animations"
TextLabel_12.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.TextScaled = true
TextLabel_12.TextSize = 14.000
TextLabel_12.TextWrapped = true
TextLabel_12.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint_22.Parent = TextLabel_12

TextLabel_13.Parent = SpamAllJump
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(0.574082375, 0, 0.196078435, 0)
TextLabel_13.Size = UDim2.new(0.191268519, 0, 0.573087275, 0)
TextLabel_13.Font = Enum.Font.Unknown
TextLabel_13.Text = "STABLE"
TextLabel_13.TextColor3 = Color3.fromRGB(75, 186, 255)
TextLabel_13.TextScaled = true
TextLabel_13.TextSize = 14.000
TextLabel_13.TextWrapped = true

UITextSizeConstraint_23.Parent = TextLabel_13

JumpscareSpamButton.Name = "JumpscareSpamButton"
JumpscareSpamButton.Parent = SpamAllJump
JumpscareSpamButton.Active = false
JumpscareSpamButton.BackgroundColor3 = Color3.fromRGB(26, 79, 255)
JumpscareSpamButton.BorderSizePixel = 0
JumpscareSpamButton.Position = UDim2.new(0.776747048, 0, 0.0980392173, 0)
JumpscareSpamButton.Selectable = false
JumpscareSpamButton.Size = UDim2.new(0.210826039, 0, 0.769165695, 0)
JumpscareSpamButton.Font = Enum.Font.Unknown
JumpscareSpamButton.Text = ""
JumpscareSpamButton.TextColor3 = Color3.fromRGB(75, 186, 255)
JumpscareSpamButton.TextScaled = true
JumpscareSpamButton.TextSize = 14.000
JumpscareSpamButton.TextWrapped = true

UITextSizeConstraint_24.Parent = JumpscareSpamButton

UICorner_16.CornerRadius = UDim.new(0, 12)
UICorner_16.Parent = JumpscareSpamButton

TextLabel_14.Parent = JumpscareSpamButton
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(0.0337838158, 0, 0.178446472, 0)
TextLabel_14.Size = UDim2.new(0.928746462, 0, 0.674841642, 0)
TextLabel_14.Font = Enum.Font.Unknown
TextLabel_14.Text = "EXECUTE"
TextLabel_14.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.TextScaled = true
TextLabel_14.TextSize = 14.000
TextLabel_14.TextWrapped = true

UITextSizeConstraint_25.Parent = TextLabel_14

IY.Name = "IY"
IY.Parent = Buttons
IY.BackgroundColor3 = Color3.fromRGB(30, 34, 40)
IY.LayoutOrder = 4
IY.Position = UDim2.new(0.244541481, 0, 0.117424242, 0)
IY.Size = UDim2.new(1.02183402, 0, 0.193181813, 0)

UICorner_17.CornerRadius = UDim.new(0.235294119, 0)
UICorner_17.Parent = IY

TextLabel_15.Parent = IY
TextLabel_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.BackgroundTransparency = 1.000
TextLabel_15.BorderSizePixel = 0
TextLabel_15.Position = UDim2.new(0.0213675238, 0, 0.196078435, 0)
TextLabel_15.Size = UDim2.new(0.584620714, 0, 0.573087275, 0)
TextLabel_15.Font = Enum.Font.Unknown
TextLabel_15.Text = "Launch Infinite Yield"
TextLabel_15.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.TextScaled = true
TextLabel_15.TextSize = 14.000
TextLabel_15.TextWrapped = true
TextLabel_15.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint_26.Parent = TextLabel_15

TextLabel_16.Parent = IY
TextLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.BackgroundTransparency = 1.000
TextLabel_16.BorderSizePixel = 0
TextLabel_16.Position = UDim2.new(0.574082375, 0, 0.196078435, 0)
TextLabel_16.Size = UDim2.new(0.191268519, 0, 0.573087275, 0)
TextLabel_16.Font = Enum.Font.Unknown
TextLabel_16.Text = "STABLE"
TextLabel_16.TextColor3 = Color3.fromRGB(75, 186, 255)
TextLabel_16.TextScaled = true
TextLabel_16.TextSize = 14.000
TextLabel_16.TextWrapped = true

UITextSizeConstraint_27.Parent = TextLabel_16

OpenIY.Name = "OpenIY"
OpenIY.Parent = IY
OpenIY.Active = false
OpenIY.BackgroundColor3 = Color3.fromRGB(26, 79, 255)
OpenIY.BorderSizePixel = 0
OpenIY.Position = UDim2.new(0.776747048, 0, 0.0980392173, 0)
OpenIY.Selectable = false
OpenIY.Size = UDim2.new(0.210826039, 0, 0.769165695, 0)
OpenIY.Font = Enum.Font.Unknown
OpenIY.Text = ""
OpenIY.TextColor3 = Color3.fromRGB(75, 186, 255)
OpenIY.TextScaled = true
OpenIY.TextSize = 14.000
OpenIY.TextWrapped = true

UITextSizeConstraint_28.Parent = OpenIY

UICorner_18.CornerRadius = UDim.new(0, 12)
UICorner_18.Parent = OpenIY

TextLabel_17.Parent = OpenIY
TextLabel_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_17.BackgroundTransparency = 1.000
TextLabel_17.BorderSizePixel = 0
TextLabel_17.Position = UDim2.new(0.0337838158, 0, 0.178446472, 0)
TextLabel_17.Size = UDim2.new(0.928746462, 0, 0.674841642, 0)
TextLabel_17.Font = Enum.Font.Unknown
TextLabel_17.Text = "EXECUTE"
TextLabel_17.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_17.TextScaled = true
TextLabel_17.TextSize = 14.000
TextLabel_17.TextWrapped = true

UITextSizeConstraint_29.Parent = TextLabel_17

Credits_2.Name = "Credits"
Credits_2.Parent = Page
Credits_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits_2.BackgroundTransparency = 1.000
Credits_2.BorderSizePixel = 0
Credits_2.Position = UDim2.new(0.0133692017, 0, 0.193466589, 0)
Credits_2.Size = UDim2.new(0.973277926, 0, 0.78785187, 0)
Credits_2.Visible = false

Text_6.Name = "Text"
Text_6.Parent = Credits_2
Text_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_6.BackgroundTransparency = 1.000
Text_6.BorderSizePixel = 0
Text_6.Position = UDim2.new(0.0526663885, 0, 0.20099327, 0)
Text_6.Size = UDim2.new(0.893747509, 0, 0.13905327, 0)
Text_6.Font = Enum.Font.Unknown
Text_6.Text = "Creator : MechanicManAaron"
Text_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_6.TextScaled = true
Text_6.TextSize = 14.000
Text_6.TextWrapped = true

UITextSizeConstraint_30.Parent = Text_6

Text_7.Name = "Text"
Text_7.Parent = Credits_2
Text_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_7.BackgroundTransparency = 1.000
Text_7.BorderSizePixel = 0
Text_7.Position = UDim2.new(0.188683391, 0, 0.381466687, 0)
Text_7.Size = UDim2.new(0.617620647, 0, 0.249130726, 0)
Text_7.Font = Enum.Font.Unknown
Text_7.Text = "Lookin'"
Text_7.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_7.TextScaled = true
Text_7.TextSize = 14.000
Text_7.TextWrapped = true

UITextSizeConstraint_31.Parent = Text_7

Text_8.Name = "Text"
Text_8.Parent = Credits_2
Text_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_8.BackgroundTransparency = 1.000
Text_8.BorderSizePixel = 0
Text_8.Position = UDim2.new(0.188683391, 0, 0.553064287, 0)
Text_8.Size = UDim2.new(0.617620647, 0, 0.249130726, 0)
Text_8.Font = Enum.Font.Unknown
Text_8.Text = "Hackable"
Text_8.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_8.TextScaled = true
Text_8.TextSize = 14.000
Text_8.TextWrapped = true

UITextSizeConstraint_32.Parent = Text_8

Text_9.Name = "Text"
Text_9.Parent = Credits_2
Text_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_9.BackgroundTransparency = 1.000
Text_9.BorderSizePixel = 0
Text_9.Position = UDim2.new(0.188683391, 0, 0.748735964, 0)
Text_9.Size = UDim2.new(0.617620647, 0, 0.0978377387, 0)
Text_9.Font = Enum.Font.Unknown
Text_9.Text = "V2.84.7"
Text_9.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_9.TextScaled = true
Text_9.TextSize = 14.000
Text_9.TextWrapped = true

UITextSizeConstraint_33.Parent = Text_9

Music_2.Name = "Music"
Music_2.Parent = Page
Music_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Music_2.BackgroundTransparency = 1.000
Music_2.BorderSizePixel = 0
Music_2.Position = UDim2.new(0.0133692017, 0, 0.193466589, 0)
Music_2.Size = UDim2.new(0.973277926, 0, 0.78785187, 0)
Music_2.Visible = false

Text_10.Name = "Text"
Text_10.Parent = Music_2
Text_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_10.BackgroundTransparency = 1.000
Text_10.BorderSizePixel = 0
Text_10.Position = UDim2.new(0.188683391, 0, 0.180283189, 0)
Text_10.Size = UDim2.new(0.617620647, 0, 0.0946807042, 0)
Text_10.Font = Enum.Font.Unknown
Text_10.Text = "Music ID"
Text_10.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_10.TextScaled = true
Text_10.TextSize = 14.000
Text_10.TextWrapped = true

UITextSizeConstraint_34.Parent = Text_10

MusicIDValidator.Name = "MusicIDValidator"
MusicIDValidator.Parent = Music_2
MusicIDValidator.BackgroundColor3 = Color3.fromRGB(255, 232, 115)
MusicIDValidator.BackgroundTransparency = 1.000
MusicIDValidator.BorderSizePixel = 0
MusicIDValidator.Position = UDim2.new(-0.0256023183, 0, 0.603360116, 0)
MusicIDValidator.Size = UDim2.new(0.617620647, 0, 0.0946807042, 0)
MusicIDValidator.Font = Enum.Font.Unknown
MusicIDValidator.Text = "Validation"
MusicIDValidator.TextColor3 = Color3.fromRGB(255, 227, 114)
MusicIDValidator.TextScaled = true
MusicIDValidator.TextSize = 14.000
MusicIDValidator.TextWrapped = true

UITextSizeConstraint_35.Parent = MusicIDValidator

MusicPlayStopButton.Name = "MusicPlayStopButton"
MusicPlayStopButton.Parent = Music_2
MusicPlayStopButton.Active = false
MusicPlayStopButton.BackgroundColor3 = Color3.fromRGB(26, 79, 255)
MusicPlayStopButton.BorderSizePixel = 0
MusicPlayStopButton.Position = UDim2.new(0.097683087, 0, 0.723222494, 0)
MusicPlayStopButton.Selectable = false
MusicPlayStopButton.Size = UDim2.new(0.374780267, 0, 0.185402438, 0)
MusicPlayStopButton.Font = Enum.Font.Unknown
MusicPlayStopButton.Text = ""
MusicPlayStopButton.TextColor3 = Color3.fromRGB(75, 186, 255)
MusicPlayStopButton.TextScaled = true
MusicPlayStopButton.TextSize = 14.000
MusicPlayStopButton.TextWrapped = true

UITextSizeConstraint_36.Parent = MusicPlayStopButton

UICorner_19.CornerRadius = UDim.new(0, 12)
UICorner_19.Parent = MusicPlayStopButton

TextLabel_18.Parent = MusicPlayStopButton
TextLabel_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_18.BackgroundTransparency = 1.000
TextLabel_18.BorderSizePixel = 0
TextLabel_18.Position = UDim2.new(0.0337838158, 0, 0.178446472, 0)
TextLabel_18.Size = UDim2.new(0.928746462, 0, 0.674841642, 0)
TextLabel_18.Font = Enum.Font.Unknown
TextLabel_18.Text = "PLAY"
TextLabel_18.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_18.TextScaled = true
TextLabel_18.TextSize = 14.000
TextLabel_18.TextWrapped = true

UITextSizeConstraint_37.Parent = TextLabel_18

MusicFixButton.Name = "MusicFixButton"
MusicFixButton.Parent = Music_2
MusicFixButton.Active = false
MusicFixButton.BackgroundColor3 = Color3.fromRGB(26, 79, 255)
MusicFixButton.BorderSizePixel = 0
MusicFixButton.Position = UDim2.new(0.526254535, 0, 0.723222494, 0)
MusicFixButton.Selectable = false
MusicFixButton.Size = UDim2.new(0.374780267, 0, 0.185402438, 0)
MusicFixButton.Font = Enum.Font.Unknown
MusicFixButton.Text = ""
MusicFixButton.TextColor3 = Color3.fromRGB(75, 186, 255)
MusicFixButton.TextScaled = true
MusicFixButton.TextSize = 14.000
MusicFixButton.TextWrapped = true

UITextSizeConstraint_38.Parent = MusicFixButton

UICorner_20.CornerRadius = UDim.new(0, 12)
UICorner_20.Parent = MusicFixButton

TextLabel_19.Parent = MusicFixButton
TextLabel_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_19.BackgroundTransparency = 1.000
TextLabel_19.BorderSizePixel = 0
TextLabel_19.Position = UDim2.new(0.0337838158, 0, 0.178446472, 0)
TextLabel_19.Size = UDim2.new(0.928746462, 0, 0.674841642, 0)
TextLabel_19.Font = Enum.Font.Unknown
TextLabel_19.Text = "FIX"
TextLabel_19.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_19.TextScaled = true
TextLabel_19.TextSize = 14.000
TextLabel_19.TextWrapped = true

UITextSizeConstraint_39.Parent = TextLabel_19

Text_11.Name = "Text"
Text_11.Parent = Music_2
Text_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_11.BackgroundTransparency = 1.000
Text_11.BorderSizePixel = 0
Text_11.Position = UDim2.new(0.407090008, 0, 0.603360116, 0)
Text_11.Size = UDim2.new(0.617620647, 0, 0.0946807042, 0)
Text_11.Font = Enum.Font.Unknown
Text_11.Text = "Is it Frozen?"
Text_11.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_11.TextScaled = true
Text_11.TextSize = 14.000
Text_11.TextWrapped = true

UITextSizeConstraint_40.Parent = Text_11

MusicTextArea.Name = "MusicTextArea"
MusicTextArea.Parent = Music_2
MusicTextArea.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MusicTextArea.BackgroundTransparency = 0.990
MusicTextArea.BorderSizePixel = 0
MusicTextArea.Position = UDim2.new(0.19917582, 0, 0.325443804, 0)
MusicTextArea.Size = UDim2.new(0.594780207, 0, 0.187830999, 0)
MusicTextArea.Font = Enum.Font.Unknown
MusicTextArea.PlaceholderColor3 = Color3.fromRGB(90, 90, 90)
MusicTextArea.PlaceholderText = "1234567890"
MusicTextArea.Text = ""
MusicTextArea.TextColor3 = Color3.fromRGB(255, 255, 255)
MusicTextArea.TextScaled = true
MusicTextArea.TextSize = 14.000
MusicTextArea.TextWrapped = true

UICorner_21.CornerRadius = UDim.new(0.150000006, 0)
UICorner_21.Parent = MusicTextArea

UITextSizeConstraint_41.Parent = MusicTextArea

Nametags_2.Name = "Nametags"
Nametags_2.Parent = Page
Nametags_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Nametags_2.BackgroundTransparency = 1.000
Nametags_2.BorderSizePixel = 0
Nametags_2.Position = UDim2.new(0.0133692017, 0, 0.193466589, 0)
Nametags_2.Size = UDim2.new(0.973277926, 0, 0.78785187, 0)

NametagSwapperButton.Name = "NametagSwapperButton"
NametagSwapperButton.Parent = Nametags_2
NametagSwapperButton.Active = false
NametagSwapperButton.BackgroundColor3 = Color3.fromRGB(26, 79, 255)
NametagSwapperButton.BorderSizePixel = 0
NametagSwapperButton.Position = UDim2.new(0.0660896748, 0, 0.661092401, 0)
NametagSwapperButton.Selectable = false
NametagSwapperButton.Size = UDim2.new(0.271822423, 0, 0.185402438, 0)
NametagSwapperButton.Font = Enum.Font.Unknown
NametagSwapperButton.Text = ""
NametagSwapperButton.TextColor3 = Color3.fromRGB(75, 186, 255)
NametagSwapperButton.TextScaled = true
NametagSwapperButton.TextSize = 14.000
NametagSwapperButton.TextWrapped = true

UITextSizeConstraint_42.Parent = NametagSwapperButton

UICorner_22.CornerRadius = UDim.new(0, 12)
UICorner_22.Parent = NametagSwapperButton

TextLabel_20.Parent = NametagSwapperButton
TextLabel_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_20.BackgroundTransparency = 1.000
TextLabel_20.BorderSizePixel = 0
TextLabel_20.Position = UDim2.new(0.0337838158, 0, 0.178446472, 0)
TextLabel_20.Size = UDim2.new(0.928746462, 0, 0.674841642, 0)
TextLabel_20.Font = Enum.Font.Unknown
TextLabel_20.Text = "SWAPPER"
TextLabel_20.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_20.TextScaled = true
TextLabel_20.TextSize = 14.000
TextLabel_20.TextWrapped = true

UITextSizeConstraint_43.Parent = TextLabel_20

NametagTextArea1.Name = "NametagTextArea1"
NametagTextArea1.Parent = Nametags_2
NametagTextArea1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NametagTextArea1.BackgroundTransparency = 0.990
NametagTextArea1.BorderSizePixel = 0
NametagTextArea1.Position = UDim2.new(0.369505495, 0, 0.174556121, 0)
NametagTextArea1.Size = UDim2.new(0.259945452, 0, 0.0995134413, 0)
NametagTextArea1.Font = Enum.Font.Unknown
NametagTextArea1.PlaceholderColor3 = Color3.fromRGB(90, 90, 90)
NametagTextArea1.PlaceholderText = "Name"
NametagTextArea1.Text = ""
NametagTextArea1.TextColor3 = Color3.fromRGB(255, 255, 255)
NametagTextArea1.TextScaled = true
NametagTextArea1.TextSize = 14.000
NametagTextArea1.TextWrapped = true

UICorner_23.CornerRadius = UDim.new(0.150000006, 0)
UICorner_23.Parent = NametagTextArea1

UITextSizeConstraint_44.Parent = NametagTextArea1

NametagTextArea3.Name = "NametagTextArea3"
NametagTextArea3.Parent = Nametags_2
NametagTextArea3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NametagTextArea3.BackgroundTransparency = 0.990
NametagTextArea3.BorderSizePixel = 0
NametagTextArea3.Position = UDim2.new(0.372252762, 0, 0.405325353, 0)
NametagTextArea3.Size = UDim2.new(0.259945452, 0, 0.0995134413, 0)
NametagTextArea3.Font = Enum.Font.Unknown
NametagTextArea3.PlaceholderColor3 = Color3.fromRGB(90, 90, 90)
NametagTextArea3.PlaceholderText = "{For Swapper}"
NametagTextArea3.Text = ""
NametagTextArea3.TextColor3 = Color3.fromRGB(255, 255, 255)
NametagTextArea3.TextScaled = true
NametagTextArea3.TextSize = 14.000
NametagTextArea3.TextWrapped = true

UICorner_24.CornerRadius = UDim.new(0.150000006, 0)
UICorner_24.Parent = NametagTextArea3

UITextSizeConstraint_45.Parent = NametagTextArea3

NametagTextArea4.Name = "NametagTextArea4"
NametagTextArea4.Parent = Nametags_2
NametagTextArea4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NametagTextArea4.BackgroundTransparency = 0.990
NametagTextArea4.BorderSizePixel = 0
NametagTextArea4.Position = UDim2.new(0.671703339, 0, 0.405325353, 0)
NametagTextArea4.Size = UDim2.new(0.259945452, 0, 0.0995134413, 0)
NametagTextArea4.Font = Enum.Font.Unknown
NametagTextArea4.PlaceholderColor3 = Color3.fromRGB(90, 90, 90)
NametagTextArea4.PlaceholderText = "{For Swapper}"
NametagTextArea4.Text = ""
NametagTextArea4.TextColor3 = Color3.fromRGB(255, 255, 255)
NametagTextArea4.TextScaled = true
NametagTextArea4.TextSize = 14.000
NametagTextArea4.TextWrapped = true

UICorner_25.CornerRadius = UDim.new(0.150000006, 0)
UICorner_25.Parent = NametagTextArea4

UITextSizeConstraint_46.Parent = NametagTextArea4

NametagTextArea2.Name = "NametagTextArea2"
NametagTextArea2.Parent = Nametags_2
NametagTextArea2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NametagTextArea2.BackgroundTransparency = 0.990
NametagTextArea2.BorderSizePixel = 0
NametagTextArea2.Position = UDim2.new(0.0728021637, 0, 0.405325353, 0)
NametagTextArea2.Size = UDim2.new(0.259945452, 0, 0.0995134413, 0)
NametagTextArea2.Font = Enum.Font.Unknown
NametagTextArea2.PlaceholderColor3 = Color3.fromRGB(90, 90, 90)
NametagTextArea2.PlaceholderText = "{For Swapper}"
NametagTextArea2.Text = ""
NametagTextArea2.TextColor3 = Color3.fromRGB(255, 255, 255)
NametagTextArea2.TextScaled = true
NametagTextArea2.TextSize = 14.000
NametagTextArea2.TextWrapped = true

UICorner_26.CornerRadius = UDim.new(0.150000006, 0)
UICorner_26.Parent = NametagTextArea2

UITextSizeConstraint_47.Parent = NametagTextArea2

NametagRainbowButton.Name = "NametagRainbowButton"
NametagRainbowButton.Parent = Nametags_2
NametagRainbowButton.Active = false
NametagRainbowButton.BackgroundColor3 = Color3.fromRGB(26, 79, 255)
NametagRainbowButton.BorderSizePixel = 0
NametagRainbowButton.Position = UDim2.new(0.660869896, 0, 0.661092401, 0)
NametagRainbowButton.Selectable = false
NametagRainbowButton.Size = UDim2.new(0.271822423, 0, 0.185402438, 0)
NametagRainbowButton.Font = Enum.Font.Unknown
NametagRainbowButton.Text = ""
NametagRainbowButton.TextColor3 = Color3.fromRGB(75, 186, 255)
NametagRainbowButton.TextScaled = true
NametagRainbowButton.TextSize = 14.000
NametagRainbowButton.TextWrapped = true

UITextSizeConstraint_48.Parent = NametagRainbowButton

UICorner_27.CornerRadius = UDim.new(0, 12)
UICorner_27.Parent = NametagRainbowButton

TextLabel_21.Parent = NametagRainbowButton
TextLabel_21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_21.BackgroundTransparency = 1.000
TextLabel_21.BorderSizePixel = 0
TextLabel_21.Position = UDim2.new(0.0337838158, 0, 0.178446472, 0)
TextLabel_21.Size = UDim2.new(0.928746462, 0, 0.674841642, 0)
TextLabel_21.Font = Enum.Font.Unknown
TextLabel_21.Text = "RAINBOW"
TextLabel_21.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_21.TextScaled = true
TextLabel_21.TextSize = 14.000
TextLabel_21.TextWrapped = true

UITextSizeConstraint_49.Parent = TextLabel_21

NametagStopButton.Name = "NametagStopButton"
NametagStopButton.Parent = Nametags_2
NametagStopButton.Active = false
NametagStopButton.BackgroundColor3 = Color3.fromRGB(26, 79, 255)
NametagStopButton.BorderSizePixel = 0
NametagStopButton.Position = UDim2.new(0.362792969, 0, 0.661092401, 0)
NametagStopButton.Selectable = false
NametagStopButton.Size = UDim2.new(0.271822423, 0, 0.185402438, 0)
NametagStopButton.Font = Enum.Font.Unknown
NametagStopButton.Text = ""
NametagStopButton.TextColor3 = Color3.fromRGB(75, 186, 255)
NametagStopButton.TextScaled = true
NametagStopButton.TextSize = 14.000
NametagStopButton.TextWrapped = true

UITextSizeConstraint_50.Parent = NametagStopButton

UICorner_28.CornerRadius = UDim.new(0, 12)
UICorner_28.Parent = NametagStopButton

TextLabel_22.Parent = NametagStopButton
TextLabel_22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_22.BackgroundTransparency = 1.000
TextLabel_22.BorderSizePixel = 0
TextLabel_22.Position = UDim2.new(0.0186236277, 0, 0.178446472, 0)
TextLabel_22.Size = UDim2.new(0.928746462, 0, 0.674841642, 0)
TextLabel_22.Font = Enum.Font.Unknown
TextLabel_22.Text = "STOP"
TextLabel_22.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_22.TextScaled = true
TextLabel_22.TextSize = 14.000
TextLabel_22.TextWrapped = true

UITextSizeConstraint_51.Parent = TextLabel_22

Line.Name = "Line"
Line.Parent = Page
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BackgroundTransparency = 0.830
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0.0334230065, 0, 0.194186971, 0)
Line.Size = UDim2.new(0.931999981, 0, 0.00499999989, 0)

UICorner_29.CornerRadius = UDim.new(1, 0)
UICorner_29.Parent = Line

UIAspectRatioConstraint.Parent = Main
UIAspectRatioConstraint.AspectRatio = 16.193

-- Scripts:

local MainScreenGui = LH_MMA_FMRP

local MainFrame = MainScreenGui.Main
local MainPage = MainFrame.Page

local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local IsOpen = true

local function MinimizeHandler(Value:boolean)
	local function Tween(Size1:UDim2)
		local TInfo = TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
		local Tween = TweenService:Create(MainPage,TInfo,{Size = Size1})
		Tween:Play()
		Tween.Completed:Connect(function()
			Tween:Destroy()
		end)
	end
	if Value == true then
		Tween(UDim2.fromScale(1,9.285))
	elseif Value == false then
		Tween(UDim2.fromScale(1,0))
	end
end

UIS.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.RightAlt then
		MainFrame.Vislbe = not MainFrame.Visible
	end
end)

local function TopbarButtons()
	local TInfo = TweenInfo.new(0.15,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
	local function TweenButton(Button,Color)
		local Tween = TweenService:Create(Button,TInfo,{BackgroundColor3 = Color})
		Tween:Play()
		Tween.Completed:Connect(function()
			Tween:Destroy()
		end)
	end
	MainFrame.Minimize.MouseEnter:Connect(function()
		TweenButton(MainFrame.Minimize,Color3.fromRGB(255, 236, 166))
	end)
	MainFrame.Minimize.MouseLeave:Connect(function()
		TweenButton(MainFrame.Minimize,Color3.fromRGB(255, 233, 111))
	end)
	MainFrame.Minimize.Activated:Connect(function()
		IsOpen = not IsOpen
		MinimizeHandler(IsOpen)
	end)
	MainFrame.Close.MouseEnter:Connect(function()
		TweenButton(MainFrame.Close,Color3.fromRGB(255, 172, 144))
	end)
	MainFrame.Close.MouseLeave:Connect(function()
		TweenButton(MainFrame.Close,Color3.fromRGB(255, 101, 101))
	end)
	MainFrame.Close.Activated:Connect(function()
		MainFrame.Visible = not MainFrame.Visible
	end)
end

local function PageAndChipHandler()
	local PageDebounce = false
	local SelectedPage

	local TInfo1 = TweenInfo.new(0.15,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
	local TInfo2 = TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)
	MainFrame.Page.Cover.Visible = true

	local function ChipHover(Chip,Status:boolean)
		if Chip and SelectedPage then
			if Chip.Name == SelectedPage.Name then
				if Chip.UIStroke.Transparency ~= 0 then
					local Tween = TweenService:Create(Chip.UIStroke,TInfo1,{Transparency = 0})
					Tween:Play()
					Tween.Completed:Connect(function()
						Tween:Destroy()
					end)
				end
			else
				if Status == true then
					local Tween = TweenService:Create(Chip.UIStroke,TInfo1,{Transparency = 0})
					Tween:Play()
					Tween.Completed:Connect(function()
						Tween:Destroy()
					end)
				elseif Status == false then
					local Tween = TweenService:Create(Chip.UIStroke,TInfo1,{Transparency = 0.7})
					Tween:Play()
					Tween.Completed:Connect(function()
						Tween:Destroy()
					end)
				end
			end
		end
	end

	local function PageTween(Object)
		local Tween = TweenService:Create(MainFrame.Page.Cover,TInfo2,{BackgroundTransparency = 0})
		Tween:Play()
		Tween.Completed:Connect(function()
			for _,page in pairs(MainFrame.Page:GetChildren()) do
				if MainFrame.Page.Chips:FindFirstChild(page.Name) then
					page.Visible = false
				end
			end
			SelectedPage.Visible = true
			MainFrame.Page.PageTitle.Text = SelectedPage.Name
			local Tween2 = TweenService:Create(MainFrame.Page.Cover,TInfo2,{BackgroundTransparency = 1})
			Tween2:Play()
			Tween2.Completed:Connect(function()
				Tween2:Destroy()
				Tween:Destroy()
			end)
		end)
		PageDebounce = false
	end

	local function ChangePage(PageName:string)
		if SelectedPage then
			if SelectedPage.Name ~= PageName then
				PageDebounce = true
				SelectedPage = MainFrame.Page:FindFirstChild(PageName)
				for _,chip2 in pairs(MainFrame.Page.Chips:GetChildren()) do
					if chip2:IsA("TextButton") and chip2 ~= MainFrame.Page.Chips[PageName] then
						ChipHover(chip2,false)
					end
				end
				PageTween(SelectedPage)
				ChipHover(MainFrame.Page.Chips[PageName],true)
			end
		else
			PageDebounce = true
			SelectedPage = MainFrame.Page:FindFirstChild(PageName)
			for _,chip2 in pairs(MainFrame.Page.Chips:GetChildren()) do
				if chip2:IsA("TextButton") and chip2 ~= MainFrame.Page.Chips[PageName] then
					ChipHover(chip2,false)
				end
			end
			PageTween(SelectedPage)
			ChipHover(MainFrame.Page.Chips[PageName],true)
		end
	end

	for _,chip in pairs(MainFrame.Page.Chips:GetChildren()) do
		if chip:IsA("TextButton") then
			chip.MouseEnter:Connect(function()
				ChipHover(chip,true)
			end)
			chip.MouseLeave:Connect(function()
				ChipHover(chip,false)
			end)
			chip.Activated:Connect(function()
				ChangePage(chip.Name)
			end)
		end
	end

	ChangePage("Home")
end

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



PageAndChipHandler()
TopbarButtons()
dragify(MainFrame)

UnlockAllButton.Activated:Connect(function()
	local function UnlockAllV2()
		local Player = game.Players.LocalPlayer
		local Character = Player.Character
		local function UnlockDevCharacters()
			local function Unlock()
				local UIArea = Player.PlayerGui.MainMenu["Char_Frames"].Classic.Classic3
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
			for _,v in pairs(Player.PlayerGui.MainMenu:GetDescendants()) do
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
end)

SpamAllJump.Activated:Connect(function()
	local args = {
		[1] = game:GetService("Players").LocalPlayer.Character.LowerTorso,
		[2] = workspace:WaitForChild(game:GetService("Players").LocalPlayer.Name)
	}

	local a = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("CharacterFunctions"):WaitForChild("Jumpscares")

	for i, v in pairs(a:GetChildren()) do
		v:FireServer(unpack(args))
	end
end)

AllwaysJumpscareButton.Activated:Connect(function()
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
end)

OpenIY.Activated:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local function MusicHandler()
	local MusicValid = false
	local playing = false
	
	local function SetMusic(ID)
		if playing == false then
			game:GetService("ReplicatedStorage").MusicPlayer:InvokeServer(ID)
			playing = true
			TextLabel_18.Text = "STOP"
		else
			playing = false
			TextLabel_18.Text = "PLAY"
			local HRP = LPlayer.Character:FindFirstChild("HumanoidRootPart")
			if HRP then
				local AudioPlayer = HRP:FindFirstChild("MusicPlayer_Sound")
				if AudioPlayer then
					game:GetService("ReplicatedStorage").MusicPlayer:InvokeServer(AudioPlayer)
				end
			end
		end
	end
	MusicPlayStopButton.Activated:Connect(function()
		if MusicValid == true then
			SetMusic(MusicTextArea.Text)
		end
	end)
	local function ValidateSong(songID)
		local MarketplaceService = game:GetService("MarketplaceService")
		if not songID or not tonumber(songID) then return false end

		local success, result = pcall(function()
			return MarketplaceService:GetProductInfo(songID)
		end)

		if success and result and result.AssetTypeId == 3 then
			MusicValid = true
			MusicIDValidator.TextColor3 = Color3.fromRGB(136, 255, 123)
			return true
		else
			MusicValid = false
			MusicIDValidator.TextColor3 = Color3.fromRGB(255, 117, 117)
			return false
		end
	end
	MusicTextArea.Focused:Connect(function()
		MusicIDValidator.TextColor3 = Color3.fromRGB(255, 195, 121)
	end)
	MusicTextArea.FocusLost:Connect(function()
		ValidateSong(MusicTextArea.Text)
	end)
	MusicFixButton.Activated:Connect(function()
		playing = false
		TextLabel_18.Text = "PLAY"
	end)
	
	local MusicArea = MainScreenGui.Main.Pages.Music.Music
end
MusicHandler()

local function NameTagAdvancerHandler()
	local NametagActive = false
	local function RainbowNameTag()
		
		if NametagActive == true then return end
		NametagActive = true
		
		local Remote = game:GetService("ReplicatedStorage"):WaitForChild("RoleplayNametag")

		local Nametag = NametagTextArea1
		local TagHeight = 4

		local function Change(Color)
			Remote:FireServer(Nametag.Text,Color,TagHeight)
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
			print(math.round(CurrentColor.R*255),math.round(CurrentColor.G*255),math.round(CurrentColor.B*255))
			game:GetService("RunService").RenderStepped:Wait()
		until game:GetService("Players").LocalPlayer.Character.Humanoid.Health < 50 or NametagActive == false
	end
	local function SwapperNameTag()
		
		if NametagActive == true then return end
		NametagActive = true
		
		local Remote = game:GetService("ReplicatedStorage"):WaitForChild("RoleplayNametag")

		local SwitchDelay = 0.03

		local Text1 = NametagTextArea1
		local Text2 = NametagTextArea2
		local Text3 = NametagTextArea3
		local Text4 = NametagTextArea4

		local function Change(Swronguy)
			Remote:FireServer(Swronguy,Color3.fromRGB(255, 255, 255), 4)
		end

		repeat
			Change(Text1.Text)
			task.wait(SwitchDelay)
			Change(Text2.Text)
			task.wait(SwitchDelay)
			Change(Text3.Text)
			task.wait(SwitchDelay)
			Change(Text4.Text)
			task.wait(SwitchDelay)
		until game:GetService("Players").LocalPlayer.Character.Humanoid.Health < 50 or NametagActive == false
	end
	
	
	NametagStopButton.Activated:Connect(function()
		NametagActive = false
	end)
	NametagRainbowButton.Activated:Connect(RainbowNameTag)
	NametagSwapperButton.Activated:Connect(SwapperNameTag)
end

coroutine.wrap(function()
	NameTagAdvancerHandler()
end)()
