local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Normal timings
local TELEPORT_DELAY = 5     -- seconds per target (measured from each teleport)
local PROMPT_DELAY = 2       -- wait after teleporting before interacting
local SETTLE_TIME = 0.3      -- short wait after teleport so you're in range

-- Fast Mode timings
local FAST_HOLD_DURATION = 0   -- hold time forced onto prompts while interacting
local FAST_SETTLE_TIME = 0.7
local FAST_PROMPT_DELAY = 0.2
local FAST_TELEPORT_DELAY = 1.5 -- max time per target; moves on sooner if the node is done

local HEIGHT_OFFSET = Vector3.new(0, 4, 0)
local DIM_O_PREFIX = "Dim_O" -- dimensions starting with this go in the Dim_O list
local MAX_ATTEMPTS = 3       -- Dim_O mode gives up on a node that survives this many visits
local LIST_REFRESH = 1.5     -- how often the dimension lists update (seconds)

-- Loading screen hiding: a ScreenGui in PlayerGui is hidden if its name contains
-- one of these keywords, or it shows text containing one of the text keywords.
local LOADING_NAME_KEYWORDS = { "loading", "loadscreen" }
local LOADING_TEXT_KEYWORDS = { "please wait" }

local EXPANDED_HEIGHT = 458
local COLLAPSED_HEIGHT = 28

local COLOR_OFF = Color3.fromRGB(200, 50, 50)
local COLOR_ON = Color3.fromRGB(50, 180, 80)
local COLOR_ITEM = Color3.fromRGB(55, 55, 65)
local COLOR_ITEM_SELECTED = Color3.fromRGB(60, 110, 200)
local COLOR_SWITCH_OFF = Color3.fromRGB(70, 70, 80)

local fastMode = true
local hideLoading = false

local function isDimO(name)
	return string.sub(name, 1, #DIM_O_PREFIX) == DIM_O_PREFIX
end

-- UI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ChestTeleportGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 240, 0, EXPANDED_HEIGHT)
frame.Position = UDim2.new(0, 20, 0.5, -229)
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
title.Size = UDim2.new(1, -64, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Auto Teleport"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 14
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = titleBar

local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 22, 0, 22)
minimizeButton.Position = UDim2.new(1, -51, 0, 3)
minimizeButton.BackgroundColor3 = Color3.fromRGB(90, 90, 110)
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.Font = Enum.Font.GothamBold
minimizeButton.TextSize = 16
minimizeButton.Parent = titleBar
Instance.new("UICorner", minimizeButton).CornerRadius = UDim.new(0, 6)

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 22, 0, 22)
closeButton.Position = UDim2.new(1, -25, 0, 3)
closeButton.BackgroundColor3 = COLOR_OFF
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 14
closeButton.Parent = titleBar
Instance.new("UICorner", closeButton).CornerRadius = UDim.new(0, 6)

local content = Instance.new("Frame")
content.Size = UDim2.new(1, 0, 1, -28)
content.Position = UDim2.new(0, 0, 0, 28)
content.BackgroundTransparency = 1
content.Parent = frame

local contentLayout = Instance.new("UIListLayout")
contentLayout.Padding = UDim.new(0, 6)
contentLayout.SortOrder = Enum.SortOrder.LayoutOrder
contentLayout.Parent = content

local contentPadding = Instance.new("UIPadding")
contentPadding.PaddingTop = UDim.new(0, 8)
contentPadding.PaddingLeft = UDim.new(0, 10)
contentPadding.PaddingRight = UDim.new(0, 10)
contentPadding.Parent = content

-- Minimize / expand
local minimized = false
minimizeButton.MouseButton1Click:Connect(function()
	minimized = not minimized
	content.Visible = not minimized
	frame.Size = UDim2.new(0, 240, 0, minimized and COLLAPSED_HEIGHT or EXPANDED_HEIGHT)
	minimizeButton.Text = minimized and "+" or "-"
end)

local function createToggleButton(layoutOrder)
	local b = Instance.new("TextButton")
	b.Size = UDim2.new(1, 0, 0, 36)
	b.LayoutOrder = layoutOrder
	b.BackgroundColor3 = COLOR_OFF
	b.TextColor3 = Color3.new(1, 1, 1)
	b.Font = Enum.Font.GothamBold
	b.TextSize = 16
	b.Parent = content
	Instance.new("UICorner", b).CornerRadius = UDim.new(0, 8)
	return b
end

local function createLabel(text, layoutOrder)
	local l = Instance.new("TextLabel")
	l.Size = UDim2.new(1, 0, 0, 16)
	l.LayoutOrder = layoutOrder
	l.BackgroundTransparency = 1
	l.Text = text
	l.TextColor3 = Color3.fromRGB(170, 170, 180)
	l.Font = Enum.Font.Gotham
	l.TextSize = 12
	l.TextXAlignment = Enum.TextXAlignment.Left
	l.Parent = content
	return l
end

-- Switch-styled toggle (label on the left, sliding switch on the right)
local switchTween = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local function createSwitch(layoutOrder, labelText, initialState, onChanged)
	local row = Instance.new("Frame")
	row.Size = UDim2.new(1, 0, 0, 30)
	row.LayoutOrder = layoutOrder
	row.BackgroundTransparency = 1
	row.Parent = content

	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, -54, 1, 0)
	label.BackgroundTransparency = 1
	label.Text = labelText
	label.TextColor3 = Color3.new(1, 1, 1)
	label.Font = Enum.Font.GothamMedium
	label.TextSize = 14
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Parent = row

	local track = Instance.new("TextButton")
	track.Size = UDim2.new(0, 44, 0, 22)
	track.AnchorPoint = Vector2.new(1, 0.5)
	track.Position = UDim2.new(1, 0, 0.5, 0)
	track.Text = ""
	track.AutoButtonColor = false
	track.BorderSizePixel = 0
	track.Parent = row
	Instance.new("UICorner", track).CornerRadius = UDim.new(1, 0)

	local knob = Instance.new("Frame")
	knob.Size = UDim2.new(0, 18, 0, 18)
	knob.AnchorPoint = Vector2.new(0, 0.5)
	knob.BackgroundColor3 = Color3.new(1, 1, 1)
	knob.BorderSizePixel = 0
	knob.Parent = track
	Instance.new("UICorner", knob).CornerRadius = UDim.new(1, 0)

	local state = initialState

	local function apply(instant)
		local knobPos = state and UDim2.new(1, -20, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)
		local trackColor = state and COLOR_ON or COLOR_SWITCH_OFF
		if instant then
			knob.Position = knobPos
			track.BackgroundColor3 = trackColor
		else
			TweenService:Create(knob, switchTween, { Position = knobPos }):Play()
			TweenService:Create(track, switchTween, { BackgroundColor3 = trackColor }):Play()
		end
	end

	apply(true)

	track.MouseButton1Click:Connect(function()
		state = not state
		apply(false)
		onChanged(state)
	end)
end

-- Selectable list (single or multi select)
local function createList(layoutOrder, multi)
	local scroll = Instance.new("ScrollingFrame")
	scroll.Size = UDim2.new(1, 0, 0, 80)
	scroll.LayoutOrder = layoutOrder
	scroll.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
	scroll.BorderSizePixel = 0
	scroll.ScrollBarThickness = 4
	scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
	scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
	scroll.Parent = content
	Instance.new("UICorner", scroll).CornerRadius = UDim.new(0, 8)

	local layout = Instance.new("UIListLayout")
	layout.Padding = UDim.new(0, 3)
	layout.SortOrder = Enum.SortOrder.LayoutOrder
	layout.Parent = scroll

	local pad = Instance.new("UIPadding")
	pad.PaddingTop = UDim.new(0, 3)
	pad.PaddingBottom = UDim.new(0, 3)
	pad.PaddingLeft = UDim.new(0, 3)
	pad.PaddingRight = UDim.new(0, 6)
	pad.Parent = scroll

	local list = {
		names = {},
		order = {}, -- selected names, in the order they were clicked
		onChanged = nil,
	}
	local buttons = {}

	local function indexOf(name)
		for i, n in ipairs(list.order) do
			if n == name then return i end
		end
	end

	local function restyle()
		for name, b in pairs(buttons) do
			local idx = indexOf(name)
			if idx then
				b.BackgroundColor3 = COLOR_ITEM_SELECTED
				b.Text = multi and (idx .. ". " .. name) or name
			else
				b.BackgroundColor3 = COLOR_ITEM
				b.Text = name
			end
		end
	end

	local function toggle(name)
		local idx = indexOf(name)
		if idx then
			table.remove(list.order, idx)
		else
			if not multi then table.clear(list.order) end
			table.insert(list.order, name)
		end
		restyle()
		if list.onChanged then list.onChanged() end
	end

	function list.setNames(newNames)
		-- skip if nothing changed (avoids flicker / scroll reset)
		if #newNames == #list.names then
			local same = true
			for i, n in ipairs(newNames) do
				if list.names[i] ~= n then same = false break end
			end
			if same then return end
		end
		list.names = newNames

		local present = {}
		for _, n in ipairs(newNames) do present[n] = true end

		for name, b in pairs(buttons) do
			if not present[name] then
				b:Destroy()
				buttons[name] = nil
			end
		end

		local selectionChanged = false
		for i = #list.order, 1, -1 do
			if not present[list.order[i]] then
				table.remove(list.order, i)
				selectionChanged = true
			end
		end

		for i, name in ipairs(newNames) do
			local b = buttons[name]
			if not b then
				b = Instance.new("TextButton")
				b.Size = UDim2.new(1, 0, 0, 24)
				b.TextColor3 = Color3.new(1, 1, 1)
				b.Font = Enum.Font.Gotham
				b.TextSize = 13
				b.TextXAlignment = Enum.TextXAlignment.Left
				b.Parent = scroll
				Instance.new("UICorner", b).CornerRadius = UDim.new(0, 6)
				local padding = Instance.new("UIPadding")
				padding.PaddingLeft = UDim.new(0, 8)
				padding.Parent = b
				b.MouseButton1Click:Connect(function() toggle(name) end)
				buttons[name] = b
			end
			b.LayoutOrder = i
		end

		restyle()
		if selectionChanged and list.onChanged then list.onChanged() end
	end

	return list
end

-- Dragging (by the title bar)
local dragging = false
local dragStart, startPos
local connections = {}

titleBar.InputBegan:Connect(function(input)
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
end)

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

-- Build the UI elements in order
local chestButton = createToggleButton(1)
createLabel("Dimension (pick one)", 2)
local nodeList = createList(3, false)
local nodeButton = createToggleButton(4)
createLabel("Dim_O (pick several, in order)", 5)
local dimOList = createList(6, true)
local dimOButton = createToggleButton(7)
local fastButton = createToggleButton(8)

local function refreshFastButton()
	fastButton.Text = "Fast Mode: " .. (fastMode and "ON" or "OFF")
	fastButton.BackgroundColor3 = fastMode and COLOR_ON or COLOR_OFF
end

fastButton.MouseButton1Click:Connect(function()
	fastMode = not fastMode
	refreshFastButton()
end)
refreshFastButton()

createSwitch(9, "Hide loading screen", hideLoading, function(state)
	hideLoading = state
end)

-- Loading screen hiding
local function containsAny(str, keywords)
	str = string.lower(str)
	for _, kw in ipairs(keywords) do
		if string.find(str, kw, 1, true) then
			return true
		end
	end
	return false
end

local function isLoadingGui(gui)
	if containsAny(gui.Name, LOADING_NAME_KEYWORDS) then
		return true
	end
	for _, d in ipairs(gui:GetDescendants()) do
		if (d:IsA("TextLabel") or d:IsA("TextButton"))
			and d.Visible
			and containsAny(d.Text, LOADING_TEXT_KEYWORDS) then
			return true
		end
	end
	return false
end

task.spawn(function()
	while screenGui.Parent do
		if hideLoading then
			for _, gui in ipairs(playerGui:GetChildren()) do
				if gui:IsA("ScreenGui") and gui ~= screenGui and gui.Enabled and isLoadingGui(gui) then
					gui.Enabled = false
				end
			end
		end
		task.wait(0.25)
	end
end)

-- Dimension scanning
local function scanDimensions()
	local normal, dimO = {}, {}
	local dimensions = workspace:FindFirstChild("Dimensions")
	if dimensions then
		for _, dim in ipairs(dimensions:GetChildren()) do
			local nodes = dim:FindFirstChild("Nodes")
			if nodes and nodes:IsA("Folder") then
				if isDimO(dim.Name) then
					table.insert(dimO, dim.Name)
				else
					table.insert(normal, dim.Name)
				end
			end
		end
	end
	table.sort(normal)
	table.sort(dimO)
	return normal, dimO
end

task.spawn(function()
	while screenGui.Parent do
		local normal, dimO = scanDimensions()
		nodeList.setNames(normal)
		dimOList.setNames(dimO)
		task.wait(LIST_REFRESH)
	end
end)

local function getNodesFolder(dimName)
	local dimensions = workspace:FindFirstChild("Dimensions")
	local dim = dimensions and dimensions:FindFirstChild(dimName)
	local nodes = dim and dim:FindFirstChild("Nodes")
	if nodes and nodes:IsA("Folder") then
		return nodes
	end
end

-- State
local activeMode = nil
local runId = 0 -- incremented on every toggle/restart so old loops stop
local modes = {}

local function refreshButtons()
	for name, mode in pairs(modes) do
		local on = (activeMode == name)
		mode.button.Text = mode.label .. (on and ": ON" or ": OFF")
		mode.button.BackgroundColor3 = on and COLOR_ON or COLOR_OFF
	end
end

-- Teleport + prompt logic
local function interruptibleWait(seconds, id)
	local elapsed = 0
	while elapsed < seconds and runId == id do
		elapsed += task.wait(0.1)
	end
end

local function triggerPrompt(model)
	local prompt = model:FindFirstChildWhichIsA("ProximityPrompt", true)
	if not prompt or not prompt.Enabled then return end

	-- In Fast Mode, shorten the hold for this interaction, then put it back
	local originalHold = prompt.HoldDuration
	if fastMode and originalHold > FAST_HOLD_DURATION then
		prompt.HoldDuration = FAST_HOLD_DURATION
	end

	prompt:InputHoldBegin()
	task.wait(math.max(prompt.HoldDuration, 0) + 0.1)
	prompt:InputHoldEnd()

	if prompt.Parent then
		prompt.HoldDuration = originalHold
	end
end

local function teleportTo(model, id)
	local character = player.Character
	local root = character and character:FindFirstChild("HumanoidRootPart")
	if not root then return false end

	root.CFrame = model:GetPivot() + HEIGHT_OFFSET
	task.wait(fastMode and FAST_SETTLE_TIME or SETTLE_TIME)

	interruptibleWait(fastMode and FAST_PROMPT_DELAY or PROMPT_DELAY, id)

	if runId == id then
		triggerPrompt(model)
	end
	return true
end

-- Teleports, interacts, then waits out the rest of the cycle.
-- In Fast Mode it moves on early once the node is gone or its prompt is disabled.
local function visitTarget(model, id)
	local prompt = model:FindFirstChildWhichIsA("ProximityPrompt", true)
	local cycle = fastMode and FAST_TELEPORT_DELAY or TELEPORT_DELAY
	local startTime = os.clock()

	local teleported = teleportTo(model, id)

	while runId == id do
		local remaining = cycle - (os.clock() - startTime)
		if remaining <= 0 then break end

		if fastMode and teleported then
			local finished = not model.Parent
				or not prompt
				or not prompt.Parent
				or not prompt.Enabled
			if finished then break end
		end

		task.wait(math.min(0.05, remaining))
	end

	return teleported
end

-- Target finders
local function getChestTargets()
	local targets = {}
	local folder = workspace:FindFirstChild("LootChests")
	if not folder then
		warn("LootChests folder not found in workspace")
		return targets
	end
	for _, model in ipairs(folder:GetChildren()) do
		if model:IsA("Model") then
			table.insert(targets, model)
		end
	end
	return targets
end

local function getSelectedDimensionTargets()
	local targets = {}
	local dimName = nodeList.order[1]
	if not dimName or isDimO(dimName) then return targets end

	local nodes = getNodesFolder(dimName)
	if not nodes then return targets end

	for _, model in ipairs(nodes:GetChildren()) do
		if model:IsA("Model") then
			table.insert(targets, model)
		end
	end
	return targets
end

-- Run loops
local function makePassLoop(getTargets)
	return function(id)
		while runId == id do
			local targets = getTargets()
			if #targets == 0 then
				interruptibleWait(2, id) -- nothing found, retry shortly
			else
				for _, model in ipairs(targets) do
					if runId ~= id then break end
					if model.Parent then
						visitTarget(model, id)
					end
				end
			end
			task.wait()
		end
	end
end

-- Next node in a dimension that still has an interactable prompt
local function nextDimONode(dimName, attempts)
	local nodes = getNodesFolder(dimName)
	if not nodes then return nil end

	for _, model in ipairs(nodes:GetChildren()) do
		if model:IsA("Model") and (attempts[model] or 0) < MAX_ATTEMPTS then
			local prompt = model:FindFirstChildWhichIsA("ProximityPrompt", true)
			if prompt and prompt.Enabled then
				return model
			end
		end
	end
	return nil
end

local function runDimO(id)
	local attempts = setmetatable({}, { __mode = "k" })

	while runId == id do
		local order = table.clone(dimOList.order)
		local didWork = false

		for _, dimName in ipairs(order) do
			-- stay in this dimension until its Nodes folder has nothing left
			while runId == id do
				local node = nextDimONode(dimName, attempts)
				if not node then break end

				didWork = true
				if visitTarget(node, id) then
					attempts[node] = (attempts[node] or 0) + 1
				end
			end
			if runId ~= id then break end
		end

		if not didWork then
			interruptibleWait(2, id) -- everything cleared, check again shortly
		end
		task.wait()
	end
end

-- Modes
modes.chests = {
	label = "Chest TP",
	button = chestButton,
	run = makePassLoop(getChestTargets),
}

modes.nodes = {
	label = "Node TP",
	button = nodeButton,
	run = makePassLoop(getSelectedDimensionTargets),
	canStart = function() return #nodeList.order > 0 end,
	startMessage = "Pick a dimension!",
}

modes.dimo = {
	label = "Dim_O TP",
	button = dimOButton,
	run = runDimO,
	canStart = function() return #dimOList.order > 0 end,
	startMessage = "Pick a Dim_O!",
}

local function flashMessage(mode, text)
	mode.button.Text = text
	task.delay(1.5, function()
		if screenGui.Parent then
			refreshButtons()
		end
	end)
end

local function toggleMode(name)
	local mode = modes[name]

	if activeMode ~= name and mode.canStart and not mode.canStart() then
		flashMessage(mode, mode.startMessage)
		return
	end

	runId += 1
	if activeMode == name then
		activeMode = nil
	else
		activeMode = name -- switching modes automatically stops the other one
	end
	refreshButtons()

	if activeMode then
		task.spawn(modes[activeMode].run, runId)
	end
end

-- Restart the running loop right away when its selection changes
local function restartIfActive(name)
	if activeMode == name then
		runId += 1
		task.spawn(modes[name].run, runId)
	end
end

nodeList.onChanged = function() restartIfActive("nodes") end
dimOList.onChanged = function() restartIfActive("dimo") end

for name, mode in pairs(modes) do
	mode.button.MouseButton1Click:Connect(function()
		toggleMode(name)
	end)
end

refreshButtons()

closeButton.MouseButton1Click:Connect(function()
	runId += 1
	activeMode = nil
	for _, conn in ipairs(connections) do
		conn:Disconnect()
	end
	screenGui:Destroy()
end)
