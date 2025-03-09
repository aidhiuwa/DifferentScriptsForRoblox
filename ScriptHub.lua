local GUI = nil
local Connected = false

local module = {}

function module.ConnectGUI()
	if game:GetService("CoreGui"):FindFirstChild("UYasdijfb8u1@") then
		game:GetService("CoreGui"):FindFirstChild("UYasdijfb8u1@"):Destroy()
	end

	local ScreenGui = Instance.new("ScreenGui")
	
	GUI = ScreenGui
	Connected = true
	
	local Background = Instance.new("Frame")
	local FrameHolder = Instance.new("ScrollingFrame")
	local ItemTemplates = Instance.new("Frame")
	local TemplateButton = Instance.new("TextButton")
	local TemplateTextBox = Instance.new("TextBox")
	local MainTab = Instance.new("Frame")
	local UIGridLayout = Instance.new("UIGridLayout")
	local TemplateSlideThingy = Instance.new("Frame")
	local UIGridLayout_2 = Instance.new("UIGridLayout")
	local Closee = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local TabButtonHolder = Instance.new("ScrollingFrame")
	local Template = Instance.new("TextButton")
	local UIGridLayout_3 = Instance.new("UIGridLayout")
	local MainTab_2 = Instance.new("TextButton")

	--Properties:

	ScreenGui.Parent = game:GetService("CoreGui")
	ScreenGui.Name = "UYasdijfb8u1@"
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Background.Name = "Background"
	Background.Parent = ScreenGui
	Background.Active = true
	Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Background.BackgroundTransparency = 0.500
	Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Background.BorderSizePixel = 0
	Background.Position = UDim2.new(0.320626646, 0, 0.173498571, 0)
	Background.Size = UDim2.new(0.35800004, 0, 0.652846456, 0)

	FrameHolder.Name = "FrameHolder"
	FrameHolder.Parent = Background
	FrameHolder.Active = true
	FrameHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FrameHolder.BackgroundTransparency = 0.500
	FrameHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
	FrameHolder.BorderSizePixel = 0
	FrameHolder.Position = UDim2.new(0.241999999, 0, 0.116999999, 0)
	FrameHolder.Size = UDim2.new(0.758000016, 0, 0.883000016, 0)
	FrameHolder.CanvasSize = UDim2.new(0, 0, 1, 0)
	FrameHolder.ScrollBarThickness = 14

	ItemTemplates.Name = "ItemTemplates"
	ItemTemplates.Parent = FrameHolder
	ItemTemplates.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ItemTemplates.BackgroundTransparency = 1.000
	ItemTemplates.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ItemTemplates.BorderSizePixel = 0
	ItemTemplates.Size = UDim2.new(0, 100, 0, 100)
	ItemTemplates.Visible = false

	TemplateButton.Name = "TemplateButton"
	TemplateButton.Parent = ItemTemplates
	TemplateButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TemplateButton.BackgroundTransparency = 0.700
	TemplateButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TemplateButton.BorderSizePixel = 0
	TemplateButton.Position = UDim2.new(-0.00192432734, 0, 0.0132294791, 0)
	TemplateButton.Size = UDim2.new(0.192432731, 0, 0.165368482, 0)
	TemplateButton.Font = Enum.Font.SourceSans
	TemplateButton.TextColor3 = Color3.fromRGB(54, 255, 54)
	TemplateButton.TextScaled = true
	TemplateButton.TextSize = 14.000
	TemplateButton.TextWrapped = true

	TemplateTextBox.Name = "TemplateTextBox"
	TemplateTextBox.Parent = ItemTemplates
	TemplateTextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TemplateTextBox.BackgroundTransparency = 0.700
	TemplateTextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TemplateTextBox.BorderSizePixel = 0
	TemplateTextBox.Size = UDim2.new(0, 200, 0, 50)
	TemplateTextBox.ClearTextOnFocus = false
	TemplateTextBox.Font = Enum.Font.SourceSans
	TemplateTextBox.PlaceholderText = "Place Holder Text"
	TemplateTextBox.Text = ""
	TemplateTextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
	TemplateTextBox.TextScaled = true
	TemplateTextBox.TextSize = 14.000
	TemplateTextBox.TextWrapped = true

	MainTab.Name = "MainTab"
	MainTab.Parent = FrameHolder
	MainTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainTab.BackgroundTransparency = 1.000
	MainTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MainTab.BorderSizePixel = 0
	MainTab.Position = UDim2.new(0, 0, -5.04664577e-08, 0)
	MainTab.Size = UDim2.new(0.969210744, 0, 1.00000012, 0)

	UIGridLayout.Parent = MainTab
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellPadding = UDim2.new(0, 7, 0, 7)
	UIGridLayout.CellSize = UDim2.new(0.192000002, 0, 0.165000007, 0)

	TemplateSlideThingy.Name = "TemplateSlideThingy"
	TemplateSlideThingy.Parent = FrameHolder
	TemplateSlideThingy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TemplateSlideThingy.BackgroundTransparency = 1.000
	TemplateSlideThingy.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TemplateSlideThingy.BorderSizePixel = 0
	TemplateSlideThingy.Position = UDim2.new(0, 0, -5.04664577e-08, 0)
	TemplateSlideThingy.Size = UDim2.new(0.969210744, 0, 1.00000012, 0)
	TemplateSlideThingy.Visible = false

	UIGridLayout_2.Parent = TemplateSlideThingy
	UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout_2.CellPadding = UDim2.new(0, 7, 0, 7)
	UIGridLayout_2.CellSize = UDim2.new(0.192000002, 0, 0.165000007, 0)

	Closee.Name = "Closee"
	Closee.Parent = Background
	Closee.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	Closee.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Closee.BorderSizePixel = 0
	Closee.Position = UDim2.new(1.01375484, 0, -0.0861520246, 0)
	Closee.Size = UDim2.new(0.0729999989, 0, 0.074000001, 0)
	Closee.Font = Enum.Font.Highway
	Closee.Text = "X"
	Closee.TextColor3 = Color3.fromRGB(0, 0, 0)
	Closee.TextScaled = true
	Closee.TextSize = 14.000
	Closee.TextWrapped = true

	UICorner.Parent = Closee

	TabButtonHolder.Name = "TabButtonHolder"
	TabButtonHolder.Parent = Background
	TabButtonHolder.Active = true
	TabButtonHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabButtonHolder.BackgroundTransparency = 0.500
	TabButtonHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabButtonHolder.BorderSizePixel = 0
	TabButtonHolder.Position = UDim2.new(-0.376329154, 0, 0, 0)
	TabButtonHolder.Size = UDim2.new(0.350073636, 0, 1, 0)

	Template.Name = "Template"
	Template.Parent = TabButtonHolder
	Template.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Template.BackgroundTransparency = 0.650
	Template.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Template.BorderSizePixel = 0
	Template.Size = UDim2.new(0.933333337, 0, 0.0438061133, 0)
	Template.Visible = false
	Template.Font = Enum.Font.SourceSans
	Template.Text = "TabButton"
	Template.TextColor3 = Color3.fromRGB(0, 0, 0)
	Template.TextScaled = true
	Template.TextSize = 14.000
	Template.TextWrapped = true

	UIGridLayout_3.Parent = TabButtonHolder
	UIGridLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout_3.CellSize = UDim2.new(0.933000028, 0, 0.0439999998, 0)

	MainTab_2.Name = "MainTab"
	MainTab_2.Parent = TabButtonHolder
	MainTab_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	MainTab_2.BackgroundTransparency = 0.650
	MainTab_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MainTab_2.BorderSizePixel = 0
	MainTab_2.Size = UDim2.new(0.933333337, 0, 0.0438061133, 0)
	MainTab_2.Visible = true
	MainTab_2.Font = Enum.Font.SourceSans
	MainTab_2.Text = "TabButton"
	MainTab_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	MainTab_2.TextScaled = true
	MainTab_2.TextSize = 14.000
	MainTab_2.TextWrapped = true

	-- Scripts:

	local function QQPI_fake_script() -- TemplateButton.TextColourChanger 
		local script = Instance.new('Script', TemplateButton)

		local active = false

		script.Parent.MouseButton1Click:Connect(function()
			active = not active
			if active then
				script.Parent.TextColor3 = Color3.new(0, 1, 0)
			else
				script.Parent.TextColor = Color3.new(1, 0, 0)
			end
		end)
	end
	coroutine.wrap(QQPI_fake_script)()
	local function ZXDCKSS_fake_script() -- Closee.Script 
		local script = Instance.new('Script', Closee)

		script.Parent.MouseButton1Click:Connect(function()
			script.Parent.Parent.Parent.Enabled = false
		end)
	end
	coroutine.wrap(ZXDCKSS_fake_script)()
	local function SAVWTUG_fake_script() -- Template.Script 
		local script = Instance.new('Script', Template)

		script.Parent.MouseButton1Click:Connect(function()
			for i, tab in pairs(script.Parent.Parent.Parent.FrameHolder:GetChildren()) do
				if tab.Name == script.Parent.Name then
					tab.Visible = true
				else
					tab.Visible = false
				end
			end

			if script.Parent.Parent.Parent.FrameHolder:FindFirstChild(script.Parent.Name) then
			else
				for i, tab in pairs(script.Parent.Parent.Parent.FrameHolder:GetChildren()) do
					if tab.Name == "MainTab" then
						tab.Visible = true
					else
						tab.Visible = false
					end
				end
			end
		end)
	end
	coroutine.wrap(SAVWTUG_fake_script)()
	local function ZJMTLT_fake_script() -- MainTab_2.Script 
		local script = Instance.new('Script', MainTab_2)

		script.Parent.MouseButton1Click:Connect(function()
			for i, tab in pairs(script.Parent.Parent.Parent.FrameHolder:GetChildren()) do
				if tab.Name == "MainTab" then
					tab.Visible = true
				else
					tab.Visible = false
				end
			end
		end)
	end
	coroutine.wrap(ZJMTLT_fake_script)()
	local function DCHDRL_fake_script() -- ScreenGui.HideAndShowUIS 
		local script = Instance.new('Script', ScreenGui)

		game:GetService("UserInputService").InputBegan:Connect(function(key)
			if key.KeyCode == Enum.KeyCode.RightBracket then
				script.Parent.Enabled = not script.Parent.Enabled
			end
		end)
	end
	coroutine.wrap(DCHDRL_fake_script)()
end

function module.AddButton(Data)
	local Name, Text, Tab, Fire = unpack(Data)

	if Connected then
		local Button = GUI.Background.FrameHolder.ItemTemplates.TemplateButton:Clone()
		Button.Name = Name
		Button.Text = Text
		
		if Tab then
			Button.Parent = Tab
		else
			Button.Parent = GUI.Background.FrameHolder.MainTab
		end
		
		Button.MouseButton1Click:Connect(Fire)
	end
end

function module.AddTextBox(Data)
	local Name, PlaceholderText, Tab, Fire = unpack(Data)

	if Connected then
		local TextBox = GUI.Background.FrameHolder.ItemTemplates.TemplateTextBox:Clone()
		TextBox.PlaceholderText = PlaceholderText
		TextBox.Name = Name
		
		if Tab then
			TextBox.Parent = Tab
		else
			TextBox.Parent = GUI.Background.FrameHolder.MainTab
		end
		
		TextBox.FocusLost:Connect(function(enterPress)
			if enterPress then
				Fire(TextBox.Text)
			end
		end)
	end
end

function module.AddTab(TabName)
	if Connected then
		local Tclone = GUI.Background.FrameHolder.TemplateSlideThingy:Clone()
		Tclone.Name = TabName
		Tclone.Parent = GUI.Background.FrameHolder

		local Bclone = GUI.Background.TabButtonHolder.Template:Clone()
		Bclone.Name = TabName
		Bclone.Text = TabName
		Bclone.Visible = true
		Bclone.Parent = GUI.Background.TabButtonHolder
		
		local function RRUGC_fake_script() -- Template.Script 
			local script = Instance.new('Script', Bclone)

			script.Parent.MouseButton1Click:Connect(function()
				for i, tab in pairs(script.Parent.Parent.Parent.FrameHolder:GetChildren()) do
					if tab.Name == script.Parent.Name then
						tab.Visible = true
					else
						tab.Visible = false
					end
				end

				if script.Parent.Parent.Parent.FrameHolder:FindFirstChild(script.Parent.Name) then
				else
					for i, tab in pairs(script.Parent.Parent.Parent.FrameHolder:GetChildren()) do
						if tab.Name == "MainTab" then
							tab.Visible = true
						else
							tab.Visible = false
						end
					end
				end
			end)
		end
		coroutine.wrap(RRUGC_fake_script)()
		
		return Tclone
	else
		error("Connect GUI")
	end
end

function module.RemoveGUI()
	if Connected then
		GUI:Destroy()
		Connected = false
	end
end

return module
