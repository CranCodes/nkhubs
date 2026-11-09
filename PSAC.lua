local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer

local TELEPORT_DELAY = 5 -- seconds between teleports (measured from each teleport)
local PROMPT_DELAY = 2    -- seconds to wait after teleporting before interacting with the prompt
local HEIGHT_OFFSET = Vector3.new(0, 4, 0)
local SETTLE_TIME = 0.3   -- short wait after teleport so you're in range of the prompt

local enabled = false

-- UI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ChestTeleportGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 90)
frame.Position = UDim2.new(0, 20, 0.5, -45)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
frame.BorderSizePixel = 0
frame.Active = true
frame.Parent = screenGui
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 10)

local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 28)
titleBar.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
titleBar.BorderSizePixel = 0
titleBar.Parent = frame
Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 10)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -40, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Chest Teleport"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 14
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = titleBar

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 22, 0, 22)
closeButton.Position = UDim2.new(1, -25, 0, 3)
closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 14
closeButton.Parent = titleBar
Instance.new("UICorner", closeButton).CornerRadius = UDim.new(0, 6)

local button = Instance.new("TextButton")
button.Size = UDim2.new(1, -20, 0, 40)
button.Position = UDim2.new(0, 10, 0, 40)
button.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
button.TextColor3 = Color3.new(1, 1, 1)
button.Font = Enum.Font.GothamBold
button.TextSize = 18
button.Text = "Chest TP: OFF"
button.Parent = frame
Instance.new("UICorner", button).CornerRadius = UDim.new(0, 8)

-- Dragging
local dragging = false
local dragStart, startPos
local connections = {}

local function beginDrag(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end

titleBar.InputBegan:Connect(beginDrag)
frame.InputBegan:Connect(beginDrag)

table.insert(connections, UserInputService.InputChanged:Connect(function(input)
	if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement
		or input.UserInputType == Enum.UserInputType.Touch) then
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y
		)
	end
end))

-- Teleport + prompt logic
local function interruptibleWait(seconds)
	local elapsed = 0
	while elapsed < seconds and enabled do
		elapsed += task.wait(0.1)
	end
end

local function triggerPrompt(model)
	local prompt = model:FindFirstChildWhichIsA("ProximityPrompt", true)
	if not prompt or not prompt.Enabled then return end

	prompt:InputHoldBegin()
	task.wait(math.max(prompt.HoldDuration, 0) + 0.1)
	prompt:InputHoldEnd()
end

local function teleportTo(model)
	local character = player.Character
	local root = character and character:FindFirstChild("HumanoidRootPart")
	if not root then return false end

	root.CFrame = model:GetPivot() + HEIGHT_OFFSET
	task.wait(SETTLE_TIME)

	-- wait before interacting, but bail out early if toggled off
	interruptibleWait(PROMPT_DELAY)

	if enabled then
		triggerPrompt(model)
	end
	return true
end

local function runLoop()
	while enabled do
		local folder = workspace:FindFirstChild("LootChests")
		if not folder then
			warn("LootChests folder not found in workspace")
			task.wait(2)
		else
			for _, model in ipairs(folder:GetChildren()) do
				if not enabled then break end
				if model:IsA("Model") then
					local startTime = os.clock()
					teleportTo(model)

					-- keep a full TELEPORT_DELAY between teleports, counting the time already spent
					local remaining = TELEPORT_DELAY - (os.clock() - startTime)
					if remaining > 0 then
						interruptibleWait(remaining)
					end
				end
			end
		end
		task.wait()
	end
end

button.MouseButton1Click:Connect(function()
	enabled = not enabled

	if enabled then
		button.Text = "Chest TP: ON"
		button.BackgroundColor3 = Color3.fromRGB(50, 180, 80)
		task.spawn(runLoop)
	else
		button.Text = "Chest TP: OFF"
		button.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
	end
end)

closeButton.MouseButton1Click:Connect(function()
	enabled = false
	for _, conn in ipairs(connections) do
		conn:Disconnect()
	end
	screenGui:Destroy()
end)
