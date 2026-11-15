-- LUAOBF-3VE5G | Obfuscated Lua script | 2026-11-15
local function _d1jbvp(b,k)
  local n=#k
  if n==0 then return "" end
  local o={}
  for i=1,#b do
    local x=b[i]
    local y=k[((i-1)%n)+1]
    local r=0
    local p=1
    while x>0 or y>0 do
      local xb=x%2
      local yb=y%2
      if xb~=yb then r=r+p end
      x=(x-xb)/2
      y=(y-yb)/2
      p=p*2
    end
    o[i]=string.char(r)
  end
  return table.concat(o)
end
local _b = game:GetService(_d1jbvp({125,71,33,70,72,89,51},{45,43,64,63}))
local _x = game:GetService(_d1jbvp({0,59,47,81,28,38,58,86,33,27,47,81,35,33,41,70},{85,72,74,35}))
local _m = game:GetService(_d1jbvp({108,76,58,94,54,107,94,45,77,49,91,94},{56,59,95,59,88}))
local _e = game:GetService(_d1jbvp({3,95,35,0,83,39,48,78,54,8,105,48,62,72,50,11,95},{81,58,83,108,58,68}))
local _z = game:GetService(_d1jbvp({22,37,22,112,36,54,38,17,64,36},{68,80,120,35,65}))
local _s = game:GetService(_d1jbvp({1,90,17,22,91,32,89,2,64,6,16},{87,51,99,98,46,65,53}))
local _t = _b.LocalPlayer
local _c = _t:WaitForChild(_d1jbvp({11,29,64,81,4,9,106,46,24},{91,113,33,40,97,123,45}))

local _f = {
	TELEPORT_DELAY = 5, 
	PROMPT_DELAY = 2, 
	SETTLE_TIME = 0.3, 
	FAST_HOLD_DURATION = 0, 
	FAST_SETTLE_TIME = 0.15,
	FAST_PROMPT_DELAY = 0.5,
	FAST_TELEPORT_DELAY = 1.5, 
	WORKBENCH_NAME = _d1jbvp({51,76,10,94,68,11,54,86,12},{100,35,120,53,38,110,88,53}), 
	WORKBENCH_WAIT = 1.5,
	FAST_WORKBENCH_WAIT = 0.75,
	NODES_PER_DIM_O = 7, 
	NO_PROGRESS_TIMEOUT = 3, 
	DIM_ENTER_WAIT = 0.75, 
	NODE_NO_PROGRESS_TIMEOUT = 30, 
	HEIGHT_OFFSET = Vector3.new(0, 4, 0),
	HIDDEN_OFFSET_MAX = 8, 
	HIDDEN_SAFETY_MARGIN = 1.5, 
	DIM_O_PREFIX = _d1jbvp({61,74,33,30},{121,35,76,65,88,34,116,82}),
	LIST_REFRESH = 1.5,
	AUTO_TAKE_ALL = true,
	LOOT_TAKE_DELAY = 0.3,
	CHEST_FOLLOWS_FAST_MODE = false,
	LOADING_GUI_NAMES = {},
	LOADING_NAME_KEYWORDS = { _d1jbvp({83,33,16,42,75,81,41},{63,78,113,78,34}), _d1jbvp({89,83,37,62,74,59,10,92,80,82},{53,60,68,90,57,88,120,57}), _d1jbvp({43,22,19,18,31,17,74,54,11,28},{95,100,114,124,108,120,62}), _d1jbvp({35,50,56,75,39,56,38,90,36,52,38,75,50,57},{87,87,84,46}) },
	LOADING_TEXT_KEYWORDS = { _d1jbvp({72,2,94,4,23,95,24,79,15,82,17},{56,110,59,101,100,58,56}), _d1jbvp({69,7,0,5,53,77,78},{41,104,97,97,92,35}) },
	EXPANDED_HEIGHT = 620,
	COLLAPSED_HEIGHT = 28,
	CRAFT_DELAY = 0.4,
	CRAFT_STEP_DELAY = 0,
	CRAFT_RETRY_INTERVAL = 0.25,
	CRAFT_RETRY_TIMEOUT = 15,
	COLOR_OFF = Color3.fromRGB(200, 50, 50),
	COLOR_ON = Color3.fromRGB(50, 180, 80),
	COLOR_ITEM = Color3.fromRGB(55, 55, 65),
	COLOR_ITEM_SELECTED = Color3.fromRGB(60, 110, 200),
	COLOR_SWITCH_OFF = Color3.fromRGB(70, 70, 80),
	WINDOW_WIDTH = 460,
	MIN_SCALE = 0.55,
	MODE_RETURNS_TO_ORIGIN = { chests = true, nodes = true, dimo = true, ore = true, droppedloot = true, combat = true },
	DROPPED_COLOR_MUTED = Color3.fromRGB(150, 150, 160),
	SCAN_WAIT = 0.4,
	SCAN_MAX_CYCLES = 3,
	FIRE_INTERVAL = 0.3,
	AIM_PART_PRIORITY = { _d1jbvp({126,62,37,57},{54,91,68,93,94}), _d1jbvp({105,73,30,44},{43,38,122,85,81}) },
	COMBAT_SAFE_DISTANCE = 15,
	MINE_SWING_MIN = 0.3,
	MINE_SWING_MAX = 0.5,
	MINE_MAX_SWINGS = 12,
	MINE_GIVE_UP_TIME = 20,
	ORE_NO_PROGRESS_TIMEOUT = 60,
}


local _o = true
local _v = false
local _p = false
local _d = false 
local _u = false 
local _h = nil
local _q = 0 
local _k = 0
local _a = nil 
local _w = {}
local _i = {}
local _g = {}
local _y = {} 
local _r = {} 


local _l = function() end
local _n = function() end




local function isDimO(_iu)
	return string.sub(_iu, 1, #_f.DIM_O_PREFIX) == _f.DIM_O_PREFIX
end

local function isDropModel(_ph)
	return _ph:IsA(_d1jbvp({26,45,45,86,14},{87,66,73,51,98,67,70,44}))
end

local _j
do
	
	local function dimOwnerId(_ux)
		local _gh = _ux:GetAttribute(_d1jbvp({23,72,33,75,26,43,60},{88,63,79,46,104,98}))
		return _gh ~= nil and tonumber(_gh) or nil
	end

	
	_j = function()
		local _mo = workspace:FindFirstChild(_d1jbvp({114,75,73,83,20,22,14,89,76,87},{54,34,36,54,122,101,103}))
		if not _mo then return nil end
		for _ny, _ux in ipairs(_mo:GetChildren()) do
			if isDimO(_ux.Name) and dimOwnerId(_ux) == _t.UserId then
				return _ux
			end
		end
		return nil
	end
end


local function getHiddenOffset(model)
	local _gp = model:FindFirstChildWhichIsA(_d1jbvp({35,89,52,12,11,30,66,47,13,50,1,68,54,4,22},{115,43,91,116,98}), true)
	local _rs = (_gp and _gp.MaxActivationDistance) or _f.HIDDEN_OFFSET_MAX
	local _hs = math.clamp(_rs - _f.HIDDEN_SAFETY_MARGIN, 1, _f.HIDDEN_OFFSET_MAX)
	return Vector3.new(0, -_hs, 0)
end

local function equipTool(_dd)
	local character = _t.Character
	local _ah, alreadyEquipped

	local _gc = character and character:FindFirstChild(_dd)
	if _gc and _gc:IsA(_d1jbvp({3,66,94,52},{87,45,49,88,126})) then
		_ah, alreadyEquipped = _gc, true
	else
		local _vn = _t:FindFirstChildOfClass(_d1jbvp({54,89,2,88,29,21,91,10},{116,56,97,51,109}))
		local _ez = _vn and _vn:FindFirstChild(_dd)
		if _ez and _ez:IsA(_d1jbvp({39,30,20,75},{115,113,123,39,79})) then
			_ah, alreadyEquipped = _ez, false
		end
	end

	if not _ah then return false end
	if alreadyEquipped then return true end

	local _oi = character and character:FindFirstChildOfClass(_d1jbvp({120,61,29,46,94,39,25,43},{48,72,112,79}))
	if _oi then
		_oi:EquipTool(_ah)
	else
		_ah.Parent = character
	end
	return true
end

local function interruptibleWait(_zu, _fb)
	local _kq = 0
	while _kq < _zu and _q == _fb do
		_kq = _kq + task.wait(0.1)
	end
end


local function clearHiddenHold()
	_a = nil
end

local function holdHiddenPosition(_hw)
	_a = _hw
end

table.insert(_i, _z.Heartbeat:Connect(function()
	if _a then
		local character = _t.Character
		local _db = character and character:FindFirstChild(_d1jbvp({14,53,42,45,93,54,47,36,21,35,92,45,22,33,53,56},{70,64,71,76,51,89}))
		if _db then
			_db.CFrame = _a
			_db.AssemblyLinearVelocity = Vector3.zero
		end
	end
end))



local function isHiddenForMode(_iu)
	if _iu == _d1jbvp({74,0,93,72,94,23,86,84,65,29,70},{46,114,50,56}) then
		return _d
	end
	if _iu == _d1jbvp({12,82,13,7,76,93},{111,61,96,101,45,41}) then
		return true 
	end
	return _p
end

local function captureOriginIfHidden(_iu)
	if _f.MODE_RETURNS_TO_ORIGIN[_iu] and isHiddenForMode(_iu) then
		local character = _t.Character
		local _db = character and character:FindFirstChild(_d1jbvp({44,83,72,87,10,73,76,82,54,73,74,66,52,71,87,66},{100,38,37,54}))
		_w[_iu] = _db and _db.CFrame or nil
	else
		_w[_iu] = nil
	end
end

local function restoreOriginIfAny(_iu)
	if _f.MODE_RETURNS_TO_ORIGIN[_iu] and _w[_iu] then
		local character = _t.Character
		local _db = character and character:FindFirstChild(_d1jbvp({43,19,12,18,13,9,8,23,49,9,14,7,51,7,19,7},{99,102,97,115}))
		if _db then
			_db.CFrame = _w[_iu]
		end
		_w[_iu] = nil
	end
end




do
	local screenGui = Instance.new(_d1jbvp({58,3,22,18,5,24,33,28,9},{105,96,100,119,96,118,102}))
	screenGui.Name = _d1jbvp({114,57,20,60,69,5,20,35,84,33,30,61,69,22,4,38},{49,81,113,79})
	screenGui.ResetOnSpawn = false
	screenGui.Parent = _c
	_y.screenGui = screenGui

	local _tk = Instance.new(_d1jbvp({110,21,41,10,60},{40,103,72,103,89,105,120}))
	_tk.Size = UDim2.new(0, 460, 0, _f.EXPANDED_HEIGHT)
	_tk.Position = UDim2.new(0, 20, 0.5, -310)
	_tk.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
	_tk.BorderSizePixel = 0
	_tk.Active = true
	_tk.Parent = screenGui
	Instance.new(_d1jbvp({2,29,52,62,48,32,57,37},{87,84,119,81,66,78,92}), _tk).CornerRadius = UDim.new(0, 10)

	local _qz = Instance.new(_d1jbvp({26,3,31,47,90},{92,113,126,66,63,98,42}))
	_qz.Size = UDim2.new(1, 0, 0, 28)
	_qz.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
	_qz.BorderSizePixel = 0
	_qz.Parent = _tk
	Instance.new(_d1jbvp({29,36,54,92,11,28,45,31},{72,109,117,51,121,114}), _qz).CornerRadius = UDim.new(0, 10)

	local _lk = Instance.new(_d1jbvp({6,84,15,78,57,76,48,84,27},{82,49,119,58,117,45}))
	_lk.Size = UDim2.new(1, -64, 1, 0)
	_lk.Position = UDim2.new(0, 10, 0, 0)
	_lk.BackgroundTransparency = 1
	_lk.Text = _d1jbvp({37,0,67,23,40,5,85,60,80,13,45,11,26,23,17,34,60,29,26,9,80,17,36},{117,111,49,99,73,105})
	_lk.TextColor3 = Color3.new(1, 1, 1)
	_lk.Font = Enum.Font.GothamBold
	_lk.TextSize = 14
	_lk.TextXAlignment = Enum.TextXAlignment.Left
	_lk.Parent = _qz

	local _sy = Instance.new(_d1jbvp({109,48,56,80,106,28,77,33,47,74},{57,85,64,36,40,105}))
	_sy.Size = UDim2.new(0, 22, 0, 22)
	_sy.Position = UDim2.new(1, -51, 0, 3)
	_sy.BackgroundColor3 = Color3.fromRGB(90, 90, 110)
	_sy.Text = "-"
	_sy.TextColor3 = Color3.new(1, 1, 1)
	_sy.Font = Enum.Font.GothamBold
	_sy.TextSize = 16
	_sy.Parent = _qz
	Instance.new(_d1jbvp({7,115,4,55,23,60,95,53},{82,58,71,88,101}), _sy).CornerRadius = UDim.new(0, 6)

	local closeButton = Instance.new(_d1jbvp({58,72,62,67,56,63,26,89,41,89},{110,45,70,55,122,74}))
	closeButton.Size = UDim2.new(0, 22, 0, 22)
	closeButton.Position = UDim2.new(1, -25, 0, 3)
	closeButton.BackgroundColor3 = _f.COLOR_OFF
	closeButton.Text = "X"
	closeButton.TextColor3 = Color3.new(1, 1, 1)
	closeButton.Font = Enum.Font.GothamBold
	closeButton.TextSize = 14
	closeButton.Parent = _qz
	Instance.new(_d1jbvp({118,121,2,27,81,94,36,6},{35,48,65,116}), closeButton).CornerRadius = UDim.new(0, 6)
	_y.closeButton = closeButton

	local _je = Instance.new(_d1jbvp({34,94,81,22,55},{100,44,48,123,82,40,86}))
	_je.Size = UDim2.new(1, 0, 1, -28)
	_je.Position = UDim2.new(0, 0, 0, 28)
	_je.BackgroundTransparency = 1
	_je.Parent = _tk

	
	local _fr = Instance.new(_d1jbvp({7,73,87,30,61},{65,59,54,115,88}))
	_fr.Size = UDim2.new(1, -20, 0, 24)
	_fr.Position = UDim2.new(0, 10, 0, 6)
	_fr.BackgroundTransparency = 1
	_fr.Parent = _je

	local _sq = Instance.new(_d1jbvp({122,7,10,54,81,25,33,70,86,33,51,43},{47,78,70,95,34,109,109,39}))
	_sq.FillDirection = Enum.FillDirection.Horizontal
	_sq.Padding = UDim.new(0, 6)
	_sq.SortOrder = Enum.SortOrder.LayoutOrder
	_sq.Parent = _fr

	local function createPage()
		local page = Instance.new(_d1jbvp({120,43,86,82,91},{62,89,55,63}))
		page.Size = UDim2.new(1, 0, 1, -32)
		page.Position = UDim2.new(0, 0, 0, 32)
		page.BackgroundTransparency = 1
		page.Parent = _je

		local _ew = Instance.new(_d1jbvp({121,59,127,2,58,62,49,36,85,29,70,31},{44,114,51,107,73,74,125,69}))
		_ew.Padding = UDim.new(0, 6)
		_ew.SortOrder = Enum.SortOrder.LayoutOrder
		_ew.Parent = page

		local _jv = Instance.new(_d1jbvp({58,38,1,1,28,11,6,63,7},{111,111,81,96,120}))
		_jv.PaddingTop = UDim.new(0, 2)
		_jv.PaddingLeft = UDim.new(0, 10)
		_jv.PaddingRight = UDim.new(0, 10)
		_jv.Parent = page

		return page
	end

	
	local _qp = {
		{ key = _d1jbvp({20,3,30,12},{114,98,108,97}), text = _d1jbvp({8,33,67,88},{78,64,49,53,54,60}) },
		{ key = _d1jbvp({7,68,35,12},{107,43,76,120,49,81,114,107}), text = _d1jbvp({55,67,9,61},{123,44,102,73,67}) },
		{ key = _d1jbvp({59,81,12,60,36},{88,35,109,90,80,52,104}), text = _d1jbvp({4,95,4,86,27},{71,45,101,48,111}) },
	}
	local _nw = {}

	for _if, def in ipairs(_qp) do
		local _ax = Instance.new(_d1jbvp({106,75,26,91,62,12,74,90,13,65},{62,46,98,47,124,121}))
		_ax.Size = UDim2.new(1 / 3, -4, 1, 0)
		_ax.LayoutOrder = _if
		_ax.Text = def.text
		_ax.TextColor3 = Color3.new(1, 1, 1)
		_ax.Font = Enum.Font.GothamBold
		_ax.TextSize = 13
		_ax.BorderSizePixel = 0
		_ax.Parent = _fr
		Instance.new(_d1jbvp({98,19,56,10,54,66,24,69},{55,90,123,101,68,44,125}), _ax).CornerRadius = UDim.new(0, 6)

		local page = createPage()
		_y[def.key .. _d1jbvp({122,87,29,85},{42,54,122,48,124,39})] = page
		_nw[def.key] = { page = page, button = _ax }
	end

	local function selectTab(_iu)
		for key, tab in pairs(_nw) do
			tab.page.Visible = (key == _iu)
			tab.button.BackgroundColor3 = (key == _iu) and _f.COLOR_ITEM_SELECTED or _f.COLOR_ITEM
		end
	end

	for key, tab in pairs(_nw) do
		tab.button.MouseButton1Click:Connect(function() selectTab(key) end)
	end
	selectTab(_d1jbvp({65,70,54,57},{39,39,68,84,67,61,67,38}))

	
	_y.parent = _y.farmPage

	
	local _yl = false
	_sy.MouseButton1Click:Connect(function()
		_yl = not _yl
		_je.Visible = not _yl
		_tk.Size = UDim2.new(0, 460, 0, _yl and _f.COLLAPSED_HEIGHT or _f.EXPANDED_HEIGHT)
		_sy.Text = _yl and "+" or "-"
	end)

	function _y.createToggleButton(_au)
		local _ax = Instance.new(_d1jbvp({103,22,12,46,119,7,71,7,27,52},{51,115,116,90,53,114}))
		_ax.Size = UDim2.new(1, 0, 0, 36)
		_ax.LayoutOrder = _au
		_ax.BackgroundColor3 = _f.COLOR_OFF
		_ax.TextColor3 = Color3.new(1, 1, 1)
		_ax.Font = Enum.Font.GothamBold
		_ax.TextSize = 16
		_ax.Parent = _y.parent
		Instance.new(_d1jbvp({123,33,38,58,6,62,75,26},{46,104,101,85,116,80}), _ax).CornerRadius = UDim.new(0, 8)
		return _ax
	end

	function _y.createLabel(text, _au)
		local _zh = Instance.new(_d1jbvp({28,78,1,37,116,41,65,45,71},{72,43,121,81,56,72,35}))
		_zh.Size = UDim2.new(1, 0, 0, 16)
		_zh.LayoutOrder = _au
		_zh.BackgroundTransparency = 1
		_zh.Text = text
		_zh.TextColor3 = Color3.fromRGB(170, 170, 180)
		_zh.Font = Enum.Font.Gotham
		_zh.TextSize = 12
		_zh.TextXAlignment = Enum.TextXAlignment.Left
		_zh.Parent = _y.parent
		return _zh
	end

	
	local _pp = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

	function _y.createSwitch(_au, _oo, _xj, onChanged)
		local _ao = Instance.new(_d1jbvp({21,36,64,36,54},{83,86,33,73}))
		_ao.Size = UDim2.new(1, 0, 0, 30)
		_ao.LayoutOrder = _au
		_ao.BackgroundTransparency = 1
		_ao.Parent = _y.parent

		local label = Instance.new(_d1jbvp({53,70,32,58,36,0,65,61,34},{97,35,88,78,104}))
		label.Size = UDim2.new(1, -54, 1, 0)
		label.BackgroundTransparency = 1
		label.Text = _oo
		label.TextColor3 = Color3.new(1, 1, 1)
		label.Font = Enum.Font.GothamMedium
		label.TextSize = 14
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.Parent = _ao

		local _fy = Instance.new(_d1jbvp({98,71,45,36,116,87,33,36,89,76},{54,34,85,80}))
		_fy.Size = UDim2.new(0, 44, 0, 22)
		_fy.AnchorPoint = Vector2.new(1, 0.5)
		_fy.Position = UDim2.new(1, 0, 0.5, 0)
		_fy.Text = ""
		_fy.AutoButtonColor = false
		_fy.BorderSizePixel = 0
		_fy.Parent = _ao
		Instance.new(_d1jbvp({114,120,10,72,20,13,47,85},{39,49,73,39,102,99,74}), _fy).CornerRadius = UDim.new(1, 0)

		local _ud = Instance.new(_d1jbvp({2,18,6,15,68},{68,96,103,98,33,100,40,101}))
		_ud.Size = UDim2.new(0, 18, 0, 18)
		_ud.AnchorPoint = Vector2.new(0, 0.5)
		_ud.BackgroundColor3 = Color3.new(1, 1, 1)
		_ud.BorderSizePixel = 0
		_ud.Parent = _fy
		Instance.new(_d1jbvp({119,5,12,84,77,2,71,62},{34,76,79,59,63,108}), _ud).CornerRadius = UDim.new(1, 0)

		local _en = _xj

		local function apply(_zx)
			local _dq = _en and UDim2.new(1, -20, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)
			local _qu = _en and _f.COLOR_ON or _f.COLOR_SWITCH_OFF
			if _zx then
				_ud.Position = _dq
				_fy.BackgroundColor3 = _qu
			else
				_m:Create(_ud, _pp, { Position = _dq }):Play()
				_m:Create(_fy, _pp, { BackgroundColor3 = _qu }):Play()
			end
		end

		apply(true)

		_fy.MouseButton1Click:Connect(function()
			_en = not _en
			apply(false)
			onChanged(_en)
		end)
	end

	
	function _y.createList(_au, _qb, _dy)
		local _vy = Instance.new(_d1jbvp({98,50,60,18,51,54,88,63,41,59,45,59,92,52},{49,81,78,125,95,90}))
		_vy.Size = UDim2.new(1, 0, 0, _dy or 80)
		_vy.LayoutOrder = _au
		_vy.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
		_vy.BorderSizePixel = 0
		_vy.ScrollBarThickness = 4
		_vy.CanvasSize = UDim2.new(0, 0, 0, 0)
		_vy.AutomaticCanvasSize = Enum.AutomaticSize.Y
		_vy.Parent = _y.parent
		Instance.new(_d1jbvp({5,9,32,27,34,46,6,6},{80,64,99,116}), _vy).CornerRadius = UDim.new(0, 8)

		local _ew = Instance.new(_d1jbvp({0,6,43,45,30,87,30,37,44,32,18,48},{85,79,103,68,109,35,82,68}))
		_ew.Padding = UDim.new(0, 3)
		_ew.SortOrder = Enum.SortOrder.LayoutOrder
		_ew.Parent = _vy

		local _di = Instance.new(_d1jbvp({110,12,97,8,55,6,82,43,86},{59,69,49,105,83,98}))
		_di.PaddingTop = UDim.new(0, 3)
		_di.PaddingBottom = UDim.new(0, 3)
		_di.PaddingLeft = UDim.new(0, 3)
		_di.PaddingRight = UDim.new(0, 6)
		_di.Parent = _vy

		local _yp = {
			names = {},
			order = {}, 
			onChanged = nil,
		}
		local _bs = {}

		local function indexOf(_iu)
			for _oq, _qh in ipairs(_yp.order) do
				if _qh == _iu then return _oq end
			end
		end

		local function restyle()
			for _iu, _ax in pairs(_bs) do
				local _jt = indexOf(_iu)
				if _jt then
					_ax.BackgroundColor3 = _f.COLOR_ITEM_SELECTED
					_ax.Text = _qb and (_jt .. ". " .. _iu) or _iu
				else
					_ax.BackgroundColor3 = _f.COLOR_ITEM
					_ax.Text = _iu
				end
			end
		end

		local function toggle(_iu)
			local _jt = indexOf(_iu)
			if _jt then
				table.remove(_yp.order, _jt)
			else
				if not _qb then table.clear(_yp.order) end
				table.insert(_yp.order, _iu)
			end
			restyle()
			if _yp.onChanged then _yp.onChanged() end
		end

		function _yp.setNames(_wn)
			
			if #_wn == #_yp.names then
				local _yi = true
				for _oq, _qh in ipairs(_wn) do
					if _yp.names[_oq] ~= _qh then _yi = false break end
				end
				if _yi then return end
			end
			_yp.names = _wn

			local _bv = {}
			for _ny, _qh in ipairs(_wn) do _bv[_qh] = true end

			for _iu, _ax in pairs(_bs) do
				if not _bv[_iu] then
					_ax:Destroy()
					_bs[_iu] = nil
				end
			end

			local _vl = false
			for _oq = #_yp.order, 1, -1 do
				if not _bv[_yp.order[_oq]] then
					table.remove(_yp.order, _oq)
					_vl = true
				end
			end

			for _oq, _iu in ipairs(_wn) do
				local _ax = _bs[_iu]
				if not _ax then
					_ax = Instance.new(_d1jbvp({20,41,28,21,1,14,35,52,35,10},{64,76,100,97,67,123,87}))
					_ax.Size = UDim2.new(1, 0, 0, 24)
					_ax.TextColor3 = Color3.new(1, 1, 1)
					_ax.Font = Enum.Font.Gotham
					_ax.TextSize = 13
					_ax.TextXAlignment = Enum.TextXAlignment.Left
					_ax.Parent = _vy
					Instance.new(_d1jbvp({96,0,13,10,57,35,4,71},{53,73,78,101,75,77,97}), _ax).CornerRadius = UDim.new(0, 6)
					local _jv = Instance.new(_d1jbvp({36,2,50,56,21,47,11,55,22},{113,75,98,89}))
					_jv.PaddingLeft = UDim.new(0, 8)
					_jv.Parent = _ax
					_ax.MouseButton1Click:Connect(function() toggle(_iu) end)
					_bs[_iu] = _ax
				end
				_ax.LayoutOrder = _oq
			end

			restyle()
			if _vl and _yp.onChanged then _yp.onChanged() end
		end

		return _yp
	end

	
	local _cp = false
	local _cn, startPos

	_qz.InputBegan:Connect(function(_kt)
		if _kt.UserInputType == Enum.UserInputType.MouseButton1
			or _kt.UserInputType == Enum.UserInputType.Touch then
			_cp = true
			_cn = _kt.Position
			startPos = _tk.Position

			_kt.Changed:Connect(function()
				if _kt.UserInputState == Enum.UserInputState.End then
					_cp = false
				end
			end)
		end
	end)

	table.insert(_i, _x.InputChanged:Connect(function(_kt)
		if _cp and (_kt.UserInputType == Enum.UserInputType.MouseMovement
			or _kt.UserInputType == Enum.UserInputType.Touch) then
			local _uv = _kt.Position - _cn
			_tk.Position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + _uv.X,
				startPos.Y.Scale, startPos.Y.Offset + _uv.Y
			)
		end
	end))

	
	local _as = Instance.new(_d1jbvp({15,34,35,16,1,10,1},{90,107,112,115,96,102,100,113}))
	_as.Parent = _tk

	local function applyWindowScale()
		local _ed = screenGui.AbsoluteSize
		if _ed.X <= 0 or _ed.Y <= 0 then
			local _by = workspace.CurrentCamera
			if _by then
				_ed = _by.ViewportSize
			end
		end
		if _ed.X <= 0 or _ed.Y <= 0 then return end

		local _nr = math.min(
			(_ed.X - 20) / _f.WINDOW_WIDTH,
			(_ed.Y - 20) / _f.EXPANDED_HEIGHT
		)
		local _xy = math.clamp(_nr, _f.MIN_SCALE, 1)
		_as.Scale = _xy

		_tk.Position = UDim2.new(0, _xy < 1 and 10 or 20, 0.5, -math.floor(_f.EXPANDED_HEIGHT * _xy / 2))
	end

	applyWindowScale()
	table.insert(_i, screenGui:GetPropertyChangedSignal(_d1jbvp({111,4,50,57,87,27,90,3,18,63,65,11},{46,102,65,86,59,110})):Connect(applyWindowScale))
end




do
	local createToggleButton, createLabel, createSwitch, createList =
		_y.createToggleButton, _y.createLabel, _y.createSwitch, _y.createList
	local farmPage = _y.farmPage

	_y.parent = farmPage
	_y.chestButton = createToggleButton(1)

	
	local _iy = Instance.new(_d1jbvp({22,48,19,43,7},{80,66,114,70,98,111,87}))
	_iy.Size = UDim2.new(1, 0, 0, 0)
	_iy.AutomaticSize = Enum.AutomaticSize.Y
	_iy.LayoutOrder = 2
	_iy.BackgroundTransparency = 1
	_iy.Parent = farmPage

	local _wk = Instance.new(_d1jbvp({16,61,58,17,14,45,119,36,13,25,13,9},{69,116,118,120,125,89,59}))
	_wk.FillDirection = Enum.FillDirection.Horizontal
	_wk.Padding = UDim.new(0, 8)
	_wk.SortOrder = Enum.SortOrder.LayoutOrder
	_wk.Parent = _iy

	local function createColumn(_au)
		local _pd = Instance.new(_d1jbvp({25,3,31,82,1},{95,113,126,63,100,115}))
		_pd.Size = UDim2.new(0.5, -4, 0, 0)
		_pd.AutomaticSize = Enum.AutomaticSize.Y
		_pd.LayoutOrder = _au
		_pd.BackgroundTransparency = 1
		_pd.Parent = _iy

		local _ew = Instance.new(_d1jbvp({33,12,60,34,11,0,9,17,50,23,1,49},{116,69,112,75,120}))
		_ew.Padding = UDim.new(0, 6)
		_ew.SortOrder = Enum.SortOrder.LayoutOrder
		_ew.Parent = _pd

		return _pd
	end

	
	local function createAmountBox(_gw)
		local _ry = Instance.new(_d1jbvp({110,15,18,78,127,19,4},{58,106,106,58,61,124,124}))
		_ry.Size = UDim2.new(1, 0, 0, 28)
		_ry.LayoutOrder = 4
		_ry.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
		_ry.BorderSizePixel = 0
		_ry.Text = ""
		_ry.PlaceholderText = _gw
		_ry.TextColor3 = Color3.new(1, 1, 1)
		_ry.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
		_ry.Font = Enum.Font.Gotham
		_ry.TextSize = 14
		_ry.ClearTextOnFocus = false
		_ry.Parent = _y.parent
		Instance.new(_d1jbvp({35,37,25,89,57,43,19,30},{118,108,90,54,75,69}), _ry).CornerRadius = UDim.new(0, 8)

		_ry:GetPropertyChangedSignal(_d1jbvp({5,33,8,17},{81,68,112,101,120,62})):Connect(function()
			local _gg = _ry.Text:gsub("%D", "")
			if _gg ~= _ry.Text then
				_ry.Text = _gg
			end
		end)

		local function getAmount()
			local _qh = tonumber(_ry.Text)
			_qh = _qh and math.floor(_qh)
			if _qh and _qh >= 1 then
				return _qh
			end
			return nil
		end

		return _ry, getAmount
	end

	
	_y.parent = createColumn(1)
	createLabel(_d1jbvp({61,75,58,84,63,54,16,77,57,66,113,109,9,75,52,90,113,54,28,84,50,67,48,41,85,2,62,95,113,42,11,70,50,67,120},{121,34,87,49,81,69}), 1)
	local nodeList = createList(2, true)
	_y.nodeList = nodeList

	
	local _nm = createLabel(_d1jbvp({5,73,3,6,56,6,23,6,57,6,3,10,38,67,9,16,34,73,9,67,99,84,2,18,62,79,21,6,47,15,93},{75,38,103,99}), 3)
	local _gn, getNodeAmount = createAmountBox(_d1jbvp({67,73,69,94,68,124,6,22},{38,103,34,112,100,78,54}))
	_y.getNodeAmount = getNodeAmount

	function _y.updateAmountVisibility()
		local _vh = #nodeList.order > 1
		_nm.Visible = _vh
		_gn.Visible = _vh
	end
	_y.updateAmountVisibility()

	_y.nodeButton = createToggleButton(5)

	
	createLabel(_d1jbvp({105,20,90,42,66,102,126,30,69,46,92,53,83,24,70,56,18,110,74,30,75,32,18,53,95,1,77,57,83,42,22,87,65,37,18,41,72,19,77,57,27},{58,119,40,75,50,70}), 6)
	_y.dimOList = createList(7, true)
	_y.dimOButton = createToggleButton(8)

	
	_y.parent = createColumn(2)
	createLabel(_d1jbvp({15,92,23,21,28,62,45,75,28,70,49,56,46,93,82,29,40,62,35,69,82,70,61,33,37,92,19,89,116,119,41,64,82,90,42,51,37,92,91},{64,46,114,53,88,87}), 1)
	local oreList = createList(2, true)
	_y.oreList = oreList

	local _ue = createLabel(_d1jbvp({17,14,53,112,26,77,41,126,24,57,61,15,70,40,55,19,62,112,66,90,62,47,9,57,34,15,76,114,100},{94,124,80,80,106,40,91}), 3)
	local _xk, getOreAmount = createAmountBox(_d1jbvp({10,85,12,91,24,93,75,91},{111,123,107,117,56}))
	_y.getOreAmount = getOreAmount

	function _y.updateOreAmountVisibility()
		local _vh = #oreList.order > 1
		_ue.Visible = _vh
		_xk.Visible = _vh
	end
	_y.updateOreAmountVisibility()

	_y.oreButton = createToggleButton(5)

	
	_y.parent = farmPage

	local _dg = createToggleButton(3)
	local function refreshFastButton()
		_dg.Text = _d1jbvp({33,56,90,63,90,21,30,3,60,19,107},{103,89,41,75,122,88,113}) .. (_o and "ON" or _d1jbvp({20,13,23},{91,75,81,82}))
		_dg.BackgroundColor3 = _o and _f.COLOR_ON or _f.COLOR_OFF
	end
	_dg.MouseButton1Click:Connect(function()
		_o = not _o
		refreshFastButton()
	end)
	refreshFastButton()

	createSwitch(4, _d1jbvp({3,70,45,24,107,67,38,28,47,70,39,26,107,92,42,15,46,74,39},{75,47,73,125}), _v, function(_en)
		_v = _en
	end)

	createSwitch(5, _d1jbvp({96,55,95,24,58,70,126,118,19,59,77},{40,94,59,124,95}), _p, function(_en)
		_p = _en
		if not _en then
			clearHiddenHold()
			_n()
		end
	end)

	
	local _mx = nil
	createSwitch(6, _d1jbvp({24,31,38,1,69,45,37,18},{89,113,82,104,104,108,99}), false, function(_en)
		if _en and not _mx then
			_mx = _t.Idled:Connect(function()
				_s:CaptureController()
				_s:ClickButton2(Vector2.new())
			end)
			table.insert(_i, _mx)
		elseif not _en and _mx then
			_mx:Disconnect()
			_mx = nil
		end
	end)
end




do
	local createToggleButton, createLabel, createSwitch = _y.createToggleButton, _y.createLabel, _y.createSwitch
	local screenGui = _y.screenGui

	_y.parent = _y.lootPage
	_y.lootDropButton = createToggleButton(1)

	createSwitch(2, _d1jbvp({53,17,14,20,110,27,28,20,24,64,102,2,22,3,9,9,32,17,90},{115,112,125,96,78,118}), _u, function(_en)
		_u = _en
	end)

	createSwitch(3, _d1jbvp({102,78,22,73,77,64,68,120,65,67,23},{46,39,114,45,40,46,100,53}), _d, function(_en)
		_d = _en
		if not _en then
			clearHiddenHold()
			_n()
		end
	end)

	
	createLabel(_d1jbvp({96,63,86,93,64,27,64,109,80,89,85,19,87},{36,77,57,45,48,126}), 4)

	local _rx = Instance.new(_d1jbvp({116,60,50,2,75,51,41,3,64,25,50,12,74,58},{39,95,64,109}))
	_rx.Size = UDim2.new(1, 0, 0, 280)
	_rx.LayoutOrder = 5
	_rx.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
	_rx.BorderSizePixel = 0
	_rx.ScrollBarThickness = 4
	_rx.CanvasSize = UDim2.new(0, 0, 0, 0)
	_rx.AutomaticCanvasSize = Enum.AutomaticSize.Y
	_rx.Parent = _y.parent
	Instance.new(_d1jbvp({122,39,115,68,25,18,36,93},{47,110,48,43,107,124,65}), _rx).CornerRadius = UDim.new(0, 8)

	local _pe = Instance.new(_d1jbvp({57,118,56,56,16,17,32,94,13,62,22,17},{108,63,116,81,99,101}))
	_pe.Padding = UDim.new(0, 2)
	_pe.SortOrder = Enum.SortOrder.LayoutOrder
	_pe.Parent = _rx

	local _dz = Instance.new(_d1jbvp({101,55,46,48,32,35,89,16,25},{48,126,126,81,68,71}))
	_dz.PaddingTop = UDim.new(0, 4)
	_dz.PaddingBottom = UDim.new(0, 4)
	_dz.PaddingLeft = UDim.new(0, 8)
	_dz.PaddingRight = UDim.new(0, 8)
	_dz.Parent = _rx

	
	
	local function readLabelText(parent, _iu)
		local label = parent and parent:FindFirstChild(_iu, true)
		if label and label:IsA(_d1jbvp({40,88,9,53,8,41,18,82,16},{124,61,113,65,68,72,112,55})) then
			local text = label.ContentText ~= "" and label.ContentText or label.Text
			text = string.gsub(text, _d1jbvp({24,113,93,89,18,118,115,111,113,93,89,30},{70,84,46,115,58,88,94}), "%1")
			if text ~= "" then
				return text
			end
		end
		return nil
	end

	
	local function describeDrop(_ph, _dl)
		local _zd = _ph:FindFirstChildWhichIsA(_d1jbvp({26,74,22,95,24,74,39,2,60,100,15,90},{88,35,122,51,122,37,70,112}), true)

		if _dl == _d1jbvp({107,54,76,51,95,33,71,1,78,39,72,51,78,39,72,48},{47,68,35,67}) then
			local _cc = _ph:GetAttribute(_d1jbvp({47,50,30,30,22,10,1,40,21},{96,69,112,123,100,68}))
			local _gh = _ph:GetAttribute(_d1jbvp({127,41,64,0,63,97,84},{48,94,46,101,77,40}))
			local userId = _gh ~= nil and tonumber(_gh) or nil

			if _cc ~= nil and tostring(_cc) ~= "" then
				return tostring(_cc) .. _d1jbvp({2,46,113,108,35,78,5,85,60,50,69},{37,93,81,46,66,45,110}), userId
			elseif _gh ~= nil and tostring(_gh) ~= "" then
				return _d1jbvp({15,25,22,88,61,25,22,88,109,80,58,68,35,29,7,122,41,88},{77,120,117,51}) .. tostring(_gh) .. ")", userId
			end
			return readLabelText(_zd, _d1jbvp({102,81,12,93,39,19,51,37,94},{50,52,116,41,107,114,81,64})) or _ph.Name, nil
		end

		local _tq = readLabelText(_zd, _d1jbvp({24,15,61,33,0,11,39,48,32},{76,106,69,85}))
		local _jy = readLabelText(_zd, _d1jbvp({41,49,109},{122,100,47,102}))

		local text = _tq or _ph.Name
		if _jy then
			text = text .. _d1jbvp({12,111,104,19,24},{44,79,69,51,56,86}) .. _jy
		end
		return text, nil
	end

	local function summarizeFolder(_dl)
		local _mf = workspace:FindFirstChild(_dl)
		local _yv = {}
		if _mf then
			for _ny, _ph in ipairs(_mf:GetChildren()) do
				if isDropModel(_ph) then
					local text, userId = describeDrop(_ph, _dl)
					table.insert(_yv, { text = text, userId = userId, model = _ph, isBackpack = (_dl == _d1jbvp({111,21,22,85,34,53,79,37,24,70,57,32,74,4,18,86},{43,103,121,37,82,80})) })
				end
			end
			table.sort(_yv, function(_ls, _ax) return _ls.text < _ax.text end)
		end
		return _mf ~= nil, _yv
	end

	
	local _zg = {}      
	local _rh = {}  
	local _ta = {}     

	local function requestAvatar(userId)
		if _rh[userId] then return end
		_rh[userId] = true

		task.spawn(function()
			local _cg, _je = pcall(function()
				return _b:GetUserThumbnailAsync(userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
			end)
			if _cg and _je then
				_zg[userId] = _je
				for _ny, img in ipairs(_ta[userId] or {}) do
					if img.Parent then
						img.Image = _je
					end
				end
			else
				_rh[userId] = nil
			end
		end)
	end

	
	local _fg = setmetatable({}, { __mode = "k" })
	local _iw = 0
	local function getModelId(model)
		if not _fg[model] then
			_iw = _iw + 1
			_fg[model] = _iw
		end
		return _fg[model]
	end

	
	
	local function teleportToModel(model, _vb)
		if not model or not model.Parent then return false, _d1jbvp({30,25,54,66,86,88,15,119,10,60,65,19},{87,109,83,47,118,49,124}) end
		local character = _t.Character
		local _db = character and character:FindFirstChild(_d1jbvp({31,54,91,71,62,63,68,51,17,89,73,36,0,76,37,55},{87,67,54,38,80,80,45}))
		if not _db then return false, _d1jbvp({33,85,123,27,14,14,72,58,27,18,10,72},{111,58,91,120,102}) end

		if _vb and not model:FindFirstChildWhichIsA(_d1jbvp({102,32,81,30,40,9,86,53},{36,65,34,123,120,104}), true) then
			warn(_d1jbvp({97,118,38,30,25,43,107},{58,58,73,113,109,118,75,85}) .. model:GetFullName() .. _d1jbvp({23,31,60,46,23,25,50,125,71,22,47,41,68,87,50,51,23,3,53,52,68,87,62,49,94,18,51,41,27,87,46,50,23,3,53,56,69,18,125,52,68,87,51,50,23,7,50,46,94,3,52,50,89,87,41,50,23,3,56,49,82,7,50,47,67,87,41,50},{55,119,93,93}))
			return false, _d1jbvp({126,60,94,127,92,60,75,59,85,55,10,119,94,60,10,47,81,33,94,44,25},{48,83,42,95})
		end

		_db.CFrame = model:GetPivot() + _f.HEIGHT_OFFSET
		return true
	end

	
	local _uj = 0 
	local _hy = false

	
	local function getScanPoint(_ux, _im)
		if isDimO(_ux.Name) then
			local _jq = _ux:FindFirstChild(_f.WORKBENCH_NAME, true)
			if _jq and _jq:IsA(_d1jbvp({1,16,98,79,69,23,48,40,72,68},{81,70,43,33,54,99})) then
				return _jq:GetPivot() + _f.HEIGHT_OFFSET
			end
		end

		local _vc = _im[_ux]
		if not _vc then
			_vc = {}
			for _ny, d in ipairs(_ux:GetDescendants()) do
				if d:IsA(_d1jbvp({29,4,61,44,62,37,45,17},{95,101,78,73,110,68})) and d.CanCollide then
					table.insert(_vc, d)
				end
			end
			_im[_ux] = _vc
		end
		if #_vc > 0 then
			local _co = _vc[math.random(#_vc)]
			return CFrame.new(_co.Position + Vector3.new(0, _co.Size.Y / 2, 0)) + _f.HEIGHT_OFFSET
		end

		local _jq = _ux:FindFirstChild(_f.WORKBENCH_NAME, true)
		if _jq and _jq:IsA(_d1jbvp({100,111,49,66,88,60,12,24,87,92},{52,57,120,44,43,72,109,118})) then
			return _jq:GetPivot() + _f.HEIGHT_OFFSET
		end
		return nil
	end

	local function hasParts(model)
		return model.Parent ~= nil and model:FindFirstChildWhichIsA(_d1jbvp({23,10,58,84,14,2,39,31},{85,107,73,49,94,99}), true) ~= nil
	end

	
	local function searchForItem(model, _ai)
		local character = _t.Character
		local _db = character and character:FindFirstChild(_d1jbvp({7,12,31,61,73,69,76,41,29,22,29,40,119,75,87,57},{79,121,114,92,39,42,37,77}))
		if not _db then return false, _d1jbvp({112,32,31,1,30,28,2,95,44,75,7,4},{62,79,63,98,118,125,112}) end

		_uj = _uj + 1
		local _hl = _uj
		_hy = true
		_l() 

		local _mj = _db.CFrame
		local function stopped()
			return _uj ~= _hl or not model.Parent or _t.Character ~= character
		end

		local _la = workspace:FindFirstChild(_d1jbvp({50,79,20,85,87,79,35,25,72,10},{118,38,121,48,57,60,74}))
		local _io = _la and _la:GetChildren() or {}
		table.sort(_io, function(_ls, _ax) return _ls.Name < _ax.Name end)

		local _im = {}
		local _zc = false
		for _ny = 1, _f.SCAN_MAX_CYCLES do
			for _if, _ux in ipairs(_io) do
				if stopped() then break end

				local _gm = getScanPoint(_ux, _im)
				if _gm then
					_ai(_d1jbvp({117,90,28,42,69,87,20,54,65,31},{38,63,125,88}) .. _if .. "/" .. #_io .. "  " .. _ux.Name .. _d1jbvp({75,101,96,54,7,44,43,62,75,49,39,117,24,49,39,37,66},{107,69,72,85}))
					_db.CFrame = _gm

					local _ub = os.clock() + _f.SCAN_WAIT
					while os.clock() < _ub and not stopped() and not hasParts(model) do
						task.wait()
					end
					if hasParts(model) then
						_zc = true
						break
					end
				end
			end
			if _zc or stopped() then break end
		end

		_hy = false

		if _zc and _t.Character == character and _db.Parent then
			_db.CFrame = model:GetPivot() + _f.HEIGHT_OFFSET
			return true
		end

		
		if _t.Character == character and _db.Parent then
			_db.CFrame = _mj
		end
		if _uj ~= _hl then return false, _d1jbvp({24,80,54,32,59,65,61},{75,36,89,80}) end
		return false, _d1jbvp({57,13,95,68,17,13,94,10,19,66,66,10,87,3,69,29,87,6,66,9,18,12,88,13,24,12},{119,98,43,100})
	end

	local _bq = nil

	local function refreshDroppedList()
		
		local _rf = {}
		for _ny, _dl in ipairs({ _d1jbvp({101,26,22,25,81,13,29,43,64,11,18,25,64,11,18,26},{33,104,121,105}), _d1jbvp({26,73,5,6,68,59,95,38,25,91,42},{94,59,106,118,52}) }) do
			local _vq, _yv = summarizeFolder(_dl)
			table.insert(_rf, { text = _dl .. " (" .. #_yv .. ")", header = true })
			if not _vq then
				table.insert(_rf, { text = _d1jbvp({2,25,20,41,1,4,88,35,11,2,88,43,11,3,22,41},{100,118,120,77}), muted = true })
			elseif #_yv == 0 then
				table.insert(_rf, { text = _d1jbvp({24,89,67,87},{118,54,45,50,83,35,122}), muted = true })
			else
				for _ny, entry in ipairs(_yv) do
					table.insert(_rf, { text = entry.text, userId = entry.userId, model = entry.model, isBackpack = entry.isBackpack })
				end
			end
		end

		local _vc = {}
		for _ny, _ao in ipairs(_rf) do
			table.insert(_vc, _ao.text .. "|" .. tostring(_ao.userId or "") .. "|" .. (_ao.model and getModelId(_ao.model) or ""))
		end
		local _on = table.concat(_vc, "\n")
		if _on == _bq then return end
		_bq = _on

		for _ny, _uo in ipairs(_rx:GetChildren()) do
			if _uo:IsA(_d1jbvp({8,11,21,23,57,57,25,44,10},{79,126,124,88,91,83,124})) then
				_uo:Destroy()
			end
		end
		_ta = {}

		for _if, _ao in ipairs(_rf) do
			local _kh
			local _qa 
			if _ao.model then
				local model = _ao.model
				local _zf = _ao.isBackpack 
				_kh = Instance.new(_d1jbvp({1,30,27,0,8,77,18,18,58,21},{85,123,99,116,74,56,102,102}))
				_kh.Text = ""
				_kh.AutoButtonColor = false
				_kh.BackgroundColor3 = Color3.fromRGB(70, 70, 82)
				_kh.MouseEnter:Connect(function() _kh.BackgroundTransparency = 0.6 end)
				_kh.MouseLeave:Connect(function() _kh.BackgroundTransparency = 1 end)
				_kh.MouseButton1Click:Connect(function()
					local _is = _qa and _qa.Text
					local function _ai(text)
						if _qa and _qa.Parent then
							_qa.Text = text
						end
					end
					local function flash(text)
						_ai(text)
						task.delay(1.5, function()
							if _is and _qa and _qa.Parent and not _hy then
								_qa.Text = _is
							end
						end)
					end

					
					if _hy then
						_uj = _uj + 1
						return
					end

					local _cg, reason = teleportToModel(model, _zf)
					if _cg then return end
					if reason ~= _d1jbvp({0,36,88,80,75,33,42,72,21,67,110,99,66,31,7,62,42,94,4,84,103},{78,75,44,112,39}) or not _zf then
						flash(reason)
						return
					end

					
					task.spawn(function()
						local _zc, _rn = searchForItem(model, _ai)
						if _zc then
							_ai(_is or "")
						else
							flash(_rn)
						end
					end)
				end)
				Instance.new(_d1jbvp({126,60,21,67,36,95,78,7},{43,117,86,44,86,49}), _kh).CornerRadius = UDim.new(0, 4)
			else
				_kh = Instance.new(_d1jbvp({111,14,1,88,59},{41,124,96,53,94,51}))
			end
			_kh.Size = UDim2.new(1, 0, 0, 20)
			_kh.LayoutOrder = _if
			_kh.BackgroundTransparency = 1
			_kh.BorderSizePixel = 0
			_kh.Parent = _rx

			local _op = 0
			if _ao.userId then
				_op = 24

				local _yx = Instance.new(_d1jbvp({106,70,59,61,63,103,31,47,70,71},{35,43,90,90,90,43,126,77}))
				_yx.Size = UDim2.new(0, 18, 0, 18)
				_yx.Position = UDim2.new(0, 0, 0.5, -9)
				_yx.BackgroundColor3 = Color3.fromRGB(45, 45, 52)
				_yx.BorderSizePixel = 0
				_yx.Image = _zg[_ao.userId] or ""
				_yx.Parent = _kh
				Instance.new(_d1jbvp({123,5,44,93,18,7,54,92},{46,76,111,50,96,105,83}), _yx).CornerRadius = UDim.new(1, 0)

				_ta[_ao.userId] = _ta[_ao.userId] or {}
				table.insert(_ta[_ao.userId], _yx)
				requestAvatar(_ao.userId)
			end

			local label = Instance.new(_d1jbvp({45,17,78,51,121,24,22,83,43},{121,116,54,71,53}))
			_qa = label
			label.Size = UDim2.new(1, -_op, 1, 0)
			label.Position = UDim2.new(0, _op, 0, 0)
			label.BackgroundTransparency = 1
			label.Text = _ao.text
			label.TextXAlignment = Enum.TextXAlignment.Left
			label.TextTruncate = Enum.TextTruncate.AtEnd
			label.Font = _ao.header and Enum.Font.GothamBold or Enum.Font.Gotham
			label.TextSize = _ao.header and 13 or 12
			label.TextColor3 = (_ao.header or _ao.muted) and _f.DROPPED_COLOR_MUTED or Color3.new(1, 1, 1)
			label.Parent = _kh
		end
	end

	task.spawn(function()
		while screenGui.Parent do
			refreshDroppedList()
			task.wait(1)
		end
	end)
end




do
	local createToggleButton, createLabel, createSwitch, createList =
		_y.createToggleButton, _y.createLabel, _y.createSwitch, _y.createList
	local screenGui = _y.screenGui

	_y.parent = _y.craftPage

	local _dw = createLabel(_d1jbvp({7,30,65,74,126,53,93,85,59,31,71,81,49,31,14,24,115},{94,113,52,56}), 1)
	local _mm = createLabel(_d1jbvp({31,61,68,41,42,67,125,29,68,46,32,82,54,45,78,120,111,28},{93,72,42,66,79,49}), 2)

	createLabel(_d1jbvp({118,21,25,20,7,16,79,8,31,18,7,87,81,4,85},{63,97,124,121,39,56}), 3)
	local _bc = createList(4, false, 170)
	createLabel(_d1jbvp({23,69,27,1,56,92,84,0,57,8,23,6,55,78,0},{86,40,116,116}), 5)

	local _hq = Instance.new(_d1jbvp({126,53,52,59,104,63,52},{42,80,76,79}))
	_hq.Size = UDim2.new(1, 0, 0, 28)
	_hq.LayoutOrder = 6
	_hq.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
	_hq.BorderSizePixel = 0
	_hq.Text = "1"
	_hq.PlaceholderText = _d1jbvp({104,36,36,65,23,65},{41,73,75,52,121,53})
	_hq.TextColor3 = Color3.new(1, 1, 1)
	_hq.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
	_hq.Font = Enum.Font.Gotham
	_hq.TextSize = 14
	_hq.ClearTextOnFocus = false
	_hq.Parent = _y.craftPage
	Instance.new(_d1jbvp({56,18,121,78,55,3,62,72},{109,91,58,33,69}), _hq).CornerRadius = UDim.new(0, 8)

	local _ek = createToggleButton(7)
	_ek.BackgroundColor3 = _f.COLOR_ITEM_SELECTED
	_ek.Text = _d1jbvp({38,59,57,35,51},{101,73,88,69,71,105})
	local _mn = createLabel("", 8)

	local _rw = true
	createSwitch(9, _d1jbvp({96,49,71,60,6,84,24,6,3,20,73,40,25,22,28,28,64,43},{35,67,38,90,114,116,121,114}), _rw, function(_en)
		_rw = _en
	end)

	
	task.spawn(function()
		while screenGui.Parent do
			local names, seen = {}, {}
			local _mf = _e:FindFirstChild(_d1jbvp({119,15,55,19,7,45,9,77,89,14},{52,125,86,117,115,100,125,40}))
			if _mf then
				for _ny, _rm in ipairs(_mf:GetChildren()) do
					if not seen[_rm.Name] then
						seen[_rm.Name] = true
						table.insert(names, _rm.Name)
					end
				end
			end
			table.sort(names)
			_bc.setNames(names)
			task.wait(_f.LIST_REFRESH)
		end
	end)

	
	
	function _r.getItemKey(_yj)
		local _mf = _e:FindFirstChild(_d1jbvp({2,46,56,48,68,107,53,57,52,37},{65,92,89,86,48,34}))
		local _rm = _mf and _mf:FindFirstChild(_yj)
		if not _rm then return nil end

		local key = _rm:GetAttribute(_d1jbvp({104,49,32,56,106,32,60},{33,69,69,85})) or _rm:GetAttribute(_d1jbvp({5,3,32,13,81,9,14},{108,119,69,96,58}))
		if type(key) == _d1jbvp({92,42,67,70,71,72},{47,94,49,47,41}) and key ~= "" then
			return key
		end
		return _rm.Name
	end

	function _r.craftItem(_li, _ht)
		local _ip = _e:WaitForChild(_d1jbvp({23,74,22,79,32,126,2,71,55,76,30,70,58},{84,56,119,41}))

		local _pf = _ip:InvokeServer(_d1jbvp({4,73,62,85,8,111,43,93,0,88},{102,44,89,60}), _li)
		print(_d1jbvp({60,126,11,4,9,19,124,71,95,28,2,6,9,98,21,92,31,17},{103,61,121,101,111,103,33}), _li, "->", _pf)
		if _pf == false then
			error(_d1jbvp({43,5,54,25,52,57,92,42,5,46,10,50,63,25,60,64,38,10,54,34,18,27,18,37,9,37,107,26,55,18,100},{88,96,68,111,81,75,124}) .. _li)
		end

		task.wait(_f.CRAFT_STEP_DELAY)

		
		local _xh = os.clock()
		local _gk = 0
		while _ht() do
			_gk = _gk + 1
			local _wm = _ip:InvokeServer(_d1jbvp({73,32,79,44,94},{42,82,46,74}), _li)
			print(_d1jbvp({22,32,28,73,43,23,51,8,46,17,15,78,57},{77,99,110,40}), _li, _d1jbvp({20,35,24,32,24,5,35},{117,87,108,69,117}), _gk, "->", _wm)

			if _wm ~= false then
				return 
			end

			if os.clock() - _xh >= _f.CRAFT_RETRY_TIMEOUT then
				error(_d1jbvp({6,78,90,59,16,89,8,38,16,91,92,109,7,78,66,40,22,95,65,35,18,11,75,63,20,77,92,109,19,68,90,109},{117,43,40,77}) .. _li .. " (" .. _gk .. _d1jbvp({15,67,56,19,44,89,24,91,81,101},{47,34,76,103,73,52,104}))
			end
			task.wait(_f.CRAFT_RETRY_INTERVAL)
		end
	end

	
	
	local function getPlayerWorkbench()
		local _ux = _j()
		if not _ux then return nil end

		local _sa = _ux:FindFirstChild(_d1jbvp({49,41,19,26,83,1,110},{115,92,125,113,54}))
		if _sa then
			local _jq = _sa:FindFirstChild(_d1jbvp({111,87,93,89,69},{45,50,51,58}))
			if _jq and _jq:IsA(_d1jbvp({114,77,73,74,9,81,94,78},{48,44,58,47,89})) then
				return _jq
			end
		end

		local _tj = _ux:FindFirstChild(_f.WORKBENCH_NAME, true)
		if _tj and _tj:IsA(_d1jbvp({38,126,12,76,89,94,63,92,21,77},{118,40,69,34,42,42,94,50})) then
			return _tj
		end
		return nil
	end

	function _r.goToWorkbench()
		local character = _t.Character
		local _db = character and character:FindFirstChild(_d1jbvp({110,66,43,34,16,73,94,34,17,17,73,67,22,34,12,82},{38,55,70,67,126}))
		if not _db then return nil end

		local _jq = getPlayerWorkbench()
		if not _jq then
			warn(_d1jbvp({60,50,62,52,60,54,58,81,47,58,47,46,3,31,107,33,122,36,14,31,40,117,35,45,18,3,108,58,45,44,71,53,37,56,5,110,71,24,56,38,122,21,8,3,39,55,63,44,4,25,96,117,53,48,71,16,108,23,47,44,12,20,62,103,122,0,2,31,47,61},{103,113,76,85,90,66}))
			return nil
		end

		local _mj = { character = character, cframe = _db.CFrame }
		_db.CFrame = _jq:GetPivot() + _f.HEIGHT_OFFSET
		task.wait(_f.SETTLE_TIME)
		return _mj
	end

	function _r.returnFromWorkbench(_mj)
		if not _mj then return end
		if _t.Character ~= _mj.character then return end 
		local _db = _mj.character:FindFirstChild(_d1jbvp({53,73,21,57,20,18,85,28,10,21,18,72,40,57,8,9},{125,60,120,88,122}))
		if _db then
			_db.CFrame = _mj.cframe
		end
	end

	task.spawn(function()
		while screenGui.Parent do
			local _ux = _j()
			_dw.Text = _d1jbvp({112,17,54,83,110,109,81,41,76,16,48,72,33,71,2,100},{41,126,67,33,78,41,56,68}) .. (_ux and _ux.Name or _d1jbvp({77,4,78,85,92,72,26,75,71},{35,107,58,117,58,39,111,37}))
			_mm.Text = _d1jbvp({38,69,47,55,52,43,68,101,47,48,62,58,15,85,37,102,113},{100,48,65,92,81,89}) .. (_ux and _ux:FindFirstChild(_d1jbvp({117,13,41,42,82,10,117},{55,120,71,65})) and _d1jbvp({19,74,55},{74,47,68,73,112}) or "No")
			task.wait(_f.LIST_REFRESH)
		end
	end)

	local _an = false

	_ek.MouseButton1Click:Connect(function()
		
		if _an then
			_k = _k + 1
			_an = false
			_ek.Text = _d1jbvp({5,16,0,39,48},{70,98,97,65,68,122,51,49})
			_mn.Text = _d1jbvp({48,58,29,68,87,6,42},{99,78,114,52,39})
			return
		end

		local _qx = _bc.order[1]
		if not _qx then
			_ek.Text = _d1jbvp({12,78,63,49,86,43,38,124,78,40,63,27,107},{92,39,92,90,118,74,72})
			task.delay(1.5, function()
				if screenGui.Parent and not _an then
					_ek.Text = _d1jbvp({5,30,87,93,28},{70,108,54,59,104,77})
				end
			end)
			return
		end

		local _ar = tonumber(_hq.Text)
		_ar = _ar and math.floor(_ar)
		if not _ar or _ar < 1 then
			_mn.Text = _d1jbvp({118,37,83,28,56,19,42,7,14,34,92,39,66,89,36,70,38,69,28,56,31,107,22,89,37,65,107,74,22,56,86},{51,75,39,121,74})
			return
		end

		local _li = _r.getItemKey(_qx)
		if not _li then
			_mn.Text = _qx .. _d1jbvp({11,9,55,95,73,63,68,18,54,79,73,48,69,71,27,89,8,63,95,46,44,78,4,42},{43,103,88,43,105,89})
			warn(_d1jbvp({54,58,31,92,19,25,36,77},{109,121,109,61,117}) .. _qx .. _d1jbvp({121,41,86,58,106,16,34,44,41,93,110,35,24,109,26,53,88,40,62,63,57,60,42,74,98,106,24,34,45,47,80,32,45,86,62,60,41,77},{89,71,57,78,74,118,77}))
			return
		end
		print(_d1jbvp({127,4,11,93,24,28,121,103,9,85,29,3,65,35},{36,71,121,60,126,104}), _qx, _d1jbvp({70,127,93,18,4,2,15,40,19,6},{107,65,125,97,97,108}), _li)
		_k = _k + 1
		local _fb = _k
		_an = true

		local function runBatch()
			local _nn = 0
			for _oq = 1, _ar do
				if _k ~= _fb then return end
				_ek.Text = _d1jbvp({56,40,37,86,98,11},{107,92,74,38,66,35,54}) .. _nn .. "/" .. _ar .. ")"
				_mn.Text = _d1jbvp({120,32,5,36,9,82,60,3,98},{59,82,100,66,125}) .. _li .. _d1jbvp({90,91,96},{116,117,78,42,107})

				local _cg, err = pcall(_r.craftItem, _li, function() return _k == _fb end)
				if _k ~= _fb then return end
				if not _cg then
					warn(_d1jbvp({55,67,13,71,36,97,10,21,88,0,68,52,97,10,27,67,76},{116,49,108,33,80,65,108}) .. _li .. ": " .. tostring(err))
					_mn.Text = _d1jbvp({3,93,56,46,0,33,28,48,36,17,32,78,113},{69,60,81,66,101}) .. _nn .. "/" .. _ar .. _d1jbvp({67,116,15,24,52,116,43,20,23,44,9,9,120},{99,92,124,125,81,84,68,97})
					_an = false
					_ek.Text = _d1jbvp({63,16,5,45,23},{124,98,100,75,99,111})
					return
				end

				_nn = _nn + 1
				_mn.Text = _d1jbvp({42,89,56,76,48,28,23,77},{105,43,89,42,68,121,115,109}) .. _nn .. "/" .. _ar
				if _oq < _ar then
					task.wait(_f.CRAFT_DELAY)
				end
			end

			if _k == _fb then
				_an = false
				_ek.Text = _d1jbvp({50,34,56,73,60},{113,80,89,47,72})
				_mn.Text = _d1jbvp({58,46,39,61,121,90},{126,65,73,88,67,122,120,118}) .. _nn .. "/" .. _ar .. " " .. _li
			end
		end

		task.spawn(function()
			local _mj = _rw and _r.goToWorkbench() or nil
			if _k == _fb then
				runBatch()
			end
			_r.returnFromWorkbench(_mj)
		end)
	end)
end




do
	local createToggleButton, createLabel = _y.createToggleButton, _y.createLabel

	_y.parent = _y.farmPage
	_y.autoShootButton = createToggleButton(7)
	local _yw = createLabel("", 8)

	local function isCreatureAlive(model)
		if not model or not model.Parent then return false end
		local _oi = model:FindFirstChildOfClass(_d1jbvp({10,79,75,44,63,89,77,83},{66,58,38,77,81,54,36,55}))
		if _oi and _oi.Health <= 0 then return false end
		return true
	end

	local function getAimPoint(model)
		for _ny, partName in ipairs(_f.AIM_PART_PRIORITY) do
			local _co = model:FindFirstChild(partName)
			if _co and _co:IsA(_d1jbvp({7,25,85,40,21,25,84,57},{69,120,38,77})) then
				return _co.Position
			end
		end
		return model:GetPivot().Position
	end

	local function getNearestCreature()
		local _mf = workspace:FindFirstChild(_d1jbvp({118,6,36,76,90,66,21,73,70},{53,116,65,45,46,55,103,44}))
		if not _mf then return nil end

		local character = _t.Character
		local _db = character and character:FindFirstChild(_d1jbvp({31,9,71,58,57,19,67,63,5,19,69,47,7,29,88,47},{87,124,42,91}))
		if not _db then return nil end

		local _mv, bestDist
		for _ny, model in ipairs(_mf:GetChildren()) do
			if model:IsA(_d1jbvp({106,13,32,3,24},{39,98,68,102,116,85,101,72})) and isCreatureAlive(model) then
				local _hs = (getAimPoint(model) - _db.Position).Magnitude
				if not bestDist or _hs < bestDist then
					_mv, bestDist = model, _hs
				end
			end
		end
		return _mv
	end

	function _r.equipLaserPistol()
		return equipTool(_d1jbvp({18,4,93,91,43,29,116,87,45,17,65,82},{94,101,46,62,89,61,36,62}))
	end

	
	local function getMuzzlePosition()
		local character = _t.Character
		local _ah = character and character:FindFirstChild(_d1jbvp({26,78,43,71,36,15,8,75,37,91,55,78},{86,47,88,34}))
		local _yf = _ah and _ah:FindFirstChild(_d1jbvp({100,93,63,17,24,71},{44,60,81,117,116,34}))
		local _bw = _yf and _yf:FindFirstChild(_d1jbvp({3,49,66,22,89,13},{78,68,56,108,53,104,59}))
		if _bw and _bw:IsA(_d1jbvp({46,71,1,7,61,7,94,16,8,42},{111,51,117,102,94})) then
			return _bw.WorldPosition
		end
		return nil
	end

	
	local function hasLineOfSight(_jn, _yd, _sj)
		local _nj = RaycastParams.new()
		_nj.FilterType = Enum.RaycastFilterType.Exclude
		_nj.FilterDescendantsInstances = _sj
		local _pt = workspace:Raycast(_jn, _yd - _jn, _nj)
		if not _pt then return true end
		return (_pt.Position - _yd).Magnitude < 2
	end

	
	local function ensureLineOfSight(_he)
		local character = _t.Character
		local _db = character and character:FindFirstChild(_d1jbvp({16,49,28,8,50,69,49,32,35,6,51,94,8,37,3,29},{88,68,113,105,92,42}))
		if not _db then return end

		local _dm = getAimPoint(_he)
		local _gy = getMuzzlePosition() or _db.Position

		if hasLineOfSight(_gy, _dm, { character, _he }) then
			return
		end

		local _xp = _db.Position - _dm
		if _xp.Magnitude == 0 then
			_xp = Vector3.new(0, 0, 1)
		end
		local _vm = _dm + _xp.Unit * _f.COMBAT_SAFE_DISTANCE + Vector3.new(0, 3, 0)
		_db.CFrame = CFrame.new(_vm, _dm)
		task.wait(0.2) 
	end

	
	local function fireLaserAt(_zy)
		local _mj = getMuzzlePosition()
		if not _mj then
			warn(_d1jbvp({24,123,9,43,52,44,55,101,70,10,55,62,38,74,70,22,63,62,55,87,10,97,37,109,14,77,28,60,58,40,99,89,18,50,55,46,43,85,3,40,34,109,45,87,18,102,48,34,54,86,2},{67,56,102,70,86,77}))
			return
		end

		local _id = _zy - _mj
		if _id.Magnitude == 0 then return end
		_id = _id.Unit

		_e:WaitForChild(_d1jbvp({35,49,41,18,49,7,66,10,62,46},{111,80,90,119,67,66,52})):FireServer(
			_d1jbvp({75,71,87,71},{45,46,37,34,85}),
			vector.create(_mj.X, _mj.Y, _mj.Z),
			vector.create(_id.X, _id.Y, _id.Z)
		)
	end

	
	function _r.runAutoShoot(_fb)
		while _q == _fb do
			local _he = getNearestCreature()
			if not _he then
				if _h == _d1jbvp({50,71,52,78,4,37},{81,40,89,44,101}) and _q == _fb then
					_yw.Text = _d1jbvp({45,71,91,91,22,60,51,23,93,9,93,23,121,52,12,93,21,92},{99,40,123,56,100,89,82})
				end
				interruptibleWait(1, _fb)
			else
				while _q == _fb and isCreatureAlive(_he) do
					if _h == _d1jbvp({40,11,60,21,3,63},{75,100,81,119,98}) and _q == _fb then
						_yw.Text = _d1jbvp({113,27,71,14,76,81,19,91,14,9},{37,122,53,105,41}) .. _he.Name
					end
					_r.equipLaserPistol()
					ensureLineOfSight(_he)
					if _q ~= _fb then return end
					fireLaserAt(getAimPoint(_he))
					task.wait(_f.FIRE_INTERVAL)
				end
			end
		end
	end
end




do
	local screenGui = _y.screenGui
	local _zm = {} 

	local function containsAny(_kk, _wl)
		_kk = string.lower(_kk)
		for _ny, kw in ipairs(_wl) do
			if string.find(_kk, kw, 1, true) then
				return true
			end
		end
		return false
	end

	local function nameMatches(_ph)
		for _ny, exact in ipairs(_f.LOADING_GUI_NAMES) do
			if _ph.Name == exact then
				return true
			end
		end
		return containsAny(_ph.Name, _f.LOADING_NAME_KEYWORDS)
	end

	
	local function isShowing(_ph, _zd)
		local _ii = _ph
		while _ii and _ii ~= _zd do
			if _ii:IsA(_d1jbvp({125,95,56,10,31,70,95,73,37},{58,42,81,69,125,44})) and not _ii.Visible then
				return false
			end
			_ii = _ii.Parent
		end
		return _zd.Enabled
	end

	local function hideInstance(_ph)
		local _nl
		if _ph:IsA(_d1jbvp({108,29,73,34,80,90,99,74,23},{63,126,59,71,53,52,36})) then
			_nl = _d1jbvp({13,85,56,68,9,94,44},{72,59,89,38,101,59})
		elseif _ph:IsA(_d1jbvp({111,25,43,42,74,6,39,6,92},{40,108,66,101})) then
			_nl = _d1jbvp({63,36,60,11,34,23,12},{105,77,79,98,64,123})
		else
			return
		end

		if _ph[_nl] then
			_ph[_nl] = false
		end

		if not _zm[_ph] then
			_zm[_ph] = true
			print(_d1jbvp({107,106,75,11,93,70,62,77,109,6,76,3,93},{48,38,36,106,57,47,80,42}), _ph:GetFullName())
			
			_ph:GetPropertyChangedSignal(_nl):Connect(function()
				if _v and _ph[_nl] then
					_ph[_nl] = false
				end
			end)
		end
	end

	local function checkLoadingGui(_zd)
		if _zd == screenGui or not _zd:IsA(_d1jbvp({6,57,94,60,86,13,19,78,60},{85,90,44,89,51,99,84,59})) then return end

		if nameMatches(_zd) then
			hideInstance(_zd)
			return
		end

		for _ny, d in ipairs(_zd:GetDescendants()) do
			if d:IsA(_d1jbvp({106,73,53,3,79,86,57,47,89},{45,60,92,76})) then
				if nameMatches(d) and isShowing(d, _zd) then
					hideInstance(d)
				elseif (d:IsA(_d1jbvp({22,12,75,32,14,8,81,49,46},{66,105,51,84})) or d:IsA(_d1jbvp({98,70,80,48,116,86,92,48,89,77},{54,35,40,68})))
					and containsAny(d.Text, _f.LOADING_TEXT_KEYWORDS)
					and isShowing(d, _zd) then
					hideInstance(_zd) 
					return
				end
			end
		end
	end

	
	table.insert(_i, _c.ChildAdded:Connect(function(_uo)
		if _v and _uo:IsA(_d1jbvp({35,70,10,57,21,75,63,41,25},{112,37,120,92})) then
			task.defer(checkLoadingGui, _uo)
		end
	end))

	task.spawn(function()
		while screenGui.Parent do
			if _v then
				for _ny, _zd in ipairs(_c:GetChildren()) do
					checkLoadingGui(_zd)
				end
			end
			task.wait(0.2)
		end
	end)
end




do
	local screenGui = _y.screenGui
	local nodeList, dimOList, oreList = _y.nodeList, _y.dimOList, _y.oreList
	local getNodeAmount, getOreAmount = _y.getNodeAmount, _y.getOreAmount
	local updateAmountVisibility, updateOreAmountVisibility = _y.updateAmountVisibility, _y.updateOreAmountVisibility
	local craftItem, getItemKey, goToWorkbench, returnFromWorkbench =
		_r.craftItem, _r.getItemKey, _r.goToWorkbench, _r.returnFromWorkbench

	
	local function getDimension(_qe)
		local _mo = workspace:FindFirstChild(_d1jbvp({22,85,12,11,60,79,8,1,60,79},{82,60,97,110}))
		return _mo and _mo:FindFirstChild(_qe)
	end

	
	local function getFolderIn(_qe, _dl)
		local _ux = getDimension(_qe)
		local _mf = _ux and _ux:FindFirstChild(_dl)
		if _mf and _mf:IsA(_d1jbvp({36,64,29,74,13,54},{98,47,113,46,104,68})) then
			return _mf
		end
	end

	local function getOresFolder(_qe) return getFolderIn(_qe, _d1jbvp({57,76,73,64},{118,62,44,51,61,42,87})) end
	local function getNodesFolder(_qe) return getFolderIn(_qe, _d1jbvp({23,90,62,8,17},{89,53,90,109,98,59,70})) end

	
	local function scanDimensions()
		local _wv, dimO, ore = {}, {}, {}
		local _mo = workspace:FindFirstChild(_d1jbvp({2,85,40,35,60,72,2,73,40,79},{70,60,69,70,82,59,107,38}))
		if _mo then
			for _ny, _ux in ipairs(_mo:GetChildren()) do
				local nodes = _ux:FindFirstChild(_d1jbvp({56,58,73,61,78},{118,85,45,88,61,74,124,109}))
				if nodes and nodes:IsA(_d1jbvp({101,54,75,47,9,81},{35,89,39,75,108})) then
					table.insert(isDimO(_ux.Name) and dimO or _wv, _ux.Name)
				end
				local _gu = _ux:FindFirstChild(_d1jbvp({30,52,84,58},{81,70,49,73,75,70,120,71}))
				if _gu and _gu:IsA(_d1jbvp({29,52,63,72,62,41},{91,91,83,44})) then
					table.insert(ore, _ux.Name)
				end
			end
		end
		table.sort(_wv)
		table.sort(dimO)
		table.sort(ore)
		return _wv, dimO, ore
	end

	task.spawn(function()
		while screenGui.Parent do
			local _wv, dimO, ore = scanDimensions()
			nodeList.setNames(_wv)
			dimOList.setNames(dimO)
			oreList.setNames(ore)
			task.wait(_f.LIST_REFRESH)
		end
	end)

	local function refreshButtons()
		for _iu, _yc in pairs(_g) do
			local _wg = (_h == _iu)
			_yc.button.Text = _yc.label .. (_wg and _d1jbvp({83,12,43,9},{105,44,100,71,101,43,81,106}) or _d1jbvp({84,10,118,126,38},{110,42,57,56,96,37}))
			_yc.button.BackgroundColor3 = _wg and _f.COLOR_ON or _f.COLOR_OFF
		end
	end

	
	_l = function()
		if _h then
			local _vx = _h
			_q = _q + 1
			_h = nil
			clearHiddenHold()
			restoreOriginIfAny(_vx)
			refreshButtons()
		end
	end

	_n = function()
		if _h and _f.MODE_RETURNS_TO_ORIGIN[_h] then
			restoreOriginIfAny(_h)
		end
	end

	
	local function resolveFast(_ma)
		if _ma == nil then return _o end
		return _ma
	end

	
	local function resolveHidden(_ei)
		if _ei == nil then return _p end
		return _ei
	end

	
	local function moveToModel(model, _ei)
		local character = _t.Character
		local _db = character and character:FindFirstChild(_d1jbvp({49,95,24,16,81,82,6,29,120,26,30,75,109,14,11,94},{121,42,117,113,63,61,111}))
		if not _db then return false end

		if _ei then
			local _si = model:GetPivot() + getHiddenOffset(model)
			_db.CFrame = _si
			holdHiddenPosition(_si)
		else
			clearHiddenHold()
			_db.CFrame = model:GetPivot() + _f.HEIGHT_OFFSET
		end
		return true
	end

	local function triggerPrompt(model, _ma)
		local _gp = model:FindFirstChildWhichIsA(_d1jbvp({106,71,32,62,50,30,62,78,76,31,52,52,30,39,78},{58,53,79,70,91,115,87}), true)
		if not _gp or not _gp.Enabled then
			if _p then
				local character = _t.Character
				local _db = character and character:FindFirstChild(_d1jbvp({127,13,2,35,43,28,94,28,61,45,42,7,103,25,29,54},{55,120,111,66,69,115}))
				local _lz = _gp and _gp:FindFirstAncestorWhichIsA(_d1jbvp({34,78,40,10,99,10,39,8},{96,47,91,111,51,107,85,124}))
				local _hs = (_db and _lz) and (_db.Position - _lz.Position).Magnitude or nil
				warn((_d1jbvp({19,34,46,20,11,79,31,21,74,98,3,79,7,79,104,26,53,31,2,90,5,104,79,52,92,79,79,31,41,8,43,21,11,23,84,59,70,103,2,10,91,4,33,24,34,3,35,101,34,117,79,52,92,79,71,16,48,46,46,3,27,23,84,59,70,103,17,12,94,4,41,6,3,25,28,94,76,109,25},{72,106,71,112,111,42,113})):format(
					model.Name,
					_gp and _d1jbvp({68,91,65,31,47},{34,52,52,113,75,64}) or _d1jbvp({66,86,49,73,94,55,72},{47,63,66,58,55,89}),
					_gp and tostring(_gp.Enabled) or _d1jbvp({47,26,93},{65,53,60,124}),
					_gp and tostring(_gp.RequiresLineOfSight) or _d1jbvp({8,18,74},{102,61,43,92,98,80,79}),
					_gp and tostring(_gp.MaxActivationDistance) or _d1jbvp({36,106,76},{74,69,45,51,109,40}),
					_hs and string.format("%.1f", _hs) or _d1jbvp({84,88,66},{58,119,35,106,101,49,67})
				))
			end
			return false
		end

		
		local _un = _gp.HoldDuration
		if resolveFast(_ma) and _un > _f.FAST_HOLD_DURATION then
			_gp.HoldDuration = _f.FAST_HOLD_DURATION
		end

		_gp:InputHoldBegin()
		task.wait(math.max(_gp.HoldDuration, 0) + 0.1)
		_gp:InputHoldEnd()

		if _gp.Parent then
			_gp.HoldDuration = _un
		end
		return true
	end

	local function teleportTo(model, _fb, _ma, _sk, _ei)
		_ma = resolveFast(_ma)
		if not moveToModel(model, resolveHidden(_ei)) then return false end
		task.wait(_ma and _f.FAST_SETTLE_TIME or _f.SETTLE_TIME)

		interruptibleWait(_ma and _f.FAST_PROMPT_DELAY or _f.PROMPT_DELAY, _fb)

		if _q == _fb then
			local _gr = triggerPrompt(model, _ma)
			if _gr and _sk and _q == _fb then
				_sk(model)
			end
		end
		return true
	end

	
	
	local function visitTarget(model, _fb, _ma, _sk, _ei)
		_ma = resolveFast(_ma)
		local _gp = model:FindFirstChildWhichIsA(_d1jbvp({44,10,76,28,56,72,61,8,1,115,22,62,72,36,8},{124,120,35,100,81,37,84}), true)
		local _kz = _ma and _f.FAST_TELEPORT_DELAY or _f.TELEPORT_DELAY
		local _xh = os.clock()

		local _bm = teleportTo(model, _fb, _ma, _sk, _ei)

		while _q == _fb do
			local _ly = _kz - (os.clock() - _xh)
			if _ly <= 0 then break end

			if _ma and _bm then
				local _cx = not model.Parent
					or not _gp
					or not _gp.Parent
					or not _gp.Enabled
				if _cx then break end
			end

			task.wait(math.min(0.05, _ly))
		end

		return _bm
	end

	
	local function getChestTargets()
		local _xv = {}
		local _mf = workspace:FindFirstChild(_d1jbvp({10,63,14,67,119,31,35,35,21,68},{70,80,97,55,52,119}))
		if not _mf then
			warn(_d1jbvp({99,91,35,30,118,94,74,71,56,25,21,80,64,88,40,15,71,22,65,91,56,74,83,89,90,90,40,74,92,88,15,67,35,24,94,69,95,85,47,15},{47,52,76,106,53,54}))
			return _xv
		end
		for _ny, model in ipairs(_mf:GetChildren()) do
			if model:IsA(_d1jbvp({26,55,43,87,82},{87,88,79,50,62,93,89,62})) then
				table.insert(_xv, model)
			end
		end
		return _xv
	end

	
	local function getChestId(_hn)
		local _bl = _hn:GetAttribute(_d1jbvp({10,9,8,73,61,40,9},{73,97,109,58}))
		if _bl ~= nil and tostring(_bl) ~= "" then
			return tostring(_bl)
		end

		local _ll = string.match(_hn.Name, _d1jbvp({127,101,83,92,33,118,12,68,90,72,108,125,27,79,8,13},{33,41,60,51,85,53,100}))
		if _ll and _ll ~= "" then
			return _ll
		end
		return nil
	end

	
	local function takeAllFromChest(_hn)
		if not _f.AUTO_TAKE_ALL then return end

		local _ua = getChestId(_hn)
		if not _ua then
			warn(_d1jbvp({40,34,63,44,7,51,112,45,28,78,19,43,22,29,36,10,23,78,49,55,7,28,57,33,6,26,53,99,28,28,112,15,28,1,36,0,27,11,35,55,44,78,62,34,30,11,112,44,29,78},{115,110,80,67}) .. _hn:GetFullName())
			return
		end

		local _ep = _e:FindFirstChild(_d1jbvp({47,60,64,41,104,90,89,34,23},{99,83,47,93,45,44,60,76}))
		if not _ep then
			warn(_d1jbvp({0,33,43,57,2,6,77,8,57,25,47,40,50,51,24,47,77,42,57,2,123,11,43,35,24,63,77,45,56,86,9,8,52,58,31,56,12,48,51,18,8,25,43,36,23,60,8},{91,109,68,86,118}))
			return
		end

		task.wait(_f.LOOT_TAKE_DELAY)

		_ep:FireServer(_d1jbvp({88,92,31,85},{44,61,116,48}), _ua, _d1jbvp({84,82,87},{53,62,59,67,96,89}))
		print(_d1jbvp({20,105,59,61,73,52,111,81,53,57,88,73,46,73,56,114,16,87},{79,37,84,82,61,105}), _ua)
	end

	local _pb = {}

	local function getItemsIn(_dl)
		local _xv = {}
		local _mf = workspace:FindFirstChild(_dl)
		if not _mf then
			if not _pb[_dl] then
				_pb[_dl] = true
				warn(_dl .. _d1jbvp({6,31,46,91,24,67,11,97,89,19,82,89,39,88,9,72,29,97,94,18,6,14,46,69,23,85,9,32,84,25},{38,121,65,55,124}))
			end
			return _xv
		end
		_pb[_dl] = nil

		for _ny, _ph in ipairs(_mf:GetChildren()) do
			if isDropModel(_ph) then
				table.insert(_xv, _ph)
			end
		end
		return _xv
	end

	local function getSelectedDimensionTargets()
		local _xv = {}
		local _qe = nodeList.order[1]
		if not _qe or isDimO(_qe) then return _xv end

		local nodes = getNodesFolder(_qe)
		if not nodes then return _xv end

		for _ny, model in ipairs(nodes:GetChildren()) do
			if model:IsA(_d1jbvp({41,48,10,8,16},{100,95,110,109,124,42,55,92})) then
				table.insert(_xv, model)
			end
		end
		return _xv
	end

	
	local function makePassLoop(_pw, _cu, _sk, _hf)
		return function(_fb)
			while _q == _fb do
				local _xv = _pw()
				if #_xv == 0 then
					interruptibleWait(2, _fb) 
				else
					for _ny, model in ipairs(_xv) do
						if _q ~= _fb then break end
						if model.Parent then
							visitTarget(model, _fb, _cu and _cu(), _sk, _hf and _hf())
						end
					end
				end
				task.wait()
			end
		end
	end

	
	
	local function nextUnvisitedDimONode(_qe, _bn)
		local nodes = getNodesFolder(_qe)
		if not nodes then return nil end

		for _ny, model in ipairs(nodes:GetChildren()) do
			if model:IsA(_d1jbvp({58,67,78,75,6},{119,44,42,46,106,108})) and model.Name ~= _f.WORKBENCH_NAME and not _bn[model] then
				local _gp = model:FindFirstChildWhichIsA(_d1jbvp({16,2,50,62,28,43,3,52,9,13,52,26,43,26,52},{64,112,93,70,117,70,106}), true)
				if _gp and _gp.Enabled then
					return model
				end
			end
		end
		return nil
	end

	
	local _fp = {}

	local function enterDimension(_qe, _fb)
		local _ux = getDimension(_qe)
		local _tj = _ux and _ux:FindFirstChild(_f.WORKBENCH_NAME, true)
		if not _tj or not _tj:IsA(_d1jbvp({37,14,123,88,77,1,57,92,85,91},{117,88,50,54,62})) then
			if not _fp[_qe] then
				_fp[_qe] = true
				warn(_d1jbvp({118,87,18,18},{56,56,50,53,105,61,83,34}) .. _f.WORKBENCH_NAME .. _d1jbvp({22,107,94,14,95,86,29,24,88,37,24},{49,75,56,97,42,56,121,56}) .. _qe .. _d1jbvp({28,84,87,73,90,40,53,2,69,29,90,65,20,43,53,24,88,27,65,82,20,53,40},{48,116,52,38,52,92,92,108}))
			end
			return false
		end

		local character = _t.Character
		local _db = character and character:FindFirstChild(_d1jbvp({43,64,50,86,13,90,54,83,49,90,48,67,51,84,45,67},{99,53,95,55}))
		if not _db then return false end

		_db.CFrame = _tj:GetPivot() + _f.HEIGHT_OFFSET
		interruptibleWait(_o and _f.FAST_WORKBENCH_WAIT or _f.WORKBENCH_WAIT, _fb)
		return true
	end

	
	
	local function collectDimension(_qe, _fb)
		local _bn = {}
		local _pn = 0
		local _nb = os.clock()

		while _q == _fb and _pn < _f.NODES_PER_DIM_O do
			local _wz = nextUnvisitedDimONode(_qe, _bn)

			if _wz then
				_bn[_wz] = true
				if visitTarget(_wz, _fb) then
					_pn = _pn + 1
				end
				_nb = os.clock()
			else
				if os.clock() - _nb >= _f.NO_PROGRESS_TIMEOUT then
					break
				end
				task.wait(0.1)
			end
		end

		return _pn
	end

	local function runDimO(_fb)
		local _dt = nil     
		local _jk = nil  

		while _q == _fb do
			local order = table.clone(dimOList.order)
			local _to = 0

			for _ny, _qe in ipairs(order) do
				if _q ~= _fb then break end

				if _dt ~= _qe or _t.Character ~= _jk then
					if enterDimension(_qe, _fb) then
						_dt = _qe
						_jk = _t.Character
					end
				end

				_to = _to + collectDimension(_qe, _fb)
			end

			if _to == 0 then
				interruptibleWait(2, _fb) 
			end
			task.wait()
		end
	end

	local _ks 

	local _se = makePassLoop(getSelectedDimensionTargets)

	local function setNodeProgress(_fb, _eo, _ak, _er, _ar)
		if _h == _d1jbvp({60,95,15,53,33},{82,48,107,80,82,48}) and _q == _fb then
			_g.nodes.button.Text = _d1jbvp({19,44,22,84,40,55,44,14,17,28,63,63,15,11,122,17,3,66,25},{94,77,98,49,90}) .. _eo .. "/" .. _ak
				.. "  " .. _er .. "/" .. _ar .. ")"
		end
	end

	
	
	local function teleportToFirstIn(_mf, _fb, _ui)
		if not _mf then return false end

		local _ib
		for _ny, model in ipairs(_mf:GetChildren()) do
			if model:IsA(_d1jbvp({49,45,11,15,40},{124,66,111,106,68,33,100})) then
				if not _ui then
					_ib = model
					break
				end
				local _gp = model:FindFirstChildWhichIsA(_d1jbvp({6,5,36,45,63,26,34,33,47,39,57,58,59,7,63},{86,119,75,85}), true)
				if _gp and _gp.Enabled then
					_ib = model
					break
				end
				_ib = _ib or model
			end
		end
		if not _ib then return false end

		if not moveToModel(_ib, _p) then return false end
		interruptibleWait(_f.DIM_ENTER_WAIT, _fb)
		return true
	end

	local function farmNodesInDimension(_qe, _ar, _fb, _eo, _ak)
		teleportToFirstIn(getNodesFolder(_qe), _fb, true)
		local _er = 0
		local _nb = os.clock()
		setNodeProgress(_fb, _eo, _ak, _er, _ar)

		while _q == _fb and _er < _ar do
			local nodes = getNodesFolder(_qe)
			local _zc = false

			if nodes then
				for _ny, model in ipairs(nodes:GetChildren()) do
					if _q ~= _fb or _er >= _ar then break end
					if model:IsA(_d1jbvp({5,17,70,45,36},{72,126,34,72})) and model.Parent then
						local _gp = model:FindFirstChildWhichIsA(_d1jbvp({16,60,11,30,52,73,41,58,29,54,47,75,45,62,16},{64,78,100,102,93,36}), true)
						if _gp and _gp.Enabled then
							_zc = true
							visitTarget(model, _fb)

							
							local _nn = not model.Parent or not _gp.Parent or not _gp.Enabled
							if _nn and _q == _fb then
								_er = _er + 1
								_nb = os.clock()
								setNodeProgress(_fb, _eo, _ak, _er, _ar)
							end
						end
					end
				end
			end

			if _er < _ar and os.clock() - _nb >= _f.NODE_NO_PROGRESS_TIMEOUT then
				warn(_d1jbvp({24,16,53,69,70,6,78,45,57,32,95,66,53,9,99,53,59,91,71,62,13,55,51,48,23,66,53,78},{67,86,84,55,43,91,110}) .. _qe .. _d1jbvp({91,36,69,19,104},{123,66,42,97,72,122,82}) .. _f.NODE_NO_PROGRESS_TIMEOUT
					.. _d1jbvp({84,90,81},{39,122,121,114,39,117}) .. _er .. "/" .. _ar .. _d1jbvp({121,96,30,46,63,58,87,45,55,108,81,45},{80,76,62,67}))
				break
			end
			if not _zc then
				interruptibleWait(1, _fb) 
			end
		end

		return _er
	end

	
	
	local function runSelectedDimensions(_fb)
		local order = table.clone(nodeList.order)

		if #order <= 1 then
			if order[1] then
				teleportToFirstIn(getNodesFolder(order[1]), _fb, true)
			end
			_se(_fb)
			return
		end

		local _ar = getNodeAmount()
		if not _ar then
			_ks(_d1jbvp({75,80,5,63,17},{37,63,97,90,98,105,60,121}), _fb, _d1jbvp({103,9,24,52,76,2,6,2,113,95,79,8,25,63,74,3},{34,103,108,81,62}))
			return
		end

		for _if, _qe in ipairs(order) do
			if _q ~= _fb then return end
			farmNodesInDimension(_qe, _ar, _fb, _if, #order)
		end

		_ks(_d1jbvp({80,72,38,60,2},{62,39,66,89,113,37,108,76}), _fb, _d1jbvp({63,59,49,68,81},{123,84,95,33,112,77,91}))
	end

	
	
	
	local function equipPickaxe()
		return equipTool(_d1jbvp({18,33,6,73,57,58,45},{66,72,101,34,88}))
	end

	local function mineOre(model, _fb)
		local _xh = os.clock()
		local _lv = 0
		local _ix = _e:WaitForChild(_d1jbvp({127,62,79,19,48,13,87,57,85},{50,87,33,118,117,123}))
		while _q == _fb and model.Parent do
			_ix:FireServer(_d1jbvp({93,85,71,71,32},{46,34,46,41,71}))
			_lv = _lv + 1
			if _lv >= _f.MINE_MAX_SWINGS then
				break
			end
			if os.clock() - _xh >= _f.MINE_GIVE_UP_TIME then
				warn(_d1jbvp({109,97,23,44,107,14},{54,46,101,73}) .. model.Name .. _d1jbvp({24,55,82,64,0,31,39,27,70,28,93,50,80,4,15,94,39,94,86,78},{56,83,59,36,110}) .. _f.MINE_GIVE_UP_TIME .. _d1jbvp({17,68,20,42,35,20,1,90,32,108,13,6},{98,104,52,71,76}))
				break
			end
			task.wait(_f.MINE_SWING_MIN + math.random() * (_f.MINE_SWING_MAX - _f.MINE_SWING_MIN))
		end
		return not model.Parent
	end

	local function visitOre(model, _fb)
		equipPickaxe()
		if not moveToModel(model, _p) then return end

		task.wait(_o and _f.FAST_SETTLE_TIME or _f.SETTLE_TIME)
		if _q ~= _fb then return end
		mineOre(model, _fb)
	end

	local function setOreProgress(_fb, _eo, _ak, _pl, _ar)
		if _h == _d1jbvp({62,70,17},{81,52,116,94,117,104,37,117}) and _q == _fb then
			_g.ore.button.Text = _d1jbvp({106,45,89,74,11,68,45,81,80,109,106,17,28,66},{37,95,60,106,77}) .. _eo .. "/" .. _ak
				.. "  " .. _pl .. "/" .. _ar .. ")"
		end
	end

	
	local function mineDimension(_qe, _ar, _fb, _eo, _ak)
		local _pl = 0
		local _nb = os.clock()
		if _ar then
			setOreProgress(_fb, _eo, _ak, _pl, _ar)
		end

		while _q == _fb and (not _ar or _pl < _ar) do
			local _gu = getOresFolder(_qe)
			local _zc = false

			if _gu then
				for _ny, model in ipairs(_gu:GetChildren()) do
					if _q ~= _fb or (_ar and _pl >= _ar) then break end
					if model:IsA(_d1jbvp({8,72,72,2,15},{69,39,44,103,99})) and model.Parent then
						_zc = true
						visitOre(model, _fb)

						if _q == _fb then
							_pl = _pl + 1
							_nb = os.clock()
							if _ar then
								setOreProgress(_fb, _eo, _ak, _pl, _ar)
							end
						end
					end
				end
			end

			if (not _ar or _pl < _ar) and os.clock() - _nb >= _f.ORE_NO_PROGRESS_TIMEOUT then
				warn(_d1jbvp({20,37,74,30,119,111,4,87,15,66,38,4,95,91,71,38,4,93,31,10,38,4,24},{79,106,56,123,42}) .. _qe .. _d1jbvp({121,73,6,83,108},{89,47,105,33,76,66,93}) .. _f.ORE_NO_PROGRESS_TIMEOUT
					.. _d1jbvp({19,121,119},{96,89,95,108}) .. _pl .. (_ar and ("/" .. _ar) or "") .. _d1jbvp({80,4,88,38,22,94,17,37,30,8,23,37},{121,40,120,75}))
				break
			end
			if not _zc then
				interruptibleWait(1, _fb) 
			end
		end

		return _pl
	end

	local function runOreDimensions(_fb)
		local order = table.clone(oreList.order)
		if #order == 0 then return end

		if #order <= 1 then
			teleportToFirstIn(getOresFolder(order[1]), _fb, false)
			mineDimension(order[1], nil, _fb, 1, 1)
			return
		end

		local _ar = getOreAmount()
		if not _ar then
			_ks(_d1jbvp({67,65,81},{44,51,52,86,97,110,104,51}), _fb, _d1jbvp({119,53,54,91,58,76,86,92,123,35,83,39,25,89,70,122},{50,91,66,62,72,108,55}))
			return
		end

		for _if, _qe in ipairs(order) do
			if _q ~= _fb then return end
			teleportToFirstIn(getOresFolder(_qe), _fb, false)
			mineDimension(_qe, _ar, _fb, _if, #order)
		end

		_ks(_d1jbvp({45,8,81},{66,122,52,51,84,60,110}), _fb, _d1jbvp({112,39,43,45,75},{52,72,69,72,106,100,84,94}))
	end

	
	_g.chests = {
		label = _d1jbvp({63,38,4,95,8,110,53,124},{124,78,97,44}),
		button = _y.chestButton,
		run = makePassLoop(getChestTargets, function()
			if _f.CHEST_FOLLOWS_FAST_MODE then return nil end 
			return false 
		end, takeAllFromChest),
	}

	_g.droppedloot = {
		label = _d1jbvp({50,93,93,51,66,116,21,12,95},{126,50,50,71,98,50,116}),
		button = _y.lootDropButton,
		run = makePassLoop(function() return getItemsIn(_d1jbvp({48,59,76,16,58,21,19,56,38,76,20},{116,73,35,96,74,112,119})) end, function() return _u end, nil, function() return _d end),
	}

	_g.nodes = {
		label = _d1jbvp({0,3,40,91,92,36,3,48,30,104,44,16,49},{77,98,92,62,46}),
		button = _y.nodeButton,
		run = runSelectedDimensions,
		canStart = function()
			if #nodeList.order == 0 then
				return false, _d1jbvp({61,55,39,42,77,63,100,37,4,51,33,47,30,55,43,47,76},{109,94,68,65})
			end
			if #nodeList.order > 1 and not getNodeAmount() then
				return false, _d1jbvp({27,53,34,40,52,99,63,53,118,44,43,44,43,53,34,108},{94,91,86,77,70,67})
			end
			return true
		end,
		startMessage = _d1jbvp({8,68,39,26,120,76,100,21,49,64,33,31,43,68,43,31,121},{88,45,68,113}),
	}

	_g.dimo = {
		label = _d1jbvp({8,47,50,10,43,108,6,10,41,33},{91,76,64,107}),
		button = _y.dimOButton,
		run = runDimO,
		canStart = function() return #dimOList.order > 0 end,
		startMessage = _d1jbvp({58,86,1,34,77,27,16,46,86,15,44,3,9,89,5,81,67},{106,63,98,73,109,122,48}),
	}

	_g.combat = {
		label = _d1jbvp({58,49,13,19,4,21,19,35},{116,97,78,51,66}),
		button = _y.autoShootButton,
		run = function(_fb)
			if not _r.equipLaserPistol() then
				_ks(_d1jbvp({52,73,54,70,54,82},{87,38,91,36}), _fb, _d1jbvp({27,8,3,1,52,20,70,63,117,55,74,62,33,8,79,108},{85,103,35,77}))
				return
			end
			_r.runAutoShoot(_fb)
		end,
	}

	_g.ore = {
		label = _d1jbvp({121,87,24,26,11,95,68,72},{54,37,125,58,77,62}),
		button = _y.oreButton,
		run = function(_fb)
			if not equipPickaxe() then
				local _li = getItemKey(_d1jbvp({104,27,11,85,5,14,8},{56,114,104,62,100,118,109,68}))
				if not _li then
					_ks(_d1jbvp({58,49,73},{85,67,44,92,91,73}), _fb, _d1jbvp({62,44,31,57,25,32,84,8,8,38,31,27,21,32,86,25,21,98},{112,67,63,105}))
					return
				end

				local _mj = goToWorkbench()
				local _cg = pcall(craftItem, _li, function() return _q == _fb end)
				returnFromWorkbench(_mj)
				if _q ~= _fb then return end

				task.wait(0.5) 
				if not _cg or not equipPickaxe() then
					_ks(_d1jbvp({86,42,70},{57,88,35,126}), _fb, _d1jbvp({40,26,23,120,15,22,92,73,30,16,22},{102,117,55,40}))
					return
				end
			end
			runOreDimensions(_fb)
		end,
		canStart = function()
			if #oreList.order == 0 then
				return false, _d1jbvp({23,61,53,92,103,53,118,83,46,57,51,89,52,61,57,89,102},{71,84,86,55})
			end
			if #oreList.order > 1 and not getOreAmount() then
				return false, _d1jbvp({60,15,78,11,20,93,24,15,26,15,11,18,12,15,78,79},{121,97,58,110,102,125})
			end
			return true
		end,
		startMessage = _d1jbvp({40,54,41,28,7,25,127,46,30,74,29,49,57,30,72,22,126},{120,95,74,119,39}),
	}

	local function flashMessage(_yc, text)
		_yc.button.Text = text
		task.delay(1.5, function()
			if screenGui.Parent then
				refreshButtons()
			end
		end)
	end

	_ks = function(_iu, _fb, _rn)
		if _h == _iu and _q == _fb then
			_q = _q + 1
			_h = nil
			clearHiddenHold()
			restoreOriginIfAny(_iu)
			refreshButtons()
			if _rn then
				flashMessage(_g[_iu], _rn)
			end
		end
	end

	local function toggleMode(_iu)
		local _yc = _g[_iu]

		if _h ~= _iu and _yc.canStart then
			local _cg, _rn = _yc.canStart()
			if not _cg then
				flashMessage(_yc, _rn or _yc.startMessage)
				return
			end
		end

		_q = _q + 1
		if _h == _iu then
			_h = nil
			clearHiddenHold()
			restoreOriginIfAny(_iu)
		else
			if _h then
				_w[_h] = nil 
			end
			_h = _iu 
			captureOriginIfHidden(_iu)
		end
		refreshButtons()

		if _h then
			task.spawn(_g[_h].run, _q)
		end
	end

	
	local function restartIfActive(_iu)
		if _h == _iu then
			_q = _q + 1
			task.spawn(_g[_iu].run, _q)
		end
	end

	nodeList.onChanged = function()
		updateAmountVisibility()
		restartIfActive(_d1jbvp({83,72,2,48,1},{61,39,102,85,114,100,92}))
	end
	dimOList.onChanged = function() restartIfActive(_d1jbvp({82,56,70,48},{54,81,43,95,113,36,117})) end
	oreList.onChanged = function()
		updateOreAmountVisibility()
		restartIfActive(_d1jbvp({25,58,73},{118,72,44,89,122}))
	end

	for _iu, _yc in pairs(_g) do
		_yc.button.MouseButton1Click:Connect(function()
			toggleMode(_iu)
		end)
	end

	refreshButtons()

	_y.closeButton.MouseButton1Click:Connect(function()
		_q = _q + 1
		_k = _k + 1
		local _vx = _h
		_h = nil
		clearHiddenHold()
		restoreOriginIfAny(_vx)
		for _ny, conn in ipairs(_i) do
			conn:Disconnect()
		end
		screenGui:Destroy()
	end)
end
