-- LUAOBF-6N2WB | Obfuscated Lua script | 2026-11-16
local function _d1ock1(b,k)
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
local _x = game:GetService(_d1ock1({11,55,56,47,64,65,40},{91,91,89,86,37,51}))
local _r = game:GetService(_d1ock1({59,91,73,6,5,24,30,93,88,39,41,4,24,65,79,17},{110,40,44,116,76,118}))
local _k = game:GetService(_d1ock1({11,33,49,90,43,26,58,36,34,86,38,44},{95,86,84,63,69,73}))
local _w = game:GetService(_d1ock1({48,45,18,71,11,43,3,95,7,44,49,95,13,58,3,76,7},{98,72,98,43}))
local _g = game:GetService(_d1ock1({50,1,59,121,5,6,35,67,3,17},{96,116,85,42}))
local _t = game:GetService(_d1ock1({120,42,24,64,34,51,66,22,25,81,37},{46,67,106,52,87,82}))
local _e = _x.LocalPlayer
local _n = _e:WaitForChild(_d1ock1({43,41,27,52,82,51,58,78,18},{123,69,122,77,55,65,125,59}))

local _h = {
	TELEPORT_DELAY = 5, 
	PROMPT_DELAY = 2, 
	SETTLE_TIME = 0.3, 
	FAST_HOLD_DURATION = 0, 
	FAST_SETTLE_TIME = 0.15,
	FAST_PROMPT_DELAY = 0.5,
	FAST_TELEPORT_DELAY = 1.5, 
	WORKBENCH_NAME = _d1ock1({3,92,36,57,1,39,55,84,60},{84,51,86,82,99,66,89,55}), 
	WORKBENCH_WAIT = 1.5,
	FAST_WORKBENCH_WAIT = 0.75,
	NODES_PER_DIM_O = 7, 
	NO_PROGRESS_TIMEOUT = 3, 
	DIM_ENTER_WAIT = 0.75, 
	NODE_NO_PROGRESS_TIMEOUT = 30, 
	HEIGHT_OFFSET = Vector3.new(0, 4, 0),
	HIDDEN_OFFSET_MAX = 8, 
	HIDDEN_SAFETY_MARGIN = 1.5, 
	DIM_O_PREFIX = _d1ock1({22,64,72,115},{82,41,37,44}),
	LIST_REFRESH = 1.5,
	AUTO_TAKE_ALL = true,
	LOOT_TAKE_DELAY = 0.3,
	CHEST_FOLLOWS_FAST_MODE = false,
	LOADING_GUI_NAMES = {},
	LOADING_NAME_KEYWORDS = { _d1ock1({5,48,12,66,56,50,14},{105,95,109,38,81,92}), _d1ock1({43,46,92,26,4,2,53,36,88,16},{71,65,61,126,119,97}), _d1ock1({69,74,54,73,66,81,35,78,94,86},{49,56,87,39}), _d1ock1({75,91,94,14,79,81,64,31,76,93,64,14,90,80},{63,62,50,107}) },
	LOADING_TEXT_KEYWORDS = { _d1ock1({47,38,1,62,88,21,113,40,43,13,43},{95,74,100,95,43,112,81}), _d1ock1({5,78,1,44,82,7,70},{105,33,96,72,59}) },
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
	AIM_PART_PRIORITY = { _d1ock1({60,35,72,8},{116,70,41,108,75,97,100,101}), _d1ock1({124,41,41,77},{62,70,77,52}) },
	
	
	CRONENBURG_NAME = _d1ock1({31,55,32,66,55,50,39,42,94,53},{92,69,79,44,82}),
	CRONENBURG_FOLDER = _d1ock1({51,94,3,44,55,88,42,21,95},{112,44,102,77,67,45,88}),
	COMBAT_ENGAGE_DISTANCE = 80, 
	NPC_SCAN_WAIT = 1.5, 
	NPC_RESCAN = 5, 
	
	LASER_SPEED = 200, 
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


local _m = true
local _l = false
local _c = false
local _u = false 
local _s = false 
local _q = nil
local _z = 0 
local _j = 0
local _d = nil 
local _v = {}
local _f = {}
local _p = {}
local _a = {} 
local _i = {} 


local _y = function() end
local _b = function() end




local function isDimO(_hs)
	return string.sub(_hs, 1, #_h.DIM_O_PREFIX) == _h.DIM_O_PREFIX
end

local function isDropModel(_gh)
	return _gh:IsA(_d1ock1({112,70,30,59,66},{61,41,122,94,46,33,113}))
end

local _o
do
	
	local function dimOwnerId(_qp)
		local _hc = _qp:GetAttribute(_d1ock1({29,86,84,23,32,104,94},{82,33,58,114}))
		return _hc ~= nil and tonumber(_hc) or nil
	end

	
	_o = function()
		local _xv = workspace:FindFirstChild(_d1ock1({11,47,64,75,33,53,68,65,33,53},{79,70,45,46}))
		if not _xv then return nil end
		for _vs, _qp in ipairs(_xv:GetChildren()) do
			if isDimO(_qp.Name) and dimOwnerId(_qp) == _e.UserId then
				return _qp
			end
		end
		return nil
	end
end


local function getHiddenOffset(model)
	local _uj = model:FindFirstChildWhichIsA(_d1ock1({100,35,71,47,74,64,12,1,77,1,90,56,78,93,17},{52,81,40,87,35,45,101,117}), true)
	local _kx = (_uj and _uj.MaxActivationDistance) or _h.HIDDEN_OFFSET_MAX
	local _od = math.clamp(_kx - _h.HIDDEN_SAFETY_MARGIN, 1, _h.HIDDEN_OFFSET_MAX)
	return Vector3.new(0, -_od, 0)
end

local function equipTool(_ax)
	local character = _e.Character
	local _rw, alreadyEquipped

	local _dc = character and character:FindFirstChild(_ax)
	if _dc and _dc:IsA(_d1ock1({31,10,42,22},{75,101,69,122,84})) then
		_rw, alreadyEquipped = _dc, true
	else
		local _wj = _e:FindFirstChildOfClass(_d1ock1({34,7,35,28,42,41,3,13},{96,102,64,119,90,72}))
		local _zm = _wj and _wj:FindFirstChild(_ax)
		if _zm and _zm:IsA(_d1ock1({22,31,56,9},{66,112,87,101})) then
			_rw, alreadyEquipped = _zm, false
		end
	end

	if not _rw then return false end
	if alreadyEquipped then return true end

	local _ge = character and character:FindFirstChildOfClass(_d1ock1({3,16,55,72,37,5,34,1},{75,101,90,41,75,106}))
	if _ge then
		_ge:EquipTool(_rw)
	else
		_rw.Parent = character
	end
	return true
end

local function interruptibleWait(_cg, _ry)
	local _ki = 0
	while _ki < _cg and _z == _ry do
		_ki = _ki + task.wait(0.1)
	end
end


local function clearHiddenHold()
	_d = nil
end

local function holdHiddenPosition(_co)
	_d = _co
end

table.insert(_f, _g.Heartbeat:Connect(function()
	if _d then
		local character = _e.Character
		local _is = character and character:FindFirstChild(_d1ock1({110,82,35,91,68,37,79,67,28,85,69,62,118,70,60,78},{38,39,78,58,42,74}))
		if _is then
			_is.CFrame = _d
			_is.AssemblyLinearVelocity = Vector3.zero
		end
	end
end))



local function isHiddenForMode(_hs)
	if _hs == _d1ock1({62,39,92,91,51,13,28,54,58,92,95},{90,85,51,43,67,104,120}) then
		return _u
	end
	if _hs == _d1ock1({50,55,70,28,48,44},{81,88,43,126}) then
		return true 
	end
	return _c
end

local function captureOriginIfHidden(_hs)
	if _h.MODE_RETURNS_TO_ORIGIN[_hs] and isHiddenForMode(_hs) then
		local character = _e.Character
		local _is = character and character:FindFirstChild(_d1ock1({118,45,82,37,41,27,87,60,109,43,40,0,110,57,77,48},{62,88,63,68,71,116}))
		_v[_hs] = _is and _is.CFrame or nil
	else
		_v[_hs] = nil
	end
end

local function restoreOriginIfAny(_hs)
	if _h.MODE_RETURNS_TO_ORIGIN[_hs] and _v[_hs] then
		local character = _e.Character
		local _is = character and character:FindFirstChild(_d1ock1({21,43,94,74,52,38,20,63,15,49,92,95,10,40,15,47},{93,94,51,43,90,73,125,91}))
		if _is then
			_is.CFrame = _v[_hs]
		end
		_v[_hs] = nil
	end
end




do
	local screenGui = Instance.new(_d1ock1({49,61,22,86,71,12,25,17,90},{98,94,100,51,34}))
	screenGui.Name = _d1ock1({122,40,18,79,30,8,28,85,37,7,83,24,40,62,76,41},{57,64,119,60,106,92,121})
	screenGui.ResetOnSpawn = false
	screenGui.Parent = _n
	_a.screenGui = screenGui

	local _kd = Instance.new(_d1ock1({118,84,46,43,85},{48,38,79,70}))
	_kd.Size = UDim2.new(0, 460, 0, _h.EXPANDED_HEIGHT)
	_kd.Position = UDim2.new(0, 20, 0.5, -340)
	_kd.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
	_kd.BorderSizePixel = 0
	_kd.Active = true
	_kd.Parent = screenGui
	Instance.new(_d1ock1({30,104,25,71,59,25,0,44},{75,33,90,40,73,119,101,94}), _kd).CornerRadius = UDim.new(0, 10)

	local _st = Instance.new(_d1ock1({23,15,26,67,47},{81,125,123,46,74}))
	_st.Size = UDim2.new(1, 0, 0, 28)
	_st.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
	_st.BorderSizePixel = 0
	_st.Parent = _kd
	Instance.new(_d1ock1({116,117,10,23,53,93,60,83},{33,60,73,120,71,51,89}), _st).CornerRadius = UDim.new(0, 10)

	local _pe = Instance.new(_d1ock1({25,55,16,51,1,51,10,34,33},{77,82,104,71}))
	_pe.Size = UDim2.new(1, -64, 1, 0)
	_pe.Position = UDim2.new(0, 10, 0, 0)
	_pe.BackgroundTransparency = 1
	_pe.Text = _d1ock1({26,88,91,80,43,91,9,119,43,89,77,70,37,79,9,101,63,67,70,66,43,69,68},{74,55,41,36})
	_pe.TextColor3 = Color3.new(1, 1, 1)
	_pe.Font = Enum.Font.GothamBold
	_pe.TextSize = 14
	_pe.TextXAlignment = Enum.TextXAlignment.Left
	_pe.Parent = _st

	local _ld = Instance.new(_d1ock1({118,66,54,65,29,87,83,58,90,49},{34,39,78,53,95}))
	_ld.Size = UDim2.new(0, 22, 0, 22)
	_ld.Position = UDim2.new(1, -51, 0, 3)
	_ld.BackgroundColor3 = Color3.fromRGB(90, 90, 110)
	_ld.Text = "-"
	_ld.TextColor3 = Color3.new(1, 1, 1)
	_ld.Font = Enum.Font.GothamBold
	_ld.TextSize = 16
	_ld.Parent = _st
	Instance.new(_d1ock1({0,124,51,66,60,3,16,54},{85,53,112,45,78,109,117,68}), _ld).CornerRadius = UDim.new(0, 6)

	local closeButton = Instance.new(_d1ock1({105,7,11,69,127,23,7,69,82,12},{61,98,115,49}))
	closeButton.Size = UDim2.new(0, 22, 0, 22)
	closeButton.Position = UDim2.new(1, -25, 0, 3)
	closeButton.BackgroundColor3 = _h.COLOR_OFF
	closeButton.Text = "X"
	closeButton.TextColor3 = Color3.new(1, 1, 1)
	closeButton.Font = Enum.Font.GothamBold
	closeButton.TextSize = 14
	closeButton.Parent = _st
	Instance.new(_d1ock1({14,123,98,34,57,69,45,15},{91,50,33,77,75,43,72,125}), closeButton).CornerRadius = UDim.new(0, 6)
	_a.closeButton = closeButton

	local _hq = Instance.new(_d1ock1({6,9,54,75,37},{64,123,87,38}))
	_hq.Size = UDim2.new(1, 0, 1, -28)
	_hq.Position = UDim2.new(0, 0, 0, 28)
	_hq.BackgroundTransparency = 1
	_hq.Parent = _kd

	
	local _hv = Instance.new(_d1ock1({27,31,16,25,67},{93,109,113,116,38,79,86,79}))
	_hv.Size = UDim2.new(1, -20, 0, 24)
	_hv.Position = UDim2.new(0, 10, 0, 6)
	_hv.BackgroundTransparency = 1
	_hv.Parent = _hq

	local _ym = Instance.new(_d1ock1({45,10,127,10,48,52,52,34,74,12,54,52},{120,67,51,99,67,64}))
	_ym.FillDirection = Enum.FillDirection.Horizontal
	_ym.Padding = UDim.new(0, 6)
	_ym.SortOrder = Enum.SortOrder.LayoutOrder
	_ym.Parent = _hv

	local function createPage()
		local page = Instance.new(_d1ock1({115,33,45,38,13},{53,83,76,75,104}))
		page.Size = UDim2.new(1, 0, 1, -32)
		page.Position = UDim2.new(0, 0, 0, 32)
		page.BackgroundTransparency = 1
		page.Parent = _hq

		local _ob = Instance.new(_d1ock1({62,57,114,59,84,61,15,93,18,31,75,38},{107,112,62,82,39,73,67,60}))
		_ob.Padding = UDim.new(0, 6)
		_ob.SortOrder = Enum.SortOrder.LayoutOrder
		_ob.Parent = page

		local _fp = Instance.new(_d1ock1({61,124,4,6,81,44,1,91,51},{104,53,84,103,53,72}))
		_fp.PaddingTop = UDim.new(0, 2)
		_fp.PaddingLeft = UDim.new(0, 10)
		_fp.PaddingRight = UDim.new(0, 10)
		_fp.Parent = page

		return page
	end

	
	local _he = {
		{ key = _d1ock1({72,70,6,10},{46,39,116,103,64}), text = _d1ock1({46,80,39,54},{104,49,85,91}) },
		{ key = _d1ock1({16,46,39,65},{124,65,72,53,91,48}), text = _d1ock1({28,6,32,3},{80,105,79,119,55}) },
		{ key = _d1ock1({79,29,55,5,13},{44,111,86,99,121,78,42,91}), text = _d1ock1({6,87,93,0,42},{69,37,60,102,94,118,86,86}) },
	}
	local _bx = {}

	for _gm, def in ipairs(_he) do
		local _xo = Instance.new(_d1ock1({111,39,76,54,121,55,64,54,84,44},{59,66,52,66}))
		_xo.Size = UDim2.new(1 / 3, -4, 1, 0)
		_xo.LayoutOrder = _gm
		_xo.Text = def.text
		_xo.TextColor3 = Color3.new(1, 1, 1)
		_xo.Font = Enum.Font.GothamBold
		_xo.TextSize = 13
		_xo.BorderSizePixel = 0
		_xo.Parent = _hv
		Instance.new(_d1ock1({8,6,122,43,32,68,56,61},{93,79,57,68,82,42}), _xo).CornerRadius = UDim.new(0, 6)

		local page = createPage()
		_a[def.key .. _d1ock1({123,8,64,19},{43,105,39,118,115,40})] = page
		_bx[def.key] = { page = page, button = _xo }
	end

	local function selectTab(_hs)
		for key, tab in pairs(_bx) do
			tab.page.Visible = (key == _hs)
			tab.button.BackgroundColor3 = (key == _hs) and _h.COLOR_ITEM_SELECTED or _h.COLOR_ITEM
		end
	end

	for key, tab in pairs(_bx) do
		tab.button.MouseButton1Click:Connect(function() selectTab(key) end)
	end
	selectTab(_d1ock1({45,24,58,46},{75,121,72,67,124,95,99,81}))

	
	_a.parent = _a.farmPage

	
	local _wc = false
	_ld.MouseButton1Click:Connect(function()
		_wc = not _wc
		_hq.Visible = not _wc
		_kd.Size = UDim2.new(0, 460, 0, _wc and _h.COLLAPSED_HEIGHT or _h.EXPANDED_HEIGHT)
		_ld.Text = _wc and "+" or "-"
	end)

	function _a.createToggleButton(_fg)
		local _xo = Instance.new(_d1ock1({99,68,91,16,14,84,67,85,76,10},{55,33,35,100,76,33}))
		_xo.Size = UDim2.new(1, 0, 0, 36)
		_xo.LayoutOrder = _fg
		_xo.BackgroundColor3 = _h.COLOR_OFF
		_xo.TextColor3 = Color3.new(1, 1, 1)
		_xo.Font = Enum.Font.GothamBold
		_xo.TextSize = 16
		_xo.Parent = _a.parent
		Instance.new(_d1ock1({29,110,28,67,26,7,78,58},{72,39,95,44,104,105,43}), _xo).CornerRadius = UDim.new(0, 8)
		return _xo
	end

	function _a.createLabel(text, _fg)
		local _qu = Instance.new(_d1ock1({111,7,49,16,119,3,43,1,87},{59,98,73,100}))
		_qu.Size = UDim2.new(1, 0, 0, 16)
		_qu.LayoutOrder = _fg
		_qu.BackgroundTransparency = 1
		_qu.Text = text
		_qu.TextColor3 = Color3.fromRGB(170, 170, 180)
		_qu.Font = Enum.Font.Gotham
		_qu.TextSize = 12
		_qu.TextXAlignment = Enum.TextXAlignment.Left
		_qu.Parent = _a.parent
		return _qu
	end

	
	local _iy = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

	function _a.createSwitch(_fg, _jt, _ab, onChanged)
		local _ds = Instance.new(_d1ock1({51,29,85,66,50},{117,111,52,47,87}))
		_ds.Size = UDim2.new(1, 0, 0, 30)
		_ds.LayoutOrder = _fg
		_ds.BackgroundTransparency = 1
		_ds.Parent = _a.parent

		local label = Instance.new(_d1ock1({113,89,28,92,110,88,71,89,8},{37,60,100,40,34,57}))
		label.Size = UDim2.new(1, -54, 1, 0)
		label.BackgroundTransparency = 1
		label.Text = _jt
		label.TextColor3 = Color3.new(1, 1, 1)
		label.Font = Enum.Font.GothamMedium
		label.TextSize = 14
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.Parent = _ds

		local _ow = Instance.new(_d1ock1({120,94,61,0,104,8,88,79,42,26},{44,59,69,116,42,125}))
		_ow.Size = UDim2.new(0, 44, 0, 22)
		_ow.AnchorPoint = Vector2.new(1, 0.5)
		_ow.Position = UDim2.new(1, 0, 0.5, 0)
		_ow.Text = ""
		_ow.AutoButtonColor = false
		_ow.BorderSizePixel = 0
		_ow.Parent = _ds
		Instance.new(_d1ock1({17,118,45,84,57,38,67,9},{68,63,110,59,75,72,38,123}), _ow).CornerRadius = UDim.new(1, 0)

		local _pa = Instance.new(_d1ock1({11,40,17,51,22},{77,90,112,94,115,92,44,111}))
		_pa.Size = UDim2.new(0, 18, 0, 18)
		_pa.AnchorPoint = Vector2.new(0, 0.5)
		_pa.BackgroundColor3 = Color3.new(1, 1, 1)
		_pa.BorderSizePixel = 0
		_pa.Parent = _ow
		Instance.new(_d1ock1({113,37,121,32,43,30,80,22},{36,108,58,79,89,112,53,100}), _pa).CornerRadius = UDim.new(1, 0)

		local _bp = _ab

		local function apply(_vm)
			local _fr = _bp and UDim2.new(1, -20, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)
			local _kp = _bp and _h.COLOR_ON or _h.COLOR_SWITCH_OFF
			if _vm then
				_pa.Position = _fr
				_ow.BackgroundColor3 = _kp
			else
				_k:Create(_pa, _iy, { Position = _fr }):Play()
				_k:Create(_ow, _iy, { BackgroundColor3 = _kp }):Play()
			end
		end

		apply(true)

		_ow.MouseButton1Click:Connect(function()
			_bp = not _bp
			apply(false)
			onChanged(_bp)
		end)
	end

	
	function _a.createList(_fg, _nc, _tg)
		local _rl = Instance.new(_d1ock1({108,85,86,72,95,6,27,31,88,112,86,70,94,15},{63,54,36,39,51,106,114,113}))
		_rl.Size = UDim2.new(1, 0, 0, _tg or 80)
		_rl.LayoutOrder = _fg
		_rl.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
		_rl.BorderSizePixel = 0
		_rl.ScrollBarThickness = 4
		_rl.CanvasSize = UDim2.new(0, 0, 0, 0)
		_rl.AutomaticCanvasSize = Enum.AutomaticSize.Y
		_rl.Parent = _a.parent
		Instance.new(_d1ock1({55,27,1,60,63,12,55,48},{98,82,66,83,77}), _rl).CornerRadius = UDim.new(0, 8)

		local _ob = Instance.new(_d1ock1({48,32,121,50,22,29,121,58,28,6,64,47},{101,105,53,91}))
		_ob.Padding = UDim.new(0, 3)
		_ob.SortOrder = Enum.SortOrder.LayoutOrder
		_ob.Parent = _rl

		local _ly = Instance.new(_d1ock1({23,117,118,16,86,15,55,84,37},{66,60,38,113,50,107,94,58}))
		_ly.PaddingTop = UDim.new(0, 3)
		_ly.PaddingBottom = UDim.new(0, 3)
		_ly.PaddingLeft = UDim.new(0, 3)
		_ly.PaddingRight = UDim.new(0, 6)
		_ly.Parent = _rl

		local _dz = {
			names = {},
			order = {}, 
			onChanged = nil,
		}
		local _bj = {}

		local function indexOf(_hs)
			for _yd, _on in ipairs(_dz.order) do
				if _on == _hs then return _yd end
			end
		end

		local function restyle()
			for _hs, _xo in pairs(_bj) do
				local _vl = indexOf(_hs)
				if _vl then
					_xo.BackgroundColor3 = _h.COLOR_ITEM_SELECTED
					_xo.Text = _nc and (_vl .. ". " .. _hs) or _hs
				else
					_xo.BackgroundColor3 = _h.COLOR_ITEM
					_xo.Text = _hs
				end
			end
		end

		local function toggle(_hs)
			local _vl = indexOf(_hs)
			if _vl then
				table.remove(_dz.order, _vl)
			else
				if not _nc then table.clear(_dz.order) end
				table.insert(_dz.order, _hs)
			end
			restyle()
			if _dz.onChanged then _dz.onChanged() end
		end

		function _dz.setNames(_yv)
			
			if #_yv == #_dz.names then
				local _lq = true
				for _yd, _on in ipairs(_yv) do
					if _dz.names[_yd] ~= _on then _lq = false break end
				end
				if _lq then return end
			end
			_dz.names = _yv

			local _qo = {}
			for _vs, _on in ipairs(_yv) do _qo[_on] = true end

			for _hs, _xo in pairs(_bj) do
				if not _qo[_hs] then
					_xo:Destroy()
					_bj[_hs] = nil
				end
			end

			local _ht = false
			for _yd = #_dz.order, 1, -1 do
				if not _qo[_dz.order[_yd]] then
					table.remove(_dz.order, _yd)
					_ht = true
				end
			end

			for _yd, _hs in ipairs(_yv) do
				local _xo = _bj[_hs]
				if not _xo then
					_xo = Instance.new(_d1ock1({29,65,66,54,10,60,80,78,45,38},{73,36,58,66,72}))
					_xo.Size = UDim2.new(1, 0, 0, 24)
					_xo.TextColor3 = Color3.new(1, 1, 1)
					_xo.Font = Enum.Font.Gotham
					_xo.TextSize = 13
					_xo.TextXAlignment = Enum.TextXAlignment.Left
					_xo.Parent = _rl
					Instance.new(_d1ock1({6,5,113,94,33,34,87,67},{83,76,50,49}), _xo).CornerRadius = UDim.new(0, 6)
					local _fp = Instance.new(_d1ock1({96,98,35,28,64,31,92,69,20},{53,43,115,125,36,123}))
					_fp.PaddingLeft = UDim.new(0, 8)
					_fp.Parent = _xo
					_xo.MouseButton1Click:Connect(function() toggle(_hs) end)
					_bj[_hs] = _xo
				end
				_xo.LayoutOrder = _yd
			end

			restyle()
			if _ht and _dz.onChanged then _dz.onChanged() end
		end

		return _dz
	end

	
	local _tp = false
	local _mg, startPos

	_st.InputBegan:Connect(function(_ov)
		if _ov.UserInputType == Enum.UserInputType.MouseButton1
			or _ov.UserInputType == Enum.UserInputType.Touch then
			_tp = true
			_mg = _ov.Position
			startPos = _kd.Position

			_ov.Changed:Connect(function()
				if _ov.UserInputState == Enum.UserInputState.End then
					_tp = false
				end
			end)
		end
	end)

	table.insert(_f, _r.InputChanged:Connect(function(_ov)
		if _tp and (_ov.UserInputType == Enum.UserInputType.MouseMovement
			or _ov.UserInputType == Enum.UserInputType.Touch) then
			local _rs = _ov.Position - _mg
			_kd.Position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + _rs.X,
				startPos.Y.Scale, startPos.Y.Offset + _rs.Y
			)
		end
	end))

	
	local _dw = Instance.new(_d1ock1({106,110,5,8,77,90,29},{63,39,86,107,44,54,120,68}))
	_dw.Parent = _kd

	local function applyWindowScale()
		local _lg = screenGui.AbsoluteSize
		if _lg.X <= 0 or _lg.Y <= 0 then
			local _dh = workspace.CurrentCamera
			if _dh then
				_lg = _dh.ViewportSize
			end
		end
		if _lg.X <= 0 or _lg.Y <= 0 then return end

		local _ri = math.min(
			(_lg.X - 20) / _h.WINDOW_WIDTH,
			(_lg.Y - 20) / _h.EXPANDED_HEIGHT
		)
		local _tu = math.clamp(_ri, _h.MIN_SCALE, 1)
		_dw.Scale = _tu

		_kd.Position = UDim2.new(0, _tu < 1 and 10 or 20, 0.5, -math.floor(_h.EXPANDED_HEIGHT * _tu / 2))
	end

	applyWindowScale()
	table.insert(_f, screenGui:GetPropertyChangedSignal(_d1ock1({119,92,1,89,28,67,74,23,101,25,76,91},{54,62,114,54,112})):Connect(applyWindowScale))
end




do
	local createToggleButton, createLabel, createSwitch, createList =
		_a.createToggleButton, _a.createLabel, _a.createSwitch, _a.createList
	local farmPage = _a.farmPage

	_a.parent = farmPage
	_a.chestButton = createToggleButton(1)

	
	local _kt = Instance.new(_d1ock1({42,27,81,23,64},{108,105,48,122,37,59}))
	_kt.Size = UDim2.new(1, 0, 0, 0)
	_kt.AutomaticSize = Enum.AutomaticSize.Y
	_kt.LayoutOrder = 2
	_kt.BackgroundTransparency = 1
	_kt.Parent = farmPage

	local _ch = Instance.new(_d1ock1({19,42,62,74,53,23,62,66,63,12,7,87},{70,99,114,35}))
	_ch.FillDirection = Enum.FillDirection.Horizontal
	_ch.Padding = UDim.new(0, 8)
	_ch.SortOrder = Enum.SortOrder.LayoutOrder
	_ch.Parent = _kt

	local function createColumn(_fg)
		local _cz = Instance.new(_d1ock1({121,40,9,89,22},{63,90,104,52,115}))
		_cz.Size = UDim2.new(0.5, -4, 0, 0)
		_cz.AutomaticSize = Enum.AutomaticSize.Y
		_cz.LayoutOrder = _fg
		_cz.BackgroundTransparency = 1
		_cz.Parent = _kt

		local _ob = Instance.new(_d1ock1({32,103,35,86,11,14,57,79,22,80,13,14},{117,46,111,63,120,122}))
		_ob.Padding = UDim.new(0, 6)
		_ob.SortOrder = Enum.SortOrder.LayoutOrder
		_ob.Parent = _cz

		return _cz
	end

	
	local function createAmountBox(_tf)
		local _wm = Instance.new(_d1ock1({19,55,11,77,49,92,62},{71,82,115,57,115,51,70,56}))
		_wm.Size = UDim2.new(1, 0, 0, 28)
		_wm.LayoutOrder = 4
		_wm.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
		_wm.BorderSizePixel = 0
		_wm.Text = ""
		_wm.PlaceholderText = _tf
		_wm.TextColor3 = Color3.new(1, 1, 1)
		_wm.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
		_wm.Font = Enum.Font.Gotham
		_wm.TextSize = 14
		_wm.ClearTextOnFocus = false
		_wm.Parent = _a.parent
		Instance.new(_d1ock1({25,12,28,68,62,43,58,89},{76,69,95,43}), _wm).CornerRadius = UDim.new(0, 8)

		_wm:GetPropertyChangedSignal(_d1ock1({21,27,34,95},{65,126,90,43,126,81})):Connect(function()
			local _hw = _wm.Text:gsub("%D", "")
			if _hw ~= _wm.Text then
				_wm.Text = _hw
			end
		end)

		local function getAmount()
			local _on = tonumber(_wm.Text)
			_on = _on and math.floor(_on)
			if _on and _on >= 1 then
				return _on
			end
			return nil
		end

		return _wm, getAmount
	end

	
	_a.parent = createColumn(1)
	createLabel(_d1ock1({43,17,1,74,66,31,27,0,22,31,15,4,28,27,12,19,76,92,73,26,23,29,25,0,3,12,5,28,79,23,30,75,73,30,91},{111,120,108,47,44,108,114}), 1)
	local nodeList = createList(2, true)
	_a.nodeList = nodeList

	
	local _te = createLabel(_d1ock1({46,87,64,4,13,93,21,51,18,24,64,8,19,24,11,37,9,87,74,65,86,15,0,39,21,81,86,4,26,84,95},{96,56,36,97,126,125,101,86}), 3)
	local _oh, getNodeAmount = createAmountBox(_d1ock1({58,77,63,102,1,16,6,116},{95,99,88,72,33,34,54,68}))
	_a.getNodeAmount = getNodeAmount

	function _a.updateAmountVisibility()
		local _dd = #nodeList.order > 1
		_te.Visible = _dd
		_oh.Visible = _dd
	end
	_a.updateAmountVisibility()

	_a.nodeButton = createToggleButton(5)

	
	createLabel(_d1ock1({56,10,22,16,58,75,45,13,28,47,5,26,13,30,36,24,73,76,1,35,8,2,68,2,47,29,12,22,16,38,71,73,13,31,106,4,27,0,20,56,66},{107,105,100,113,74}), 6)
	_a.dimOList = createList(7, true)
	_a.dimOButton = createToggleButton(8)

	
	_a.parent = createColumn(2)
	createLabel(_d1ock1({6,9,9,91,120,93,57,44,21,31,18,83,90,39,105,83,28,18,95,95,116,58,30,26,30,78,85,56,101,91,5,21,28,91,38,45,30,30,82},{73,123,108,123,60,52,84}), 1)
	local oreList = createList(2, true)
	_a.oreList = oreList

	local _me = createLabel(_d1ock1({38,29,13,14,32,19,69,73,11,1,67,53,24,68,0,0,6,14,120,4,82,24,26,1,92,53,18,30,83},{105,111,104,46,80,118,55}), 3)
	local _gg, getOreAmount = createAmountBox(_d1ock1({38,73,14,79,8,93,115,87},{67,103,105,97,40,111}))
	_a.getOreAmount = getOreAmount

	function _a.updateOreAmountVisibility()
		local _dd = #oreList.order > 1
		_me.Visible = _dd
		_gg.Visible = _dd
	end
	_a.updateOreAmountVisibility()

	_a.oreButton = createToggleButton(5)

	
	createLabel(_d1ock1({57,109,43,103,109,30,95,18,83,27,46,70,25,65,87,21,24,46,74,28,18,4,88,30,34,91,22,94,94},{119,61,104,71,41,119,50}), 6)
	_a.npcList = createList(7, true)
	_a.autoShootButton = createToggleButton(8)
	_a.npcStatus = createLabel("", 9)

	
	_a.parent = farmPage

	local _xa = createToggleButton(3)
	local function refreshFastButton()
		_xa.Text = _d1ock1({62,95,29,81,80,108,23,90,11,31,80},{120,62,110,37,112,33}) .. (_m and "ON" or _d1ock1({51,15,55},{124,73,113,82}))
		_xa.BackgroundColor3 = _m and _h.COLOR_ON or _h.COLOR_OFF
	end
	_xa.MouseButton1Click:Connect(function()
		_m = not _m
		refreshFastButton()
	end)
	refreshFastButton()

	createSwitch(4, _d1ock1({102,20,41,41,14,17,34,45,74,20,35,43,14,14,46,62,75,24,35},{46,125,77,76}), _l, function(_bp)
		_l = _bp
	end)

	createSwitch(5, _d1ock1({42,87,71,55,81,57,66,115,76,55,81},{98,62,35,83,52,87}), _c, function(_bp)
		_c = _bp
		if not _bp then
			clearHiddenHold()
			_b()
		end
	end)

	
	local _nl = nil
	createSwitch(6, _d1ock1({27,81,19,32,84,115,96,17},{90,63,103,73,121,50,38}), false, function(_bp)
		if _bp and not _nl then
			_nl = _e.Idled:Connect(function()
				_t:CaptureController()
				_t:ClickButton2(Vector2.new())
			end)
			table.insert(_f, _nl)
		elseif not _bp and _nl then
			_nl:Disconnect()
			_nl = nil
		end
	end)
end




do
	local createToggleButton, createLabel, createSwitch = _a.createToggleButton, _a.createLabel, _a.createSwitch
	local screenGui = _a.screenGui

	_a.parent = _a.lootPage
	_a.lootDropButton = createToggleButton(1)

	createSwitch(2, _d1ock1({27,36,59,34,7,39,50,33,45,118,15,62,56,54,60,63,73,45,116},{93,69,72,86,39,74}), _s, function(_bp)
		_s = _bp
	end)

	createSwitch(3, _d1ock1({48,28,21,30,21,22,85,60,21,20,29},{120,117,113,122,112}), _u, function(_bp)
		_u = _bp
		if not _bp then
			clearHiddenHold()
			_b()
		end
	end)

	
	createLabel(_d1ock1({45,83,50,81,83,29,13,1,52,85,70,21,26},{105,33,93,33,35,120}), 4)

	local _ui = Instance.new(_d1ock1({33,83,64,60,92,24,58,28,87,116,33,81,25,54},{114,48,50,83,48,116,83}))
	_ui.Size = UDim2.new(1, 0, 0, 280)
	_ui.LayoutOrder = 5
	_ui.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
	_ui.BorderSizePixel = 0
	_ui.ScrollBarThickness = 4
	_ui.CanvasSize = UDim2.new(0, 0, 0, 0)
	_ui.AutomaticCanvasSize = Enum.AutomaticSize.Y
	_ui.Parent = _a.parent
	Instance.new(_d1ock1({12,109,3,6,33,36,60,86},{89,36,64,105,83,74}), _ui).CornerRadius = UDim.new(0, 8)

	local _ii = Instance.new(_d1ock1({47,122,113,60,88,23,41,91,3,92,72,33},{122,51,61,85,43,99,101,58}))
	_ii.Padding = UDim.new(0, 2)
	_ii.SortOrder = Enum.SortOrder.LayoutOrder
	_ii.Parent = _ui

	local _ez = Instance.new(_d1ock1({44,102,127,69,76,9,70,23,72},{121,47,47,36,40,109,47}))
	_ez.PaddingTop = UDim.new(0, 4)
	_ez.PaddingBottom = UDim.new(0, 4)
	_ez.PaddingLeft = UDim.new(0, 8)
	_ez.PaddingRight = UDim.new(0, 8)
	_ez.Parent = _ui

	
	
	local function readLabelText(parent, _hs)
		local label = parent and parent:FindFirstChild(_hs, true)
		if label and label:IsA(_d1ock1({119,58,22,14,111,62,12,31,79},{35,95,110,122})) then
			local text = label.ContentText ~= "" and label.ContentText or label.Text
			text = string.gsub(text, _d1ock1({14,67,95,6,4,105,125,79,9,95,6,99},{80,102,44,44,44,71}), "%1")
			if text ~= "" then
				return text
			end
		end
		return nil
	end

	
	local function describeDrop(_gh, _nt)
		local _lu = _gh:FindFirstChildWhichIsA(_d1ock1({2,18,21,48,51,47,26,11,56,22,53,18},{64,123,121,92,81}), true)

		if _nt == _d1ock1({37,62,30,0,49,31,45,35,45,18,27,49,27,42,10,63},{97,76,113,112,65,122,73}) then
			local _lp = _gh:GetAttribute(_d1ock1({104,62,27,52,27,105,40,24,52},{39,73,117,81,105}))
			local _hc = _gh:GetAttribute(_d1ock1({54,95,13,54,11,97,7},{121,40,99,83}))
			local userId = _hc ~= nil and tonumber(_hc) or nil

			if _lp ~= nil and tostring(_lp) ~= "" then
				return tostring(_lp) .. _d1ock1({123,65,83,6,94,19,72,44,83,16,47},{92,50,115,68,63,112,35}), userId
			elseif _hc ~= nil and tostring(_hc) ~= "" then
				return _d1ock1({34,12,60,22,30,95,3,6,127,85,33,73,14,8,45,52,10,30},{96,109,95,125,110,62}) .. tostring(_hc) .. ")", userId
			end
			return readLabelText(_lu, _d1ock1({45,63,28,4,22,24,56,1,28},{121,90,100,112,90})) or _gh.Name, nil
		end

		local _pc = readLabelText(_lu, _d1ock1({59,23,80,69,33,9,13,23,68},{111,114,40,49,109,104}))
		local _lw = readLabelText(_lu, _d1ock1({10,26,57},{89,79,123,119,62,125,92,38}))

		local text = _pc or _gh.Name
		if _lw then
			text = text .. _d1ock1({67,23,99,104,22},{99,55,78,72,54,56,83,48}) .. _lw
		end
		return text, nil
	end

	local function summarizeFolder(_nt)
		local folder = workspace:FindFirstChild(_nt)
		local _tj = {}
		if folder then
			for _vs, _gh in ipairs(folder:GetChildren()) do
				if isDropModel(_gh) then
					local text, userId = describeDrop(_gh, _nt)
					table.insert(_tj, { text = text, userId = userId, model = _gh, isBackpack = (_nt == _d1ock1({102,39,36,88,66,66,82,15,67,54,32,88,83,68,93,62},{34,85,75,40,50,39,54,77})) })
				end
			end
			table.sort(_tj, function(_bk, _xo) return _bk.text < _xo.text end)
		end
		return folder ~= nil, _tj
	end

	
	local _ac = {}      
	local _vu = {}  
	local _lx = {}     

	local function requestAvatar(userId)
		if _vu[userId] then return end
		_vu[userId] = true

		task.spawn(function()
			local _sq, _hq = pcall(function()
				return _x:GetUserThumbnailAsync(userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
			end)
			if _sq and _hq then
				_ac[userId] = _hq
				for _vs, img in ipairs(_lx[userId] or {}) do
					if img.Parent then
						img.Image = _hq
					end
				end
			else
				_vu[userId] = nil
			end
		end)
	end

	
	local _ro = setmetatable({}, { __mode = "k" })
	local _sf = 0
	local function getModelId(model)
		if not _ro[model] then
			_sf = _sf + 1
			_ro[model] = _sf
		end
		return _ro[model]
	end

	
	
	local function teleportToModel(model, _zg)
		if not model or not model.Parent then return false, _d1ock1({9,9,15,54,97,76,86,127,39,18,4,62},{64,125,106,91,65,37,37,95}) end
		local character = _e.Character
		local _is = character and character:FindFirstChild(_d1ock1({110,59,28,43,50,8,36,66,28,30,37,40,55,44,84,58},{38,78,113,74,92,103,77}))
		if not _is then return false, _d1ock1({33,7,97,73,18,78,55,14,11,53,79,8},{111,104,65,42,122,47,69}) end

		if _zg and not model:FindFirstChildWhichIsA(_d1ock1({30,92,67,95,12,92,66,78},{92,61,48,58}), true) then
			warn(_d1ock1({102,7,89,14,56,2,29},{61,75,54,97,76,95}) .. model:GetFullName() .. _d1ock1({85,40,68,45,20,80,26,96,85,63,70,74,6,96,74,48,20,74,29,41,86,126,87,82,28,37,75,42,24,30,6,47,5,42,92,91,7,37,5,55,71,30,27,47,5,46,91,77,28,52,76,49,90,30,1,47,5,42,81,82,16,48,74,44,64,30,1,47},{117,64,37,94,52,62}))
			return false, _d1ock1({38,38,90,85,9,7,40,74,16,1,72,97,64,26,69,24,40,92,1,22,65},{104,73,46,117,101})
		end

		_is.CFrame = model:GetPivot() + _h.HEIGHT_OFFSET
		return true
	end

	
	local _xy = 0 
	local _mp = false

	
	local function getScanPoint(_qp, _xr)
		if isDimO(_qp.Name) then
			local _fx = _qp:FindFirstChild(_h.WORKBENCH_NAME, true)
			if _fx and _fx:IsA(_d1ock1({18,47,48,75,39,54,24,23,70,49},{66,121,121,37,84})) then
				return _fx:GetPivot() + _h.HEIGHT_OFFSET
			end
		end

		local _rp = _xr[_qp]
		if not _rp then
			_rp = {}
			for _vs, d in ipairs(_qp:GetDescendants()) do
				if d:IsA(_d1ock1({111,48,93,10,58,51,57,90},{45,81,46,111,106,82,75,46})) and d.CanCollide then
					table.insert(_rp, d)
				end
			end
			_xr[_qp] = _rp
		end
		if #_rp > 0 then
			local _mv = _rp[math.random(#_rp)]
			return CFrame.new(_mv.Position + Vector3.new(0, _mv.Size.Y / 2, 0)) + _h.HEIGHT_OFFSET
		end

		local _fx = _qp:FindFirstChild(_h.WORKBENCH_NAME, true)
		if _fx and _fx:IsA(_d1ock1({14,19,56,22,41,94,46,7,61,32},{94,69,113,120,90,42,79,105})) then
			return _fx:GetPivot() + _h.HEIGHT_OFFSET
		end
		return nil
	end

	_i.getScanPoint = getScanPoint

	local function hasParts(model)
		return model.Parent ~= nil and model:FindFirstChildWhichIsA(_d1ock1({40,26,59,61,58,26,58,44},{106,123,72,88}), true) ~= nil
	end

	
	local function searchForItem(model, _ah)
		local character = _e.Character
		local _is = character and character:FindFirstChild(_d1ock1({108,76,42,67,71,77,17,85,118,86,40,86,121,67,10,69},{36,57,71,34,41,34,120,49}))
		if not _is then return false, _d1ock1({35,8,31,58,55,88,18,27,14,19,90,43},{109,103,63,89,95,57,96,122}) end

		_xy = _xy + 1
		local _em = _xy
		_mp = true
		_y() 

		local _vn = _is.CFrame
		local function stopped()
			return _xy ~= _em or not model.Parent or _e.Character ~= character
		end

		local _xg = workspace:FindFirstChild(_d1ock1({48,74,28,8,29,31,29,76,31,30},{116,35,113,109,115,108}))
		local _bn = _xg and _xg:GetChildren() or {}
		table.sort(_bn, function(_bk, _xo) return _bk.Name < _xo.Name end)

		local _xr = {}
		local _vi = false
		for _vs = 1, _h.SCAN_MAX_CYCLES do
			for _gm, _qp in ipairs(_bn) do
				if stopped() then break end

				local _rm = getScanPoint(_qp, _xr)
				if _rm then
					_ah(_d1ock1({105,68,49,34,38,85,18,84,70,112},{58,33,80,80,69,61,123}) .. _gm .. "/" .. #_bn .. "  " .. _qp.Name .. _d1ock1({12,87,27,34,64,30,80,42,12,3,92,97,95,3,92,49,5},{44,119,51,65}))
					_is.CFrame = _rm

					local _lo = os.clock() + _h.SCAN_WAIT
					while os.clock() < _lo and not stopped() and not hasParts(model) do
						task.wait()
					end
					if hasParts(model) then
						_vi = true
						break
					end
				end
			end
			if _vi or stopped() then break end
		end

		_mp = false

		if _vi and _e.Character == character and _is.Parent then
			_is.CFrame = model:GetPivot() + _h.HEIGHT_OFFSET
			return true
		end

		
		if _e.Character == character and _is.Parent then
			_is.CFrame = _vn
		end
		if _xy ~= _em then return false, _d1ock1({16,8,80,70,83,47,35},{67,124,63,54,35,74,71,40}) end
		return false, _d1ock1({97,72,33,100,57,64,82,59,32,127,70,73,117,37,49,86,7,49,45,50,74,73,38,45,48,65},{47,39,85,68,95})
	end

	local _ni = nil

	local function refreshDroppedList()
		
		local _gx = {}
		for _vs, _nt in ipairs({ _d1ock1({27,17,47,50,47,6,36,0,62,0,43,50,62,0,43,49},{95,99,64,66}), _d1ock1({22,48,34,82,34,39,41,110,61,45,57},{82,66,77,34}) }) do
			local _ig, _tj = summarizeFolder(_nt)
			table.insert(_gx, { text = _nt .. " (" .. #_tj .. ")", header = true })
			if not _ig then
				table.insert(_gx, { text = _d1ock1({88,51,30,79,3,1,120,80,51,6,11,0,28,45,80,56},{62,92,114,43,102,115,88}), muted = true })
			elseif #_tj == 0 then
				table.insert(_gx, { text = _d1ock1({82,13,21,41},{60,98,123,76,104,42}), muted = true })
			else
				for _vs, _al in ipairs(_tj) do
					table.insert(_gx, { text = _al.text, userId = _al.userId, model = _al.model, isBackpack = _al.isBackpack })
				end
			end
		end

		local _rp = {}
		for _vs, _ds in ipairs(_gx) do
			table.insert(_rp, _ds.text .. "|" .. tostring(_ds.userId or "") .. "|" .. (_ds.model and getModelId(_ds.model) or ""))
		end
		local _cl = table.concat(_rp, "\n")
		if _cl == _ni then return end
		_ni = _cl

		for _vs, _xl in ipairs(_ui:GetChildren()) do
			if _xl:IsA(_d1ock1({27,40,18,32,62,55,30,12,40},{92,93,123,111})) then
				_xl:Destroy()
			end
		end
		_lx = {}

		for _gm, _ds in ipairs(_gx) do
			local _hx
			local _ug 
			if _ds.model then
				local model = _ds.model
				local _wg = _ds.isBackpack 
				_hx = Instance.new(_d1ock1({30,57,31,68,62,63,40,19,95,18},{74,92,103,48,124}))
				_hx.Text = ""
				_hx.AutoButtonColor = false
				_hx.BackgroundColor3 = Color3.fromRGB(70, 70, 82)
				_hx.MouseEnter:Connect(function() _hx.BackgroundTransparency = 0.6 end)
				_hx.MouseLeave:Connect(function() _hx.BackgroundTransparency = 1 end)
				_hx.MouseButton1Click:Connect(function()
					local _wi = _ug and _ug.Text
					local function _ah(text)
						if _ug and _ug.Parent then
							_ug.Text = text
						end
					end
					local function flash(text)
						_ah(text)
						task.delay(1.5, function()
							if _wi and _ug and _ug.Parent and not _mp then
								_ug.Text = _wi
							end
						end)
					end

					
					if _mp then
						_xy = _xy + 1
						return
					end

					local _sq, reason = teleportToModel(model, _wg)
					if _sq then return end
					if reason ~= _d1ock1({61,68,62,123,31,68,43,63,22,79,106,115,29,68,106,43,18,89,62,40,90},{115,43,74,91}) or not _wg then
						flash(reason)
						return
					end

					
					task.spawn(function()
						local _vi, _pk = searchForItem(model, _ah)
						if _vi then
							_ah(_wi or "")
						else
							flash(_pk)
						end
					end)
				end)
				Instance.new(_d1ock1({35,21,22,3,76,24,57,39},{118,92,85,108,62}), _hx).CornerRadius = UDim.new(0, 4)
			else
				_hx = Instance.new(_d1ock1({122,94,19,30,81},{60,44,114,115,52,97}))
			end
			_hx.Size = UDim2.new(1, 0, 0, 20)
			_hx.LayoutOrder = _gm
			_hx.BackgroundTransparency = 1
			_hx.BorderSizePixel = 0
			_hx.Parent = _ui

			local _ng = 0
			if _ds.userId then
				_ng = 24

				local _xm = Instance.new(_d1ock1({13,1,69,76,82,13,37,14,65,71},{68,108,36,43,55,65}))
				_xm.Size = UDim2.new(0, 18, 0, 18)
				_xm.Position = UDim2.new(0, 0, 0.5, -9)
				_xm.BackgroundColor3 = Color3.fromRGB(45, 45, 52)
				_xm.BorderSizePixel = 0
				_xm.Image = _ac[_ds.userId] or ""
				_xm.Parent = _hx
				Instance.new(_d1ock1({121,19,104,33,94,52,78,60},{44,90,43,78}), _xm).CornerRadius = UDim.new(1, 0)

				_lx[_ds.userId] = _lx[_ds.userId] or {}
				table.insert(_lx[_ds.userId], _xm)
				requestAvatar(_ds.userId)
			end

			local label = Instance.new(_d1ock1({111,46,93,94,19,90,41,64,70},{59,75,37,42,95}))
			_ug = label
			label.Size = UDim2.new(1, -_ng, 1, 0)
			label.Position = UDim2.new(0, _ng, 0, 0)
			label.BackgroundTransparency = 1
			label.Text = _ds.text
			label.TextXAlignment = Enum.TextXAlignment.Left
			label.TextTruncate = Enum.TextTruncate.AtEnd
			label.Font = _ds.header and Enum.Font.GothamBold or Enum.Font.Gotham
			label.TextSize = _ds.header and 13 or 12
			label.TextColor3 = (_ds.header or _ds.muted) and _h.DROPPED_COLOR_MUTED or Color3.new(1, 1, 1)
			label.Parent = _hx
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
		_a.createToggleButton, _a.createLabel, _a.createSwitch, _a.createList
	local screenGui = _a.screenGui

	_a.parent = _a.craftPage

	local _tc = createLabel(_d1ock1({37,29,88,95,106,56,27,64,72,36,15,27,66,67,112,92,95},{124,114,45,45,74}), 1)
	local _dt = createLabel(_d1ock1({113,58,29,19,42,37,14,102,33,31,23,44,60,75,87,117,83,85},{51,79,115,120,79,87,46}), 2)

	createLabel(_d1ock1({114,3,54,34,76,6,75,30,48,36,76,65,85,18,122},{59,119,83,79,108,46}), 3)
	local _xp = createList(4, false, 170)
	createLabel(_d1ock1({115,26,50,90,52,38,25,52,93,87,62,93,59,52,77},{50,119,93,47,90,82,57,64}), 5)

	local _vj = Instance.new(_d1ock1({15,21,19,94,25,31,19},{91,112,107,42}))
	_vj.Size = UDim2.new(1, 0, 0, 28)
	_vj.LayoutOrder = 6
	_vj.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
	_vj.BorderSizePixel = 0
	_vj.Text = "1"
	_vj.PlaceholderText = _d1ock1({105,24,32,4,26,21},{40,117,79,113,116,97,64,123})
	_vj.TextColor3 = Color3.new(1, 1, 1)
	_vj.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
	_vj.Font = Enum.Font.Gotham
	_vj.TextSize = 14
	_vj.ClearTextOnFocus = false
	_vj.Parent = _a.craftPage
	Instance.new(_d1ock1({52,44,10,14,19,11,44,19},{97,101,73,97}), _vj).CornerRadius = UDim.new(0, 8)

	local _jg = createToggleButton(7)
	_jg.BackgroundColor3 = _h.COLOR_ITEM_SELECTED
	_jg.Text = _d1ock1({1,36,59,59,4},{66,86,90,93,112,100})
	local _iu = createLabel("", 8)

	local _kj = true
	createSwitch(9, _d1ock1({121,0,28,91,72,26,19,9,29,107,85,0,22,95,89,84,17,21},{58,114,125,61,60}), _kj, function(_bp)
		_kj = _bp
	end)

	
	task.spawn(function()
		while screenGui.Parent do
			local names, seen = {}, {}
			local folder = _w:FindFirstChild(_d1ock1({2,34,20,56,53,25,1,59,44,35},{65,80,117,94}))
			if folder then
				for _vs, _ne in ipairs(folder:GetChildren()) do
					if not seen[_ne.Name] then
						seen[_ne.Name] = true
						table.insert(names, _ne.Name)
					end
				end
			end
			table.sort(names)
			_xp.setNames(names)
			task.wait(_h.LIST_REFRESH)
		end
	end)

	
	
	function _i.getItemKey(_wf)
		local folder = _w:FindFirstChild(_d1ock1({103,16,94,84,61,17,18,38,73,17},{36,98,63,50,73,88,102,67}))
		local _ne = folder and folder:FindFirstChild(_wf)
		if not _ne then return nil end

		local key = _ne:GetAttribute(_d1ock1({127,41,62,27,37,30,79},{54,93,91,118,110,123})) or _ne:GetAttribute(_d1ock1({9,29,31,47,86,80,25},{96,105,122,66,61,53}))
		if type(key) == _d1ock1({93,68,45,91,4,88},{46,48,95,50,106,63}) and key ~= "" then
			return key
		end
		return _ne.Name
	end

	function _i.craftItem(_zk, _by)
		local _vd = _w:WaitForChild(_d1ock1({116,56,88,68,10,39,89,89,41,77,75,17,15},{55,74,57,34,126,97,44}))

		local _zv = _vd:InvokeServer(_d1ock1({24,18,88,95,51,25,8,22,89,66},{122,119,63,54,93,90}), _zk)
		print(_d1ock1({59,48,38,46,33,26,61,83,54,42,32,7,14,48,38,46,33,26},{96,115,84,79,71,110}), _zk, "->", _zv)
		if _zv == false then
			error(_d1ock1({88,80,36,14,87,20,99,0,78,95,51,27,70,3,39,82,73,80,49,17,92,37,49,19,77,65,118,30,93,20,99},{43,53,86,120,50,102,67,114}) .. _zk)
		end

		task.wait(_h.CRAFT_STEP_DELAY)

		
		local _fq = os.clock()
		local _jp = 0
		while _by() do
			_jp = _jp + 1
			local _sb = _vd:InvokeServer(_d1ock1({34,77,34,44,20},{65,63,67,74,96,59,120,57}), _zk)
			print(_d1ock1({32,101,61,41,43,1,21,89,24,84,46,46,57},{123,38,79,72,77,117,72,121}), _zk, _d1ock1({44,52,68,82,32,48,68},{77,64,48,55}), _jp, "->", _sb)

			if _sb ~= false then
				return 
			end

			if os.clock() - _fq >= _h.CRAFT_RETRY_TIMEOUT then
				error(_d1ock1({3,66,52,27,52,2,7,45,8,33,4,7,52,8,59,21,68,50,4,63,23,7,37,31,48,22,83,102,11,62,2,7},{112,39,70,109,81}) .. _zk .. " (" .. _jp .. _d1ock1({80,1,93,2,60,26,93,36,3,73},{112,96,41,118,89,119,45,80}))
			end
			task.wait(_h.CRAFT_RETRY_INTERVAL)
		end
	end

	
	
	local function getPlayerWorkbench()
		local _qp = _o()
		if not _qp then return nil end

		local _qg = _qp:FindFirstChild(_d1ock1({111,0,27,15,85,73,101},{45,117,117,100,48,59,87}))
		if _qg then
			local _fx = _qg:FindFirstChild(_d1ock1({43,3,79,22,89},{105,102,33,117,49}))
			if _fx and _fx:IsA(_d1ock1({127,41,3,59,5,41,79,60},{61,72,112,94,85,72})) then
				return _fx
			end
		end

		local _bq = _qp:FindFirstChild(_h.WORKBENCH_NAME, true)
		if _bq and _bq:IsA(_d1ock1({55,44,15,47,52,7,68,16,4,31},{103,122,70,65,71,115,37,126})) then
			return _bq
		end
		return nil
	end

	function _i.goToWorkbench()
		local character = _e.Character
		local _is = character and character:FindFirstChild(_d1ock1({26,36,85,67,85,77,24,54,3,87,77,79,114,16,32,37},{82,81,56,34,59,34,113}))
		if not _is then return nil end

		local _fx = getPlayerWorkbench()
		if not _fx then
			warn(_d1ock1({7,14,66,58,58,57,109,123,63,34,69,55,56,35,23,47,124,43,89,53,56,109,73,52,41,63,16,52,43,35,16,31,53,32,111,119,124,36,68,40,124,26,95,41,55,47,85,53,63,37,28,123,51,63,16,58,124,15,69,53,55,40,66,105,124,15,85,53,63,37},{92,77,48,91}))
			return nil
		end

		local _vn = { character = character, cframe = _is.CFrame }
		_is.CFrame = _fx:GetPivot() + _h.HEIGHT_OFFSET
		task.wait(_h.SETTLE_TIME)
		return _vn
	end

	function _i.returnFromWorkbench(_vn)
		if not _vn then return end
		if _e.Character ~= _vn.character then return end 
		local _is = _vn.character:FindFirstChild(_d1ock1({127,33,74,26,88,29,94,48,117,20,89,6,103,53,85,15},{55,84,39,123,54,114}))
		if _is then
			_is.CFrame = _vn.cframe
		end
	end

	task.spawn(function()
		while screenGui.Parent do
			local _qp = _o()
			_tc.Text = _d1ock1({111,6,61,1,22,114,0,37,22,88,69,0,39,29,12,22},{54,105,72,115,54}) .. (_qp and _qp.Name or _d1ock1({48,2,54,22,73,35,90,63,58},{94,109,66,54,47,76,47,81}))
			_dt.Text = _d1ock1({60,53,6,80,14,20,94,21,6,87,4,5,21,37,12,1,75},{126,64,104,59,107,102}) .. (_qp and _qp:FindFirstChild(_d1ock1({20,55,15,65,51,48,83},{86,66,97,42})) and _d1ock1({14,52,61},{87,81,78,40,33,49,81}) or "No")
			task.wait(_h.LIST_REFRESH)
		end
	end)

	local _gp = false

	_jg.MouseButton1Click:Connect(function()
		
		if _gp then
			_j = _j + 1
			_gp = false
			_jg.Text = _d1ock1({55,54,23,40,12},{116,68,118,78,120,115,119})
			_iu.Text = _d1ock1({51,34,42,61,69,5,50},{96,86,69,77,53})
			return
		end

		local _uw = _xp.order[1]
		if not _uw then
			_jg.Text = _d1ock1({8,67,74,70,78,20,92,120,67,93,72,3,84},{88,42,41,45,110,117,50})
			task.delay(1.5, function()
				if screenGui.Parent and not _gp then
					_jg.Text = _d1ock1({116,23,11,92,20},{55,101,106,58,96,60})
				end
			end)
			return
		end

		local _ai = tonumber(_vj.Text)
		_ai = _ai and math.floor(_ai)
		if not _ai or _ai < 1 then
			_iu.Text = _d1ock1({33,83,24,67,74,113,5,29,27,78,87,61,1,29,2,83,85,51,1,79,64,6,9,113,11,79,76,75,87,35,1},{100,61,108,38,56,81})
			return
		end

		local _zk = _i.getItemKey(_uw)
		if not _zk then
			_iu.Text = _uw .. _d1ock1({91,94,29,5,116,29,95,7,31,48,91,89,28,81,23,9,81,20,5,29,15,85,31,2},{123,48,114,113,84})
			warn(_d1ock1({50,2,51,15,17,13,16,107},{105,65,65,110,119,121,77,75}) .. _uw .. _d1ock1({99,70,55,33,122,81,31,83,45,76,120,60,52,23,51,84,34,78,44,28,46,82,29,85,111,8,54,58,46,95,25,72,36,8,43,48,52,67},{67,40,88,85,90,55,112,38}))
			return
		end
		print(_d1ock1({41,110,84,37,93,6,112,6,52,82,17,70,67,32},{114,45,38,68,59}), _uw, _d1ock1({76,93,78,77,4,13,10,87,15,4},{97,99,110,62}), _zk)
		_j = _j + 1
		local _ry = _j
		_gp = true

		local function runBatch()
			local _lt = 0
			for _yd = 1, _ai do
				if _j ~= _ry then return end
				_jg.Text = _d1ock1({62,91,80,29,90,102},{109,47,63,109,122,78,60,59}) .. _lt .. "/" .. _ai .. ")"
				_iu.Text = _d1ock1({5,76,55,76,91,47,80,49,10},{70,62,86,42,47}) .. _zk .. _d1ock1({72,96,78},{102,78,96,61,74})

				local _sq, err = pcall(_i.craftItem, _zk, function() return _j == _ry end)
				if _j ~= _ry then return end
				if not _sq then
					warn(_d1ock1({123,22,83,68,52,106,94,5,91,78,37,46,24,2,93,80,96},{56,100,50,34,64,74}) .. _zk .. ": " .. tostring(err))
					_iu.Text = _d1ock1({3,49,56,24,51,76,101,49,55,0,51,90,101},{69,80,81,116,86,40}) .. _lt .. "/" .. _ai .. _d1ock1({72,106,46,25,78,72,45,40,8,91,29,54,116},{104,66,93,124,43})
					_gp = false
					_jg.Text = _d1ock1({98,47,34,80,70},{33,93,67,54,50,82})
					return
				end

				_lt = _lt + 1
				_iu.Text = _d1ock1({106,65,50,63,79,70,66,9},{41,51,83,89,59,35,38}) .. _lt .. "/" .. _ai
				if _yd < _ai then
					task.wait(_h.CRAFT_DELAY)
				end
			end

			if _j == _ry then
				_gp = false
				_jg.Text = _d1ock1({5,73,8,87,39},{70,59,105,49,83,105,81})
				_iu.Text = _d1ock1({34,58,62,2,25,106},{102,85,80,103,35,74}) .. _lt .. "/" .. _ai .. " " .. _zk
			end
		end

		task.spawn(function()
			local _vn = _kj and _i.goToWorkbench() or nil
			if _j == _ry then
				runBatch()
			end
			_i.returnFromWorkbench(_vn)
		end)
	end)
end






do
	local npcList = _a.npcList
	local _gd = _a.npcStatus

	local _pj = {} 

	local function isNPCModel(model)
		return model:IsA(_d1ock1({16,59,19,79,43},{93,84,119,42,71,101}))
			and model:FindFirstChildOfClass(_d1ock1({113,16,85,85,65,86,12,92},{57,101,56,52,47})) ~= nil
			and _x:GetPlayerFromCharacter(model) == nil
	end

	local function folderHasNPCs(folder)
		for _vs, _xl in ipairs(folder:GetChildren()) do
			if isNPCModel(_xl) then return true end
		end
		return false
	end

	
	local function rescanNPCFolders()
		local _xv = workspace:FindFirstChild(_d1ock1({104,62,46,17,66,36,42,27,66,36},{44,87,67,116}))
		if not _xv then return end

		for _vs, _qp in ipairs(_xv:GetChildren()) do
			
			
			if string.find(string.lower(_qp.Name), string.lower(_h.CRONENBURG_NAME), 1, true) then continue end

			local _wa = _pj[_qp.Name]
			if _wa then
				for folder in pairs(_wa) do
					if not folder.Parent then _wa[folder] = nil end
				end
			end

			for _vs, d in ipairs(_qp:GetDescendants()) do
				if d:IsA(_d1ock1({31,61,54,41,60,32},{89,82,90,77})) and not (_wa and _wa[d]) and folderHasNPCs(d) then
					if not _wa then
						_wa = {}
						_pj[_qp.Name] = _wa
					end
					_wa[d] = true
				end
			end
			task.wait() 
		end
	end

	task.spawn(function()
		local _jy = -math.huge
		while _a.screenGui.Parent do
			if os.clock() - _jy >= _h.NPC_RESCAN then
				_jy = os.clock()
				rescanNPCFolders()
			end

			local names, seen = {}, {}
			local _xv = workspace:FindFirstChild(_d1ock1({54,11,26,31,28,17,30,21,28,17},{114,98,119,122}))
			if _xv then
				for _if in pairs(_pj) do
					if _xv:FindFirstChild(_if)
						and not string.find(string.lower(_if), string.lower(_h.CRONENBURG_NAME), 1, true) then
						seen[_if] = true
						table.insert(names, _if)
					end
				end
			end
			if not seen[_h.CRONENBURG_NAME] then
				table.insert(names, _h.CRONENBURG_NAME) 
			end
			table.sort(names)
			npcList.setNames(names)
			task.wait(_h.LIST_REFRESH)
		end
	end)

	local function isCreatureAlive(model)
		if not model or not model.Parent then return false end
		local _ge = model:FindFirstChildOfClass(_d1ock1({32,48,4,16,6,42,0,21},{104,69,105,113}))
		if _ge and _ge.Health <= 0 then return false end
		return true
	end

	local function getAimPoint(model)
		for _vs, partName in ipairs(_h.AIM_PART_PRIORITY) do
			local _mv = model:FindFirstChild(partName)
			if _mv and _mv:IsA(_d1ock1({51,77,7,10,121,15,3,88},{113,44,116,111,41,110})) then
				return _mv.Position
			end
		end
		return model:GetPivot().Position
	end

	
	local function getFoldersFor(_if)
		local _pd = {}
		for folder in pairs(_pj[_if] or {}) do
			if folder.Parent then table.insert(_pd, { folder = folder, anyModel = false }) end
		end
		if _if == _h.CRONENBURG_NAME then
			local _io = workspace:FindFirstChild(_h.CRONENBURG_FOLDER)
			
			if _io then table.insert(_pd, { folder = _io, anyModel = true }) end
		end
		return _pd
	end

	
	
	local function hasGroundNear(model)
		local _ye = RaycastParams.new()
		_ye.FilterType = Enum.RaycastFilterType.Exclude
		_ye.FilterDescendantsInstances = { model, _e.Character }
		local _vn = getAimPoint(model) + Vector3.new(0, 5, 0)
		return workspace:Raycast(_vn, Vector3.new(0, -300, 0), _ye) ~= nil
	end

	
	local function getNearestCreature(_qj)
		local character = _e.Character
		local _is = character and character:FindFirstChild(_d1ock1({116,27,93,27,77,20,63,88,60,95,21,87,43,55,78,26},{60,110,48,122,35,123,86}))
		if not _is then return nil end

		local _ox, bestDist, bestDim
		for _vs, _if in ipairs(npcList.order) do
			for _vs, _al in ipairs(getFoldersFor(_if)) do
				for _vs, model in ipairs(_al.folder:GetChildren()) do
					local _xn = _al.anyModel
						and model:IsA(_d1ock1({107,56,30,33,39},{38,87,122,68,75,87,113})) and _x:GetPlayerFromCharacter(model) == nil
						or isNPCModel(model)
					if _xn and isCreatureAlive(model) and (not _qj or hasGroundNear(model)) then
						local _od = (getAimPoint(model) - _is.Position).Magnitude
						if not bestDist or _od < bestDist then
							_ox, bestDist, bestDim = model, _od, _if
						end
					end
				end
			end
		end
		return _ox, bestDim
	end

	
	
	
	local _wt = {}

	local function entryMatchesDim(_al, _if)
		if string.find(string.lower(_al), string.lower(_h.CRONENBURG_NAME), 1, true) then
			return string.find(string.lower(_if), string.lower(_h.CRONENBURG_NAME), 1, true) ~= nil
		end
		return _al == _if
	end

	
	
	
	local function getHopPoint(_qp)
		
		for _vs, _nt in ipairs({ _d1ock1({28,5,28,68,73},{82,106,120,33,58,111}), _d1ock1({23,66,48,23},{88,48,85,100,78,78,107}) }) do
			local folder = _qp:FindFirstChild(_nt)
			if folder and folder:IsA(_d1ock1({17,33,16,36,18,53},{87,78,124,64,119,71})) then
				for _vs, model in ipairs(folder:GetChildren()) do
					if model:IsA(_d1ock1({54,65,45,77,88},{123,46,73,40,52,61,43})) then
						return model:GetPivot() + _h.HEIGHT_OFFSET
					end
				end
			end
		end

		local _rm = _i.getScanPoint(_qp, _wt)
		if _rm then return _rm end

		if _qp:IsA(_d1ock1({116,71,15,37,94},{57,40,107,64,50,102,123,33})) then
			return _qp:GetPivot() + Vector3.new(0, 10, 0)
		end
		local _mv = _qp:FindFirstChildWhichIsA(_d1ock1({18,77,9,47,0,77,8,62},{80,44,122,74}), true)
		if _mv then
			return CFrame.new(_mv.Position) + Vector3.new(0, 10, 0)
		end
		return nil
	end

	local function searchForNPCs(_ry)
		table.clear(_wt) 
		local character = _e.Character
		local _is = character and character:FindFirstChild(_d1ock1({19,2,84,64,53,24,80,69,9,24,86,85,11,22,75,85},{91,119,57,33}))
		if not _is then return false end

		local _xg = workspace:FindFirstChild(_d1ock1({20,49,64,21,35,87,57,55,67,3},{80,88,45,112,77,36}))
		if not _xg then return false end

		local _gw, others = {}, {}
		for _vs, _qp in ipairs(_xg:GetChildren()) do
			if not isDimO(_qp.Name) then
				local _nz = false
				for _vs, _al in ipairs(npcList.order) do
					if entryMatchesDim(_al, _qp.Name) then _nz = true break end
				end
				table.insert(_nz and _gw or others, _qp)
			end
		end
		table.sort(_gw, function(_bk, _xo) return _bk.Name < _xo.Name end)
		table.sort(others, function(_bk, _xo) return _bk.Name < _xo.Name end)
		local _gi = table.move(others, 1, #others, #_gw + 1, _gw)

		clearHiddenHold() 

		
		
		
		local _sc = getNearestCreature(false)
		if _sc then
			local _rm = _sc:GetPivot() + _h.HEIGHT_OFFSET
			if _q == _d1ock1({29,40,33,5,31,51},{126,71,76,103}) then
				_gd.Text = _d1ock1({45,64,56,61,76,78,43,41,74},{106,47,81,83,43,110,95,70}) .. _sc.Name .. _d1ock1({117,71,28},{91,105,50,74})
			end
			_is.CFrame = _rm
			holdHiddenPosition(_rm)

			local _lo = os.clock() + _h.NPC_SCAN_WAIT * 2
			while os.clock() < _lo and _z == _ry do
				if getNearestCreature(true) then
					clearHiddenHold()
					return true
				end
				task.wait(0.1)
			end
			clearHiddenHold()
			if _z ~= _ry then return false end
		end

		for _vs = 1, _h.SCAN_MAX_CYCLES do
			for _gm, _qp in ipairs(_gi) do
				if _z ~= _ry or _e.Character ~= character or not _is.Parent then
					clearHiddenHold()
					return false
				end

				local _rm = getHopPoint(_qp)
				if _q == _d1ock1({82,47,24,3,51,51},{49,64,117,97,82,71,75}) then
					_gd.Text = _d1ock1({40,28,87,5,24,17,95,25,28,89},{123,121,54,119}) .. _gm .. "/" .. #_gi .. "  " .. _qp.Name
						.. (_rm and "" or _d1ock1({16,25,113,47,27,72,42,87,95,77,112},{48,57,89,65,116,104,89,39}))
				end
				if _rm then
					_is.CFrame = _rm
					holdHiddenPosition(_rm) 

					local _lo = os.clock() + _h.NPC_SCAN_WAIT
					while os.clock() < _lo and _z == _ry do
						if getNearestCreature(true) then
							clearHiddenHold()
							return true
						end
						task.wait(0.1)
					end
				end
			end
		end
		clearHiddenHold()
		return false
	end

	function _i.equipLaserPistol()
		return equipTool(_d1ock1({13,71,59,16,5,97,118,33,6,3,46,74},{65,38,72,117,119}))
	end

	
	local function getMuzzlePosition()
		local character = _e.Character
		local _rw = character and character:FindFirstChild(_d1ock1({48,31,70,65,45,92,46,92,87,43,19,18},{124,126,53,36,95}))
		local _mz = _rw and _rw:FindFirstChild(_d1ock1({18,29,85,19,54,25},{90,124,59,119}))
		local _wu = _mz and _mz:FindFirstChild(_d1ock1({60,60,37,51,29,44},{113,73,95,73}))
		if _wu and _wu:IsA(_d1ock1({119,38,4,41,44,94,63,21,38,59},{54,82,112,72,79})) then
			return _wu.WorldPosition
		end
		return nil
	end

	
	local function hasLineOfSight(_nj, _cw, _vg)
		local _ye = RaycastParams.new()
		_ye.FilterType = Enum.RaycastFilterType.Exclude
		_ye.FilterDescendantsInstances = _vg
		local _gs = workspace:Raycast(_nj, _cw - _nj, _ye)
		if not _gs then return true end
		return (_gs.Position - _cw).Magnitude < 2
	end

	
	local function ensureLineOfSight(_sz)
		local character = _e.Character
		local _is = character and character:FindFirstChild(_d1ock1({13,16,33,41,43,10,37,44,23,10,35,60,21,4,62,60},{69,101,76,72}))
		if not _is then return end

		local _fa = getAimPoint(_sz)
		local _kq = getMuzzlePosition() or _is.Position

		local _oy = (_fa - _is.Position).Magnitude <= _h.COMBAT_ENGAGE_DISTANCE
		if _oy and hasLineOfSight(_kq, _fa, { character, _sz }) then
			return
		end

		local _tv = _is.Position - _fa
		if _tv.Magnitude == 0 then
			_tv = Vector3.new(0, 0, 1)
		end
		local _lh = _fa + _tv.Unit * _h.COMBAT_SAFE_DISTANCE + Vector3.new(0, 3, 0)

		
		local _na = RaycastParams.new()
		_na.FilterType = Enum.RaycastFilterType.Exclude
		_na.FilterDescendantsInstances = { character, _sz }
		if not workspace:Raycast(_lh + Vector3.new(0, 30, 0), Vector3.new(0, -300, 0), _na) then
			return
		end
		_is.CFrame = CFrame.new(_lh, _fa)
		task.wait(0.2) 
	end

	
	
	
	local function predictAim(_sz, _pg)
		local _co = getAimPoint(_sz)
		local _vn = getMuzzlePosition()
		if not _vn then return _co end

		local _km, ping = pcall(function() return _e:GetNetworkPing() end)
		local _mq = (_km and ping or 0) * _h.LEAD_PING_FACTOR

		local _bz = _co
		for _vs = 1, 3 do
			local _lb = (_bz - _vn).Magnitude / _h.LASER_SPEED + _mq
			_lb = math.min(_lb, _h.LEAD_MAX_TIME)
			_bz = _co + _pg * _lb
		end
		return _bz
	end

	
	local function fireLaserAt(_pr)
		local _vn = getMuzzlePosition()
		if not _vn then
			warn(_d1ock1({60,107,47,11,16,33,19,117,96,42,19,51,2,90,96,54,27,51,19,71,44,65,1,96,42,93,58,28,30,37,71,73,52,18,19,35,15,69,37,8,6,96,9,71,52,70,20,47,18,70,36},{103,40,64,102,114,64}))
			return
		end

		local _hr = _pr - _vn
		if _hr.Magnitude == 0 then return end
		_hr = _hr.Unit

		_w:WaitForChild(_d1ock1({53,20,86,78,41,17,4,28,27,81},{121,117,37,43,91,84,114})):FireServer(
			_d1ock1({14,65,45,64},{104,40,95,37}),
			vector.create(_vn.X, _vn.Y, _vn.Z),
			vector.create(_hr.X, _hr.Y, _hr.Z)
		)
	end

	
	function _i.runAutoShoot(_ry)
		while _z == _ry do
			local _sz, _if = getNearestCreature(true)
			if not _sz then
				if _q == _d1ock1({32,2,8,59,9,74},{67,109,101,89,104,62,64,75}) and _z == _ry then
					_gd.Text = _d1ock1({12,27,14,10,26,53,39,84,7,14,1,123,14,36,34,18,93,117,110},{64,116,97,97,115,91})
				end
				if searchForNPCs(_ry) then
					_sz, _if = getNearestCreature(true)
				end
			end
			if _z ~= _ry then return end

			if not _sz then
				if _q == _d1ock1({87,88,88,57,86,29},{52,55,53,91,55,105,108}) and _z == _ry then
					_gd.Text = _d1ock1({13,7,74,27,15,41,52,38,12,74,37,54,9,44,99,14,5,30,8,46,127,42,6,74,10,8,51,127,39,1,7,14,8,57,54,44,6},{67,104,106,107,102,74,95})
				end
				interruptibleWait(2, _ry)
			else
				
				local _pg = Vector3.zero
				local _ik, lastTime = getAimPoint(_sz), os.clock()

				local function sampleFor(_cg)
					local _fm = os.clock() + _cg
					repeat
						_g.Heartbeat:Wait()
						local _aw = os.clock()
						local _wp = getAimPoint(_sz)
						local _ty = _aw - lastTime
						if _ty > 0 then
							_pg = _pg:Lerp((_wp - _ik) / _ty, _h.LEAD_SMOOTHING)
							_ik, lastTime = _wp, _aw
						end
					until os.clock() >= _fm or _z ~= _ry or not isCreatureAlive(_sz)
				end

				sampleFor(_h.LEAD_WARMUP)

				while _z == _ry and isCreatureAlive(_sz) do
					if _q == _d1ock1({63,52,55,75,22,8},{92,91,90,41,119,124}) and _z == _ry then
						_gd.Text = _d1ock1({58,81,0,45,11,68,27,36,9,16},{110,48,114,74}) .. _sz.Name .. " (" .. _if .. ")"
					end
					_i.equipLaserPistol()
					ensureLineOfSight(_sz)
					if _z ~= _ry then return end
					fireLaserAt(predictAim(_sz, _pg))
					sampleFor(_h.FIRE_INTERVAL)
				end
			end
		end
	end
end




do
	local screenGui = _a.screenGui
	local _sd = {} 

	local function containsAny(_fi, _ao)
		_fi = string.lower(_fi)
		for _vs, kw in ipairs(_ao) do
			if string.find(_fi, kw, 1, true) then
				return true
			end
		end
		return false
	end

	local function nameMatches(_gh)
		for _vs, exact in ipairs(_h.LOADING_GUI_NAMES) do
			if _gh.Name == exact then
				return true
			end
		end
		return containsAny(_gh.Name, _h.LOADING_NAME_KEYWORDS)
	end

	
	local function isShowing(_gh, _lu)
		local _rv = _gh
		while _rv and _rv ~= _lu do
			if _rv:IsA(_d1ock1({59,77,26,21,30,82,22,57,8},{124,56,115,90})) and not _rv.Visible then
				return false
			end
			_rv = _rv.Parent
		end
		return _lu.Enabled
	end

	local function hideInstance(_gh)
		local _sr
		if _gh:IsA(_d1ock1({109,51,32,68,35,39,118,75,57},{62,80,82,33,70,73,49})) then
			_sr = _d1ock1({126,57,67,60,15,67,51},{59,87,34,94,99,38,87,108})
		elseif _gh:IsA(_d1ock1({113,45,54,35,3,68,86,55,66},{54,88,95,108,97,46,51,84})) then
			_sr = _d1ock1({106,19,92,4,27,80,31},{60,122,47,109,121})
		else
			return
		end

		if _gh[_sr] then
			_gh[_sr] = false
		end

		if not _sd[_gh] then
			_sd[_gh] = true
			print(_d1ock1({51,30,95,79,90,40,51,15,15,16,70,87,37},{104,82,48,46,62,65,93}), _gh:GetFullName())
			
			_gh:GetPropertyChangedSignal(_sr):Connect(function()
				if _l and _gh[_sr] then
					_gh[_sr] = false
				end
			end)
		end
	end

	local function checkLoadingGui(_lu)
		if _lu == screenGui or not _lu:IsA(_d1ock1({46,68,30,72,84,75,7,8,78},{125,39,108,45,49,37,64})) then return end

		if nameMatches(_lu) then
			hideInstance(_lu)
			return
		end

		for _vs, d in ipairs(_lu:GetDescendants()) do
			if d:IsA(_d1ock1({32,37,65,113,5,58,77,93,19},{103,80,40,62})) then
				if nameMatches(d) and isShowing(d, _lu) then
					hideInstance(d)
				elseif (d:IsA(_d1ock1({112,21,75,29,57,73,70,21,95},{36,112,51,105,117,40})) or d:IsA(_d1ock1({113,1,43,53,53,13,81,16,60,47},{37,100,83,65,119,120})))
					and containsAny(d.Text, _h.LOADING_TEXT_KEYWORDS)
					and isShowing(d, _lu) then
					hideInstance(_lu) 
					return
				end
			end
		end
	end

	
	table.insert(_f, _n.ChildAdded:Connect(function(_xl)
		if _l and _xl:IsA(_d1ock1({61,47,47,18,11,34,26,2,7},{110,76,93,119})) then
			task.defer(checkLoadingGui, _xl)
		end
	end))

	task.spawn(function()
		while screenGui.Parent do
			if _l then
				for _vs, _lu in ipairs(_n:GetChildren()) do
					checkLoadingGui(_lu)
				end
			end
			task.wait(0.2)
		end
	end)
end




do
	local screenGui = _a.screenGui
	local nodeList, dimOList, oreList = _a.nodeList, _a.dimOList, _a.oreList
	local getNodeAmount, getOreAmount = _a.getNodeAmount, _a.getOreAmount
	local updateAmountVisibility, updateOreAmountVisibility = _a.updateAmountVisibility, _a.updateOreAmountVisibility
	local craftItem, getItemKey, goToWorkbench, returnFromWorkbench =
		_i.craftItem, _i.getItemKey, _i.goToWorkbench, _i.returnFromWorkbench

	
	local function getDimension(_if)
		local _xv = workspace:FindFirstChild(_d1ock1({27,72,48,89,49,82,52,83,49,82},{95,33,93,60}))
		return _xv and _xv:FindFirstChild(_if)
	end

	
	local function getFolderIn(_if, _nt)
		local _qp = getDimension(_if)
		local folder = _qp and _qp:FindFirstChild(_nt)
		if folder and folder:IsA(_d1ock1({61,25,9,74,74,7},{123,118,101,46,47,117,79,107})) then
			return folder
		end
	end

	local function getOresFolder(_if) return getFolderIn(_if, _d1ock1({104,83,1,74},{39,33,100,57,107,115})) end
	local function getNodesFolder(_if) return getFolderIn(_if, _d1ock1({112,21,46,48,77},{62,122,74,85})) end

	
	local function scanDimensions()
		local _ix, dimO, ore = {}, {}, {}
		local _xv = workspace:FindFirstChild(_d1ock1({26,26,13,31,38,64,76,49,29,19},{94,115,96,122,72,51,37}))
		if _xv then
			for _vs, _qp in ipairs(_xv:GetChildren()) do
				local nodes = _qp:FindFirstChild(_d1ock1({106,63,82,20,10},{36,80,54,113,121}))
				if nodes and nodes:IsA(_d1ock1({58,11,84,29,64,42},{124,100,56,121,37,88,76,104})) then
					table.insert(isDimO(_qp.Name) and dimO or _ix, _qp.Name)
				end
				local _iv = _qp:FindFirstChild(_d1ock1({3,62,47,17},{76,76,74,98,77,62}))
				if _iv and _iv:IsA(_d1ock1({97,35,62,54,65,86},{39,76,82,82,36,36,53})) then
					table.insert(ore, _qp.Name)
				end
			end
		end
		table.sort(_ix)
		table.sort(dimO)
		table.sort(ore)
		return _ix, dimO, ore
	end

	task.spawn(function()
		while screenGui.Parent do
			local _ix, dimO, ore = scanDimensions()
			nodeList.setNames(_ix)
			dimOList.setNames(dimO)
			oreList.setNames(ore)
			task.wait(_h.LIST_REFRESH)
		end
	end)

	local function refreshButtons()
		for _hs, _oe in pairs(_p) do
			local _ap = (_q == _hs)
			_oe.button.Text = _oe.label .. (_ap and _d1ock1({82,114,124,30},{104,82,51,80,34,114}) or _d1ock1({65,75,14,8,0},{123,107,65,78,70,106,102,123}))
			_oe.button.BackgroundColor3 = _ap and _h.COLOR_ON or _h.COLOR_OFF
		end
	end

	
	_y = function()
		if _q then
			local _pt = _q
			_z = _z + 1
			_q = nil
			clearHiddenHold()
			restoreOriginIfAny(_pt)
			refreshButtons()
		end
	end

	_b = function()
		if _q and _h.MODE_RETURNS_TO_ORIGIN[_q] then
			restoreOriginIfAny(_q)
		end
	end

	
	local function resolveFast(_yp)
		if _yp == nil then return _m end
		return _yp
	end

	
	local function resolveHidden(_qn)
		if _qn == nil then return _c end
		return _qn
	end

	
	local function moveToModel(model, _qn)
		local character = _e.Character
		local _is = character and character:FindFirstChild(_d1ock1({120,34,81,14,94,56,85,11,98,56,83,27,96,54,78,27},{48,87,60,111}))
		if not _is then return false end

		if _qn then
			local _wp = model:GetPivot() + getHiddenOffset(model)
			_is.CFrame = _wp
			holdHiddenPosition(_wp)
		else
			clearHiddenHold()
			_is.CFrame = model:GetPivot() + _h.HEIGHT_OFFSET
		end
		return true
	end

	local function triggerPrompt(model, _yp)
		local _uj = model:FindFirstChildWhichIsA(_d1ock1({120,12,83,30,57,54,57,92,7,108,20,63,54,32,92},{40,126,60,102,80,91,80}), true)
		if not _uj or not _uj.Enabled then
			if _c then
				local character = _e.Character
				local _is = character and character:FindFirstChild(_d1ock1({125,41,83,11,15,90,53,90,56,14,90,40,110,11,19,65},{53,92,62,106,97}))
				local _kc = _uj and _uj:FindFirstAncestorWhichIsA(_d1ock1({23,69,17,29,20,52,86,22},{85,36,98,120,68}))
				local _od = (_is and _kc) and (_is.Position - _kc.Position).Magnitude or nil
				warn((_d1ock1({23,116,44,78,44,49,41,17,28,96,89,104,121,121,108,76,55,69,37,36,51,108,25,54,6,104,49,41,45,94,41,79,44,105,98,63,16,101,88,45,37,50,37,78,32,89,4,27,20,113,25,54,6,104,57,38,52,120,44,89,60,105,98,63,16,101,75,43,32,50,45,80,1,67,59,32,122,105,79},{76,60,69,42,72,84,71})):format(
					model.Name,
					_uj and _d1ock1({75,86,94,55,44},{45,57,43,89,72,98,57,126}) or _d1ock1({52,86,16,10,20,64,62},{89,63,99,121,125,46}),
					_uj and tostring(_uj.Enabled) or _d1ock1({28,19,7},{114,60,102,106,36,53,84,47}),
					_uj and tostring(_uj.RequiresLineOfSight) or _d1ock1({72,2,31},{38,45,126,86}),
					_uj and tostring(_uj.MaxActivationDistance) or _d1ock1({91,26,13},{53,53,108,35,57,59,65,57}),
					_od and string.format("%.1f", _od) or _d1ock1({22,24,52},{120,55,85,114})
				))
			end
			return false
		end

		
		local _os = _uj.HoldDuration
		if resolveFast(_yp) and _os > _h.FAST_HOLD_DURATION then
			_uj.HoldDuration = _h.FAST_HOLD_DURATION
		end

		_uj:InputHoldBegin()
		task.wait(math.max(_uj.HoldDuration, 0) + 0.1)
		_uj:InputHoldEnd()

		if _uj.Parent then
			_uj.HoldDuration = _os
		end
		return true
	end

	local function teleportTo(model, _ry, _yp, _fs, _qn)
		_yp = resolveFast(_yp)
		if not moveToModel(model, resolveHidden(_qn)) then return false end
		task.wait(_yp and _h.FAST_SETTLE_TIME or _h.SETTLE_TIME)

		interruptibleWait(_yp and _h.FAST_PROMPT_DELAY or _h.PROMPT_DELAY, _ry)

		if _z == _ry then
			local _sg = triggerPrompt(model, _yp)
			if _sg and _fs and _z == _ry then
				_fs(model)
			end
		end
		return true
	end

	
	
	local function visitTarget(model, _ry, _yp, _fs, _qn)
		_yp = resolveFast(_yp)
		local _uj = model:FindFirstChildWhichIsA(_d1ock1({31,91,42,35,3,34,64,49,34,58,61,70,40,43,30},{79,41,69,91,106}), true)
		local _jd = _yp and _h.FAST_TELEPORT_DELAY or _h.TELEPORT_DELAY
		local _fq = os.clock()

		local _or = teleportTo(model, _ry, _yp, _fs, _qn)

		while _z == _ry do
			local _uh = _jd - (os.clock() - _fq)
			if _uh <= 0 then break end

			if _yp and _or then
				local _cn = not model.Parent
					or not _uj
					or not _uj.Parent
					or not _uj.Enabled
				if _cn then break end
			end

			task.wait(math.min(0.05, _uh))
		end

		return _or
	end

	
	local function getChestTargets()
		local _qd = {}
		local folder = workspace:FindFirstChild(_d1ock1({124,74,72,0,114,76,85,86,83,7},{48,37,39,116,49,36}))
		if not folder then
			warn(_d1ock1({56,51,7,13,0,19,17,47,28,10,99,29,27,48,12,28,49,91,26,51,28,89,37,20,1,50,12,89,42,21,84,43,7,11,40,8,4,61,11,28},{116,92,104,121,67,123}))
			return _qd
		end
		for _vs, model in ipairs(folder:GetChildren()) do
			if model:IsA(_d1ock1({37,56,62,14,4},{104,87,90,107})) then
				table.insert(_qd, model)
			end
		end
		return _qd
	end

	
	local function getChestId(_et)
		local _og = _et:GetAttribute(_d1ock1({126,50,45,39,18,116,62},{61,90,72,84,102}))
		if _og ~= nil and tostring(_og) ~= "" then
			return tostring(_og)
		end

		local _vw = string.match(_et.Name, _d1ock1({53,119,68,54,12,104,48,14,72,95,6,80,5,115,66,31},{107,59,43,89,120,43,88}))
		if _vw and _vw ~= "" then
			return _vw
		end
		return nil
	end

	
	local function takeAllFromChest(_et)
		if not _h.AUTO_TAKE_ALL then return end

		local _ee = getChestId(_et)
		if not _ee then
			warn(_d1ock1({32,49,26,17,37,38,101,72,20,93,54,22,52,8,49,111,31,93,20,10,37,9,44,68,14,9,16,94,62,9,101,106,20,18,1,61,57,30,54,82,36,93,27,31,60,30,101,73,21,93},{123,125,117,126,81,123,69,38}) .. _et:GetFullName())
			return
		end

		local _tl = _w:FindFirstChild(_d1ock1({62,34,55,82,30,56,23,35,44},{114,77,88,38,91,78}))
		if not _tl then
			warn(_d1ock1({16,7,76,93,63,22,3,126,36,36,87,119,61,46,77,70,107,37,76,70,107,45,76,71,37,47,3,91,37,107,113,87,59,39,74,81,42,63,70,86,24,63,76,64,42,44,70},{75,75,35,50}))
			return
		end

		task.wait(_h.LOOT_TAKE_DELAY)

		_tl:FireServer(_d1ock1({82,38,84,40},{38,71,63,77,62,41,35}), _ee, _d1ock1({2,93,26},{99,49,118,121,68,74,33,92}))
		print(_d1ock1({42,41,90,94,10,44,69,65,80,21,20,69,84,93,18,81,72,11},{113,101,53,49,126}), _ee)
	end

	local _hy = {}

	local function getItemsIn(_nt)
		local _qd = {}
		local folder = workspace:FindFirstChild(_nt)
		if not folder then
			if not _hy[_nt] then
				_hy[_nt] = true
				warn(_nt .. _d1ock1({81,61,61,59,21,62,32,119,31,52,38,119,23,52,39,57,21,123,59,57,81,44,61,37,26,40,34,54,18,62},{113,91,82,87}))
			end
			return _qd
		end
		_hy[_nt] = nil

		for _vs, _gh in ipairs(folder:GetChildren()) do
			if isDropModel(_gh) then
				table.insert(_qd, _gh)
			end
		end
		return _qd
	end

	local function getSelectedDimensionTargets()
		local _qd = {}
		local _if = nodeList.order[1]
		if not _if or isDimO(_if) then return _qd end

		local nodes = getNodesFolder(_if)
		if not nodes then return _qd end

		for _vs, model in ipairs(nodes:GetChildren()) do
			if model:IsA(_d1ock1({25,17,30,19,56},{84,126,122,118})) then
				table.insert(_qd, model)
			end
		end
		return _qd
	end

	
	local function makePassLoop(_zn, _nk, _fs, _ir)
		return function(_ry)
			while _z == _ry do
				local _qd = _zn()
				if #_qd == 0 then
					interruptibleWait(2, _ry) 
				else
					for _vs, model in ipairs(_qd) do
						if _z ~= _ry then break end
						if model.Parent then
							visitTarget(model, _ry, _nk and _nk(), _fs, _ir and _ir())
						end
					end
				end
				task.wait()
			end
		end
	end

	
	
	local function nextUnvisitedDimONode(_if, _rc)
		local nodes = getNodesFolder(_if)
		if not nodes then return nil end

		for _vs, model in ipairs(nodes:GetChildren()) do
			if model:IsA(_d1ock1({96,29,84,29,74},{45,114,48,120,38,52,44})) and model.Name ~= _h.WORKBENCH_NAME and not _rc[model] then
				local _uj = model:FindFirstChildWhichIsA(_d1ock1({107,24,23,53,82,7,17,57,66,58,10,34,86,26,12},{59,106,120,77}), true)
				if _uj and _uj.Enabled then
					return model
				end
			end
		end
		return nil
	end

	
	local _yq = {}

	local function enterDimension(_if, _ry)
		local _qp = getDimension(_if)
		local _bq = _qp and _qp:FindFirstChild(_h.WORKBENCH_NAME, true)
		if not _bq or not _bq:IsA(_d1ock1({62,1,127,85,60,39,15,57,85,94},{110,87,54,59,79,83})) then
			if not _yq[_if] then
				_yq[_if] = true
				warn(_d1ock1({22,4,18,111},{88,107,50,72,120,122,77,33}) .. _h.WORKBENCH_NAME .. _d1ock1({100,19,23,58,4,45,87,81,60,31,99},{67,51,113,85,113}) .. _if .. _d1ock1({94,13,86,91,28,89,92,90,7,68,91,83,82,90,92,64,26,66,64,64,82,68,65},{114,45,53,52}))
			end
			return false
		end

		local character = _e.Character
		local _is = character and character:FindFirstChild(_d1ock1({108,20,37,69,85,50,74,13,118,14,39,80,107,60,81,29},{36,97,72,36,59,93,35,105}))
		if not _is then return false end

		_is.CFrame = _bq:GetPivot() + _h.HEIGHT_OFFSET
		interruptibleWait(_m and _h.FAST_WORKBENCH_WAIT or _h.WORKBENCH_WAIT, _ry)
		return true
	end

	
	
	local function collectDimension(_if, _ry)
		local _rc = {}
		local _nm = 0
		local _se = os.clock()

		while _z == _ry and _nm < _h.NODES_PER_DIM_O do
			local _xk = nextUnvisitedDimONode(_if, _rc)

			if _xk then
				_rc[_xk] = true
				if visitTarget(_xk, _ry) then
					_nm = _nm + 1
				end
				_se = os.clock()
			else
				if os.clock() - _se >= _h.NO_PROGRESS_TIMEOUT then
					break
				end
				task.wait(0.1)
			end
		end

		return _nm
	end

	local function runDimO(_ry)
		local _yo = nil     
		local _hm = nil  

		while _z == _ry do
			local order = table.clone(dimOList.order)
			local _ag = 0

			for _vs, _if in ipairs(order) do
				if _z ~= _ry then break end

				if _yo ~= _if or _e.Character ~= _hm then
					if enterDimension(_if, _ry) then
						_yo = _if
						_hm = _e.Character
					end
				end

				_ag = _ag + collectDimension(_if, _ry)
			end

			if _ag == 0 then
				interruptibleWait(2, _ry) 
			end
			task.wait()
		end
	end

	local _qq 

	local _dx = makePassLoop(getSelectedDimensionTargets)

	local function setNodeProgress(_ry, _jj, _ci, _mt, _ai)
		if _q == _d1ock1({24,52,6,88,14},{118,91,98,61,125,70}) and _z == _ry then
			_p.nodes.button.Text = _d1ock1({48,36,25,4,89,42,54,17,101,43,0,89,46,109,93,10,35,65,3},{125,69,109,97,43,67,87}) .. _jj .. "/" .. _ci
				.. "  " .. _mt .. "/" .. _ai .. ")"
		end
	end

	
	
	local function teleportToFirstIn(folder, _ry, _ok)
		if not folder then return false end

		local _uo
		for _vs, model in ipairs(folder:GetChildren()) do
			if model:IsA(_d1ock1({16,53,43,40,35},{93,90,79,77,79,88,65,109})) then
				if not _ok then
					_uo = model
					break
				end
				local _uj = model:FindFirstChildWhichIsA(_d1ock1({6,69,52,68,92,59,94,47,69,101,36,88,54,76,65},{86,55,91,60,53}), true)
				if _uj and _uj.Enabled then
					_uo = model
					break
				end
				_uo = _uo or model
			end
		end
		if not _uo then return false end

		if not moveToModel(_uo, _c) then return false end
		interruptibleWait(_h.DIM_ENTER_WAIT, _ry)
		return true
	end

	local function farmNodesInDimension(_if, _ai, _ry, _jj, _ci)
		teleportToFirstIn(getNodesFolder(_if), _ry, true)
		local _mt = 0
		local _se = os.clock()
		setNodeProgress(_ry, _jj, _ci, _mt, _ai)

		while _z == _ry and _mt < _ai do
			local nodes = getNodesFolder(_if)
			local _vi = false

			if nodes then
				for _vs, model in ipairs(nodes:GetChildren()) do
					if _z ~= _ry or _mt >= _ai then break end
					if model:IsA(_d1ock1({39,63,1,95,38},{106,80,101,58,74,49})) and model.Parent then
						local _uj = model:FindFirstChildWhichIsA(_d1ock1({50,19,18,34,88,14,71,85,27,49,15,53,92,19,90},{98,97,125,90,49,99,46,33}), true)
						if _uj and _uj.Enabled then
							_vi = true
							visitTarget(model, _ry)

							
							local _lt = not model.Parent or not _uj.Parent or not _uj.Enabled
							if _lt and _z == _ry then
								_mt = _mt + 1
								_se = os.clock()
								setNodeProgress(_ry, _jj, _ci, _mt, _ai)
							end
						end
					end
				end
			end

			if _mt < _ai and os.clock() - _se >= _h.NODE_NO_PROGRESS_TIMEOUT then
				warn(_d1ock1({109,126,13,88,56,25,22,26,89,76,4,67,59,35,22,23,89,84,0,79,54,48,83,16,22,81,2,10},{54,56,108,42,85,68,54,116}) .. _if .. _d1ock1({124,9,2,78,104},{92,111,109,60,72,103,55}) .. _h.NODE_NO_PROGRESS_TIMEOUT
					.. _d1ock1({57,122,104},{74,90,64,58,122,87,88,60}) .. _mt .. "/" .. _ai .. _d1ock1({124,2,65,79,33,93,91,77,50,14,14,76},{85,46,97,34,78,43,50,35}))
				break
			end
			if not _vi then
				interruptibleWait(1, _ry) 
			end
		end

		return _mt
	end

	
	
	local function runSelectedDimensions(_ry)
		local order = table.clone(nodeList.order)

		if #order <= 1 then
			if order[1] then
				teleportToFirstIn(getNodesFolder(order[1]), _ry, true)
			end
			_dx(_ry)
			return
		end

		local _ai = getNodeAmount()
		if not _ai then
			_qq(_d1ock1({31,36,32,23,2},{113,75,68,114}), _ry, _d1ock1({53,58,51,91,63,2,11,30,116,38,83,34,87,4,4,117},{112,84,71,62,77,34,106}))
			return
		end

		for _gm, _if in ipairs(order) do
			if _z ~= _ry then return end
			farmNodesInDimension(_if, _ai, _ry, _gm, #order)
		end

		_qq(_d1ock1({24,66,28,54,5},{118,45,120,83}), _ry, _d1ock1({12,87,0,8,105},{72,56,110,109}))
	end

	
	
	
	local function equipPickaxe()
		return equipTool(_d1ock1({101,17,69,65,8,12,87},{53,120,38,42,105,116,50,123}))
	end

	local function mineOre(model, _ry)
		local _fq = os.clock()
		local _be = 0
		local _gf = _w:WaitForChild(_d1ock1({19,34,36,48,7,46,87,29,42},{94,75,74,85,66,88,50,115}))
		while _z == _ry and model.Parent do
			_gf:FireServer(_d1ock1({28,51,26,45,74},{111,68,115,67,45,115,119}))
			_be = _be + 1
			if _be >= _h.MINE_MAX_SWINGS then
				break
			end
			if os.clock() - _fq >= _h.MINE_GIVE_UP_TIME then
				warn(_d1ock1({30,121,10,20,56,101},{69,54,120,113,101}) .. model.Name .. _d1ock1({26,35,39,23,31,72,78,103,44,1,20,14,81,103,47,21,5,10,72,103},{58,71,78,115,113,111}) .. _h.MINE_GIVE_UP_TIME .. _d1ock1({49,2,121,69,21,43,23,44,73,121,71,20},{66,46,89,40,122,93,126}))
				break
			end
			task.wait(_h.MINE_SWING_MIN + math.random() * (_h.MINE_SWING_MAX - _h.MINE_SWING_MIN))
		end
		return not model.Parent
	end

	local function visitOre(model, _ry)
		equipPickaxe()
		if not moveToModel(model, _c) then return end

		task.wait(_m and _h.FAST_SETTLE_TIME or _h.SETTLE_TIME)
		if _z ~= _ry then return end
		mineOre(model, _ry)
	end

	local function setOreProgress(_ry, _jj, _ci, _jx, _ai)
		if _q == _d1ock1({42,0,53},{69,114,80,71,66,109,121}) and _z == _ry then
			_p.ore.button.Text = _d1ock1({112,73,32,114,47,61,7,82,1,101,29,39,124,93},{63,59,69,82,105,92,117}) .. _jj .. "/" .. _ci
				.. "  " .. _jx .. "/" .. _ai .. ")"
		end
	end

	
	local function mineDimension(_if, _ai, _ry, _jj, _ci)
		local _jx = 0
		local _se = os.clock()
		if _ai then
			setOreProgress(_ry, _jj, _ci, _jx, _ai)
		end

		while _z == _ry and (not _ai or _jx < _ai) do
			local _iv = getOresFolder(_if)
			local _vi = false

			if _iv then
				for _vs, model in ipairs(_iv:GetChildren()) do
					if _z ~= _ry or (_ai and _jx >= _ai) then break end
					if model:IsA(_d1ock1({17,41,65,85,41},{92,70,37,48,69,54,57})) and model.Parent then
						_vi = true
						visitOre(model, _ry)

						if _z == _ry then
							_jx = _jx + 1
							_se = os.clock()
							if _ai then
								setOreProgress(_ry, _jj, _ci, _jx, _ai)
							end
						end
					end
				end
			end

			if (not _ai or _jx < _ai) and os.clock() - _se >= _h.ORE_NO_PROGRESS_TIMEOUT then
				warn(_d1ock1({117,21,29,19,115,122,1,25,90,50,6,24,73,122,2,31,64,63,11,86,71,52,79},{46,90,111,118}) .. _if .. _d1ock1({10,17,26,61,10},{42,119,117,79}) .. _h.ORE_NO_PROGRESS_TIMEOUT
					.. _d1ock1({48,11,78},{67,43,102,56,85}) .. _jx .. (_ai and ("/" .. _ai) or "") .. _d1ock1({115,16,112,70,69,76,77,5,61,28,63,69},{90,60,80,43,42,58,36,107}))
				break
			end
			if not _vi then
				interruptibleWait(1, _ry) 
			end
		end

		return _jx
	end

	local function runOreDimensions(_ry)
		local order = table.clone(oreList.order)
		if #order == 0 then return end

		if #order <= 1 then
			teleportToFirstIn(getOresFolder(order[1]), _ry, false)
			mineDimension(order[1], nil, _ry, 1, 1)
			return
		end

		local _ai = getOreAmount()
		if not _ai then
			_qq(_d1ock1({35,3,66},{76,113,39,49,42,115}), _ry, _d1ock1({57,76,2,45,48,92,67,24,104,35,17,77,3,38,54,93},{124,34,118,72,66}))
			return
		end

		for _gm, _if in ipairs(order) do
			if _z ~= _ry then return end
			teleportToFirstIn(getOresFolder(_if), _ry, false)
			mineDimension(_if, _ai, _ry, _gm, #order)
		end

		_qq(_d1ock1({0,57,61},{111,75,88,125,41,116,62}), _ry, _d1ock1({47,3,19,54,20},{107,108,125,83,53,86,58,126}))
	end

	
	_p.chests = {
		label = _d1ock1({124,0,41,18,75,72,24,49},{63,104,76,97}),
		button = _a.chestButton,
		run = makePassLoop(getChestTargets, function()
			if _h.CHEST_FOLLOWS_FAST_MODE then return nil end 
			return false 
		end, takeAllFromChest),
	}

	_p.droppedloot = {
		label = _d1ock1({20,3,32,5,3,47,77,42,1},{88,108,79,113,35,105,44}),
		button = _a.lootDropButton,
		run = makePassLoop(function() return getItemsIn(_d1ock1({23,60,69,74,10,31,73,31,33,69,78},{83,78,42,58,122,122,45})) end, function() return _s end, nil, function() return _u end),
	}

	_p.nodes = {
		label = _d1ock1({35,77,23,60,66,7,77,15,121,118,15,94,14},{110,44,99,89,48}),
		button = _a.nodeButton,
		run = runSelectedDimensions,
		canStart = function()
			if #nodeList.order == 0 then
				return false, _d1ock1({12,61,92,83,23,61,116,91,81,90,57,58,76,81,88,50,117},{92,84,63,56,55})
			end
			if #nodeList.order > 1 and not getNodeAmount() then
				return false, _d1ock1({100,79,92,78,83,1,73,69,1,64,69,68,84,79,92,10},{33,33,40,43})
			end
			return true
		end,
		startMessage = _d1ock1({22,67,27,93,20,13,102,78,17,91,81,2,53,67,23,88,21},{70,42,120,54,52,108}),
	}

	_p.dimo = {
		label = _d1ock1({4,65,44,62,3,119,100,63,45,30},{87,34,94,95,115}),
		button = _a.dimOButton,
		run = runDimO,
		canStart = function() return #dimOList.order > 0 end,
		startMessage = _d1ock1({36,34,37,55,2,26,100,28,29,38,35,50,81,18,43,54,85},{116,75,70,92,34,123,68,88}),
	}

	_p.combat = {
		label = _d1ock1({55,11,100,111,60,46,11,54},{121,91,39,79,122,79}),
		button = _a.autoShootButton,
		canStart = function() return #_a.npcList.order > 0 end,
		startMessage = _d1ock1({105,46,23,6,5,47,87,103,58,61,102,111},{57,71,116,109,37,78}),
		run = function(_ry)
			if not _i.equipLaserPistol() then
				_qq(_d1ock1({90,22,38,76,12,10},{57,121,75,46,109,126,36}), _ry, _d1ock1({116,89,104,34,60,10,95,68,104,62,52,10,78,89,36,79},{58,54,72,110,93,121}))
				return
			end
			_i.runAutoShoot(_ry)
		end,
	}

	_p.ore = {
		label = _d1ock1({120,25,63,100,58,83,10,31},{55,107,90,68,124,50,120,114}),
		button = _a.oreButton,
		run = function(_ry)
			if not equipPickaxe() then
				local _zk = getItemKey(_d1ock1({26,49,0,19,93,17,47},{74,88,99,120,60,105}))
				if not _zk then
					_qq(_d1ock1({58,12,44},{85,126,73,75,63}), _ry, _d1ock1({126,27,7,33,95,93,91,21,95,20,22,76,85,23,78,1,83,31},{48,116,39,113,54,62}))
					return
				end

				local _vn = goToWorkbench()
				local _sq = pcall(craftItem, _zk, function() return _z == _ry end)
				returnFromWorkbench(_vn)
				if _z ~= _ry then return end

				task.wait(0.5) 
				if not _sq or not equipPickaxe() then
					_qq(_d1ock1({73,40,62},{38,90,91,92}), _ry, _d1ock1({18,65,81,97,5,13,55,79,9,84,77},{92,46,113,49,108,110}))
					return
				end
			end
			runOreDimensions(_ry)
		end,
		canStart = function()
			if #oreList.order == 0 then
				return false, _d1ock1({54,15,15,12,114,7,70,8,14,63,3,8,31,14,61,8,71},{102,102,108,103,82})
			end
			if #oreList.order > 1 and not getOreAmount() then
				return false, _d1ock1({57,35,7,0,42,96,63,18,109,18,8,55,53,48,8,108},{124,77,115,101,88,64,94})
			end
			return true
		end,
		startMessage = _d1ock1({20,30,10,41,121,37,87,13,43,52,33,25,26,43,54,42,86},{68,119,105,66,89}),
	}

	local function flashMessage(_oe, text)
		_oe.button.Text = text
		task.delay(1.5, function()
			if screenGui.Parent then
				refreshButtons()
			end
		end)
	end

	_qq = function(_hs, _ry, _pk)
		if _q == _hs and _z == _ry then
			_z = _z + 1
			_q = nil
			clearHiddenHold()
			restoreOriginIfAny(_hs)
			refreshButtons()
			if _pk then
				flashMessage(_p[_hs], _pk)
			end
		end
	end

	local function toggleMode(_hs)
		local _oe = _p[_hs]

		if _q ~= _hs and _oe.canStart then
			local _sq, _pk = _oe.canStart()
			if not _sq then
				flashMessage(_oe, _pk or _oe.startMessage)
				return
			end
		end

		_z = _z + 1
		if _q == _hs then
			_q = nil
			clearHiddenHold()
			restoreOriginIfAny(_hs)
		else
			if _q then
				_v[_q] = nil 
			end
			_q = _hs 
			captureOriginIfHidden(_hs)
		end
		refreshButtons()

		if _q then
			task.spawn(_p[_q].run, _z)
		end
	end

	
	local function restartIfActive(_hs)
		if _q == _hs then
			_z = _z + 1
			task.spawn(_p[_hs].run, _z)
		end
	end

	nodeList.onChanged = function()
		updateAmountVisibility()
		restartIfActive(_d1ock1({7,25,75,7,1},{105,118,47,98,114}))
	end
	dimOList.onChanged = function() restartIfActive(_d1ock1({14,39,41,31},{106,78,68,112,36})) end
	_a.npcList.onChanged = function() restartIfActive(_d1ock1({51,85,95,71,14,36},{80,58,50,37,111})) end
	oreList.onChanged = function()
		updateOreAmountVisibility()
		restartIfActive(_d1ock1({8,47,6},{103,93,99,35,126,97,34}))
	end

	for _hs, _oe in pairs(_p) do
		_oe.button.MouseButton1Click:Connect(function()
			toggleMode(_hs)
		end)
	end

	refreshButtons()

	_a.closeButton.MouseButton1Click:Connect(function()
		_z = _z + 1
		_j = _j + 1
		local _pt = _q
		_q = nil
		clearHiddenHold()
		restoreOriginIfAny(_pt)
		for _vs, conn in ipairs(_f) do
			conn:Disconnect()
		end
		screenGui:Destroy()
	end)
end
