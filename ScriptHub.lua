local GUI = nil
local Connected = false

local module = {}

function module.ConnectGUI()
	if game:GetService("CoreGui"):FindFirstChild("rectydvasd") then
		game:GetService("CoreGui"):FindFirstChild("rectydvasd"):Destroy()
	end

	-- UI INSTANCES

	local ScreenGui = Instance.new("ScreenGui")

	GUI = ScreenGui
	Connected = true

	local Background = Instance.new("Frame")
	local FrameHolder = Instance.new("ScrollingFrame")
	local UIGridLayout = Instance.new("UIGridLayout")
	local ItemTemplates = Instance.new("Frame")
	local TemplateButton = Instance.new("TextButton")
	local TemplateTextBox = Instance.new("TextBox")
	local Closee = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")

	-- UI PROPERTIES

	ScreenGui.Parent = game:GetService("CoreGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.Name = "rectydvasd"

	Background.Name = "Background"
	Background.Parent = ScreenGui
	Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Background.BackgroundTransparency = 0.300
	Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Background.BorderSizePixel = 0
	Background.Position = UDim2.new(0.320626646, 0, 0.173498571, 0)
	Background.Size = UDim2.new(0.35800004, 0, 0.652846456, 0)

	FrameHolder.Name = "FrameHolder"
	FrameHolder.Parent = Background
	FrameHolder.Active = true
	FrameHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FrameHolder.BackgroundTransparency = 1.000
	FrameHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
	FrameHolder.BorderSizePixel = 0
	FrameHolder.Position = UDim2.new(0.241999999, 0, 0.116999999, 0)
	FrameHolder.Size = UDim2.new(0.758000016, 0, 0.883000016, 0)
	FrameHolder.CanvasPosition = Vector2.new(0, 80.1257324)
	FrameHolder.CanvasSize = UDim2.new(0, 0, 1, 0)
	FrameHolder.ScrollBarThickness = 14

	UIGridLayout.Parent = FrameHolder
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellPadding = UDim2.new(0, 7, 0, 7)
	UIGridLayout.CellSize = UDim2.new(0.192000002, 0, 0.165000007, 0)

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

	-- Scripts:

	local function YCNI_fake_script() -- TextButtonChanger
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
	coroutine.wrap(YCNI_fake_script)()
	local function SEBRUUC_fake_script() -- Close Button Script
		local script = Instance.new('Script', Closee)

		script.Parent.MouseButton1Click:Connect(function()
			script.Parent.Parent.Parent.Enabled = false
		end)
	end
	coroutine.wrap(SEBRUUC_fake_script)()
	local function ACSVTMG_fake_script() -- UIS script 
		local script = Instance.new('Script', ScreenGui)
		
		local UIS = game:GetService("UserInputService")

		UIS.InputBegan:Connect(function(key)
			if key.KeyCode == Enum.KeyCode.RightBracket then
				ScreenGui.Enabled = not ScreenGui.Enabled
			end
		end)
	end
	coroutine.wrap(ACSVTMG_fake_script)()
end

function module.AddButton(Data)
	local Name, Text, Fire = unpack(Data)

	if Connected then
		local Button = GUI.Background.FrameHolder.ItemTemplates.TemplateButton:Clone()
		Button.Name = Name
		Button.Parent = GUI.Background.FrameHolder
		Button.Text = Text
		Button.MouseButton1Click:Connect(Fire)
	end
end

function module.AddTextBox(Data)
	local Name, PlaceholderText, Fire = unpack(Data)

	if Connected then
		local TextBox = GUI.Background.FrameHolder.ItemTemplates.TemplateTextBox:Clone()
		TextBox.PlaceholderText = PlaceholderText
		TextBox.Name = Name
		TextBox.Parent = GUI.Background.FrameHolder
		TextBox.FocusLost:Connect(function(enterPress)
			if enterPress then
				Fire(TextBox.Text)
			end
		end)
	end
end

function module.RemoveGUI()
	if Connected then
		GUI:Destroy()
		Connected = false
	end
end

return module
