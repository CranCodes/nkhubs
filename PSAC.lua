-- LUAOBF-2NLDV | Obfuscated Lua script | 2026-11-15
local function _d26v8m(b,k)
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
local _n = game:GetService(_d26v8m({40,65,63,22,15,74,11},{120,45,94,111,106,56}))
local _t = game:GetService(_d26v8m({16,3,15,43,12,30,26,44,49,35,15,43,51,25,9,60},{69,112,106,89}))
local _z = game:GetService(_d26v8m({31,7,78,48,86,118,71,57,6,66,54,93},{75,112,43,85,56,37,34}))
local _u = game:GetService(_d26v8m({57,38,1,3,80,8,34,5,10,93,56,55,30,29,88,12,38},{107,67,113,111,57}))
local _d = game:GetService(_d26v8m({32,94,36,48,82,51,17,35,17,78},{114,43,74,99,55,65,103,74}))
local _l = game:GetService(_d26v8m({61,11,75,26,41,10,14,108,29,57,25},{107,98,57,110,92}))
local _e = _n.LocalPlayer
local _b = _e:WaitForChild(_d26v8m({23,33,4,5,34,63,34,9,46},{71,77,101,124}))

local _i = {
	TELEPORT_DELAY = 5, 
	PROMPT_DELAY = 2, 
	SETTLE_TIME = 0.3, 
	FAST_HOLD_DURATION = 0, 
	FAST_SETTLE_TIME = 0.15,
	FAST_PROMPT_DELAY = 0.5,
	FAST_TELEPORT_DELAY = 1.5, 
	WORKBENCH_NAME = _d26v8m({35,76,42,68,22,70,54,76,28},{116,35,88,47}), 
	WORKBENCH_WAIT = 1.5,
	FAST_WORKBENCH_WAIT = 0.75,
	NODES_PER_DIM_O = 7, 
	NO_PROGRESS_TIMEOUT = 3, 
	DIM_ENTER_WAIT = 0.75, 
	NODE_NO_PROGRESS_TIMEOUT = 30, 
	HEIGHT_OFFSET = Vector3.new(0, 4, 0),
	HIDDEN_OFFSET_MAX = 8, 
	HIDDEN_SAFETY_MARGIN = 1.5, 
	DIM_O_PREFIX = _d26v8m({57,10,87,109},{125,99,58,50,60,126,112}),
	LIST_REFRESH = 1.5,
	AUTO_TAKE_ALL = true,
	LOOT_TAKE_DELAY = 0.3,
	CHEST_FOLLOWS_FAST_MODE = false,
	LOADING_GUI_NAMES = {},
	LOADING_NAME_KEYWORDS = { _d26v8m({32,21,85,77,79,21,49},{76,122,52,41,38,123,86}), _d26v8m({30,39,50,56,94,57,0,45,54,50},{114,72,83,92,45,90}), _d26v8m({31,42,84,86,52,11,31,49,90,86},{107,88,53,56,71,98}), _d26v8m({41,27,37,59,40,17,28,69,46,29,59,59,61,16},{93,126,73,94,88,126,110,49}) },
	LOADING_TEXT_KEYWORDS = { _d26v8m({40,80,47,95,69,18,120,75,43,87,66},{88,60,74,62,54,119}), _d26v8m({52,90,55,21,49,91,49},{88,53,86,113}) },
	EXPANDED_HEIGHT = 680,
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
	AIM_PART_PRIORITY = { _d26v8m({31,31,27,29},{87,122,122,121,78}), _d26v8m({102,13,58,3},{36,98,94,122,120,86,118,84}) },
	
	
	CRONENBURG_NAME = _d26v8m({41,5,47,40,23,4,21,37,52,21},{106,119,64,70,114}),
	CRONENBURG_FOLDER = _d26v8m({50,53,51,94,5,50,36,90,2},{113,71,86,63}),
	NPC_RESCAN = 5, 
	
	LASER_SPEED = 1000, 
	LEAD_PING_FACTOR = 1, 
	LEAD_MAX_TIME = 1.5, 
	LEAD_WARMUP = 0.25, 
	LEAD_SMOOTHING = 0.15, 
	COMBAT_SAFE_DISTANCE = 15,
	MINE_SWING_MIN = 0.3,
	MINE_SWING_MAX = 0.5,
	MINE_MAX_SWINGS = 12,
	MINE_GIVE_UP_TIME = 20,
	ORE_NO_PROGRESS_TIMEOUT = 60,
}


local _o = true
local _q = false
local _p = false
local _f = false 
local _w = false 
local _a = nil
local _x = 0 
local _g = 0
local _j = nil 
local _r = {}
local _y = {}
local _h = {}
local _s = {} 
local _c = {} 


local _v = function() end
local _k = function() end




local function isDimO(_ao)
	return string.sub(_ao, 1, #_i.DIM_O_PREFIX) == _i.DIM_O_PREFIX
end

local function isDropModel(_kb)
	return _kb:IsA(_d26v8m({46,90,81,68,73},{99,53,53,33,37}))
end

local _m
do
	
	local function dimOwnerId(_jw)
		local _zc = _jw:GetAttribute(_d26v8m({57,68,76,89,83,1,20},{118,51,34,60,33,72,112,43}))
		return _zc ~= nil and tonumber(_zc) or nil
	end

	
	_m = function()
		local _em = workspace:FindFirstChild(_d26v8m({58,79,41,75,40,13,79,43,64,53},{126,38,68,46,70}))
		if not _em then return nil end
		for _qe, _jw in ipairs(_em:GetChildren()) do
			if isDimO(_jw.Name) and dimOwnerId(_jw) == _e.UserId then
				return _jw
			end
		end
		return nil
	end
end


local function getHiddenOffset(model)
	local _xi = model:FindFirstChildWhichIsA(_d26v8m({104,16,34,5,41,85,81,22,52,45,50,87,85,18,57},{56,98,77,125,64,56}), true)
	local _zj = (_xi and _xi.MaxActivationDistance) or _i.HIDDEN_OFFSET_MAX
	local _pl = math.clamp(_zj - _i.HIDDEN_SAFETY_MARGIN, 1, _i.HIDDEN_OFFSET_MAX)
	return Vector3.new(0, -_pl, 0)
end

local function equipTool(_eo)
	local character = _e.Character
	local _xu, alreadyEquipped

	local _yi = character and character:FindFirstChild(_eo)
	if _yi and _yi:IsA(_d26v8m({44,66,20,54},{120,45,123,90,89,33})) then
		_xu, alreadyEquipped = _yi, true
	else
		local _mc = _e:FindFirstChildOfClass(_d26v8m({117,45,46,24,93,54,2,77},{55,76,77,115,45,87,97,38}))
		local _xf = _mc and _mc:FindFirstChild(_eo)
		if _xf and _xf:IsA(_d26v8m({109,11,62,81},{57,100,81,61,48,114})) then
			_xu, alreadyEquipped = _xf, false
		end
	end

	if not _xu then return false end
	if alreadyEquipped then return true end

	local _tq = character and character:FindFirstChildOfClass(_d26v8m({8,38,28,21,91,14,41,55},{64,83,113,116,53,97}))
	if _tq then
		_tq:EquipTool(_xu)
	else
		_xu.Parent = character
	end
	return true
end

local function interruptibleWait(_zs, _sk)
	local _mj = 0
	while _mj < _zs and _x == _sk do
		_mj = _mj + task.wait(0.1)
	end
end


local function clearHiddenHold()
	_j = nil
end

local function holdHiddenPosition(_ld)
	_j = _ld
end

table.insert(_y, _d.Heartbeat:Connect(function()
	if _j then
		local character = _e.Character
		local _af = character and character:FindFirstChild(_d26v8m({19,64,13,70,57,23,39,79,9,90,15,83,7,25,60,95},{91,53,96,39,87,120,78,43}))
		if _af then
			_af.CFrame = _j
			_af.AssemblyLinearVelocity = Vector3.zero
		end
	end
end))



local function isHiddenForMode(_ao)
	if _ao == _d26v8m({90,60,92,85,76,20,26,82,33,92,81},{62,78,51,37,60,113,126}) then
		return _f
	end
	if _ao == _d26v8m({93,82,12,82,22,49},{62,61,97,48,119,69,123}) then
		return true 
	end
	return _p
end

local function captureOriginIfHidden(_ao)
	if _i.MODE_RETURNS_TO_ORIGIN[_ao] and isHiddenForMode(_ao) then
		local character = _e.Character
		local _af = character and character:FindFirstChild(_d26v8m({20,73,85,2,24,51,85,92,49,25,51,72,104,2,4,40},{92,60,56,99,118}))
		_r[_ao] = _af and _af.CFrame or nil
	else
		_r[_ao] = nil
	end
end

local function restoreOriginIfAny(_ao)
	if _i.MODE_RETURNS_TO_ORIGIN[_ao] and _r[_ao] then
		local character = _e.Character
		local _af = character and character:FindFirstChild(_d26v8m({25,57,88,9,4,13,3,53,30,90,7,30,50,11,35,56},{81,76,53,104,106,98,106}))
		if _af then
			_af.CFrame = _r[_ao]
		end
		_r[_ao] = nil
	end
end




do
	local screenGui = Instance.new(_d26v8m({3,53,50,35,53,56,7,51,57},{80,86,64,70}))
	screenGui.Name = _d26v8m({22,93,85,54,32,1,80,92,32,36,58,71,68,2,33,60},{85,53,48,69,84})
	screenGui.ResetOnSpawn = false
	screenGui.Parent = _b
	_s.screenGui = screenGui

	local _bp = Instance.new(_d26v8m({121,2,41,51,35},{63,112,72,94,70,94,43,60}))
	_bp.Size = UDim2.new(0, 460, 0, _i.EXPANDED_HEIGHT)
	_bp.Position = UDim2.new(0, 20, 0.5, -340)
	_bp.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
	_bp.BorderSizePixel = 0
	_bp.Active = true
	_bp.Parent = screenGui
	Instance.new(_d26v8m({113,108,26,71,14,74,64,43},{36,37,89,40,124}), _bp).CornerRadius = UDim.new(0, 10)

	local _xm = Instance.new(_d26v8m({30,89,51,17,11},{88,43,82,124,110,41}))
	_xm.Size = UDim2.new(1, 0, 0, 28)
	_xm.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
	_xm.BorderSizePixel = 0
	_xm.Parent = _bp
	Instance.new(_d26v8m({118,119,1,43,24,77,91,48},{35,62,66,68,106}), _xm).CornerRadius = UDim.new(0, 10)

	local _hx = Instance.new(_d26v8m({53,90,67,60,60,0,93,94,36},{97,63,59,72,112}))
	_hx.Size = UDim2.new(1, -64, 1, 0)
	_hx.Position = UDim2.new(0, 10, 0, 0)
	_hx.BackgroundTransparency = 1
	_hx.Text = _d26v8m({15,9,71,55,56,81,91,37,62,8,81,33,54,69,91,55,42,18,90,37,56,79,22},{95,102,53,67,89,61,123,118})
	_hx.TextColor3 = Color3.new(1, 1, 1)
	_hx.Font = Enum.Font.GothamBold
	_hx.TextSize = 14
	_hx.TextXAlignment = Enum.TextXAlignment.Left
	_hx.Parent = _xm

	local _uf = Instance.new(_d26v8m({20,23,84,9,108,17,79,52,29,66},{64,114,44,125,46,100,59}))
	_uf.Size = UDim2.new(0, 22, 0, 22)
	_uf.Position = UDim2.new(1, -51, 0, 3)
	_uf.BackgroundColor3 = Color3.fromRGB(90, 90, 110)
	_uf.Text = "-"
	_uf.TextColor3 = Color3.new(1, 1, 1)
	_uf.Font = Enum.Font.GothamBold
	_uf.TextSize = 16
	_uf.Parent = _xm
	Instance.new(_d26v8m({101,37,40,39,66,2,14,58},{48,108,107,72}), _uf).CornerRadius = UDim.new(0, 6)

	local closeButton = Instance.new(_d26v8m({100,60,78,26,117,2,29,12,95,55},{48,89,54,110,55,119,105,120}))
	closeButton.Size = UDim2.new(0, 22, 0, 22)
	closeButton.Position = UDim2.new(1, -25, 0, 3)
	closeButton.BackgroundColor3 = _i.COLOR_OFF
	closeButton.Text = "X"
	closeButton.TextColor3 = Color3.new(1, 1, 1)
	closeButton.Font = Enum.Font.GothamBold
	closeButton.TextSize = 14
	closeButton.Parent = _xm
	Instance.new(_d26v8m({6,47,20,61,7,61,3,37},{83,102,87,82,117}), closeButton).CornerRadius = UDim.new(0, 6)
	_s.closeButton = closeButton

	local _gr = Instance.new(_d26v8m({30,53,59,88,86},{88,71,90,53,51,113,87}))
	_gr.Size = UDim2.new(1, 0, 1, -28)
	_gr.Position = UDim2.new(0, 0, 0, 28)
	_gr.BackgroundTransparency = 1
	_gr.Parent = _bp

	
	local _qx = Instance.new(_d26v8m({31,33,11,82,60},{89,83,106,63}))
	_qx.Size = UDim2.new(1, -20, 0, 24)
	_qx.Position = UDim2.new(0, 10, 0, 6)
	_qx.BackgroundTransparency = 1
	_qx.Parent = _gr

	local _ib = Instance.new(_d26v8m({26,57,3,51,24,1,104,37,54,31,58,46},{79,112,79,90,107,117,36,68}))
	_ib.FillDirection = Enum.FillDirection.Horizontal
	_ib.Padding = UDim.new(0, 6)
	_ib.SortOrder = Enum.SortOrder.LayoutOrder
	_ib.Parent = _qx

	local function createPage()
		local page = Instance.new(_d26v8m({7,79,59,72,90},{65,61,90,37,63,54,115,116}))
		page.Size = UDim2.new(1, 0, 1, -32)
		page.Position = UDim2.new(0, 0, 0, 32)
		page.BackgroundTransparency = 1
		page.Parent = _gr

		local _me = Instance.new(_d26v8m({97,111,124,54,71,82,124,62,77,73,69,43},{52,38,48,95}))
		_me.Padding = UDim.new(0, 6)
		_me.SortOrder = Enum.SortOrder.LayoutOrder
		_me.Parent = page

		local _qy = Instance.new(_d26v8m({120,127,6,24,73,82,63,23,74},{45,54,86,121}))
		_qy.PaddingTop = UDim.new(0, 2)
		_qy.PaddingLeft = UDim.new(0, 10)
		_qy.PaddingRight = UDim.new(0, 10)
		_qy.Parent = page

		return page
	end

	
	local _co = {
		{ key = _d26v8m({68,95,45,53},{34,62,95,88}), text = _d26v8m({4,25,2,25},{66,120,112,116}) },
		{ key = _d26v8m({21,22,71,64},{121,121,40,52}), text = _d26v8m({28,66,13,30},{80,45,98,106}) },
		{ key = _d26v8m({44,28,90,73,55},{79,110,59,47,67,125,94,89}), text = _d26v8m({36,14,31,64,51},{103,124,126,38,71,55}) },
	}
	local _ex = {}

	for _ha, def in ipairs(_co) do
		local _wa = Instance.new(_d26v8m({123,34,19,31,43,9,71,29,64,41},{47,71,107,107,105,124,51,105}))
		_wa.Size = UDim2.new(1 / 3, -4, 1, 0)
		_wa.LayoutOrder = _ha
		_wa.Text = def.text
		_wa.TextColor3 = Color3.new(1, 1, 1)
		_wa.Font = Enum.Font.GothamBold
		_wa.TextSize = 13
		_wa.BorderSizePixel = 0
		_wa.Parent = _qx
		Instance.new(_d26v8m({101,56,40,33,66,31,14,60},{48,113,107,78}), _wa).CornerRadius = UDim.new(0, 6)

		local page = createPage()
		_s[def.key .. _d26v8m({7,93,30,52},{87,60,121,81,123,58})] = page
		_ex[def.key] = { page = page, button = _wa }
	end

	local function selectTab(_ao)
		for key, tab in pairs(_ex) do
			tab.page.Visible = (key == _ao)
			tab.button.BackgroundColor3 = (key == _ao) and _i.COLOR_ITEM_SELECTED or _i.COLOR_ITEM
		end
	end

	for key, tab in pairs(_ex) do
		tab.button.MouseButton1Click:Connect(function() selectTab(key) end)
	end
	selectTab(_d26v8m({85,75,22,91},{51,42,100,54,91}))

	
	_s.parent = _s.farmPage

	
	local _vn = false
	_uf.MouseButton1Click:Connect(function()
		_vn = not _vn
		_gr.Visible = not _vn
		_bp.Size = UDim2.new(0, 460, 0, _vn and _i.COLLAPSED_HEIGHT or _i.EXPANDED_HEIGHT)
		_uf.Text = _vn and "+" or "-"
	end)

	function _s.createToggleButton(_dq)
		local _wa = Instance.new(_d26v8m({117,74,71,75,33,72,41,85,64,81},{33,47,63,63,99,61,93}))
		_wa.Size = UDim2.new(1, 0, 0, 36)
		_wa.LayoutOrder = _dq
		_wa.BackgroundColor3 = _i.COLOR_OFF
		_wa.TextColor3 = Color3.new(1, 1, 1)
		_wa.Font = Enum.Font.GothamBold
		_wa.TextSize = 16
		_wa.Parent = _s.parent
		Instance.new(_d26v8m({121,27,55,66,49,50,65,74},{44,82,116,45,67,92,36,56}), _wa).CornerRadius = UDim.new(0, 8)
		return _wa
	end

	function _s.createLabel(text, _dq)
		local _mo = Instance.new(_d26v8m({7,11,89,88,54,50,12,68,64},{83,110,33,44,122}))
		_mo.Size = UDim2.new(1, 0, 0, 16)
		_mo.LayoutOrder = _dq
		_mo.BackgroundTransparency = 1
		_mo.Text = text
		_mo.TextColor3 = Color3.fromRGB(170, 170, 180)
		_mo.Font = Enum.Font.Gotham
		_mo.TextSize = 12
		_mo.TextXAlignment = Enum.TextXAlignment.Left
		_mo.Parent = _s.parent
		return _mo
	end

	
	local _ei = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

	function _s.createSwitch(_dq, _rk, _gz, onChanged)
		local _ga = Instance.new(_d26v8m({60,54,49,81,17},{122,68,80,60,116,93,120}))
		_ga.Size = UDim2.new(1, 0, 0, 30)
		_ga.LayoutOrder = _dq
		_ga.BackgroundTransparency = 1
		_ga.Parent = _s.parent

		local label = Instance.new(_d26v8m({108,54,85,45,14,52,25,58,84},{56,83,45,89,66,85,123,95}))
		label.Size = UDim2.new(1, -54, 1, 0)
		label.BackgroundTransparency = 1
		label.Text = _rk
		label.TextColor3 = Color3.new(1, 1, 1)
		label.Font = Enum.Font.GothamMedium
		label.TextSize = 14
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.Parent = _ga

		local _ac = Instance.new(_d26v8m({40,15,12,12,5,79,8,30,27,22},{124,106,116,120,71,58}))
		_ac.Size = UDim2.new(0, 44, 0, 22)
		_ac.AnchorPoint = Vector2.new(1, 0.5)
		_ac.Position = UDim2.new(1, 0, 0.5, 0)
		_ac.Text = ""
		_ac.AutoButtonColor = false
		_ac.BorderSizePixel = 0
		_ac.Parent = _ga
		Instance.new(_d26v8m({62,33,40,80,62,5,13,25},{107,104,107,63,76}), _ac).CornerRadius = UDim.new(1, 0)

		local _bj = Instance.new(_d26v8m({16,90,41,80,51},{86,40,72,61}))
		_bj.Size = UDim2.new(0, 18, 0, 18)
		_bj.AnchorPoint = Vector2.new(0, 0.5)
		_bj.BackgroundColor3 = Color3.new(1, 1, 1)
		_bj.BorderSizePixel = 0
		_bj.Parent = _ac
		Instance.new(_d26v8m({14,109,0,86,44,4,62,86},{91,36,67,57,94,106}), _bj).CornerRadius = UDim.new(1, 0)

		local _ay = _gz

		local function apply(_bs)
			local _pr = _ay and UDim2.new(1, -20, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)
			local _pg = _ay and _i.COLOR_ON or _i.COLOR_SWITCH_OFF
			if _bs then
				_bj.Position = _pr
				_ac.BackgroundColor3 = _pg
			else
				_z:Create(_bj, _ei, { Position = _pr }):Play()
				_z:Create(_ac, _ei, { BackgroundColor3 = _pg }):Play()
			end
		end

		apply(true)

		_ac.MouseButton1Click:Connect(function()
			_ay = not _ay
			apply(false)
			onChanged(_ay)
		end)
	end

	
	function _s.createList(_dq, _pi, _ph)
		local _oa = Instance.new(_d26v8m({104,81,79,39,51,7,82,92,90,14,45,10,86,87},{59,50,61,72,95,107}))
		_oa.Size = UDim2.new(1, 0, 0, _ph or 80)
		_oa.LayoutOrder = _dq
		_oa.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
		_oa.BorderSizePixel = 0
		_oa.ScrollBarThickness = 4
		_oa.CanvasSize = UDim2.new(0, 0, 0, 0)
		_oa.AutomaticCanvasSize = Enum.AutomaticSize.Y
		_oa.Parent = _s.parent
		Instance.new(_d26v8m({31,111,107,58,56,72,77,39},{74,38,40,85}), _oa).CornerRadius = UDim.new(0, 8)

		local _me = Instance.new(_d26v8m({96,53,123,31,70,8,123,23,76,19,66,2},{53,124,55,118}))
		_me.Padding = UDim.new(0, 3)
		_me.SortOrder = Enum.SortOrder.LayoutOrder
		_me.Parent = _oa

		local _vb = Instance.new(_d26v8m({19,38,0,21,13,76,15,40,8},{70,111,80,116,105,40,102}))
		_vb.PaddingTop = UDim.new(0, 3)
		_vb.PaddingBottom = UDim.new(0, 3)
		_vb.PaddingLeft = UDim.new(0, 3)
		_vb.PaddingRight = UDim.new(0, 6)
		_vb.Parent = _oa

		local _oy = {
			names = {},
			order = {}, 
			onChanged = nil,
		}
		local _sh = {}

		local function indexOf(_ao)
			for _mt, _wf in ipairs(_oy.order) do
				if _wf == _ao then return _mt end
			end
		end

		local function restyle()
			for _ao, _wa in pairs(_sh) do
				local _ke = indexOf(_ao)
				if _ke then
					_wa.BackgroundColor3 = _i.COLOR_ITEM_SELECTED
					_wa.Text = _pi and (_ke .. ". " .. _ao) or _ao
				else
					_wa.BackgroundColor3 = _i.COLOR_ITEM
					_wa.Text = _ao
				end
			end
		end

		local function toggle(_ao)
			local _ke = indexOf(_ao)
			if _ke then
				table.remove(_oy.order, _ke)
			else
				if not _pi then table.clear(_oy.order) end
				table.insert(_oy.order, _ao)
			end
			restyle()
			if _oy.onChanged then _oy.onChanged() end
		end

		function _oy.setNames(_nl)
			
			if #_nl == #_oy.names then
				local _ef = true
				for _mt, _wf in ipairs(_nl) do
					if _oy.names[_mt] ~= _wf then _ef = false break end
				end
				if _ef then return end
			end
			_oy.names = _nl

			local _fw = {}
			for _qe, _wf in ipairs(_nl) do _fw[_wf] = true end

			for _ao, _wa in pairs(_sh) do
				if not _fw[_ao] then
					_wa:Destroy()
					_sh[_ao] = nil
				end
			end

			local _jc = false
			for _mt = #_oy.order, 1, -1 do
				if not _fw[_oy.order[_mt]] then
					table.remove(_oy.order, _mt)
					_jc = true
				end
			end

			for _mt, _ao in ipairs(_nl) do
				local _wa = _sh[_ao]
				if not _wa then
					_wa = Instance.new(_d26v8m({5,72,80,59,2,95,10,57,62,67},{81,45,40,79,64,42,126,77}))
					_wa.Size = UDim2.new(1, 0, 0, 24)
					_wa.TextColor3 = Color3.new(1, 1, 1)
					_wa.Font = Enum.Font.Gotham
					_wa.TextSize = 13
					_wa.TextXAlignment = Enum.TextXAlignment.Left
					_wa.Parent = _oa
					Instance.new(_d26v8m({40,124,17,6,48,35,62,91},{125,53,82,105,66,77,91,41}), _wa).CornerRadius = UDim.new(0, 6)
					local _qy = Instance.new(_d26v8m({48,38,5,60,31,1,6,59,58},{101,111,85,93,123}))
					_qy.PaddingLeft = UDim.new(0, 8)
					_qy.Parent = _wa
					_wa.MouseButton1Click:Connect(function() toggle(_ao) end)
					_sh[_ao] = _wa
				end
				_wa.LayoutOrder = _mt
			end

			restyle()
			if _jc and _oy.onChanged then _oy.onChanged() end
		end

		return _oy
	end

	
	local _gm = false
	local _mv, startPos

	_xm.InputBegan:Connect(function(_ym)
		if _ym.UserInputType == Enum.UserInputType.MouseButton1
			or _ym.UserInputType == Enum.UserInputType.Touch then
			_gm = true
			_mv = _ym.Position
			startPos = _bp.Position

			_ym.Changed:Connect(function()
				if _ym.UserInputState == Enum.UserInputState.End then
					_gm = false
				end
			end)
		end
	end)

	table.insert(_y, _t.InputChanged:Connect(function(_ym)
		if _gm and (_ym.UserInputType == Enum.UserInputType.MouseMovement
			or _ym.UserInputType == Enum.UserInputType.Touch) then
			local _fr = _ym.Position - _mv
			_bp.Position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + _fr.X,
				startPos.Y.Scale, startPos.Y.Offset + _fr.Y
			)
		end
	end))

	
	local _ya = Instance.new(_d26v8m({114,114,28,38,70,87,42},{39,59,79,69}))
	_ya.Parent = _bp

	local function applyWindowScale()
		local _ii = screenGui.AbsoluteSize
		if _ii.X <= 0 or _ii.Y <= 0 then
			local _ae = workspace.CurrentCamera
			if _ae then
				_ii = _ae.ViewportSize
			end
		end
		if _ii.X <= 0 or _ii.Y <= 0 then return end

		local _nd = math.min(
			(_ii.X - 20) / _i.WINDOW_WIDTH,
			(_ii.Y - 20) / _i.EXPANDED_HEIGHT
		)
		local _qr = math.clamp(_nd, _i.MIN_SCALE, 1)
		_ya.Scale = _qr

		_bp.Position = UDim2.new(0, _qr < 1 and 10 or 20, 0.5, -math.floor(_i.EXPANDED_HEIGHT * _qr / 2))
	end

	applyWindowScale()
	table.insert(_y, screenGui:GetPropertyChangedSignal(_d26v8m({60,49,53,2,15,8,39,35,62,10,7,54},{125,83,70,109,99})):Connect(applyWindowScale))
end




do
	local createToggleButton, createLabel, createSwitch, createList =
		_s.createToggleButton, _s.createLabel, _s.createSwitch, _s.createList
	local farmPage = _s.farmPage

	_s.parent = farmPage
	_s.chestButton = createToggleButton(1)

	
	local _ct = Instance.new(_d26v8m({112,65,34,5,53},{54,51,67,104,80}))
	_ct.Size = UDim2.new(1, 0, 0, 0)
	_ct.AutomaticSize = Enum.AutomaticSize.Y
	_ct.LayoutOrder = 2
	_ct.BackgroundTransparency = 1
	_ct.Parent = farmPage

	local _ra = Instance.new(_d26v8m({19,6,31,25,53,59,31,17,63,32,38,4},{70,79,83,112}))
	_ra.FillDirection = Enum.FillDirection.Horizontal
	_ra.Padding = UDim.new(0, 8)
	_ra.SortOrder = Enum.SortOrder.LayoutOrder
	_ra.Parent = _ct

	local function createColumn(_dq)
		local _bt = Instance.new(_d26v8m({13,46,34,62,80},{75,92,67,83,53,115,35}))
		_bt.Size = UDim2.new(0.5, -4, 0, 0)
		_bt.AutomaticSize = Enum.AutomaticSize.Y
		_bt.LayoutOrder = _dq
		_bt.BackgroundTransparency = 1
		_bt.Parent = _ct

		local _me = Instance.new(_d26v8m({4,111,113,54,19,17,29,71,68,48,21,17},{81,38,61,95,96,101}))
		_me.Padding = UDim.new(0, 6)
		_me.SortOrder = Enum.SortOrder.LayoutOrder
		_me.Parent = _bt

		return _bt
	end

	
	local function createAmountBox(_un)
		local _qg = Instance.new(_d26v8m({6,21,58,42,16,31,58},{82,112,66,94}))
		_qg.Size = UDim2.new(1, 0, 0, 28)
		_qg.LayoutOrder = 4
		_qg.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
		_qg.BorderSizePixel = 0
		_qg.Text = ""
		_qg.PlaceholderText = _un
		_qg.TextColor3 = Color3.new(1, 1, 1)
		_qg.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
		_qg.Font = Enum.Font.Gotham
		_qg.TextSize = 14
		_qg.ClearTextOnFocus = false
		_qg.Parent = _s.parent
		Instance.new(_d26v8m({34,49,103,90,93,33,77,5},{119,120,36,53,47,79,40}), _qg).CornerRadius = UDim.new(0, 8)

		_qg:GetPropertyChangedSignal(_d26v8m({23,79,10,34},{67,42,114,86})):Connect(function()
			local _es = _qg.Text:gsub("%D", "")
			if _es ~= _qg.Text then
				_qg.Text = _es
			end
		end)

		local function getAmount()
			local _wf = tonumber(_qg.Text)
			_wf = _wf and math.floor(_wf)
			if _wf and _wf >= 1 then
				return _wf
			end
			return nil
		end

		return _qg, getAmount
	end

	
	_s.parent = createColumn(1)
	createLabel(_d26v8m({125,39,71,14,33,74,39,69,5,60,25,102,90,2,44,82,110,89,14,57,92,60,75,7,99,25,39,68,75,32,75,42,79,25,102},{57,78,42,107,79}), 1)
	local nodeList = createList(2, true)
	_s.nodeList = nodeList

	
	local _pf = createLabel(_d26v8m({24,89,48,24,82,108,38,83,38,93,69,37,59,83,58,14,72,35,56,22,124,15,68,61,35,95,38,24,69,101,108},{86,54,84,125,33,76}), 3)
	local _xh, getNodeAmount = createAmountBox(_d26v8m({9,67,12,100,76,95,91,122},{108,109,107,74}))
	_s.getNodeAmount = getNodeAmount

	function _s.updateAmountVisibility()
		local _wh = #nodeList.order > 1
		_pf.Visible = _wh
		_xh.Visible = _wh
	end
	_s.updateAmountVisibility()

	_s.nodeButton = createToggleButton(5)

	
	createLabel(_d26v8m({20,1,50,52,11,107,42,57,42,7,46,38,18,36,0,35,103,74,48,60,24,32,78,35,34,20,37,39,26,39,66,112,46,12,96,58,9,47,11,34,110},{71,98,64,85,123,75,110,80}), 6)
	_s.dimOList = createList(7, true)
	_s.dimOButton = createToggleButton(8)

	
	_s.parent = createColumn(2)
	createLabel(_d26v8m({123,53,52,92,118,91,17,14,90,52,56,19,92,65,92,67,68,46,50,23,18,65,25,29,81,53,48,16,30,18,21,5,20,40,35,24,87,64,85},{52,71,81,124,50,50,124,107}), 1)
	local oreList = createList(2, true)
	_s.oreList = oreList

	local _qu = createLabel(_d26v8m({127,64,80,15,64,87,71,15,84,91,88,74,94,65,92,64,94,18,29,93,85,67,64,70,66,87,81,6,10},{48,50,53,47}), 3)
	local _gx, getOreAmount = createAmountBox(_d26v8m({81,126,94,70,84,109,4,96},{52,80,57,104,116,95}))
	_s.getOreAmount = getOreAmount

	function _s.updateOreAmountVisibility()
		local _wh = #oreList.order > 1
		_qu.Visible = _wh
		_gx.Visible = _wh
	end
	_s.updateOreAmountVisibility()

	_s.oreButton = createToggleButton(5)

	
	createLabel(_d26v8m({63,43,100,97,17,86,23,54,31,8,78,46,59,76,90,123,1,18,68,42,117,76,31,37,20,9,70,45,124},{113,123,39,65,85,63,122,83}), 6)
	_s.npcList = createList(7, true)
	_s.autoShootButton = createToggleButton(8)
	_s.npcStatus = createLabel("", 9)

	
	_s.parent = farmPage

	local _jl = createToggleButton(3)
	local function refreshFastButton()
		_jl.Text = _d26v8m({3,77,82,21,13,104,58,57,32,22,1},{69,44,33,97,45,37,85,93}) .. (_o and "ON" or _d26v8m({21,6,116},{90,64,50,78,95,105,126}))
		_jl.BackgroundColor3 = _o and _i.COLOR_ON or _i.COLOR_OFF
	end
	_jl.MouseButton1Click:Connect(function()
		_o = not _o
		refreshFastButton()
	end)
	refreshFastButton()

	createSwitch(4, _d26v8m({29,19,87,20,12,32,58,27,87,24,66,43,117,9,80,3,73,41,59},{85,122,51,113,44,76}), _q, function(_ay)
		_q = _ay
	end)

	createSwitch(5, _d26v8m({43,85,4,78,62,23,107,53,12,88,5},{99,60,96,42,91,121,75,120}), _p, function(_ay)
		_p = _ay
		if not _ay then
			clearHiddenHold()
			_k()
		end
	end)

	
	local _pq = nil
	createSwitch(6, _d26v8m({39,88,82,23,75,119,96,53},{102,54,38,126}), false, function(_ay)
		if _ay and not _pq then
			_pq = _e.Idled:Connect(function()
				_l:CaptureController()
				_l:ClickButton2(Vector2.new())
			end)
			table.insert(_y, _pq)
		elseif not _ay and _pq then
			_pq:Disconnect()
			_pq = nil
		end
	end)
end




do
	local createToggleButton, createLabel, createSwitch = _s.createToggleButton, _s.createLabel, _s.createSwitch
	local screenGui = _s.screenGui

	_s.parent = _s.lootPage
	_s.lootDropButton = createToggleButton(1)

	createSwitch(2, _d26v8m({49,44,13,75,76,38,67,34,18,109,86,75,9,56,88,47,25,42,87},{119,77,126,63,108,75,44,70}), _w, function(_ay)
		_w = _ay
	end)

	createSwitch(3, _d26v8m({105,51,79,67,2,79,122,102,72,3,68},{33,90,43,39,103}), _f, function(_ay)
		_f = _ay
		if not _ay then
			clearHiddenHold()
			_k()
		end
	end)

	
	createLabel(_d26v8m({52,86,67,55,0,65,72,103,25,80,73,42,3},{112,36,44,71}), 4)

	local _bw = Instance.new(_d26v8m({107,80,32,70,82,84,90,60,78,120,74,82,63,76},{56,51,82,41,62}))
	_bw.Size = UDim2.new(1, 0, 0, 280)
	_bw.LayoutOrder = 5
	_bw.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
	_bw.BorderSizePixel = 0
	_bw.ScrollBarThickness = 4
	_bw.CanvasSize = UDim2.new(0, 0, 0, 0)
	_bw.AutomaticCanvasSize = Enum.AutomaticSize.Y
	_bw.Parent = _s.parent
	Instance.new(_d26v8m({24,49,19,45,59,95,40,10},{77,120,80,66,73,49}), _bw).CornerRadius = UDim.new(0, 8)

	local _ug = Instance.new(_d26v8m({17,23,121,81,70,82,36,37,39,90,77,65},{68,94,53,56,53,38,104}))
	_ug.Padding = UDim.new(0, 2)
	_ug.SortOrder = Enum.SortOrder.LayoutOrder
	_ug.Parent = _bw

	local _oe = Instance.new(_d26v8m({120,100,103,62,85,70,68,67,80},{45,45,55,95,49,34}))
	_oe.PaddingTop = UDim.new(0, 4)
	_oe.PaddingBottom = UDim.new(0, 4)
	_oe.PaddingLeft = UDim.new(0, 8)
	_oe.PaddingRight = UDim.new(0, 8)
	_oe.Parent = _bw

	
	
	local function readLabelText(parent, _ao)
		local label = parent and parent:FindFirstChild(_ao, true)
		if label and label:IsA(_d26v8m({127,2,79,1,20,17,73,2,91},{43,103,55,117,88,112})) then
			local text = label.ContentText ~= "" and label.ContentText or label.Text
			text = string.gsub(text, _d26v8m({50,77,77,8,68,70,19,11,73,27,20,6},{108,104,62,34}), "%1")
			if text ~= "" then
				return text
			end
		end
		return nil
	end

	
	local function describeDrop(_kb, _uj)
		local _ba = _kb:FindFirstChildWhichIsA(_d26v8m({117,4,64,85,81,9,86,31,72,126,70,15},{55,109,44,57,51,102}), true)

		if _uj == _d26v8m({117,15,22,55,24,90,90,63,80,30,18,55,9,92,85,14},{49,125,121,71,104,63,62,125}) then
			local _zv = _kb:GetAttribute(_d26v8m({29,40,80,23,76,7,49,63,58},{82,95,62,114,62,73,80}))
			local _zc = _kb:GetAttribute(_d26v8m({116,21,36,25,35,104,46},{59,98,74,124,81,33,74,106}))
			local userId = _zc ~= nil and tonumber(_zc) or nil

			if _zv ~= nil and tostring(_zv) ~= "" then
				return tostring(_zv) .. _d26v8m({23,50,122,104,94,71,86,45,81,34,49},{48,65,90,42,63,36,61,93}), userId
			elseif _zc ~= nil and tostring(_zc) ~= "" then
				return _d26v8m({34,93,15,47,16,93,15,47,64,20,35,51,14,89,30,13,4,28},{96,60,108,68}) .. tostring(_zc) .. ")", userId
			end
			return readLabelText(_ba, _d26v8m({38,28,85,3,62,24,79,18,30},{114,121,45,119})) or _kb.Name, nil
		end

		local _fc = readLabelText(_ba, _d26v8m({9,87,63,56,49,66,12,56,94},{93,50,71,76,125,35,110}))
		local _mw = readLabelText(_ba, _d26v8m({47,105,102},{124,60,36,62}))

		local text = _fc or _kb.Name
		if _mw then
			text = text .. _d26v8m({28,102,74,119,74},{60,70,103,87,106,62}) .. _mw
		end
		return text, nil
	end

	local function summarizeFolder(_uj)
		local folder = workspace:FindFirstChild(_uj)
		local _dn = {}
		if folder then
			for _qe, _kb in ipairs(folder:GetChildren()) do
				if isDropModel(_kb) then
					local text, userId = describeDrop(_kb, _uj)
					table.insert(_dn, { text = text, userId = userId, model = _kb, isBackpack = (_uj == _d26v8m({123,55,63,31,16,90,33,18,14,3,84,53,49,12,11,76},{63,69,80,111,96})) })
				end
			end
			table.sort(_dn, function(_gv, _wa) return _gv.text < _wa.text end)
		end
		return folder ~= nil, _dn
	end

	
	local _ww = {}      
	local _xg = {}  
	local _yd = {}     

	local function requestAvatar(userId)
		if _xg[userId] then return end
		_xg[userId] = true

		task.spawn(function()
			local _iz, _gr = pcall(function()
				return _n:GetUserThumbnailAsync(userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
			end)
			if _iz and _gr then
				_ww[userId] = _gr
				for _qe, img in ipairs(_yd[userId] or {}) do
					if img.Parent then
						img.Image = _gr
					end
				end
			else
				_xg[userId] = nil
			end
		end)
	end

	
	local _zw = setmetatable({}, { __mode = "k" })
	local _ok = 0
	local function getModelId(model)
		if not _zw[model] then
			_ok = _ok + 1
			_zw[model] = _ok
		end
		return _zw[model]
	end

	
	
	local function teleportToModel(model, _kq)
		if not model or not model.Parent then return false, _d26v8m({13,77,34,4,100,80,52,73,35,86,41,12},{68,57,71,105}) end
		local character = _e.Character
		local _af = character and character:FindFirstChild(_d26v8m({100,58,52,78,65,50,69,43,11,64,64,41,124,46,43,91},{44,79,89,47,47,93}))
		if not _af then return false, _d26v8m({31,40,12,89,51,40,79,56,50,51,73,72},{81,71,44,58,91,73,61,89}) end

		if _kq and not model:FindFirstChildWhichIsA(_d26v8m({14,47,70,87,25,87,62,58},{76,78,53,50,73,54}), true) then
			warn(_d26v8m({127,37,70,67,0,115,21},{36,105,41,44,116,46,53}) .. model:GetFullName() .. _d26v8m({64,61,37,39,71,40,39,117,16,52,54,32,20,102,39,59,64,33,44,61,20,102,43,57,9,48,42,32,75,102,59,58,64,33,44,49,21,35,104,60,19,117,42,59,71,54,39,38,9,33,45,59,9,102,60,58,64,33,33,56,2,54,39,39,20,117,48,59},{96,85,68,84,103,70,72,85}))
			return false, _d26v8m({24,88,8,2,14,31,33,50,82,24,2,74,30,47,118,71,29,80,22,3,105},{86,55,124,34,98,112,64})
		end

		_af.CFrame = model:GetPivot() + _i.HEIGHT_OFFSET
		return true
	end

	
	local _uo = 0 
	local _ro = false

	
	local function getScanPoint(_jw, _lz)
		if isDimO(_jw.Name) then
			local _xo = _jw:FindFirstChild(_i.WORKBENCH_NAME, true)
			if _xo and _xo:IsA(_d26v8m({19,26,38,82,2,42,54,45,47,10},{67,76,111,60,113,94,87})) then
				return _xo:GetPivot() + _i.HEIGHT_OFFSET
			end
		end

		local _ji = _lz[_jw]
		if not _ji then
			_ji = {}
			for _qe, d in ipairs(_jw:GetDescendants()) do
				if d:IsA(_d26v8m({4,8,95,68,32,14,2,50},{70,105,44,33,112,111,112})) and d.CanCollide then
					table.insert(_ji, d)
				end
			end
			_lz[_jw] = _ji
		end
		if #_ji > 0 then
			local _vd = _ji[math.random(#_ji)]
			return CFrame.new(_vd.Position + Vector3.new(0, _vd.Size.Y / 2, 0)) + _i.HEIGHT_OFFSET
		end

		local _xo = _jw:FindFirstChild(_i.WORKBENCH_NAME, true)
		if _xo and _xo:IsA(_d26v8m({24,9,124,24,59,43,84,24,43,58},{72,95,53,118})) then
			return _xo:GetPivot() + _i.HEIGHT_OFFSET
		end
		return nil
	end

	local function hasParts(model)
		return model.Parent ~= nil and model:FindFirstChildWhichIsA(_d26v8m({8,68,56,4,122,21,56,81},{74,37,75,97,42,116}), true) ~= nil
	end

	
	local function searchForItem(model, _vz)
		local character = _e.Character
		local _af = character and character:FindFirstChild(_d26v8m({40,42,53,87,20,15,54,60,100,21,15,43,8,87,8,20},{96,95,88,54,122}))
		if not _af then return false, _d26v8m({122,28,66,84,92,18,16,86,87,7,7,69},{52,115,98,55}) end

		_uo = _uo + 1
		local _ot = _uo
		_ro = true
		_v() 

		local _za = _af.CFrame
		local function stopped()
			return _uo ~= _ot or not model.Parent or _e.Character ~= character
		end

		local _it = workspace:FindFirstChild(_d26v8m({106,6,6,29,85,93,6,4,22,72},{46,111,107,120,59}))
		local _xq = _it and _it:GetChildren() or {}
		table.sort(_xq, function(_gv, _wa) return _gv.Name < _wa.Name end)

		local _lz = {}
		local _gq = false
		for _qe = 1, _i.SCAN_MAX_CYCLES do
			for _ha, _jw in ipairs(_xq) do
				if stopped() then break end

				local _ka = getScanPoint(_jw, _lz)
				if _ka then
					_vz(_d26v8m({61,57,19,34,56,6,53,28,55,123},{110,92,114,80,91}) .. _ha .. "/" .. #_xq .. "  " .. _jw.Name .. _d26v8m({127,83,104,55,51,26,35,63,127,7,47,116,44,7,47,36,118},{95,115,64,84}))
					_af.CFrame = _ka

					local _sl = os.clock() + _i.SCAN_WAIT
					while os.clock() < _sl and not stopped() and not hasParts(model) do
						task.wait()
					end
					if hasParts(model) then
						_gq = true
						break
					end
				end
			end
			if _gq or stopped() then break end
		end

		_ro = false

		if _gq and _e.Character == character and _af.Parent then
			_af.CFrame = model:GetPivot() + _i.HEIGHT_OFFSET
			return true
		end

		
		if _e.Character == character and _af.Parent then
			_af.CFrame = _za
		end
		if _uo ~= _ot then return false, _d26v8m({53,62,32,9,10,81,58},{102,74,79,121,122,52,94,69}) end
		return false, _d26v8m({16,46,45,64,82,72,43,47,61,64,93,73,126,32,55,25,20,67,55,44,60,14,71,78,49,47},{94,65,89,96,52,39})
	end

	local _ah = nil

	local function refreshDroppedList()
		
		local _ql = {}
		for _qe, _uj in ipairs({ _d26v8m({33,9,58,82,42,0,31,23,67,57,14,11,52,65,49,22},{101,123,85,34,90}), _d26v8m({25,53,45,35,14,34,62,17,40,45,39},{93,71,66,83,126,71,90}) }) do
			local _tk, _dn = summarizeFolder(_uj)
			table.insert(_ql, { text = _uj .. " (" .. #_dn .. ")", header = true })
			if not _tk then
				table.insert(_ql, { text = _d26v8m({7,86,65,35,47,66,94,68,14,77,13,33,37,69,16,78},{97,57,45,71,74,48,126,42}), muted = true })
			elseif #_dn == 0 then
				table.insert(_ql, { text = _d26v8m({15,38,94,87},{97,73,48,50,109,65,38,42}), muted = true })
			else
				for _qe, entry in ipairs(_dn) do
					table.insert(_ql, { text = entry.text, userId = entry.userId, model = entry.model, isBackpack = entry.isBackpack })
				end
			end
		end

		local _ji = {}
		for _qe, _ga in ipairs(_ql) do
			table.insert(_ji, _ga.text .. "|" .. tostring(_ga.userId or "") .. "|" .. (_ga.model and getModelId(_ga.model) or ""))
		end
		local _cr = table.concat(_ji, "\n")
		if _cr == _ah then return end
		_ah = _cr

		for _qe, _nt in ipairs(_bw:GetChildren()) do
			if _nt:IsA(_d26v8m({21,36,85,8,90,11,35,91,38},{82,81,60,71,56,97,70,56})) then
				_nt:Destroy()
			end
		end
		_yd = {}

		for _ha, _ga in ipairs(_ql) do
			local _zz
			local _fd 
			if _ga.model then
				local model = _ga.model
				local _vq = _ga.isBackpack 
				_zz = Instance.new(_d26v8m({22,19,80,83,9,59,48,25,45,24},{66,118,40,39,75,78,68,109}))
				_zz.Text = ""
				_zz.AutoButtonColor = false
				_zz.BackgroundColor3 = Color3.fromRGB(70, 70, 82)
				_zz.MouseEnter:Connect(function() _zz.BackgroundTransparency = 0.6 end)
				_zz.MouseLeave:Connect(function() _zz.BackgroundTransparency = 1 end)
				_zz.MouseButton1Click:Connect(function()
					local _nq = _fd and _fd.Text
					local function _vz(text)
						if _fd and _fd.Parent then
							_fd.Text = text
						end
					end
					local function flash(text)
						_vz(text)
						task.delay(1.5, function()
							if _nq and _fd and _fd.Parent and not _ro then
								_fd.Text = _nq
							end
						end)
					end

					
					if _ro then
						_uo = _uo + 1
						return
					end

					local _iz, reason = teleportToModel(model, _vq)
					if _iz then return end
					if reason ~= _d26v8m({106,38,45,77,84,75,40,61,8,92,4,97,55,2,24,84,40,43,25,75,13},{36,73,89,109,56}) or not _vq then
						flash(reason)
						return
					end

					
					task.spawn(function()
						local _gq, _qf = searchForItem(model, _vz)
						if _gq then
							_vz(_nq or "")
						else
							flash(_qf)
						end
					end)
				end)
				Instance.new(_d26v8m({103,99,34,93,19,53,21,39},{50,42,97,50,97,91,112,85}), _zz).CornerRadius = UDim.new(0, 4)
			else
				_zz = Instance.new(_d26v8m({23,15,88,86,68},{81,125,57,59,33}))
			end
			_zz.Size = UDim2.new(1, 0, 0, 20)
			_zz.LayoutOrder = _ha
			_zz.BackgroundTransparency = 1
			_zz.BorderSizePixel = 0
			_zz.Parent = _bw

			local _mn = 0
			if _ga.userId then
				_mn = 24

				local _by = Instance.new(_d26v8m({9,38,21,94,37,7,21,91,37,39},{64,75,116,57}))
				_by.Size = UDim2.new(0, 18, 0, 18)
				_by.Position = UDim2.new(0, 0, 0.5, -9)
				_by.BackgroundColor3 = Color3.fromRGB(45, 45, 52)
				_by.BorderSizePixel = 0
				_by.Image = _ww[_ga.userId] or ""
				_by.Parent = _zz
				Instance.new(_d26v8m({18,1,12,87,10,66,34,58},{71,72,79,56,120,44}), _by).CornerRadius = UDim.new(1, 0)

				_yd[_ga.userId] = _yd[_ga.userId] or {}
				table.insert(_yd[_ga.userId], _by)
				requestAvatar(_ga.userId)
			end

			local label = Instance.new(_d26v8m({32,61,9,69,21,85,6,17,52},{116,88,113,49,89,52,100}))
			_fd = label
			label.Size = UDim2.new(1, -_mn, 1, 0)
			label.Position = UDim2.new(0, _mn, 0, 0)
			label.BackgroundTransparency = 1
			label.Text = _ga.text
			label.TextXAlignment = Enum.TextXAlignment.Left
			label.TextTruncate = Enum.TextTruncate.AtEnd
			label.Font = _ga.header and Enum.Font.GothamBold or Enum.Font.Gotham
			label.TextSize = _ga.header and 13 or 12
			label.TextColor3 = (_ga.header or _ga.muted) and _i.DROPPED_COLOR_MUTED or Color3.new(1, 1, 1)
			label.Parent = _zz
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
		_s.createToggleButton, _s.createLabel, _s.createSwitch, _s.createList
	local screenGui = _s.screenGui

	_s.parent = _s.craftPage

	local _rn = createLabel(_d26v8m({100,53,73,23,29,30,85,8,88,52,79,12,82,52,6,69,16},{61,90,60,101}), 1)
	local _jb = createLabel(_d26v8m({9,13,39,44,3,32,101,30,22,37,40,5,57,32,47,66,105,106},{75,120,73,71,102,82,69}), 2)

	createLabel(_d26v8m({103,48,87,41,16,6,52,91,39,91,14,43,92,33,25},{46,68,50,68,48}), 3)
	local _fo = createList(4, false, 170)
	createLabel(_d26v8m({60,26,85,87,39,59,68,34,18,87,89,80,40,41,16},{125,119,58,34,73,79,100,86}), 5)

	local _as = Instance.new(_d26v8m({117,2,6,17,113,39,52},{33,103,126,101,51,72,76,47}))
	_as.Size = UDim2.new(1, 0, 0, 28)
	_as.LayoutOrder = 6
	_as.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
	_as.BorderSizePixel = 0
	_as.Text = "1"
	_as.PlaceholderText = _d26v8m({52,75,62,66,11,30},{117,38,81,55,101,106,64,104})
	_as.TextColor3 = Color3.new(1, 1, 1)
	_as.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
	_as.Font = Enum.Font.Gotham
	_as.TextSize = 14
	_as.ClearTextOnFocus = false
	_as.Parent = _s.craftPage
	Instance.new(_d26v8m({124,53,46,83,90,49,88,91},{41,124,109,60,40,95,61}), _as).CornerRadius = UDim.new(0, 8)

	local _bv = createToggleButton(7)
	_bv.BackgroundColor3 = _i.COLOR_ITEM_SELECTED
	_bv.Text = _d26v8m({116,85,10,21,29},{55,39,107,115,105,124,57,90})
	local _kd = createLabel("", 8)

	local _zl = true
	createSwitch(9, _d26v8m({106,35,38,2,93,113,38,16,9,6,40,22,66,51,34,10,74,57},{41,81,71,100}), _zl, function(_ay)
		_zl = _ay
	end)

	
	task.spawn(function()
		while screenGui.Parent do
			local names, seen = {}, {}
			local folder = _u:FindFirstChild(_d26v8m({50,79,86,53,9,110,5,88,90,32},{113,61,55,83,125,39}))
			if folder then
				for _qe, _vj in ipairs(folder:GetChildren()) do
					if not seen[_vj.Name] then
						seen[_vj.Name] = true
						table.insert(names, _vj.Name)
					end
				end
			end
			table.sort(names)
			_fo.setNames(names)
			task.wait(_i.LIST_REFRESH)
		end
	end)

	
	
	function _c.getItemKey(_fm)
		local folder = _u:FindFirstChild(_d26v8m({32,51,51,76,59,42,53,55,71,60},{99,65,82,42,79}))
		local _vj = folder and folder:FindFirstChild(_fm)
		if not _vj then return nil end

		local key = _vj:GetAttribute(_d26v8m({112,20,56,88,112,85,64},{57,96,93,53,59,48})) or _vj:GetAttribute(_d26v8m({55,85,41,45,33,5,11},{94,33,76,64,74,96,114}))
		if type(key) == _d26v8m({14,75,89,19,26,0},{125,63,43,122,116,103}) and key ~= "" then
			return key
		end
		return _vj.Name
	end

	function _c.craftItem(_ip, _ms)
		local _ar = _u:WaitForChild(_d26v8m({44,74,43,12,25,41,77,36,9,25,6,87,36},{111,56,74,106,109}))

		local _ki = _ar:InvokeServer(_d26v8m({63,16,94,3,7,30,7,88,12,29},{93,117,57,106,105}), _ip)
		print(_d26v8m({26,37,33,22,29,40,28,70,49,18,28,53,47,37,33,22,29,40},{65,102,83,119,123,92}), _ip, "->", _ki)
		if _ki == false then
			error(_d26v8m({91,53,49,82,32,90,112,49,65,47,77,51,55,65,33,8,50,38,67,44,70,19,49,69,35,92,112,37,75,55,8},{40,80,67,36,69}) .. _ip)
		end

		task.wait(_i.CRAFT_STEP_DELAY)

		
		local _ob = os.clock()
		local _ca = 0
		while _ms() do
			_ca = _ca + 1
			local _yn = _ar:InvokeServer(_d26v8m({84,17,71,91,67},{55,99,38,61}), _ip)
			print(_d26v8m({60,37,45,18,30,85,58,70,60,1,25,71,19},{103,102,95,115,120,33}), _ip, _d26v8m({48,41,45,72,73,33,41},{81,93,89,45,36}), _ca, "->", _yn)

			if _yn ~= false then
				return 
			end

			if os.clock() - _ob >= _i.CRAFT_RETRY_TIMEOUT then
				error(_d26v8m({50,74,39,56,18,53,105,93,36,95,33,110,5,34,35,83,34,91,60,32,16,103,42,68,32,73,33,110,17,40,59,22},{65,47,85,78,119,71,73,54}) .. _ip .. " (" .. _ca .. _d26v8m({77,95,76,90,58,0,78,76,93,118},{109,62,56,46,95}))
			end
			task.wait(_i.CRAFT_RETRY_INTERVAL)
		end
	end

	
	
	local function getPlayerWorkbench()
		local _jw = _m()
		if not _jw then return nil end

		local _jg = _jw:FindFirstChild(_d26v8m({121,38,18,70,94,33,78},{59,83,124,45}))
		if _jg then
			local _xo = _jg:FindFirstChild(_d26v8m({116,36,48,35,4},{54,65,94,64,108,40,59,85}))
			if _xo and _xo:IsA(_d26v8m({36,11,29,68,18,28,20,30},{102,106,110,33,66,125})) then
				return _xo
			end
		end

		local _pe = _jw:FindFirstChild(_i.WORKBENCH_NAME, true)
		if _pe and _pe:IsA(_d26v8m({26,121,63,14,1,32,43,65,21,5},{74,47,118,96,114,84})) then
			return _pe
		end
		return nil
	end

	function _c.goToWorkbench()
		local character = _e.Character
		local _af = character and character:FindFirstChild(_d26v8m({63,19,17,48,42,78,30,2,46,62,43,85,39,7,14,37},{119,102,124,81,68,33}))
		if not _af then return nil end

		local _xo = getPlayerWorkbench()
		if not _xo then
			warn(_d26v8m({98,109,34,66,42,1,19,31,90,65,37,79,40,27,105,75,25,72,57,77,40,85,55,80,76,92,112,76,59,27,110,123,80,67,15,15,108,28,58,76,25,121,63,81,39,23,43,81,90,70,124,3,35,7,110,94,25,108,37,77,39,16,60,13,25,108,53,77,47,29},{57,46,80,35,76,117,78,63}))
			return nil
		end

		local _za = { character = character, cframe = _af.CFrame }
		_af.CFrame = _xo:GetPivot() + _i.HEIGHT_OFFSET
		task.wait(_i.SETTLE_TIME)
		return _za
	end

	function _c.returnFromWorkbench(_za)
		if not _za then return end
		if _e.Character ~= _za.character then return end 
		local _af = _za.character:FindFirstChild(_d26v8m({113,88,35,51,30,92,92,73,107,66,33,38,32,82,71,89},{57,45,78,82,112,51,53,45}))
		if _af then
			_af.CFrame = _za.cframe
		end
	end

	task.spawn(function()
		while screenGui.Parent do
			local _jw = _m()
			_rn.Text = _d26v8m({105,5,77,10,117,25,89,7,93,22,38,52,95,4,2,88},{48,106,56,120,85,93}) .. (_jw and _jw.Name or _d26v8m({94,80,70,90,87,51,69,81,86},{48,63,50,122,49,92}))
			_jb.Text = _d26v8m({4,58,73,30,84,84,114,53,40,35,72,22,90,67,54,90,102},{70,79,39,117,49,38,82,96}) .. (_jw and _jw:FindFirstChild(_d26v8m({6,6,26,2,17,23,95},{68,115,116,105,116,101,109,45})) and _d26v8m({31,2,38},{70,103,85,124,40}) or "No")
			task.wait(_i.LIST_REFRESH)
		end
	end)

	local _su = false

	_bv.MouseButton1Click:Connect(function()
		
		if _su then
			_g = _g + 1
			_su = false
			_bv.Text = _d26v8m({114,12,13,74,69},{49,126,108,44})
			_kd.Text = _d26v8m({33,90,5,67,2,75,14},{114,46,106,51})
			return
		end

		local _fj = _fo.order[1]
		if not _fj then
			_bv.Text = _d26v8m({111,35,46,93,118,94,36,109,95,34,90,39,108},{63,74,77,54,86})
			task.delay(1.5, function()
				if screenGui.Parent and not _su then
					_bv.Text = _d26v8m({5,72,5,16,3},{70,58,100,118,119,109,125})
				end
			end)
			return
		end

		local _xl = tonumber(_as.Text)
		_xl = _xl and math.floor(_xl)
		if not _xl or _xl < 1 then
			_kd.Text = _d26v8m({36,19,65,59,45,26,0,93,66,54,48,86,4,93,91,43,50,88,4,15,25,126,110,26,14,15,21,51,48,72,4},{97,125,53,94,95,58})
			return
		end

		local _ip = _c.getItemKey(_fj)
		if not _ip then
			_kd.Text = _fj .. _d26v8m({116,1,37,72,116,9,37,73,58,11,106,85,58,79,9,78,53,9,62,117,32,10,39,79},{84,111,74,60})
			warn(_d26v8m({52,127,63,20,88,27,97,109},{111,60,77,117,62}) .. _fj .. _d26v8m({67,8,62,46,99,5,9,36,52,39,67,15,63,122,0,17,7,55,46,10,23,3,60,41,111,67,8,62,46,43,10,8,54,122,48,6,8,37},{99,102,81,90,67}))
			return
		end
		print(_d26v8m({27,62,83,63,76,35,29,93,81,55,73,60,37,25},{64,125,33,94,42,87}), _fj, _d26v8m({28,99,22,9,91,95,57,95,20,89},{49,93,54,122,62}), _ip)
		_g = _g + 1
		local _sk = _g
		_su = true

		local function runBatch()
			local _sj = 0
			for _mt = 1, _xl do
				if _g ~= _sk then return end
				_bv.Text = _d26v8m({31,0,1,91,9,68},{76,116,110,43,41,108,50}) .. _sj .. "/" .. _xl .. ")"
				_kd.Text = _d26v8m({56,49,91,19,5,18,45,93,85},{123,67,58,117,113}) .. _ip .. _d26v8m({66,79,125},{108,97,83,74,54,114})

				local _iz, err = pcall(_c.craftItem, _ip, function() return _g == _sk end)
				if _g ~= _sk then return end
				if not _iz then
					warn(_d26v8m({33,36,43,79,48,66,48,43,64,40,7,50,106,79,43,16,118},{98,86,74,41,68}) .. _ip .. ": " .. tostring(err))
					_kd.Text = _d26v8m({9,32,36,5,58,83,111,32,43,29,58,69,111},{79,65,77,105,95,55}) .. _sj .. "/" .. _xl .. _d26v8m({127,81,59,53,15,26,77,42,13,56,37,30,19},{95,121,72,80,106,58,34})
					_su = false
					_bv.Text = _d26v8m({49,79,12,5,6},{114,61,109,99})
					return
				end

				_sj = _sj + 1
				_kd.Text = _d26v8m({10,49,41,21,39,82,20,105},{73,67,72,115,83,55,112}) .. _sj .. "/" .. _xl
				if _mt < _xl then
					task.wait(_i.CRAFT_DELAY)
				end
			end

			if _g == _sk then
				_su = false
				_bv.Text = _d26v8m({103,29,39,7,9},{36,111,70,97,125,81,121})
				_kd.Text = _d26v8m({7,89,79,36,87,113},{67,54,33,65,109,81}) .. _sj .. "/" .. _xl .. " " .. _ip
			end
		end

		task.spawn(function()
			local _za = _zl and _c.goToWorkbench() or nil
			if _g == _sk then
				runBatch()
			end
			_c.returnFromWorkbench(_za)
		end)
	end)
end






do
	local npcList = _s.npcList
	local _sz = _s.npcStatus

	local _ul = {} 

	local function isNPCModel(model)
		return model:IsA(_d26v8m({26,55,53,81,69},{87,88,81,52,41,120,114,53}))
			and model:FindFirstChildOfClass(_d26v8m({102,93,64,24,90,91,71,76},{46,40,45,121,52,52})) ~= nil
			and _n:GetPlayerFromCharacter(model) == nil
	end

	local function folderHasNPCs(folder)
		for _qe, _nt in ipairs(folder:GetChildren()) do
			if isNPCModel(_nt) then return true end
		end
		return false
	end

	
	local function rescanNPCFolders()
		local _em = workspace:FindFirstChild(_d26v8m({101,61,22,24,52,74,72,59,21,14},{33,84,123,125,90,57}))
		if not _em then return end

		for _qe, _jw in ipairs(_em:GetChildren()) do
			
			
			if string.find(string.lower(_jw.Name), string.lower(_i.CRONENBURG_NAME), 1, true) then continue end

			local _dp = _ul[_jw.Name]
			if _dp then
				for folder in pairs(_dp) do
					if not folder.Parent then _dp[folder] = nil end
				end
			end

			for _qe, d in ipairs(_jw:GetDescendants()) do
				if d:IsA(_d26v8m({46,34,89,23,13,63},{104,77,53,115})) and not (_dp and _dp[d]) and folderHasNPCs(d) then
					if not _dp then
						_dp = {}
						_ul[_jw.Name] = _dp
					end
					_dp[d] = true
				end
			end
			task.wait() 
		end
	end

	task.spawn(function()
		local _ew = -math.huge
		while _s.screenGui.Parent do
			if os.clock() - _ew >= _i.NPC_RESCAN then
				_ew = os.clock()
				rescanNPCFolders()
			end

			local names, seen = {}, {}
			local _em = workspace:FindFirstChild(_d26v8m({15,35,44,2,64,56,35,46,9,93},{75,74,65,103,46}))
			if _em then
				for _pn in pairs(_ul) do
					if _em:FindFirstChild(_pn)
						and not string.find(string.lower(_pn), string.lower(_i.CRONENBURG_NAME), 1, true) then
						seen[_pn] = true
						table.insert(names, _pn)
					end
				end
			end
			if not seen[_i.CRONENBURG_NAME] then
				table.insert(names, _i.CRONENBURG_NAME) 
			end
			table.sort(names)
			npcList.setNames(names)
			task.wait(_i.LIST_REFRESH)
		end
	end)

	local function isCreatureAlive(model)
		if not model or not model.Parent then return false end
		local _tq = model:FindFirstChildOfClass(_d26v8m({27,51,56,3,4,60,47,49},{83,70,85,98,106}))
		if _tq and _tq.Health <= 0 then return false end
		return true
	end

	local function getAimPoint(model)
		for _qe, partName in ipairs(_i.AIM_PART_PRIORITY) do
			local _vd = model:FindFirstChild(partName)
			if _vd and _vd:IsA(_d26v8m({120,83,43,67,106,83,42,82},{58,50,88,38})) then
				return _vd.Position
			end
		end
		return model:GetPivot().Position
	end

	
	local function getFoldersFor(_pn)
		local _nc = {}
		for folder in pairs(_ul[_pn] or {}) do
			if folder.Parent then table.insert(_nc, { folder = folder, anyModel = false }) end
		end
		if _pn == _i.CRONENBURG_NAME then
			local _rr = workspace:FindFirstChild(_i.CRONENBURG_FOLDER)
			
			if _rr then table.insert(_nc, { folder = _rr, anyModel = true }) end
		end
		return _nc
	end

	
	local function getNearestCreature()
		local character = _e.Character
		local _af = character and character:FindFirstChild(_d26v8m({28,81,66,45,58,75,70,40,6,75,64,56,4,69,93,56},{84,36,47,76}))
		if not _af then return nil end

		local _gu, bestDist, bestDim
		for _qe, _pn in ipairs(npcList.order) do
			for _qe, entry in ipairs(getFoldersFor(_pn)) do
				for _qe, model in ipairs(entry.folder:GetChildren()) do
					local _og = entry.anyModel
						and model:IsA(_d26v8m({58,94,13,89,48},{119,49,105,60,92})) and _n:GetPlayerFromCharacter(model) == nil
						or isNPCModel(model)
					if _og and isCreatureAlive(model) then
						local _pl = (getAimPoint(model) - _af.Position).Magnitude
						if not bestDist or _pl < bestDist then
							_gu, bestDist, bestDim = model, _pl, _pn
						end
					end
				end
			end
		end
		return _gu, bestDim
	end

	function _c.equipLaserPistol()
		return equipTool(_d26v8m({11,71,51,32,36,116,12,56,52,82,47,41},{71,38,64,69,86,84,92,81}))
	end

	
	local function getMuzzlePosition()
		local character = _e.Character
		local _xu = character and character:FindFirstChild(_d26v8m({114,33,66,14,31,30,16,88,24,25,81,44},{62,64,49,107,109}))
		local _wz = _xu and _xu:FindFirstChild(_d26v8m({6,52,73,94,68,24},{78,85,39,58,40,125,72,93}))
		local _st = _wz and _wz:FindFirstChild(_d26v8m({104,54,32,41,9,79},{37,67,90,83,101,42,93}))
		if _st and _st:IsA(_d26v8m({41,74,5,8,11,86,28,12,6,74},{104,62,113,105})) then
			return _st.WorldPosition
		end
		return nil
	end

	
	local function hasLineOfSight(_eq, _zk, _jz)
		local _gf = RaycastParams.new()
		_gf.FilterType = Enum.RaycastFilterType.Exclude
		_gf.FilterDescendantsInstances = _jz
		local _qd = workspace:Raycast(_eq, _zk - _eq, _gf)
		if not _qd then return true end
		return (_qd.Position - _zk).Magnitude < 2
	end

	
	local function ensureLineOfSight(_ko)
		local character = _e.Character
		local _af = character and character:FindFirstChild(_d26v8m({19,0,82,10,11,52,28,91,57,10,52,1,111,10,23,47},{91,117,63,107,101}))
		if not _af then return end

		local _ny = getAimPoint(_ko)
		local _bk = getMuzzlePosition() or _af.Position

		if hasLineOfSight(_bk, _ny, { character, _ko }) then
			return
		end

		local _qk = _af.Position - _ny
		if _qk.Magnitude == 0 then
			_qk = Vector3.new(0, 0, 1)
		end
		local _kc = _ny + _qk.Unit * _i.COMBAT_SAFE_DISTANCE + Vector3.new(0, 3, 0)
		_af.CFrame = CFrame.new(_kc, _ny)
		task.wait(0.2) 
	end

	
	
	
	local function predictAim(_ko, _yq)
		local _ld = getAimPoint(_ko)
		local _za = getMuzzlePosition()
		if not _za then return _ld end

		local _pa, ping = pcall(function() return _e:GetNetworkPing() end)
		local _zx = (_pa and ping or 0) * _i.LEAD_PING_FACTOR

		local _sp = _ld
		for _qe = 1, 3 do
			local _pw = (_sp - _za).Magnitude / _i.LASER_SPEED + _zx
			_pw = math.min(_pw, _i.LEAD_MAX_TIME)
			_sp = _ld + _yq * _pw
		end
		return _sp
	end

	
	local function fireLaserAt(_ma)
		local _za = getMuzzlePosition()
		if not _za then
			warn(_d26v8m({40,127,7,58,75,81,49,122,83,112,9,36,76,66,101,119,26,79,28,56,69,23,54,7,62,73,18,45,69,85,101,70,7,72,9,52,65,93,32,73,7,28,6,56,93,16,35,72,6,82,12},{115,60,104,87,41,48,69,39}))
			return
		end

		local _ze = _ma - _za
		if _ze.Magnitude == 0 then return end
		_ze = _ze.Unit

		_u:WaitForChild(_d26v8m({103,88,88,27,49,110,79,78,16,55},{43,57,43,126,67})):FireServer(
			_d26v8m({31,45,74,44},{121,68,56,73,118,120,50}),
			vector.create(_za.X, _za.Y, _za.Z),
			vector.create(_ze.X, _ze.Y, _ze.Z)
		)
	end

	
	function _c.runAutoShoot(_sk)
		while _x == _sk do
			local _ko, _pn = getNearestCreature()
			if not _ko then
				if _a == _d26v8m({5,6,52,5,7,29},{102,105,89,103}) and _x == _sk then
					local _ve = table.find(npcList.order, _i.CRONENBURG_NAME)
						and _d26v8m({43,71,124,10,105,38,91,124,34,86,16,70,56,100,20,69,92,57,40,92,21,71,46,48,25,17,71,124},{101,40,92,68,57}) .. _i.CRONENBURG_NAME .. _d26v8m({74,53,28,75,25,39},{106,83,117,57})
						or _d26v8m({31,76,92,23,8,62,69,18,6,64,52,3,66,27,75,58,70,86,82,76,56,78,87,28,91,56,76,92,1,8,57,66,68,23,8,31,115,113,1},{81,35,50,114,40})
					_sz.Text = _ve
				end
				interruptibleWait(1, _sk)
			else
				
				local _yq = Vector3.zero
				local _mh, lastTime = getAimPoint(_ko), os.clock()

				local function sampleFor(_zs)
					local _pp = os.clock() + _zs
					repeat
						_d.Heartbeat:Wait()
						local _bx = os.clock()
						local _cc = getAimPoint(_ko)
						local _id = _bx - lastTime
						if _id > 0 then
							_yq = _yq:Lerp((_cc - _mh) / _id, _i.LEAD_SMOOTHING)
							_mh, lastTime = _cc, _bx
						end
					until os.clock() >= _pp or _x ~= _sk or not isCreatureAlive(_ko)
				end

				sampleFor(_i.LEAD_WARMUP)

				while _x == _sk and isCreatureAlive(_ko) do
					if _a == _d26v8m({66,36,5,33,29,82},{33,75,104,67,124,38,108}) and _x == _sk then
						_sz.Text = _d26v8m({122,16,69,39,75,5,94,46,73,81},{46,113,55,64}) .. _ko.Name .. " (" .. _pn .. ")"
					end
					_c.equipLaserPistol()
					ensureLineOfSight(_ko)
					if _x ~= _sk then return end
					fireLaserAt(predictAim(_ko, _yq))
					sampleFor(_i.FIRE_INTERVAL)
				end
			end
		end
	end
end




do
	local screenGui = _s.screenGui
	local _fp = {} 

	local function containsAny(_xd, _bh)
		_xd = string.lower(_xd)
		for _qe, kw in ipairs(_bh) do
			if string.find(_xd, kw, 1, true) then
				return true
			end
		end
		return false
	end

	local function nameMatches(_kb)
		for _qe, exact in ipairs(_i.LOADING_GUI_NAMES) do
			if _kb.Name == exact then
				return true
			end
		end
		return containsAny(_kb.Name, _i.LOADING_NAME_KEYWORDS)
	end

	
	local function isShowing(_kb, _ba)
		local _jx = _kb
		while _jx and _jx ~= _ba do
			if _jx:IsA(_d26v8m({13,91,77,61,60,12,1,76,62},{74,46,36,114,94,102,100,47})) and not _jx.Visible then
				return false
			end
			_jx = _jx.Parent
		end
		return _ba.Enabled
	end

	local function hideInstance(_kb)
		local _qc
		if _kb:IsA(_d26v8m({49,5,63,24,77,47,13,23,15},{98,102,77,125,40,65,74})) then
			_qc = _d26v8m({19,58,31,9,71,38,56},{86,84,126,107,43,67,92})
		elseif _kb:IsA(_d26v8m({4,78,82,7,91,60,38,88,79},{67,59,59,72,57,86})) then
			_qc = _d26v8m({20,68,42,88,72,88,66},{66,45,89,49,42,52,39})
		else
			return
		end

		if _kb[_qc] then
			_kb[_qc] = false
		end

		if not _fp[_kb] then
			_fp[_kb] = true
			print(_d26v8m({111,40,93,45,78,36,60,83,57,18,36,67,41},{52,100,50,76,42,77,82}), _kb:GetFullName())
			
			_kb:GetPropertyChangedSignal(_qc):Connect(function()
				if _q and _kb[_qc] then
					_kb[_qc] = false
				end
			end)
		end
	end

	local function checkLoadingGui(_ba)
		if _ba == screenGui or not _ba:IsA(_d26v8m({3,50,43,80,3,30,26,37,56},{80,81,89,53,102,112,93})) then return end

		if nameMatches(_ba) then
			hideInstance(_ba)
			return
		end

		for _qe, d in ipairs(_ba:GetDescendants()) do
			if d:IsA(_d26v8m({45,19,45,55,7,84,77,51,30},{106,102,68,120,101,62,40,80})) then
				if nameMatches(d) and isShowing(d, _ba) then
					hideInstance(d)
				elseif (d:IsA(_d26v8m({57,76,29,37,55,40,15,76,9},{109,41,101,81,123,73})) or d:IsA(_d26v8m({107,75,58,62,97,65,73,65,80,64},{63,46,66,74,35,52,61,53})))
					and containsAny(d.Text, _i.LOADING_TEXT_KEYWORDS)
					and isShowing(d, _ba) then
					hideInstance(_ba) 
					return
				end
			end
		end
	end

	
	table.insert(_y, _b.ChildAdded:Connect(function(_nt)
		if _q and _nt:IsA(_d26v8m({15,23,70,62,34,50,51,65,50},{92,116,52,91,71})) then
			task.defer(checkLoadingGui, _nt)
		end
	end))

	task.spawn(function()
		while screenGui.Parent do
			if _q then
				for _qe, _ba in ipairs(_b:GetChildren()) do
					checkLoadingGui(_ba)
				end
			end
			task.wait(0.2)
		end
	end)
end




do
	local screenGui = _s.screenGui
	local nodeList, dimOList, oreList = _s.nodeList, _s.dimOList, _s.oreList
	local getNodeAmount, getOreAmount = _s.getNodeAmount, _s.getOreAmount
	local updateAmountVisibility, updateOreAmountVisibility = _s.updateAmountVisibility, _s.updateOreAmountVisibility
	local craftItem, getItemKey, goToWorkbench, returnFromWorkbench =
		_c.craftItem, _c.getItemKey, _c.goToWorkbench, _c.returnFromWorkbench

	
	local function getDimension(_pn)
		local _em = workspace:FindFirstChild(_d26v8m({11,34,13,86,33,56,9,92,33,56},{79,75,96,51}))
		return _em and _em:FindFirstChild(_pn)
	end

	
	local function getFolderIn(_pn, _uj)
		local _jw = getDimension(_pn)
		local folder = _jw and _jw:FindFirstChild(_uj)
		if folder and folder:IsA(_d26v8m({105,61,20,74,90,3},{47,82,120,46,63,113,66})) then
			return folder
		end
	end

	local function getOresFolder(_pn) return getFolderIn(_pn, _d26v8m({49,31,20,94},{126,109,113,45,119,109,36,53})) end
	local function getNodesFolder(_pn) return getFolderIn(_pn, _d26v8m({8,22,76,24,49},{70,121,40,125,66,85,53})) end

	
	local function scanDimensions()
		local _ch, dimO, ore = {}, {}, {}
		local _em = workspace:FindFirstChild(_d26v8m({12,2,16,83,49,59,2,18,88,44},{72,107,125,54,95}))
		if _em then
			for _qe, _jw in ipairs(_em:GetChildren()) do
				local nodes = _jw:FindFirstChild(_d26v8m({6,38,24,54,47},{72,73,124,83,92,104}))
				if nodes and nodes:IsA(_d26v8m({119,93,9,83,45,85},{49,50,101,55,72,39,78,37})) then
					table.insert(isDimO(_jw.Name) and dimO or _ch, _jw.Name)
				end
				local _ut = _jw:FindFirstChild(_d26v8m({99,26,12,93},{44,104,105,46}))
				if _ut and _ut:IsA(_d26v8m({7,62,14,26,36,35},{65,81,98,126})) then
					table.insert(ore, _jw.Name)
				end
			end
		end
		table.sort(_ch)
		table.sort(dimO)
		table.sort(ore)
		return _ch, dimO, ore
	end

	task.spawn(function()
		while screenGui.Parent do
			local _ch, dimO, ore = scanDimensions()
			nodeList.setNames(_ch)
			dimOList.setNames(dimO)
			oreList.setNames(ore)
			task.wait(_i.LIST_REFRESH)
		end
	end)

	local function refreshButtons()
		for _ao, _nx in pairs(_h) do
			local _qi = (_a == _ao)
			_nx.button.Text = _nx.label .. (_qi and _d26v8m({121,116,1,33},{67,84,78,111,58,51}) or _d26v8m({6,94,110,29,33},{60,126,33,91,103}))
			_nx.button.BackgroundColor3 = _qi and _i.COLOR_ON or _i.COLOR_OFF
		end
	end

	
	_v = function()
		if _a then
			local _uq = _a
			_x = _x + 1
			_a = nil
			clearHiddenHold()
			restoreOriginIfAny(_uq)
			refreshButtons()
		end
	end

	_k = function()
		if _a and _i.MODE_RETURNS_TO_ORIGIN[_a] then
			restoreOriginIfAny(_a)
		end
	end

	
	local function resolveFast(_bd)
		if _bd == nil then return _o end
		return _bd
	end

	
	local function resolveHidden(_uu)
		if _uu == nil then return _p end
		return _uu
	end

	
	local function moveToModel(model, _uu)
		local character = _e.Character
		local _af = character and character:FindFirstChild(_d26v8m({38,19,32,8,7,95,6,10,52,34,6,29,96,14,28,18},{110,102,77,105,105,48,111}))
		if not _af then return false end

		if _uu then
			local _cc = model:GetPivot() + getHiddenOffset(model)
			_af.CFrame = _cc
			holdHiddenPosition(_cc)
		else
			clearHiddenHold()
			_af.CFrame = model:GetPivot() + _i.HEIGHT_OFFSET
		end
		return true
	end

	local function triggerPrompt(model, _bd)
		local _xi = model:FindFirstChildWhichIsA(_d26v8m({118,83,50,60,28,46,50,95,95,113,47,43,24,51,47},{38,33,93,68,117,67,91,43}), true)
		if not _xi or not _xi.Enabled then
			if _p then
				local character = _e.Character
				local _af = character and character:FindFirstChild(_d26v8m({9,60,32,18,47,94,45,37,27,34,28,53,97,37,51,61},{65,73,77,115,65,49,68}))
				local _rq = _xi and _xi:FindFirstAncestorWhichIsA(_d26v8m({29,26,92,75,13,23,45,15},{95,123,47,46,93,118}))
				local _pl = (_af and _rq) and (_af.Position - _rq.Position).Magnitude or nil
				warn((_d26v8m({43,15,5,87,86,74,30,26,76,22,65,15,93,121,76,67,64,64,29,55,24,19,23,92,92,103,9,93,83,77,28,34,8,14,23,92,92,103,30,86,67,90,25,53,9,64,126,96,35,122,73,64,30,15,29,38,20,119,91,92,4,122,73,64,30,15,17,36,24,70,83,67,52,46,31,71,15,10,3},{112,71,108,51,50,47})):format(
					model.Name,
					_xi and _d26v8m({56,72,26,45,90},{94,39,111,67,62,88}) or _d26v8m({69,11,28,54,19,93,79},{40,98,111,69,122,51,40,110}),
					_xi and tostring(_xi.Enabled) or _d26v8m({6,18,72},{104,61,41,111,60,85,36,77}),
					_xi and tostring(_xi.RequiresLineOfSight) or _d26v8m({19,95,80},{125,112,49,87}),
					_xi and tostring(_xi.MaxActivationDistance) or _d26v8m({56,71,33},{86,104,64,75,48,102}),
					_pl and string.format("%.1f", _pl) or _d26v8m({66,67,84},{44,108,53,109})
				))
			end
			return false
		end

		
		local _rv = _xi.HoldDuration
		if resolveFast(_bd) and _rv > _i.FAST_HOLD_DURATION then
			_xi.HoldDuration = _i.FAST_HOLD_DURATION
		end

		_xi:InputHoldBegin()
		task.wait(math.max(_xi.HoldDuration, 0) + 0.1)
		_xi:InputHoldEnd()

		if _xi.Parent then
			_xi.HoldDuration = _rv
		end
		return true
	end

	local function teleportTo(model, _sk, _bd, _bz, _uu)
		_bd = resolveFast(_bd)
		if not moveToModel(model, resolveHidden(_uu)) then return false end
		task.wait(_bd and _i.FAST_SETTLE_TIME or _i.SETTLE_TIME)

		interruptibleWait(_bd and _i.FAST_PROMPT_DELAY or _i.PROMPT_DELAY, _sk)

		if _x == _sk then
			local _tx = triggerPrompt(model, _bd)
			if _tx and _bz and _x == _sk then
				_bz(model)
			end
		end
		return true
	end

	
	
	local function visitTarget(model, _sk, _bd, _bz, _uu)
		_bd = resolveFast(_bd)
		local _xi = model:FindFirstChildWhichIsA(_d26v8m({120,38,20,65,9,8,3,86,81,4,9,86,13,21,30},{40,84,123,57,96,101,106,34}), true)
		local _xj = _bd and _i.FAST_TELEPORT_DELAY or _i.TELEPORT_DELAY
		local _ob = os.clock()

		local _go = teleportTo(model, _sk, _bd, _bz, _uu)

		while _x == _sk do
			local _lp = _xj - (os.clock() - _ob)
			if _lp <= 0 then break end

			if _bd and _go then
				local _yy = not model.Parent
					or not _xi
					or not _xi.Parent
					or not _xi.Enabled
				if _yy then break end
			end

			task.wait(math.min(0.05, _lp))
		end

		return _go
	end

	
	local function getChestTargets()
		local _ic = {}
		local folder = workspace:FindFirstChild(_d26v8m({118,87,26,46,36,56,95,75,1,41},{58,56,117,90,103,80}))
		if not folder then
			warn(_d26v8m({14,93,93,5,50,42,87,65,5,2,98,84,93,29,21,39,64,18,31,30,54,18,84,30,4,44,86,18,24,31,98,69,93,3,26,49,66,83,18,20},{66,50,50,113,113}))
			return _ic
		end
		for _qe, model in ipairs(folder:GetChildren()) do
			if model:IsA(_d26v8m({52,26,20,62,21},{121,117,112,91})) then
				table.insert(_ic, model)
			end
		end
		return _ic
	end

	
	local function getChestId(_ge)
		local _vl = _ge:GetAttribute(_d26v8m({39,70,58,73,32,103,0},{100,46,95,58,84,46}))
		if _vl ~= nil and tostring(_vl) ~= "" then
			return tostring(_vl)
		end

		local _qo = string.match(_ge.Name, _d26v8m({52,122,94,26,61,7,78,23,25,66,110,93,103,111,15,86},{106,54,49,117,73,68,38,114}))
		if _qo and _qo ~= "" then
			return _qo
		end
		return nil
	end

	
	local function takeAllFromChest(_ge)
		if not _i.AUTO_TAKE_ALL then return end

		local _ij = getChestId(_ge)
		if not _ij then
			warn(_d26v8m({50,16,10,37,34,117,73,50,10,106,21,64,12,47,17,3,50,8,8,40,17,56,63,74,28,40,0,106,57,90,73,16,10,37,34,107,1,57,22,62,9,8,7,61,8,47,118,71,7,124},{105,92,101,74,86,40}) .. _ge:GetFullName())
			return
		end

		local _sv = _u:FindFirstChild(_d26v8m({53,67,4,54,96,56,45,23,88},{121,44,107,66,37,78,72}))
		if not _sv then
			warn(_d26v8m({103,22,27,73,82,23,101,112,53,27,82,99,60,32,82,46,84,72,73,62,101,90,53,1,72,66,106,44,82,122,38,67,86,38,44,95,59,0,67,66,25,49,83,40,21,65,67},{60,90,116,38,38,74,69}))
			return
		end

		task.wait(_i.LOOT_TAKE_DELAY)

		_sv:FireServer(_d26v8m({81,79,66,55},{37,46,41,82,100}), _ij, _d26v8m({4,14,55},{101,98,91,104,115,90}))
		print(_d26v8m({11,58,50,49,16,113,69,36,23,54,59,68,77,9,60,86,112,96},{80,118,93,94,100,44,101}), _ij)
	end

	local _vh = {}

	local function getItemsIn(_uj)
		local _ic = {}
		local folder = workspace:FindFirstChild(_uj)
		if not folder then
			if not _vh[_uj] then
				_vh[_uj] = true
				warn(_uj .. _d26v8m({31,22,39,46,91,21,58,98,81,31,60,98,89,31,61,44,91,80,33,44,31,7,39,48,84,3,56,35,92,21},{63,112,72,66}))
			end
			return _ic
		end
		_vh[_uj] = nil

		for _qe, _kb in ipairs(folder:GetChildren()) do
			if isDropModel(_kb) then
				table.insert(_ic, _kb)
			end
		end
		return _ic
	end

	local function getSelectedDimensionTargets()
		local _ic = {}
		local _pn = nodeList.order[1]
		if not _pn or isDimO(_pn) then return _ic end

		local nodes = getNodesFolder(_pn)
		if not nodes then return _ic end

		for _qe, model in ipairs(nodes:GetChildren()) do
			if model:IsA(_d26v8m({52,10,37,21,21},{121,101,65,112})) then
				table.insert(_ic, model)
			end
		end
		return _ic
	end

	
	local function makePassLoop(_uw, _eg, _bz, _sx)
		return function(_sk)
			while _x == _sk do
				local _ic = _uw()
				if #_ic == 0 then
					interruptibleWait(2, _sk) 
				else
					for _qe, model in ipairs(_ic) do
						if _x ~= _sk then break end
						if model.Parent then
							visitTarget(model, _sk, _eg and _eg(), _bz, _sx and _sx())
						end
					end
				end
				task.wait()
			end
		end
	end

	
	
	local function nextUnvisitedDimONode(_pn, _wv)
		local nodes = getNodesFolder(_pn)
		if not nodes then return nil end

		for _qe, model in ipairs(nodes:GetChildren()) do
			if model:IsA(_d26v8m({43,65,21,52,37},{102,46,113,81,73})) and model.Name ~= _i.WORKBENCH_NAME and not _wv[model] then
				local _xi = model:FindFirstChildWhichIsA(_d26v8m({106,0,7,2,1,69,46,78,11,56,8,7,69,55,78},{58,114,104,122,104,40,71}), true)
				if _xi and _xi.Enabled then
					return model
				end
			end
		end
		return nil
	end

	
	local _hp = {}

	local function enterDimension(_pn, _sk)
		local _jw = getDimension(_pn)
		local _pe = _jw and _jw:FindFirstChild(_i.WORKBENCH_NAME, true)
		if not _pe or not _pe:IsA(_d26v8m({38,28,109,59,34,63,11,24,41,65},{118,74,36,85,81,75,106})) then
			if not _hp[_pn] then
				_hp[_pn] = true
				warn(_d26v8m({24,27,119,70},{86,116,87,97,78}) .. _i.WORKBENCH_NAME .. _d26v8m({65,103,32,44,38,13,84,70,46,40,99},{102,71,70,67,83,99,48}) .. _pn .. _d26v8m({23,80,50,13,62,23,55,63,78,25,63,5,112,20,55,37,83,31,36,22,112,10,42},{59,112,81,98,80,99,94,81}))
			end
			return false
		end

		local character = _e.Character
		local _af = character and character:FindFirstChild(_d26v8m({44,92,6,3,12,29,13,77,57,13,13,6,52,72,25,22},{100,41,107,98,98,114}))
		if not _af then return false end

		_af.CFrame = _pe:GetPivot() + _i.HEIGHT_OFFSET
		interruptibleWait(_o and _i.FAST_WORKBENCH_WAIT or _i.WORKBENCH_WAIT, _sk)
		return true
	end

	
	
	local function collectDimension(_pn, _sk)
		local _wv = {}
		local _vr = 0
		local _sc = os.clock()

		while _x == _sk and _vr < _i.NODES_PER_DIM_O do
			local _dr = nextUnvisitedDimONode(_pn, _wv)

			if _dr then
				_wv[_dr] = true
				if visitTarget(_dr, _sk) then
					_vr = _vr + 1
				end
				_sc = os.clock()
			else
				if os.clock() - _sc >= _i.NO_PROGRESS_TIMEOUT then
					break
				end
				task.wait(0.1)
			end
		end

		return _vr
	end

	local function runDimO(_sk)
		local _fa = nil     
		local _tl = nil  

		while _x == _sk do
			local order = table.clone(dimOList.order)
			local _xp = 0

			for _qe, _pn in ipairs(order) do
				if _x ~= _sk then break end

				if _fa ~= _pn or _e.Character ~= _tl then
					if enterDimension(_pn, _sk) then
						_fa = _pn
						_tl = _e.Character
					end
				end

				_xp = _xp + collectDimension(_pn, _sk)
			end

			if _xp == 0 then
				interruptibleWait(2, _sk) 
			end
			task.wait()
		end
	end

	local _ab 

	local _lf = makePassLoop(getSelectedDimensionTargets)

	local function setNodeProgress(_sk, _qv, _mu, _tz, _xl)
		if _a == _d26v8m({79,20,86,64,74},{33,123,50,37,57}) and _x == _sk then
			_h.nodes.button.Text = _d26v8m({125,21,0,47,39,23,88,92,84,50,43,39,19,3,16,59,58,106,125},{48,116,116,74,85,126,57}) .. _qv .. "/" .. _mu
				.. "  " .. _tz .. "/" .. _xl .. ")"
		end
	end

	
	
	local function teleportToFirstIn(folder, _sk, _op)
		if not folder then return false end

		local _zn
		for _qe, model in ipairs(folder:GetChildren()) do
			if model:IsA(_d26v8m({6,61,5,21,88},{75,82,97,112,52,83,46})) then
				if not _op then
					_zn = model
					break
				end
				local _xi = model:FindFirstChildWhichIsA(_d26v8m({4,30,24,47,11,63,61,24,14,7,16,61,57,28,3},{84,108,119,87,98,82}), true)
				if _xi and _xi.Enabled then
					_zn = model
					break
				end
				_zn = _zn or model
			end
		end
		if not _zn then return false end

		if not moveToModel(_zn, _p) then return false end
		interruptibleWait(_i.DIM_ENTER_WAIT, _sk)
		return true
	end

	local function farmNodesInDimension(_pn, _xl, _sk, _qv, _mu)
		teleportToFirstIn(getNodesFolder(_pn), _sk, true)
		local _tz = 0
		local _sc = os.clock()
		setNodeProgress(_sk, _qv, _mu, _tz, _xl)

		while _x == _sk and _tz < _xl do
			local nodes = getNodesFolder(_pn)
			local _gq = false

			if nodes then
				for _qe, model in ipairs(nodes:GetChildren()) do
					if _x ~= _sk or _tz >= _xl then break end
					if model:IsA(_d26v8m({12,15,45,15,80},{65,96,73,106,60,99,51,90})) and model.Parent then
						local _xi = model:FindFirstChildWhichIsA(_d26v8m({103,87,46,5,45,58,94,81,56,45,54,56,90,85,53},{55,37,65,125,68,87}), true)
						if _xi and _xi.Enabled then
							_gq = true
							visitTarget(model, _sk)

							
							local _sj = not model.Parent or not _xi.Parent or not _xi.Enabled
							if _sj and _x == _sk then
								_tz = _tz + 1
								_sc = os.clock()
								setNodeProgress(_sk, _qv, _mu, _tz, _xl)
							end
						end
					end
				end
			end

			if _tz < _xl and os.clock() - _sc >= _i.NODE_NO_PROGRESS_TIMEOUT then
				warn(_d26v8m({30,97,34,59,5,24,7,45,38,28,45,78,45,46,72,38,72,47,37,13,38,83,38,45,72,44,73,99},{69,39,67,73,104}) .. _pn .. _d26v8m({64,80,42,6,84},{96,54,69,116,116}) .. _i.NODE_NO_PROGRESS_TIMEOUT
					.. _d26v8m({39,3,106},{84,35,66,78,99,104,53}) .. _tz .. "/" .. _xl .. _d26v8m({84,17,71,76,92,80,20,83,0,1,92,72},{125,61,103,33,51,38}))
				break
			end
			if not _gq then
				interruptibleWait(1, _sk) 
			end
		end

		return _tz
	end

	
	
	local function runSelectedDimensions(_sk)
		local order = table.clone(nodeList.order)

		if #order <= 1 then
			if order[1] then
				teleportToFirstIn(getNodesFolder(order[1]), _sk, true)
			end
			_lf(_sk)
			return
		end

		local _xl = getNodeAmount()
		if not _xl then
			_ab(_d26v8m({50,1,19,3,89},{92,110,119,102,42,104}), _sk, _d26v8m({47,29,94,25,37,65,11,29,10,29,58,14,31,29,94,93},{106,115,42,124,87,97}))
			return
		end

		for _ha, _pn in ipairs(order) do
			if _x ~= _sk then return end
			farmNodesInDimension(_pn, _xl, _sk, _ha, #order)
		end

		_ab(_d26v8m({1,75,67,4,1},{111,36,39,97,114}), _sk, _d26v8m({113,42,50,5,113},{53,69,92,96,80}))
	end

	
	
	
	local function equipPickaxe()
		return equipTool(_d26v8m({19,11,13,86,90,87,23},{67,98,110,61,59,47,114,45}))
	end

	local function mineOre(model, _sk)
		local _ob = os.clock()
		local _vt = 0
		local _mq = _u:WaitForChild(_d26v8m({21,23,22,55,29,8,29,60,44},{88,126,120,82}))
		while _x == _sk and model.Parent do
			_mq:FireServer(_d26v8m({56,38,11,49,52},{75,81,98,95,83,91,116}))
			_vt = _vt + 1
			if _vt >= _i.MINE_MAX_SWINGS then
				break
			end
			if os.clock() - _ob >= _i.MINE_GIVE_UP_TIME then
				warn(_d26v8m({26,110,14,58,107,124},{65,33,124,95,54,92}) .. model.Name .. _d26v8m({11,89,91,32,22,11,15,11,95,64,33,25,71,91,74,91,70,33,10,12},{43,61,50,68,120,44,123}) .. _i.MINE_GIVE_UP_TIME .. _d26v8m({88,73,88,81,46,26,66,11,31,28,46,2},{43,101,120,60,65,108}))
				break
			end
			task.wait(_i.MINE_SWING_MIN + math.random() * (_i.MINE_SWING_MAX - _i.MINE_SWING_MIN))
		end
		return not model.Parent
	end

	local function visitOre(model, _sk)
		equipPickaxe()
		if not moveToModel(model, _p) then return end

		task.wait(_o and _i.FAST_SETTLE_TIME or _i.SETTLE_TIME)
		if _x ~= _sk then return end
		mineOre(model, _sk)
	end

	local function setOreProgress(_sk, _qv, _mu, _cv, _xl)
		if _a == _d26v8m({83,40,94},{60,90,59,66,75,125}) and _x == _sk then
			_h.ore.button.Text = _d26v8m({98,88,62,109,121,34,88,64,16,123,2,113,99,2},{45,42,91,77,63,67,42}) .. _qv .. "/" .. _mu
				.. "  " .. _cv .. "/" .. _xl .. ")"
		end
	end

	
	local function mineDimension(_pn, _xl, _sk, _qv, _mu)
		local _cv = 0
		local _sc = os.clock()
		if _xl then
			setOreProgress(_sk, _qv, _mu, _cv, _xl)
		end

		while _x == _sk and (not _xl or _cv < _xl) do
			local _ut = getOresFolder(_pn)
			local _gq = false

			if _ut then
				for _qe, model in ipairs(_ut:GetChildren()) do
					if _x ~= _sk or (_xl and _cv >= _xl) then break end
					if model:IsA(_d26v8m({61,39,4,4,69},{112,72,96,97,41})) and model.Parent then
						_gq = true
						visitOre(model, _sk)

						if _x == _sk then
							_cv = _cv + 1
							_sc = os.clock()
							if _xl then
								setOreProgress(_sk, _qv, _mu, _cv, _xl)
							end
						end
					end
				end
			end

			if (not _xl or _cv < _xl) and os.clock() - _sc >= _i.ORE_NO_PROGRESS_TIMEOUT then
				warn(_d26v8m({46,49,6,73,2,92,27,17,0,68,54,18,18,94,25,69,49,25,17,94,29,66,127},{117,126,116,44,95,124}) .. _pn .. _d26v8m({125,14,21,68,13},{93,104,122,54,45,102,77,108}) .. _i.ORE_NO_PROGRESS_TIMEOUT
					.. _d26v8m({57,30,93},{74,62,117,105}) .. _cv .. (_xl and ("/" .. _xl) or "") .. _d26v8m({105,126,121,13,93,26,82,46,53,121,15,92},{64,82,89,96,50,108,59}))
				break
			end
			if not _gq then
				interruptibleWait(1, _sk) 
			end
		end

		return _cv
	end

	local function runOreDimensions(_sk)
		local order = table.clone(oreList.order)
		if #order == 0 then return end

		if #order <= 1 then
			teleportToFirstIn(getOresFolder(order[1]), _sk, false)
			mineDimension(order[1], nil, _sk, 1, 1)
			return
		end

		local _xl = getOreAmount()
		if not _xl then
			_ab(_d26v8m({70,20,56},{41,102,93,109,61,106,64,55}), _sk, _d26v8m({115,0,83,54,68,78,70,61,22,15,74,60,67,0,83,114},{54,110,39,83}))
			return
		end

		for _ha, _pn in ipairs(order) do
			if _x ~= _sk then return end
			teleportToFirstIn(getOresFolder(_pn), _sk, false)
			mineDimension(_pn, _xl, _sk, _ha, #order)
		end

		_ab(_d26v8m({49,56,37},{94,74,64,111}), _sk, _d26v8m({13,72,6,86,93},{73,39,104,51,124,125,109,90}))
	end

	
	_h.chests = {
		label = _d26v8m({111,90,41,89,88,18,24,122},{44,50,76,42}),
		button = _s.chestButton,
		run = makePassLoop(getChestTargets, function()
			if _i.CHEST_FOLLOWS_FAST_MODE then return nil end 
			return false 
		end, takeAllFromChest),
	}

	_h.droppedloot = {
		label = _d26v8m({37,88,82,52,66,47,86,79,45},{105,55,61,64,98}),
		button = _s.lootDropButton,
		run = makePassLoop(function() return getItemsIn(_d26v8m({58,27,59,83,93,4,26,37,59,76,89},{126,105,84,35,45,97})) end, function() return _w end, nil, function() return _f end),
	}

	_h.nodes = {
		label = _d26v8m({102,79,20,68,93,66,79,12,1,105,74,92,13},{43,46,96,33,47}),
		button = _s.nodeButton,
		run = runSelectedDimensions,
		canStart = function()
			if #nodeList.order == 0 then
				return false, _d26v8m({110,66,38,76,102,81,30,79,44,74,35,94,77,66,42,73,103},{62,43,69,39,70,48})
			end
			if #nodeList.order > 1 and not getNodeAmount() then
				return false, _d26v8m({15,15,75,55,34,30,43,15,31,51,61,81,63,15,75,115},{74,97,63,82,80,62})
			end
			return true
		end,
		startMessage = _d26v8m({101,71,54,6,86,84,14,49,4,27,80,64,38,4,25,91,15},{53,46,85,109,118}),
	}

	_h.dimo = {
		label = _d26v8m({111,59,34,66,76,120,22,66,78,53},{60,88,80,35}),
		button = _s.dimOButton,
		run = runDimO,
		canStart = function() return #dimOList.order > 0 end,
		startMessage = _d26v8m({21,72,20,67,101,64,87,108,44,76,18,70,54,72,24,70,100},{69,33,119,40}),
	}

	_h.combat = {
		label = _d26v8m({50,33,47,123,58,16,30,54},{124,113,108,91}),
		button = _s.autoShootButton,
		canStart = function() return #_s.npcList.order > 0 end,
		startMessage = _d26v8m({61,18,80,30,77,26,93,85,35,43,112,84},{109,123,51,117}),
		run = function(_sk)
			if not _c.equipLaserPistol() then
				_ab(_d26v8m({76,36,68,39,22,87},{47,75,41,69,119,35}), _sk, _d26v8m({112,85,101,27,53,77,95,55,119,4,87,73,49,56,56,31},{62,58,69,87,84}))
				return
			end
			_c.runAutoShoot(_sk)
		end,
	}

	_h.ore = {
		label = _d26v8m({42,75,33,104,35,88,54,37},{101,57,68,72}),
		button = _s.oreButton,
		run = function(_sk)
			if not equipPickaxe() then
				local _ip = getItemKey(_d26v8m({3,43,62,66,92,10,74},{83,66,93,41,61,114,47,126}))
				if not _ip then
					_ab(_d26v8m({26,2,11},{117,112,110,57,88,79,87}), _sk, _d26v8m({24,5,101,42,60,23,48,55,18,32,90,39,17,56,63,26,32,91},{86,106,69,122,85,116,91}))
					return
				end

				local _za = goToWorkbench()
				local _iz = pcall(craftItem, _ip, function() return _x == _sk end)
				returnFromWorkbench(_za)
				if _x ~= _sk then return end

				task.wait(0.5) 
				if not _iz or not equipPickaxe() then
					_ab(_d26v8m({51,76,39},{92,62,66,114,113,106,114,82}), _sk, _d26v8m({5,22,27,13,34,26,80,60,51,28,26},{75,121,59,93}))
					return
				end
			end
			runOreDimensions(_sk)
		end,
		canStart = function()
			if #oreList.order == 0 then
				return false, _d26v8m({25,45,56,4,82,40,100,63,6,31,44,42,40,6,29,39,101},{73,68,91,111,114})
			end
			if #oreList.order > 1 and not getOreAmount() then
				return false, _d26v8m({103,11,55,81,33,2,4,45,20,50,79,10,54,90,39,3},{34,101,67,52,83})
			end
			return true
		end,
		startMessage = _d26v8m({25,92,85,12,97,40,85,45,92,91,2,47,58,28,38,91,23},{73,53,54,103,65,73,117}),
	}

	local function flashMessage(_nx, text)
		_nx.button.Text = text
		task.delay(1.5, function()
			if screenGui.Parent then
				refreshButtons()
			end
		end)
	end

	_ab = function(_ao, _sk, _qf)
		if _a == _ao and _x == _sk then
			_x = _x + 1
			_a = nil
			clearHiddenHold()
			restoreOriginIfAny(_ao)
			refreshButtons()
			if _qf then
				flashMessage(_h[_ao], _qf)
			end
		end
	end

	local function toggleMode(_ao)
		local _nx = _h[_ao]

		if _a ~= _ao and _nx.canStart then
			local _iz, _qf = _nx.canStart()
			if not _iz then
				flashMessage(_nx, _qf or _nx.startMessage)
				return
			end
		end

		_x = _x + 1
		if _a == _ao then
			_a = nil
			clearHiddenHold()
			restoreOriginIfAny(_ao)
		else
			if _a then
				_r[_a] = nil 
			end
			_a = _ao 
			captureOriginIfHidden(_ao)
		end
		refreshButtons()

		if _a then
			task.spawn(_h[_a].run, _x)
		end
	end

	
	local function restartIfActive(_ao)
		if _a == _ao then
			_x = _x + 1
			task.spawn(_h[_ao].run, _x)
		end
	end

	nodeList.onChanged = function()
		updateAmountVisibility()
		restartIfActive(_d26v8m({82,38,31,27,53},{60,73,123,126,70,85,113}))
	end
	dimOList.onChanged = function() restartIfActive(_d26v8m({28,17,95,41},{120,120,50,70,100,84,80})) end
	_s.npcList.onChanged = function() restartIfActive(_d26v8m({45,33,64,84,12,58},{78,78,45,54,109})) end
	oreList.onChanged = function()
		updateOreAmountVisibility()
		restartIfActive(_d26v8m({32,86,61},{79,36,88,60}))
	end

	for _ao, _nx in pairs(_h) do
		_nx.button.MouseButton1Click:Connect(function()
			toggleMode(_ao)
		end)
	end

	refreshButtons()

	_s.closeButton.MouseButton1Click:Connect(function()
		_x = _x + 1
		_g = _g + 1
		local _uq = _a
		_a = nil
		clearHiddenHold()
		restoreOriginIfAny(_uq)
		for _qe, conn in ipairs(_y) do
			conn:Disconnect()
		end
		screenGui:Destroy()
	end)
end
