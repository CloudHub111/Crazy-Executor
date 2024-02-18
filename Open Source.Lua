local gui = Instance.new("ScreenGui")
gui.Name = "CrazyExecutor"
gui.Parent = game.CoreGui

--screengui = gui


-- gui = ScreenGui
local Gui = Instance.new("Frame")
Gui.Size = UDim2.new(0, 410, 0, 220)
Gui.Position = UDim2.new(0.2, 0, 0.2, 0)
Gui.BackgroundColor3 = Color3.new(0, 255, 0)
Gui.BorderColor3 = Color3.new(0, 0, 0)
Gui.BorderSizePixel = 1
Gui.Active = true
Gui.Draggable = true
Gui.Parent = gui

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(0, 410, 0, 50)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 1
TextLabel.Text = "Crazy Executor Mobile"
TextLabel.TextColor3 = Color3.new(255, 255, 255)
TextLabel.Font = Enum.Font.Code
TextLabel.Parent = Gui
TextLabel.TextSize = 14


local Execute = Instance.new("TextButton")
Execute.Size = UDim2.new(0, 150, 0, 50)
Execute.Position = UDim2.new(0, 0, 0, 170)
Execute.BackgroundColor3 = Color3.new(0, 0, 0)
Execute.BorderColor3 = Color3.new(0, 0, 0)
Execute.BorderSizePixel = 1
Execute.Text = "Execute"
Execute.TextColor3 = Color3.new(255, 255, 255)
Execute.Font = Enum.Font.Code
Execute.Parent = Gui
Execute.TextSize = 14

local Clear = Instance.new("TextButton")
Clear.Size = UDim2.new(0, 150, 0, 50)
Clear.Position = UDim2.new(0.633, 0, 0, 170)
Clear.BackgroundColor3 = Color3.new(0, 0, 0)
Clear.BorderColor3 = Color3.new(0, 0, 0)
Clear.BorderSizePixel = 1
Clear.Text = "Clear"
Clear.TextColor3 = Color3.new(255, 255, 255)
Clear.Font = Enum.Font.Code
Clear.Parent = Gui
Clear.TextSize = 14

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0, 355, 0, 110)
TextBox.Position = UDim2.new(0.07, 0, 0, 55)
TextBox.BackgroundColor3 = Color3.new(0, 0, 0)
TextBox.BorderColor3 = Color3.new(0, 0, 0)
TextBox.BorderSizePixel = 1
TextBox.PlaceholderText = "Please Enter Your Code!"
TextBox.Text = "-- Your Script Here!"
TextBox.TextColor3 = Color3.new(255, 255, 255)
TextBox.Font = Enum.Font.Code
TextBox.Parent = Gui

local Close = Instance.new("TextButton")
Close.Size = UDim2.new(0, 50, 0, 50)
Close.Position = UDim2.new(0, 360, 0, 0)
Close.BackgroundColor3 = Color3.fromRGB(188, 0, 0)
Close.BorderColor3 = Color3.new(0, 0, 0)
Close.BorderSizePixel = 1
Close.Text = "X"
Close.TextColor3 = Color3.new(255, 0, 0)
Close.Font = Enum.Font.Code
Close.Parent = Gui
Close.TextSize = 24

local Toogle = Instance.new("Frame")
Toogle.Size = UDim2.new(0, 90, 0, 60)
Toogle.Position = UDim2.new(0, 0, 0, 100)
Toogle.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
Toogle.BorderColor3 = Color3.new(0, 0, 0)
Toogle.BorderSizePixel = 1
Toogle.Active = true
Toogle.Draggable = true
Toogle.Parent = gui

local ToogleO = Instance.new("TextButton")
ToogleO.Size = UDim2.new(0, 70, 0, 45)
ToogleO.Position = UDim2.new(0, 11, 0, 7)
ToogleO.BackgroundColor3 = Color3.fromRGB( 99, 99, 99)
ToogleO.BorderColor3 = Color3.new(0, 0, 0)
ToogleO.BorderSizePixel = 1
ToogleO.Text = "Open"
ToogleO.TextColor3 = Color3.fromRGB(78, 78, 78)
ToogleO.Font = Enum.Font.Arcade
ToogleO.Parent = Toogle
ToogleO.TextSize = 15

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = Toogle

-- Script

Clear.MouseButton1Click:Connect(function()
TextBox.Text = ""
end)

ToogleO.MouseButton1Click:Connect(function()
Gui.Visible = true
end)

Close.MouseButton1Click:Connect(function()
Gui.Visible = fasle
end)

Execute.MouseButton1Click:Connect(function()
loadstring(TextBox.Text)()
game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Crazy Executor Mobile",
        Text = "Load Script Success!"
    })
end)
