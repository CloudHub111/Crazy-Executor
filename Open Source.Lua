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

-- Script

Clear.MouseButton1Click:Connect(function()
TextBox.Text = ""
end)

Execute.MouseButton1Click:Connect(function()
loadstring(TextBox.Text)()
game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Crazy Executor Mobile",
        Text = "Load Script Success!"
    })
end)

