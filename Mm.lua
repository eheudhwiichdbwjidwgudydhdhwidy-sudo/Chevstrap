local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local BlockBtn = Instance.new("TextButton")
local SpamBtn = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,120,0,90)
Frame.Position = UDim2.new(0,20,0.5,-45)
Frame.BackgroundColor3 = Color3.fromRGB(30,30,30)

BlockBtn.Parent = Frame
BlockBtn.Size = UDim2.new(1,-10,0,35)
BlockBtn.Position = UDim2.new(0,5,0,5)
BlockBtn.Text = "Auto Block"

SpamBtn.Parent = Frame
SpamBtn.Size = UDim2.new(1,-10,0,35)
SpamBtn.Position = UDim2.new(0,5,0,45)
SpamBtn.Text = "Auto Spam"

local blocking = false
local spamming = false

BlockBtn.MouseButton1Click:Connect(function()
	blocking = not blocking
	BlockBtn.Text = blocking and "Block ON" or "Auto Block"

	while blocking do
		task.wait(0.3)
		print("Blocking...")
	end
end)

SpamBtn.MouseButton1Click:Connect(function()
	spamming = not spamming
	SpamBtn.Text = spamming and "Spam ON" or "Auto Spam"

	while spamming do
		task.wait(0.1)
		print("Spam Click...")
	end
end)
