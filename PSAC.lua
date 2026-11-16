-- LUAOBF-33MHX | Obfuscated Lua script | 2026-11-16
local function _d449q3(b,k)
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
local _i = game:GetService(_d449q3({58,56,34,25,15,38,48},{106,84,67,96}))
local _t = game:GetService(_d449q3({31,85,95,5,11,25,78,63,82,105,18,48,1,87,41,67},{74,38,58,119,66,119,62}))
local _s = game:GetService(_d449q3({10,5,55,21,91,62,59,0,36,25,86,8},{94,114,82,112,53,109}))
local _n = game:GetService(_d449q3({102,94,27,70,19,35,57,95,81,95,56,94,21,50,57,76,81},{52,59,107,42,122,64,88,43}))
local _o = game:GetService(_d449q3({46,95,76,121,25,88,84,67,31,79},{124,42,34,42}))
local _f = game:GetService(_d449q3({108,58,56,64,94,72,86,6,57,81,89},{58,83,74,52,43,41}))
local _c = _i.LocalPlayer
local _q = _c:WaitForChild(_d449q3({43,93,53,16,91,14,31,14,88},{123,49,84,105,62,124,88}))

local _k = {
	TELEPORT_DELAY = 5, 
	PROMPT_DELAY = 2, 
	SETTLE_TIME = 0.3, 
	FAST_HOLD_DURATION = 0, 
	FAST_SETTLE_TIME = 0.15,
	FAST_PROMPT_DELAY = 0.5,
	FAST_TELEPORT_DELAY = 1.5, 
	WORKBENCH_NAME = _d449q3({19,56,63,51,47,67,38,59,44},{68,87,77,88,77,38,72,88}), 
	WORKBENCH_WAIT = 1.5,
	FAST_WORKBENCH_WAIT = 0.75,
	NODES_PER_DIM_O = 7, 
	NO_PROGRESS_TIMEOUT = 3, 
	DIM_ENTER_WAIT = 0.75, 
	NODE_NO_PROGRESS_TIMEOUT = 30, 
	HEIGHT_OFFSET = Vector3.new(0, 4, 0),
	HIDDEN_OFFSET_MAX = 8, 
	HIDDEN_SAFETY_MARGIN = 1.5, 
	DIM_O_PREFIX = _d449q3({51,47,92,6},{119,70,49,89,108,87,124}),
	LIST_REFRESH = 1.5,
	AUTO_TAKE_ALL = true,
	LOOT_TAKE_DELAY = 0.3,
	CHEST_FOLLOWS_FAST_MODE = false,
	LOADING_GUI_NAMES = {},
	LOADING_NAME_KEYWORDS = { _d449q3({61,20,14,60,79,70,28},{81,123,111,88,38,40,123,70}), _d449q3({33,75,10,32,62,71,25,33,40,74},{77,36,107,68}), _d449q3({5,92,9,70,2,71,28,65,30,64},{113,46,104,40}), _d449q3({0,10,82,0,25,15,93,34,7,12,76,0,12,14},{116,111,62,101,105,96,47,86}) },
	LOADING_TEXT_KEYWORDS = { _d449q3({84,3,79,29,57,40,4,83,14,67,8},{36,111,42,124,74,77,36}), _d449q3({52,74,28,93,94,86,63},{88,37,125,57,55,56}) },
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
	AIM_PART_PRIORITY = { _d449q3({127,23,92,49},{55,114,61,85}), _d449q3({63,28,64,17},{125,115,36,104}) },
	
	
	CRONENBURG_NAME = _d449q3({114,3,73,95,78,95,19,67,67,76},{49,113,38,49,43}),
	CRONENBURG_FOLDER = _d449q3({121,26,27,59,78,29,12,63,73},{58,104,126,90}),
	COMBAT_ENGAGE_DISTANCE = 80, 
	NPC_SCAN_WAIT = 1.5, 
	NPC_RESCAN = 5, 
	
	LASER_SPEED = 150, 
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


local _a = true
local _x = false
local _u = false
local _w = false 
local _r = false 
local _d = nil
local _z = 0 
local _m = 0
local _l = nil 
local _g = {}
local _p = {}
local _h = {}
local _e = {} 
local _b = {} 


local _v = function() end
local _y = function() end




local function isDimO(_bv)
	return string.sub(_bv, 1, #_k.DIM_O_PREFIX) == _k.DIM_O_PREFIX
end

local function isDropModel(_jh)
	return _jh:IsA(_d449q3({127,12,0,31,94},{50,99,100,122}))
end

local _j
do
	
	local function dimOwnerId(_dm)
		local _hv = _dm:GetAttribute(_d449q3({28,59,44,56,30,26,40},{83,76,66,93,108}))
		return _hv ~= nil and tonumber(_hv) or nil
	end

	
	_j = function()
		local _oa = workspace:FindFirstChild(_d449q3({63,74,95,91,4,11,46,20,77,65},{123,35,50,62,106,120,71}))
		if not _oa then return nil end
		for _cx, _dm in ipairs(_oa:GetChildren()) do
			if isDimO(_dm.Name) and dimOwnerId(_dm) == _c.UserId then
				return _dm
			end
		end
		return nil
	end
end


local function getHiddenOffset(model)
	local _pt = model:FindFirstChildWhichIsA(_d449q3({125,44,84,42,45,50,32,89,39,107,32,43,50,57,89},{45,94,59,82,68,95,73}), true)
	local _ks = (_pt and _pt.MaxActivationDistance) or _k.HIDDEN_OFFSET_MAX
	local _ac = math.clamp(_ks - _k.HIDDEN_SAFETY_MARGIN, 1, _k.HIDDEN_OFFSET_MAX)
	return Vector3.new(0, -_ac, 0)
end

local function equipTool(_ev)
	local character = _c.Character
	local _ex, alreadyEquipped

	local _zf = character and character:FindFirstChild(_ev)
	if _zf and _zf:IsA(_d449q3({55,53,95,75},{99,90,48,39,51,101,111})) then
		_ex, alreadyEquipped = _zf, true
	else
		local _xs = _c:FindFirstChildOfClass(_d449q3({24,94,40,69,7,59,92,32},{90,63,75,46,119}))
		local _zo = _xs and _xs:FindFirstChild(_ev)
		if _zo and _zo:IsA(_d449q3({47,78,47,70},{123,33,64,42,93,117,33})) then
			_ex, alreadyEquipped = _zo, false
		end
	end

	if not _ex then return false end
	if alreadyEquipped then return true end

	local _ah = character and character:FindFirstChildOfClass(_d449q3({58,27,78,37,84,25,27,10},{114,110,35,68,58,118}))
	if _ah then
		_ah:EquipTool(_ex)
	else
		_ex.Parent = character
	end
	return true
end

local function interruptibleWait(_yo, _cn)
	local _vy = 0
	while _vy < _yo and _z == _cn do
		_vy = _vy + task.wait(0.1)
	end
end


local function clearHiddenHold()
	_l = nil
end

local function holdHiddenPosition(_kq)
	_l = _kq
end

table.insert(_p, _o.Heartbeat:Connect(function()
	if _l then
		local character = _c.Character
		local _aj = character and character:FindFirstChild(_d449q3({29,76,23,49,42,11,11,72,7,86,21,36,20,5,16,88},{85,57,122,80,68,100,98,44}))
		if _aj then
			_aj.CFrame = _l
			_aj.AssemblyLinearVelocity = Vector3.zero
		end
	end
end))



local function isHiddenForMode(_bv)
	if _bv == _d449q3({43,29,26,62,70,70,42,35,0,26,58},{79,111,117,78,54,35,78}) then
		return _w
	end
	if _bv == _d449q3({34,18,49,55,42,82},{65,125,92,85,75,38,50}) then
		return true 
	end
	return _u
end

local function captureOriginIfHidden(_bv)
	if _k.MODE_RETURNS_TO_ORIGIN[_bv] and isHiddenForMode(_bv) then
		local character = _c.Character
		local _aj = character and character:FindFirstChild(_d449q3({60,57,87,38,26,35,83,35,38,35,85,51,36,45,72,51},{116,76,58,71}))
		_g[_bv] = _aj and _aj.CFrame or nil
	else
		_g[_bv] = nil
	end
end

local function restoreOriginIfAny(_bv)
	if _k.MODE_RETURNS_TO_ORIGIN[_bv] and _g[_bv] then
		local character = _c.Character
		local _aj = character and character:FindFirstChild(_d449q3({35,56,62,26,29,27,20,15,31,60,20,7,36,28,25,57},{107,77,83,123,115,116,125}))
		if _aj then
			_aj.CFrame = _g[_bv]
		end
		_g[_bv] = nil
	end
end




do
	local screenGui = Instance.new(_d449q3({109,6,50,40,25,29,16,46,87},{62,101,64,77,124,115,87,91}))
	screenGui.Name = _d449q3({59,63,8,7,9,44,50,1,17,13,23,37,25,51,8,17},{120,87,109,116,125})
	screenGui.ResetOnSpawn = false
	screenGui.Parent = _q
	_e.screenGui = screenGui

	local _qj = Instance.new(_d449q3({49,35,95,57,25},{119,81,62,84,124,34,62,123}))
	_qj.Size = UDim2.new(0, 460, 0, _k.EXPANDED_HEIGHT)
	_qj.Position = UDim2.new(0, 20, 0.5, -340)
	_qj.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
	_qj.BorderSizePixel = 0
	_qj.Active = true
	_qj.Parent = screenGui
	Instance.new(_d449q3({30,123,117,65,57,92,83,92},{75,50,54,46}), _qj).CornerRadius = UDim.new(0, 10)

	local _iw = Instance.new(_d449q3({97,17,56,16,23},{39,99,89,125,114}))
	_iw.Size = UDim2.new(1, 0, 0, 28)
	_iw.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
	_iw.BorderSizePixel = 0
	_iw.Parent = _qj
	Instance.new(_d449q3({52,115,8,25,56,31,4,72},{97,58,75,118,74,113}), _iw).CornerRadius = UDim.new(0, 10)

	local _ya = Instance.new(_d449q3({1,37,75,64,61,43,67,20,57},{85,64,51,52,113,74,33,113}))
	_ya.Size = UDim2.new(1, -64, 1, 0)
	_ya.Position = UDim2.new(0, 10, 0, 0)
	_ya.BackgroundTransparency = 1
	_ya.Text = _d449q3({57,20,25,19,46,5,91,56,6,33,13,25,4,31,111,40,14,31,8,41,8,9,6},{105,123,107,103,79})
	_ya.TextColor3 = Color3.new(1, 1, 1)
	_ya.Font = Enum.Font.GothamBold
	_ya.TextSize = 14
	_ya.TextXAlignment = Enum.TextXAlignment.Left
	_ya.Parent = _iw

	local _ze = Instance.new(_d449q3({45,7,52,26,59,23,56,26,22,12},{121,98,76,110}))
	_ze.Size = UDim2.new(0, 22, 0, 22)
	_ze.Position = UDim2.new(1, -51, 0, 3)
	_ze.BackgroundColor3 = Color3.fromRGB(90, 90, 110)
	_ze.Text = "-"
	_ze.TextColor3 = Color3.new(1, 1, 1)
	_ze.Font = Enum.Font.GothamBold
	_ze.TextSize = 16
	_ze.Parent = _iw
	Instance.new(_d449q3({99,44,126,15,27,8,30,95},{54,101,61,96,105,102,123,45}), _ze).CornerRadius = UDim.new(0, 6)

	local closeButton = Instance.new(_d449q3({53,87,23,82,118,93,64,46,14,92},{97,50,111,38,52,40,52,90}))
	closeButton.Size = UDim2.new(0, 22, 0, 22)
	closeButton.Position = UDim2.new(1, -25, 0, 3)
	closeButton.BackgroundColor3 = _k.COLOR_OFF
	closeButton.Text = "X"
	closeButton.TextColor3 = Color3.new(1, 1, 1)
	closeButton.Font = Enum.Font.GothamBold
	closeButton.TextSize = 14
	closeButton.Parent = _iw
	Instance.new(_d449q3({26,28,23,22,46,57,42,39},{79,85,84,121,92,87}), closeButton).CornerRadius = UDim.new(0, 6)
	_e.closeButton = closeButton

	local _kr = Instance.new(_d449q3({18,87,8,37,49},{84,37,105,72}))
	_kr.Size = UDim2.new(1, 0, 1, -28)
	_kr.Position = UDim2.new(0, 0, 0, 28)
	_kr.BackgroundTransparency = 1
	_kr.Parent = _qj

	
	local _qg = Instance.new(_d449q3({54,31,69,92,21},{112,109,36,49}))
	_qg.Size = UDim2.new(1, -20, 0, 24)
	_qg.Position = UDim2.new(0, 10, 0, 6)
	_qg.BackgroundTransparency = 1
	_qg.Parent = _kr

	local _oc = Instance.new(_d449q3({56,58,109,38,25,25,63,64,54,5,24,7},{109,115,33,79,106}))
	_oc.FillDirection = Enum.FillDirection.Horizontal
	_oc.Padding = UDim.new(0, 6)
	_oc.SortOrder = Enum.SortOrder.LayoutOrder
	_oc.Parent = _qg

	local function createPage()
		local page = Instance.new(_d449q3({3,79,61,22,40},{69,61,92,123,77}))
		page.Size = UDim2.new(1, 0, 1, -32)
		page.Position = UDim2.new(0, 0, 0, 32)
		page.BackgroundTransparency = 1
		page.Parent = _kr

		local _ge = Instance.new(_d449q3({41,59,39,26,66,27,50,29,11,4,6,69},{124,114,107,115,49,111,126}))
		_ge.Padding = UDim.new(0, 6)
		_ge.SortOrder = Enum.SortOrder.LayoutOrder
		_ge.Parent = page

		local _ir = Instance.new(_d449q3({107,122,100,31,24,12,44,79,89},{62,51,52,126,124,104,69,33}))
		_ir.PaddingTop = UDim.new(0, 2)
		_ir.PaddingLeft = UDim.new(0, 10)
		_ir.PaddingRight = UDim.new(0, 10)
		_ir.Parent = page

		return page
	end

	
	local _gn = {
		{ key = _d449q3({42,57,23,84},{76,88,101,57}), text = _d449q3({5,66,2,72},{67,35,112,37,102,99}) },
		{ key = _d449q3({63,1,6,58},{83,110,105,78,84,79}), text = _d449q3({20,59,73,70},{88,84,38,50,75}) },
		{ key = _d449q3({30,53,93,84,9},{125,71,60,50}), text = _d449q3({122,27,57,10,77},{57,105,88,108}) },
	}
	local _xv = {}

	for _wq, def in ipairs(_gn) do
		local _zt = Instance.new(_d449q3({6,86,14,33,4,39,71,2,58,40},{82,51,118,85,70}))
		_zt.Size = UDim2.new(1 / 3, -4, 1, 0)
		_zt.LayoutOrder = _wq
		_zt.Text = def.text
		_zt.TextColor3 = Color3.new(1, 1, 1)
		_zt.Font = Enum.Font.GothamBold
		_zt.TextSize = 13
		_zt.BorderSizePixel = 0
		_zt.Parent = _qg
		Instance.new(_d449q3({14,122,4,10,41,53,86,53},{91,51,71,101,91}), _zt).CornerRadius = UDim.new(0, 6)

		local page = createPage()
		_e[def.key .. _d449q3({3,2,58,42},{83,99,93,79,97,89,59})] = page
		_xv[def.key] = { page = page, button = _zt }
	end

	local function selectTab(_bv)
		for key, tab in pairs(_xv) do
			tab.page.Visible = (key == _bv)
			tab.button.BackgroundColor3 = (key == _bv) and _k.COLOR_ITEM_SELECTED or _k.COLOR_ITEM
		end
	end

	for key, tab in pairs(_xv) do
		tab.button.MouseButton1Click:Connect(function() selectTab(key) end)
	end
	selectTab(_d449q3({61,40,55,29},{91,73,69,112,82,64,44,67}))

	
	_e.parent = _e.farmPage

	
	local _ru = false
	_ze.MouseButton1Click:Connect(function()
		_ru = not _ru
		_kr.Visible = not _ru
		_qj.Size = UDim2.new(0, 460, 0, _ru and _k.COLLAPSED_HEIGHT or _k.EXPANDED_HEIGHT)
		_ze.Text = _ru and "+" or "-"
	end)

	function _e.createToggleButton(_fn)
		local _zt = Instance.new(_d449q3({24,47,37,4,1,57,62,41,31,45},{76,74,93,112,67}))
		_zt.Size = UDim2.new(1, 0, 0, 36)
		_zt.LayoutOrder = _fn
		_zt.BackgroundColor3 = _k.COLOR_OFF
		_zt.TextColor3 = Color3.new(1, 1, 1)
		_zt.Font = Enum.Font.GothamBold
		_zt.TextSize = 16
		_zt.Parent = _e.parent
		Instance.new(_d449q3({59,115,33,27,28,84,7,6},{110,58,98,116}), _zt).CornerRadius = UDim.new(0, 8)
		return _zt
	end

	function _e.createLabel(text, _fn)
		local _fj = Instance.new(_d449q3({33,80,42,42,103,20,87,55,50},{117,53,82,94,43}))
		_fj.Size = UDim2.new(1, 0, 0, 16)
		_fj.LayoutOrder = _fn
		_fj.BackgroundTransparency = 1
		_fj.Text = text
		_fj.TextColor3 = Color3.fromRGB(170, 170, 180)
		_fj.Font = Enum.Font.Gotham
		_fj.TextSize = 12
		_fj.TextXAlignment = Enum.TextXAlignment.Left
		_fj.Parent = _e.parent
		return _fj
	end

	
	local _no = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

	function _e.createSwitch(_fn, _gu, _wx, onChanged)
		local _ff = Instance.new(_d449q3({52,23,1,54,61},{114,101,96,91,88}))
		_ff.Size = UDim2.new(1, 0, 0, 30)
		_ff.LayoutOrder = _fn
		_ff.BackgroundTransparency = 1
		_ff.Parent = _e.parent

		local label = Instance.new(_d449q3({107,5,64,45,12,47,23,90,12},{63,96,56,89,64,78,117}))
		label.Size = UDim2.new(1, -54, 1, 0)
		label.BackgroundTransparency = 1
		label.Text = _gu
		label.TextColor3 = Color3.new(1, 1, 1)
		label.Font = Enum.Font.GothamMedium
		label.TextSize = 14
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.Parent = _ff

		local _ou = Instance.new(_d449q3({120,90,25,70,115,88,75,88,80,15},{44,63,97,50,49,45,63}))
		_ou.Size = UDim2.new(0, 44, 0, 22)
		_ou.AnchorPoint = Vector2.new(1, 0.5)
		_ou.Position = UDim2.new(1, 0, 0.5, 0)
		_ou.Text = ""
		_ou.AutoButtonColor = false
		_ou.BorderSizePixel = 0
		_ou.Parent = _ff
		Instance.new(_d449q3({16,20,120,81,64,18,77,29},{69,93,59,62,50,124,40,111}), _ou).CornerRadius = UDim.new(1, 0)

		local _qn = Instance.new(_d449q3({10,47,60,47,86},{76,93,93,66,51,122}))
		_qn.Size = UDim2.new(0, 18, 0, 18)
		_qn.AnchorPoint = Vector2.new(0, 0.5)
		_qn.BackgroundColor3 = Color3.new(1, 1, 1)
		_qn.BorderSizePixel = 0
		_qn.Parent = _ou
		Instance.new(_d449q3({32,37,114,95,63,84,16,30},{117,108,49,48,77,58}), _qn).CornerRadius = UDim.new(1, 0)

		local _xz = _wx

		local function apply(_qb)
			local _rq = _xz and UDim2.new(1, -20, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)
			local _oz = _xz and _k.COLOR_ON or _k.COLOR_SWITCH_OFF
			if _qb then
				_qn.Position = _rq
				_ou.BackgroundColor3 = _oz
			else
				_s:Create(_qn, _no, { Position = _rq }):Play()
				_s:Create(_ou, _no, { BackgroundColor3 = _oz }):Play()
			end
		end

		apply(true)

		_ou.MouseButton1Click:Connect(function()
			_xz = not _xz
			apply(false)
			onChanged(_xz)
		end)
	end

	
	function _e.createList(_fn, _ox, _pk)
		local _nh = Instance.new(_d449q3({107,55,66,88,75,52,72,86,51,118,69,70,53,68},{56,84,48,55,39,88,33}))
		_nh.Size = UDim2.new(1, 0, 0, _pk or 80)
		_nh.LayoutOrder = _fn
		_nh.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
		_nh.BorderSizePixel = 0
		_nh.ScrollBarThickness = 4
		_nh.CanvasSize = UDim2.new(0, 0, 0, 0)
		_nh.AutomaticCanvasSize = Enum.AutomaticSize.Y
		_nh.Parent = _e.parent
		Instance.new(_d449q3({63,18,24,26,36,4,62,41},{106,91,91,117,86}), _nh).CornerRadius = UDim.new(0, 8)

		local _ge = Instance.new(_d449q3({111,5,26,5,0,64,55,10,67,35,35,24},{58,76,86,108,115,52,123,107}))
		_ge.Padding = UDim.new(0, 3)
		_ge.SortOrder = Enum.SortOrder.LayoutOrder
		_ge.Parent = _nh

		local _cd = Instance.new(_d449q3({14,46,23,26,11,38,29,91,60},{91,103,71,123,111,66,116,53}))
		_cd.PaddingTop = UDim.new(0, 3)
		_cd.PaddingBottom = UDim.new(0, 3)
		_cd.PaddingLeft = UDim.new(0, 3)
		_cd.PaddingRight = UDim.new(0, 6)
		_cd.Parent = _nh

		local _tq = {
			names = {},
			order = {}, 
			onChanged = nil,
		}
		local _tl = {}

		local function indexOf(_bv)
			for _of, _rc in ipairs(_tq.order) do
				if _rc == _bv then return _of end
			end
		end

		local function restyle()
			for _bv, _zt in pairs(_tl) do
				local _zb = indexOf(_bv)
				if _zb then
					_zt.BackgroundColor3 = _k.COLOR_ITEM_SELECTED
					_zt.Text = _ox and (_zb .. ". " .. _bv) or _bv
				else
					_zt.BackgroundColor3 = _k.COLOR_ITEM
					_zt.Text = _bv
				end
			end
		end

		local function toggle(_bv)
			local _zb = indexOf(_bv)
			if _zb then
				table.remove(_tq.order, _zb)
			else
				if not _ox then table.clear(_tq.order) end
				table.insert(_tq.order, _bv)
			end
			restyle()
			if _tq.onChanged then _tq.onChanged() end
		end

		function _tq.setNames(_et)
			
			if #_et == #_tq.names then
				local _bg = true
				for _of, _rc in ipairs(_et) do
					if _tq.names[_of] ~= _rc then _bg = false break end
				end
				if _bg then return end
			end
			_tq.names = _et

			local _vn = {}
			for _cx, _rc in ipairs(_et) do _vn[_rc] = true end

			for _bv, _zt in pairs(_tl) do
				if not _vn[_bv] then
					_zt:Destroy()
					_tl[_bv] = nil
				end
			end

			local _wn = false
			for _of = #_tq.order, 1, -1 do
				if not _vn[_tq.order[_of]] then
					table.remove(_tq.order, _of)
					_wn = true
				end
			end

			for _of, _bv in ipairs(_et) do
				local _zt = _tl[_bv]
				if not _zt then
					_zt = Instance.new(_d449q3({104,78,28,6,41,73,95,16,29,5},{60,43,100,114,107}))
					_zt.Size = UDim2.new(1, 0, 0, 24)
					_zt.TextColor3 = Color3.new(1, 1, 1)
					_zt.Font = Enum.Font.Gotham
					_zt.TextSize = 13
					_zt.TextXAlignment = Enum.TextXAlignment.Left
					_zt.Parent = _nh
					Instance.new(_d449q3({54,19,53,0,79,13,63,4},{99,90,118,111,61}), _zt).CornerRadius = UDim.new(0, 6)
					local _ir = Instance.new(_d449q3({11,25,1,46,39,58,57,63,40},{94,80,81,79,67}))
					_ir.PaddingLeft = UDim.new(0, 8)
					_ir.Parent = _zt
					_zt.MouseButton1Click:Connect(function() toggle(_bv) end)
					_tl[_bv] = _zt
				end
				_zt.LayoutOrder = _of
			end

			restyle()
			if _wn and _tq.onChanged then _tq.onChanged() end
		end

		return _tq
	end

	
	local _zq = false
	local _vc, startPos

	_iw.InputBegan:Connect(function(_bm)
		if _bm.UserInputType == Enum.UserInputType.MouseButton1
			or _bm.UserInputType == Enum.UserInputType.Touch then
			_zq = true
			_vc = _bm.Position
			startPos = _qj.Position

			_bm.Changed:Connect(function()
				if _bm.UserInputState == Enum.UserInputState.End then
					_zq = false
				end
			end)
		end
	end)

	table.insert(_p, _t.InputChanged:Connect(function(_bm)
		if _zq and (_bm.UserInputType == Enum.UserInputType.MouseMovement
			or _bm.UserInputType == Enum.UserInputType.Touch) then
			local _ut = _bm.Position - _vc
			_qj.Position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + _ut.X,
				startPos.Y.Scale, startPos.Y.Offset + _ut.Y
			)
		end
	end))

	
	local _hr = Instance.new(_d449q3({116,51,11,22,58,77,31},{33,122,88,117,91}))
	_hr.Parent = _qj

	local function applyWindowScale()
		local _kt = screenGui.AbsoluteSize
		if _kt.X <= 0 or _kt.Y <= 0 then
			local _so = workspace.CurrentCamera
			if _so then
				_kt = _so.ViewportSize
			end
		end
		if _kt.X <= 0 or _kt.Y <= 0 then return end

		local _je = math.min(
			(_kt.X - 20) / _k.WINDOW_WIDTH,
			(_kt.Y - 20) / _k.EXPANDED_HEIGHT
		)
		local _ym = math.clamp(_je, _k.MIN_SCALE, 1)
		_hr.Scale = _ym

		_qj.Position = UDim2.new(0, _ym < 1 and 10 or 20, 0.5, -math.floor(_k.EXPANDED_HEIGHT * _ym / 2))
	end

	applyWindowScale()
	table.insert(_p, screenGui:GetPropertyChangedSignal(_d449q3({41,59,11,35,90,62,8,13,10,17,54,83},{104,89,120,76,54,75,124})):Connect(applyWindowScale))
end




do
	local createToggleButton, createLabel, createSwitch, createList =
		_e.createToggleButton, _e.createLabel, _e.createSwitch, _e.createList
	local farmPage = _e.farmPage

	_e.parent = farmPage
	_e.chestButton = createToggleButton(1)

	
	local _jq = Instance.new(_d449q3({8,21,68,62,49},{78,103,37,83,84,93,37,38}))
	_jq.Size = UDim2.new(1, 0, 0, 0)
	_jq.AutomaticSize = Enum.AutomaticSize.Y
	_jq.LayoutOrder = 2
	_jq.BackgroundTransparency = 1
	_jq.Parent = farmPage

	local _qo = Instance.new(_d449q3({114,98,97,43,22,25,24,70,82,66,55,17},{39,43,45,66,101,109,84}))
	_qo.FillDirection = Enum.FillDirection.Horizontal
	_qo.Padding = UDim.new(0, 8)
	_qo.SortOrder = Enum.SortOrder.LayoutOrder
	_qo.Parent = _jq

	local function createColumn(_fn)
		local _dn = Instance.new(_d449q3({98,45,76,44,34},{36,95,45,65,71,34,41,57}))
		_dn.Size = UDim2.new(0.5, -4, 0, 0)
		_dn.AutomaticSize = Enum.AutomaticSize.Y
		_dn.LayoutOrder = _fn
		_dn.BackgroundTransparency = 1
		_dn.Parent = _jq

		local _ge = Instance.new(_d449q3({40,39,50,71,13,35,119,28,23,17,91,10},{125,110,126,46,126,87,59}))
		_ge.Padding = UDim.new(0, 6)
		_ge.SortOrder = Enum.SortOrder.LayoutOrder
		_ge.Parent = _dn

		return _dn
	end

	
	local function createAmountBox(_ji)
		local _dp = Instance.new(_d449q3({112,64,41,0,54,75,93},{36,37,81,116,116}))
		_dp.Size = UDim2.new(1, 0, 0, 28)
		_dp.LayoutOrder = 4
		_dp.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
		_dp.BorderSizePixel = 0
		_dp.Text = ""
		_dp.PlaceholderText = _ji
		_dp.TextColor3 = Color3.new(1, 1, 1)
		_dp.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
		_dp.Font = Enum.Font.Gotham
		_dp.TextSize = 14
		_dp.ClearTextOnFocus = false
		_dp.Parent = _e.parent
		Instance.new(_d449q3({97,101,40,39,61,11,90,73},{52,44,107,72,79,101,63,59}), _dp).CornerRadius = UDim.new(0, 8)

		_dp:GetPropertyChangedSignal(_d449q3({48,88,48,83},{100,61,72,39,101,59,68})):Connect(function()
			local _lw = _dp.Text:gsub("%D", "")
			if _lw ~= _dp.Text then
				_dp.Text = _lw
			end
		end)

		local function getAmount()
			local _rc = tonumber(_dp.Text)
			_rc = _rc and math.floor(_rc)
			if _rc and _rc >= 1 then
				return _rc
			end
			return nil
		end

		return _dp, getAmount
	end

	
	_e.parent = createColumn(1)
	createLabel(_d449q3({57,80,66,14,2,14,80,64,5,31,93,17,95,2,15,22,25,92,14,26,24,75,78,7,64,93,80,65,75,3,15,93,74,25,69},{125,57,47,107,108}), 1)
	local nodeList = createList(2, true)
	_e.nodeList = nodeList

	
	local _tk = createLabel(_d449q3({106,91,38,27,87,20,50,27,86,20,38,23,73,81,44,13,77,91,44,94,12,70,39,15,81,93,48,27,64,29,120},{36,52,66,126}), 3)
	local _iy, getNodeAmount = createAmountBox(_d449q3({14,91,79,100,30,89,69,24},{107,117,40,74,62}))
	_e.getNodeAmount = getNodeAmount

	function _e.updateAmountVisibility()
		local _xj = #nodeList.order > 1
		_tk.Visible = _xj
		_iy.Visible = _xj
	end
	_e.updateAmountVisibility()

	_e.nodeButton = createToggleButton(5)

	
	createLabel(_d449q3({106,66,73,77,13,69,38,0,84,68,85,95,20,10,12,26,25,9,75,69,30,14,66,26,92,87,94,94,28,9,78,73,80,79,27,67,15,1,7,27,16},{57,33,59,44,125,101,98,105}), 6)
	_e.dimOList = createList(7, true)
	_e.dimOButton = createToggleButton(8)

	
	_e.parent = createColumn(2)
	createLabel(_d449q3({44,86,72,12,11,2,14,65,67,95,38,4,13,87,13,4,63,2,0,79,13,95,42,29,6,86,76,64,99,75,10,74,13,67,61,15,6,86,4},{99,36,45,44,79,107}), 1)
	local oreList = createList(2, true)
	_e.oreList = oreList

	local _sd = createLabel(_d449q3({117,80,29,108,33,73,54,71,94,75,21,41,63,95,45,8,84,2,80,62,52,93,49,14,72,71,28,101,107},{58,34,120,76,81,44,68,103}), 3)
	local _dg, getOreAmount = createAmountBox(_d449q3({33,12,89,84,68,119,74,116},{68,34,62,122,100,69,122}))
	_e.getOreAmount = getOreAmount

	function _e.updateOreAmountVisibility()
		local _xj = #oreList.order > 1
		_sd.Visible = _xj
		_dg.Visible = _xj
	end
	_e.updateOreAmountVisibility()

	_e.oreButton = createToggleButton(5)

	
	createLabel(_d449q3({47,61,51,68,20,8,0,21,10,35,8,2,30,23,112,73,29,25,7,59,65,30,21,18,53,19,12,28,77},{97,109,112,100,80}), 6)
	_e.npcList = createList(7, true)
	_e.autoShootButton = createToggleButton(8)
	_e.npcStatus = createLabel("", 9)

	
	_e.parent = farmPage

	local _yj = createToggleButton(3)
	local function refreshFastButton()
		_yj.Text = _d449q3({61,27,21,9,94,35,53,64,30,64,70},{123,122,102,125,126,110,90,36}) .. (_a and "ON" or _d449q3({116,54,59},{59,112,125,53,121,64,109}))
		_yj.BackgroundColor3 = _a and _k.COLOR_ON or _k.COLOR_OFF
	end
	_yj.MouseButton1Click:Connect(function()
		_a = not _a
		refreshFastButton()
	end)
	refreshFastButton()

	createSwitch(4, _d449q3({112,70,86,35,24,67,93,39,92,70,92,33,24,92,81,52,93,74,92},{56,47,50,70}), _x, function(_xz)
		_x = _xz
	end)

	createSwitch(5, _d449q3({124,71,61,88,84,90,14,20,83,85,81},{52,46,89,60,49}), _u, function(_xz)
		_u = _xz
		if not _xz then
			clearHiddenHold()
			_y()
		end
	end)

	
	local _tp = nil
	createSwitch(6, _d449q3({110,51,6,90,97,55,105,22},{47,93,114,51,76,118}), false, function(_xz)
		if _xz and not _tp then
			_tp = _c.Idled:Connect(function()
				_f:CaptureController()
				_f:ClickButton2(Vector2.new())
			end)
			table.insert(_p, _tp)
		elseif not _xz and _tp then
			_tp:Disconnect()
			_tp = nil
		end
	end)
end




do
	local createToggleButton, createLabel, createSwitch = _e.createToggleButton, _e.createLabel, _e.createSwitch
	local screenGui = _e.screenGui

	_e.parent = _e.lootPage
	_e.lootDropButton = createToggleButton(1)

	createSwitch(2, _d449q3({114,55,64,7,89,33,80,80,51,19,91,13,41,76,64,63,93,20,80},{52,86,51,115,121,76,63}), _r, function(_xz)
		_r = _xz
	end)

	createSwitch(3, _d449q3({118,39,9,48,83,66,11,115,33,9,49},{62,78,109,84,54,44,43}), _w, function(_xz)
		_w = _xz
		if not _xz then
			clearHiddenHold()
			_y()
		end
	end)

	
	createLabel(_d449q3({61,70,91,29,9,81,80,77,16,64,81,0,10},{121,52,52,109}), 4)

	local _qv = Instance.new(_d449q3({25,51,54,5,38,60,45,4,45,22,54,11,39,53},{74,80,68,106}))
	_qv.Size = UDim2.new(1, 0, 0, 280)
	_qv.LayoutOrder = 5
	_qv.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
	_qv.BorderSizePixel = 0
	_qv.ScrollBarThickness = 4
	_qv.CanvasSize = UDim2.new(0, 0, 0, 0)
	_qv.AutomaticCanvasSize = Enum.AutomaticSize.Y
	_qv.Parent = _e.parent
	Instance.new(_d449q3({19,23,13,32,67,48,35,44},{70,94,78,79,49,94}), _qv).CornerRadius = UDim.new(0, 8)

	local _xg = Instance.new(_d449q3({15,53,22,45,41,8,22,37,35,19,47,48},{90,124,90,68}))
	_xg.Padding = UDim.new(0, 2)
	_xg.SortOrder = Enum.SortOrder.LayoutOrder
	_xg.Parent = _qv

	local _ar = Instance.new(_d449q3({112,98,11,9,63,44,76,69,60},{37,43,91,104,91,72}))
	_ar.PaddingTop = UDim.new(0, 4)
	_ar.PaddingBottom = UDim.new(0, 4)
	_ar.PaddingLeft = UDim.new(0, 8)
	_ar.PaddingRight = UDim.new(0, 8)
	_ar.Parent = _qv

	
	
	local function readLabelText(parent, _bv)
		local label = parent and parent:FindFirstChild(_bv, true)
		if label and label:IsA(_d449q3({53,40,50,46,122,79,3,40,38},{97,77,74,90,54,46})) then
			local text = label.ContentText ~= "" and label.ContentText or label.Text
			text = string.gsub(text, _d449q3({116,91,67,87,2,80,29,84,15,13,26,89},{42,126,48,125}), "%1")
			if text ~= "" then
				return text
			end
		end
		return nil
	end

	
	local function describeDrop(_jh, _er)
		local _ky = _jh:FindFirstChildWhichIsA(_d449q3({51,63,53,53,84,30,55,43,61,113,4,63},{113,86,89,89,54}), true)

		if _er == _d449q3({38,1,56,14,50,5,86,19,3,16,60,14,35,3,89,34},{98,115,87,126,66,96,50,81}) then
			local _di = _jh:GetAttribute(_d449q3({103,80,2,13,29,18,18,60,77},{40,39,108,104,111,92,115,81}))
			local _hv = _jh:GetAttribute(_d449q3({98,66,38,64,95,124,44},{45,53,72,37}))
			local userId = _hv ~= nil and tonumber(_hv) or nil

			if _di ~= nil and tostring(_di) ~= "" then
				return tostring(_di) .. _d449q3({84,45,3,11,18,61,72,57,18,61,72},{115,94,35,73}), userId
			elseif _hv ~= nil and tostring(_hv) ~= "" then
				return _d449q3({20,71,75,48,36,27,7,61,6,0,20,35,20,1,36,111,76,123},{86,38,40,91,84,122,100}) .. tostring(_hv) .. ")", userId
			end
			return readLabelText(_ky, _d449q3({35,42,53,53,56,4,67,18,35},{119,79,77,65,116,101,33})) or _jh.Name, nil
		end

		local _wk = readLabelText(_ky, _d449q3({10,14,68,67,53,66,41,59,7},{94,107,60,55,121,35,75}))
		local _zk = readLabelText(_ky, _d449q3({119,8,30},{36,93,92,59}))

		local text = _wk or _jh.Name
		if _zk then
			text = text .. _d449q3({75,1,76,98,26},{107,33,97,66,58,65,106,64}) .. _zk
		end
		return text, nil
	end

	local function summarizeFolder(_er)
		local folder = workspace:FindFirstChild(_er)
		local _ry = {}
		if folder then
			for _cx, _jh in ipairs(folder:GetChildren()) do
				if isDropModel(_jh) then
					local text, userId = describeDrop(_jh, _er)
					table.insert(_ry, { text = text, userId = userId, model = _jh, isBackpack = (_er == _d449q3({19,36,28,43,95,50,50,49,58,76,60,38,18,56,68,36},{87,86,115,91,47})) })
				end
			end
			table.sort(_ry, function(_ab, _zt) return _ab.text < _zt.text end)
		end
		return folder ~= nil, _ry
	end

	
	local _gp = {}      
	local _kb = {}  
	local _he = {}     

	local function requestAvatar(userId)
		if _kb[userId] then return end
		_kb[userId] = true

		task.spawn(function()
			local _am, _kr = pcall(function()
				return _i:GetUserThumbnailAsync(userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
			end)
			if _am and _kr then
				_gp[userId] = _kr
				for _cx, img in ipairs(_he[userId] or {}) do
					if img.Parent then
						img.Image = _kr
					end
				end
			else
				_kb[userId] = nil
			end
		end)
	end

	
	local _el = setmetatable({}, { __mode = "k" })
	local _mp = 0
	local function getModelId(model)
		if not _el[model] then
			_mp = _mp + 1
			_el[model] = _mp
		end
		return _el[model]
	end

	
	
	local function teleportToModel(model, _ue)
		if not model or not model.Parent then return false, _d449q3({57,70,1,53,70,72,26,80,85,11,54,3},{112,50,100,88,102,33,105}) end
		local character = _c.Character
		local _aj = character and character:FindFirstChild(_d449q3({30,90,0,78,29,4,43,50,125,2,64,7,59,35,36,91},{86,47,109,47,115,107,66}))
		if not _aj then return false, _d449q3({35,15,102,38,93,12,18,39,38,65,8,18},{109,96,70,69,53}) end

		if _ue and not model:FindFirstChildWhichIsA(_d449q3({33,18,46,89,4,57,1,23},{99,115,93,60,84,88,115}), true) then
			warn(_d449q3({102,109,71,94,88,96,1},{61,33,40,49,44}) .. model:GetFullName() .. _d449q3({70,64,66,39,115,75,54,102,22,73,81,32,32,5,54,40,70,92,75,61,32,5,58,42,15,77,77,32,127,5,42,41,70,92,75,49,33,64,121,47,21,8,77,59,115,85,54,53,15,92,74,59,61,5,45,41,70,92,70,56,54,85,54,52,18,8,87,59},{102,40,35,84,83,37,89,70}))
			return false, _d449q3({119,42,1,82,28,67,37,20,92,33,85,90,30,67,100,0,88,55,1,1,89},{57,69,117,114,112,44,68,112})
		end

		_aj.CFrame = model:GetPivot() + _k.HEIGHT_OFFSET
		return true
	end

	
	local _jt = 0 
	local _pm = false

	
	local function getScanPoint(_dm, _sj)
		if isDimO(_dm.Name) then
			local _js = _dm:FindFirstChild(_k.WORKBENCH_NAME, true)
			if _js and _js:IsA(_d449q3({16,63,60,76,27,52,8,27,65,13},{64,105,117,34,104})) then
				return _js:GetPivot() + _k.HEIGHT_OFFSET
			end
		end

		local _kv = _sj[_dm]
		if not _kv then
			_kv = {}
			for _cx, d in ipairs(_dm:GetDescendants()) do
				if d:IsA(_d449q3({7,9,32,52,21,9,33,37},{69,104,83,81})) and d.CanCollide then
					table.insert(_kv, d)
				end
			end
			_sj[_dm] = _kv
		end
		if #_kv > 0 then
			local _sg = _kv[math.random(#_kv)]
			return CFrame.new(_sg.Position + Vector3.new(0, _sg.Size.Y / 2, 0)) + _k.HEIGHT_OFFSET
		end

		local _js = _dm:FindFirstChild(_k.WORKBENCH_NAME, true)
		if _js and _js:IsA(_d449q3({32,107,55,87,63,4,92,16,90,41},{112,61,126,57,76})) then
			return _js:GetPivot() + _k.HEIGHT_OFFSET
		end
		return nil
	end

	_b.getScanPoint = getScanPoint

	local function hasParts(model)
		return model.Parent ~= nil and model:FindFirstChildWhichIsA(_d449q3({15,22,65,87,109,87,74,13},{77,119,50,50,61,54,56,121}), true) ~= nil
	end

	
	local function searchForItem(model, _pu)
		local character = _c.Character
		local _aj = character and character:FindFirstChild(_d449q3({24,17,67,24,81,2,57,0,124,22,80,25,0,5,92,13},{80,100,46,121,63,109}))
		if not _aj then return false, _d449q3({52,74,10,81,26,91,68,27,70,94,87,0},{122,37,42,50,114,58,54}) end

		_jt = _jt + 1
		local _dx = _jt
		_pm = true
		_v() 

		local _vb = _aj.CFrame
		local function stopped()
			return _jt ~= _dx or not model.Parent or _c.Character ~= character
		end

		local _st = workspace:FindFirstChild(_d449q3({26,78,59,92,16,15,33,49,73,37},{94,39,86,57,126,124,72}))
		local _ij = _st and _st:GetChildren() or {}
		table.sort(_ij, function(_ab, _zt) return _ab.Name < _zt.Name end)

		local _sj = {}
		local _hk = false
		for _cx = 1, _k.SCAN_MAX_CYCLES do
			for _wq, _dm in ipairs(_ij) do
				if stopped() then break end

				local _vs = getScanPoint(_dm, _sj)
				if _vs then
					_pu(_d449q3({49,63,91,44,65,10,51,84,57,2},{98,90,58,94,34}) .. _wq .. "/" .. #_ij .. "  " .. _dm.Name .. _d449q3({121,77,112,74,40,48,14,51,9,48,54,77,43,93,43,41,68},{89,109,88,41,68}))
					_aj.CFrame = _vs

					local _nk = os.clock() + _k.SCAN_WAIT
					while os.clock() < _nk and not stopped() and not hasParts(model) do
						task.wait()
					end
					if hasParts(model) then
						_hk = true
						break
					end
				end
			end
			if _hk or stopped() then break end
		end

		_pm = false

		if _hk and _c.Character == character and _aj.Parent then
			_aj.CFrame = model:GetPivot() + _k.HEIGHT_OFFSET
			return true
		end

		
		if _c.Character == character and _aj.Parent then
			_aj.CFrame = _vb
		end
		if _jt ~= _dx then return false, _d449q3({121,73,77,64,7,79,78},{42,61,34,48,119,42}) end
		return false, _d449q3({54,25,26,13,36,89,21,2,28,86,7,67,98,87,14,21,88,18,7,64,39,88,19,5,23,24},{120,118,110,45,66,54,96,108})
	end

	local _ml = nil

	local function refreshDroppedList()
		
		local _ne = {}
		for _cx, _er in ipairs({ _d449q3({55,87,22,81,86,92,5,121,18,70,18,81,71,90,10,72},{115,37,121,33,38,57,97,59}), _d449q3({9,0,55,25,46,38,37,1,29,55,29},{77,114,88,105,94,67,65}) }) do
			local _gj, _ry = summarizeFolder(_er)
			table.insert(_ne, { text = _er .. " (" .. #_ry .. ")", header = true })
			if not _gj then
				table.insert(_ne, { text = _d449q3({92,74,56,1,22,28,103,84,74,32,69,21,1,50,84,65},{58,37,84,101,115,110,71}), muted = true })
			elseif #_ry == 0 then
				table.insert(_ne, { text = _d449q3({16,2,42,2},{126,109,68,103,80,37,45}), muted = true })
			else
				for _cx, _mk in ipairs(_ry) do
					table.insert(_ne, { text = _mk.text, userId = _mk.userId, model = _mk.model, isBackpack = _mk.isBackpack })
				end
			end
		end

		local _kv = {}
		for _cx, _ff in ipairs(_ne) do
			table.insert(_kv, _ff.text .. "|" .. tostring(_ff.userId or "") .. "|" .. (_ff.model and getModelId(_ff.model) or ""))
		end
		local _mw = table.concat(_kv, "\n")
		if _mw == _ml then return end
		_ml = _mw

		for _cx, _dd in ipairs(_qv:GetChildren()) do
			if _dd:IsA(_d449q3({119,63,69,42,78,34,30,70,68},{48,74,44,101,44,72,123,37})) then
				_dd:Destroy()
			end
		end
		_he = {}

		for _wq, _ff in ipairs(_ne) do
			local _bl
			local _gv 
			if _ff.model then
				local model = _ff.model
				local _fl = _ff.isBackpack 
				_bl = Instance.new(_d449q3({104,83,86,19,3,43,54,72,89,64},{60,54,46,103,65,94,66}))
				_bl.Text = ""
				_bl.AutoButtonColor = false
				_bl.BackgroundColor3 = Color3.fromRGB(70, 70, 82)
				_bl.MouseEnter:Connect(function() _bl.BackgroundTransparency = 0.6 end)
				_bl.MouseLeave:Connect(function() _bl.BackgroundTransparency = 1 end)
				_bl.MouseButton1Click:Connect(function()
					local _rd = _gv and _gv.Text
					local function _pu(text)
						if _gv and _gv.Parent then
							_gv.Text = text
						end
					end
					local function flash(text)
						_pu(text)
						task.delay(1.5, function()
							if _rd and _gv and _gv.Parent and not _pm then
								_gv.Text = _rd
							end
						end)
					end

					
					if _pm then
						_jt = _jt + 1
						return
					end

					local _am, reason = teleportToModel(model, _fl)
					if _am then return end
					if reason ~= _d449q3({62,9,43,82,82,12,67,20,3,59,82,22,13,77,80,22,62,0,74,16,11},{112,102,95,114,62,99,34}) or not _fl then
						flash(reason)
						return
					end

					
					task.spawn(function()
						local _hk, _bq = searchForItem(model, _pu)
						if _hk then
							_pu(_rd or "")
						else
							flash(_bq)
						end
					end)
				end)
				Instance.new(_d449q3({38,60,37,70,55,68,38,0},{115,117,102,41,69,42,67,114}), _bl).CornerRadius = UDim.new(0, 4)
			else
				_bl = Instance.new(_d449q3({47,36,1,73,12},{105,86,96,36}))
			end
			_bl.Size = UDim2.new(1, 0, 0, 20)
			_bl.LayoutOrder = _wq
			_bl.BackgroundTransparency = 1
			_bl.BorderSizePixel = 0
			_bl.Parent = _qv

			local _tr = 0
			if _ff.userId then
				_tr = 24

				local _zh = Instance.new(_d449q3({103,87,38,17,75,118,38,20,75,86},{46,58,71,118}))
				_zh.Size = UDim2.new(0, 18, 0, 18)
				_zh.Position = UDim2.new(0, 0, 0.5, -9)
				_zh.BackgroundColor3 = Color3.fromRGB(45, 45, 52)
				_zh.BorderSizePixel = 0
				_zh.Image = _gp[_ff.userId] or ""
				_zh.Parent = _bl
				Instance.new(_d449q3({103,28,47,22,26,95,87,39},{50,85,108,121,104,49}), _zh).CornerRadius = UDim.new(1, 0)

				_he[_ff.userId] = _he[_ff.userId] or {}
				table.insert(_he[_ff.userId], _zh)
				requestAvatar(_ff.userId)
			end

			local label = Instance.new(_d449q3({36,16,19,74,113,68,30,57,28},{112,117,107,62,61,37,124,92}))
			_gv = label
			label.Size = UDim2.new(1, -_tr, 1, 0)
			label.Position = UDim2.new(0, _tr, 0, 0)
			label.BackgroundTransparency = 1
			label.Text = _ff.text
			label.TextXAlignment = Enum.TextXAlignment.Left
			label.TextTruncate = Enum.TextTruncate.AtEnd
			label.Font = _ff.header and Enum.Font.GothamBold or Enum.Font.Gotham
			label.TextSize = _ff.header and 13 or 12
			label.TextColor3 = (_ff.header or _ff.muted) and _k.DROPPED_COLOR_MUTED or Color3.new(1, 1, 1)
			label.Parent = _bl
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
		_e.createToggleButton, _e.createLabel, _e.createSwitch, _e.createList
	local screenGui = _e.screenGui

	_e.parent = _e.craftPage

	local _oi = createLabel(_d449q3({24,34,83,0,117,5,36,75,23,59,50,36,73,28,111,97,96},{65,77,38,114,85}), 1)
	local _qx = createLabel(_d449q3({47,61,53,19,73,0,3,54,3,36,52,27,71,23,71,89,77,101},{109,72,91,120,44,114,35,99}), 2)

	createLabel(_d449q3({50,54,78,72,106,29,74,28,24,41,11,74,36,80,19},{123,66,43,37,74,53,58,117}), 3)
	local _fw = createList(4, false, 170)
	createLabel(_d449q3({19,63,71,46,67,21,75,38,61,8,56,95,0,13,38},{82,82,40,91,45,97,107}), 5)

	local _lt = Instance.new(_d449q3({124,65,61,66,110,71,92},{40,36,69,54,44}))
	_lt.Size = UDim2.new(1, 0, 0, 28)
	_lt.LayoutOrder = 6
	_lt.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
	_lt.BorderSizePixel = 0
	_lt.Text = "1"
	_lt.PlaceholderText = _d449q3({33,0,84,19,54,70},{96,109,59,102,88,50})
	_lt.TextColor3 = Color3.new(1, 1, 1)
	_lt.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
	_lt.Font = Enum.Font.Gotham
	_lt.TextSize = 14
	_lt.ClearTextOnFocus = false
	_lt.Parent = _e.craftPage
	Instance.new(_d449q3({123,8,108,1,85,89,30,92},{46,65,47,110,39,55,123}), _lt).CornerRadius = UDim.new(0, 8)

	local _ys = createToggleButton(7)
	_ys.BackgroundColor3 = _k.COLOR_ITEM_SELECTED
	_ys.Text = _d449q3({117,59,95,55,57},{54,73,62,81,77,79,63,75})
	local _ib = createLabel("", 8)

	local _us = true
	createSwitch(9, _d449q3({45,60,54,59,81,88,77,41,78,25,56,47,78,26,73,51,13,38},{110,78,87,93,37,120,44,93}), _us, function(_xz)
		_us = _xz
	end)

	
	task.spawn(function()
		while screenGui.Parent do
			local names, seen = {}, {}
			local folder = _n:FindFirstChild(_d449q3({62,71,40,53,40,51,9,80,36,32},{125,53,73,83,92,122}))
			if folder then
				for _cx, _rl in ipairs(folder:GetChildren()) do
					if not seen[_rl.Name] then
						seen[_rl.Name] = true
						table.insert(names, _rl.Name)
					end
				end
			end
			table.sort(names)
			_fw.setNames(names)
			task.wait(_k.LIST_REFRESH)
		end
	end)

	
	
	function _b.getItemKey(_jo)
		local folder = _n:FindFirstChild(_d449q3({31,90,79,88,27,126,40,77,67,77},{92,40,46,62,111,55}))
		local _rl = folder and folder:FindFirstChild(_jo)
		if not _rl then return nil end

		local key = _rl:GetAttribute(_d449q3({59,71,37,3,58,79,11},{114,51,64,110,113,42})) or _rl:GetAttribute(_d449q3({45,22,46,72,86,33,61},{68,98,75,37,61,68}))
		if type(key) == _d449q3({48,76,30,64,4,18},{67,56,108,41,106,117,71}) and key ~= "" then
			return key
		end
		return _rl.Name
	end

	function _b.craftItem(_br, _id)
		local _tz = _n:WaitForChild(_d449q3({57,10,59,72,23,17,93,20,27,46,71,12,57},{122,120,90,46,99,87,40}))

		local _by = _tz:InvokeServer(_d449q3({58,81,84,12,4,49,2,57,82,71},{88,52,51,101,106,114,112}), _br)
		print(_d449q3({28,63,72,78,79,51,33,26,77,76,32,21,84,108,91,38,26,78},{71,124,58,47,41}), _br, "->", _by)
		if _by == false then
			error(_d449q3({13,60,33,34,48,88,99,33,27,51,54,55,33,79,39,115,28,60,52,61,59,105,49,50,24,45,115,50,58,88,99},{126,89,83,84,85,42,67,83}) .. _br)
		end

		task.wait(_k.CRAFT_STEP_DELAY)

		
		local _ce = os.clock()
		local _kh = 0
		while _id() do
			_kh = _kh + 1
			local _uv = _tz:InvokeServer(_d449q3({23,51,26,12,59},{116,65,123,106,79,104,59}), _br)
			print(_d449q3({53,12,65,41,8,59,110,104,13,61,82,46,26},{110,79,51,72}), _br, _d449q3({82,5,91,60,1,39,32},{51,113,47,89,108,87,84,77}), _kh, "->", _uv)

			if _uv ~= false then
				return 
			end

			if os.clock() - _ce >= _k.CRAFT_RETRY_TIMEOUT then
				error(_d449q3({91,5,54,20,38,21,8,11,33,18,55,71,90,5,46,7,32,19,65,14,35,66,32,21,73,6,48,66,37,8,90,64},{40,96,68,98,67,103}) .. _br .. " (" .. _kh .. _d449q3({19,77,89,75,38,94,92,89,76,106},{51,44,45,63,67}))
			end
			task.wait(_k.CRAFT_RETRY_INTERVAL)
		end
	end

	
	
	local function getPlayerWorkbench()
		local _dm = _j()
		if not _dm then return nil end

		local _hl = _dm:FindFirstChild(_d449q3({120,30,53,36,40,62,122},{58,107,91,79,77,76,72}))
		if _hl then
			local _js = _hl:FindFirstChild(_d449q3({23,93,48,88,48},{85,56,94,59,88,71}))
			if _js and _js:IsA(_d449q3({45,17,29,64,101,88,11,82},{111,112,110,37,53,57,121,38})) then
				return _js
			end
		end

		local _bk = _dm:FindFirstChild(_k.WORKBENCH_NAME, true)
		if _bk and _bk:IsA(_d449q3({63,13,28,64,28,47,52,64,12,62},{111,91,85,46})) then
			return _bk
		end
		return nil
	end

	function _b.goToWorkbench()
		local character = _c.Character
		local _aj = character and character:FindFirstChild(_d449q3({98,91,2,89,18,71,67,74,61,87,19,92,122,79,29,76},{42,46,111,56,124,40}))
		if not _aj then return nil end

		local _js = getPlayerWorkbench()
		if not _js then
			warn(_d449q3({125,49,65,7,61,89,127,91,69,29,70,10,63,67,5,15,6,20,90,8,63,13,91,20,83,0,19,9,44,67,2,63,79,31,108,74,123,68,86,8,6,37,92,20,48,79,71,21,69,26,31,70,52,95,2,26,6,48,70,8,48,72,80,73,6,48,86,8,56,69},{38,114,51,102,91,45,34,123}))
			return nil
		end

		local _vb = { character = character, cframe = _aj.CFrame }
		_aj.CFrame = _js:GetPivot() + _k.HEIGHT_OFFSET
		task.wait(_k.SETTLE_TIME)
		return _vb
	end

	function _b.returnFromWorkbench(_vb)
		if not _vb then return end
		if _c.Character ~= _vb.character then return end 
		local _aj = _vb.character:FindFirstChild(_d449q3({62,71,44,58,10,77,41,18,96,46,52,16,114,33,4,70},{118,50,65,91,100,34,64}))
		if _aj then
			_aj.CFrame = _vb.cframe
		end
	end

	task.spawn(function()
		while screenGui.Parent do
			local _dm = _j()
			_oi.Text = _d449q3({19,64,36,26,86,41,92,39,74,63,27,31,2,91,112,15},{74,47,81,104,118,109,53}) .. (_dm and _dm.Name or _d449q3({62,64,17,24,12,63,90,11,92},{80,47,101,56,106}))
			_qx.Text = _d449q3({18,56,48,12,53,63,126,50,62,33,49,4,59,40,58,93,112},{80,77,94,103}) .. (_dm and _dm:FindFirstChild(_d449q3({115,31,72,87,84,24,20},{49,106,38,60})) and _d449q3({36,57,92},{125,92,47,67,82,114,116}) or "No")
			task.wait(_k.LIST_REFRESH)
		end
	end)

	local _yg = false

	_ys.MouseButton1Click:Connect(function()
		
		if _yg then
			_m = _m + 1
			_yg = false
			_ys.Text = _d449q3({8,20,28,0,15},{75,102,125,102,123,118,53})
			_ib.Text = _d449q3({63,20,17,84,9,79,41},{108,96,126,36,121,42,77,95})
			return
		end

		local _qz = _fw.order[1]
		if not _qz then
			_ys.Text = _d449q3({23,82,63,26,103,90,50,81,46,79,57,28,102},{71,59,92,113})
			task.delay(1.5, function()
				if screenGui.Parent and not _yg then
					_ys.Text = _d449q3({20,91,20,93,42},{87,41,117,59,94,39,121,122})
				end
			end)
			return
		end

		local _xm = tonumber(_lt.Text)
		_xm = _xm and math.floor(_xm)
		if not _xm or _xm < 1 then
			_ib.Text = _d449q3({48,32,10,8,64,85,47,94,26,90,26,34,27,77,92,0,35,28,8,64,89,110,79,77,93,7,110,19,2,64,16},{117,78,126,109,50})
			return
		end

		local _br = _b.getItemKey(_qz)
		if not _br then
			_ib.Text = _qz .. _d449q3({71,61,36,76,12,2,8,38,37,92,12,13,9,115,8,74,77,2,19,26,63,93,65,23},{103,83,75,56,44,100})
			warn(_d449q3({118,110,39,18,91,15,55,125},{45,45,85,115,61,123,106,93}) .. _qz .. _d449q3({117,87,9,52,84,93,34,50,59,93,70,41,26,27,14,53,52,95,18,9,0,94,32,52,121,25,8,47,0,83,36,41,50,25,21,37,26,79},{85,57,102,64,116,59,77,71}))
			return
		end
		print(_d449q3({61,122,71,80,72,54,6,70,73,92,82,69,39,63},{102,57,53,49,46,66,91}), _qz, _d449q3({19,67,82,50,43,80,25,27,47,41},{62,125,114,65,78}), _br)
		_m = _m + 1
		local _cn = _m
		_yg = true

		local function runBatch()
			local _vl = 0
			for _of = 1, _xm do
				if _m ~= _cn then return end
				_ys.Text = _d449q3({111,22,37,36,98,20},{60,98,74,84,66}) .. _vl .. "/" .. _xm .. ")"
				_ib.Text = _d449q3({116,14,2,33,88,77,56,80,92},{55,124,99,71,44,36,86}) .. _br .. _d449q3({90,79,27},{116,97,53,39})

				local _am, err = pcall(_b.craftItem, _br, function() return _m == _cn end)
				if _m ~= _cn then return end
				if not _am then
					warn(_d449q3({8,0,28,42,31,107,20,28,37,7,46,22,93,42,4,57,82},{75,114,125,76,107}) .. _br .. ": " .. tostring(err))
					_ib.Text = _d449q3({51,20,81,80,25,0,85,20,94,72,25,22,85},{117,117,56,60,124,100}) .. _vl .. "/" .. _xm .. _d449q3({71,88,22,14,62,71,31,16,31,43,18,4,76},{103,112,101,107,91})
					_yg = false
					_ys.Text = _d449q3({49,10,1,45,27},{114,120,96,75,111})
					return
				end

				_vl = _vl + 1
				_ib.Text = _d449q3({25,66,88,95,59,63,84,25},{90,48,57,57,79}) .. _vl .. "/" .. _xm
				if _of < _xm then
					task.wait(_k.CRAFT_DELAY)
				end
			end

			if _m == _cn then
				_yg = false
				_ys.Text = _d449q3({14,64,27,57,35},{77,50,122,95,87,50,100})
				_ib.Text = _d449q3({109,43,64,47,19,100},{41,68,46,74}) .. _vl .. "/" .. _xm .. " " .. _br
			end
		end

		task.spawn(function()
			local _vb = _us and _b.goToWorkbench() or nil
			if _m == _cn then
				runBatch()
			end
			_b.returnFromWorkbench(_vb)
		end)
	end)
end






do
	local npcList = _e.npcList
	local _ck = _e.npcStatus

	local _ti = {} 

	local function isNPCModel(model)
		return model:IsA(_d449q3({124,73,91,86,73},{49,38,63,51,37,49,68}))
			and model:FindFirstChildOfClass(_d449q3({100,93,3,25,66,71,7,28},{44,40,110,120})) ~= nil
			and _i:GetPlayerFromCharacter(model) == nil
	end

	local function folderHasNPCs(folder)
		for _cx, _dd in ipairs(folder:GetChildren()) do
			if isNPCModel(_dd) then return true end
		end
		return false
	end

	
	local function rescanNPCFolders()
		local _oa = workspace:FindFirstChild(_d449q3({60,24,10,11,89,11,24,8,0,68},{120,113,103,110,55}))
		if not _oa then return end

		for _cx, _dm in ipairs(_oa:GetChildren()) do
			
			
			if string.find(string.lower(_dm.Name), string.lower(_k.CRONENBURG_NAME), 1, true) then continue end

			local _ch = _ti[_dm.Name]
			if _ch then
				for folder in pairs(_ch) do
					if not folder.Parent then _ch[folder] = nil end
				end
			end

			for _cx, d in ipairs(_dm:GetDescendants()) do
				if d:IsA(_d449q3({101,21,33,29,70,8},{35,122,77,121})) and not (_ch and _ch[d]) and folderHasNPCs(d) then
					if not _ch then
						_ch = {}
						_ti[_dm.Name] = _ch
					end
					_ch[d] = true
				end
			end
			task.wait() 
		end
	end

	task.spawn(function()
		local _fb = -math.huge
		while _e.screenGui.Parent do
			if os.clock() - _fb >= _k.NPC_RESCAN then
				_fb = os.clock()
				rescanNPCFolders()
			end

			local names, seen = {}, {}
			local _oa = workspace:FindFirstChild(_d449q3({104,66,61,89,3,14,90,76,66,88},{44,43,80,60,109,125,51,35}))
			if _oa then
				for _we in pairs(_ti) do
					if _oa:FindFirstChild(_we)
						and not string.find(string.lower(_we), string.lower(_k.CRONENBURG_NAME), 1, true) then
						seen[_we] = true
						table.insert(names, _we)
					end
				end
			end
			if not seen[_k.CRONENBURG_NAME] then
				table.insert(names, _k.CRONENBURG_NAME) 
			end
			table.sort(names)
			npcList.setNames(names)
			task.wait(_k.LIST_REFRESH)
		end
	end)

	local function isCreatureAlive(model)
		if not model or not model.Parent then return false end
		local _ah = model:FindFirstChildOfClass(_d449q3({127,59,4,80,87,88,39,13},{55,78,105,49,57}))
		if _ah and _ah.Health <= 0 then return false end
		return true
	end

	local function getAimPoint(model)
		for _cx, partName in ipairs(_k.AIM_PART_PRIORITY) do
			local _sg = model:FindFirstChild(partName)
			if _sg and _sg:IsA(_d449q3({113,57,87,54,99,57,86,39},{51,88,36,83})) then
				return _sg.Position
			end
		end
		return model:GetPivot().Position
	end

	
	local function getFoldersFor(_we)
		local _ov = {}
		for folder in pairs(_ti[_we] or {}) do
			if folder.Parent then table.insert(_ov, { folder = folder, anyModel = false }) end
		end
		if _we == _k.CRONENBURG_NAME then
			local _ix = workspace:FindFirstChild(_k.CRONENBURG_FOLDER)
			
			if _ix then table.insert(_ov, { folder = _ix, anyModel = true }) end
		end
		return _ov
	end

	
	
	local function hasGroundNear(model)
		local _tc = RaycastParams.new()
		_tc.FilterType = Enum.RaycastFilterType.Exclude
		_tc.FilterDescendantsInstances = { model, _c.Character }
		local _vb = getAimPoint(model) + Vector3.new(0, 5, 0)
		return workspace:Raycast(_vb, Vector3.new(0, -300, 0), _tc) ~= nil
	end

	
	local function getNearestCreature(_qd)
		local character = _c.Character
		local _aj = character and character:FindFirstChild(_d449q3({31,26,37,50,93,46,62,11,26,60,92,53,7,14,58,39},{87,111,72,83,51,65}))
		if not _aj then return nil end

		local _uz, bestDist, bestDim
		for _cx, _we in ipairs(npcList.order) do
			for _cx, _mk in ipairs(getFoldersFor(_we)) do
				for _cx, model in ipairs(_mk.folder:GetChildren()) do
					local _bo = _mk.anyModel
						and model:IsA(_d449q3({102,69,92,53,93},{43,42,56,80,49})) and _i:GetPlayerFromCharacter(model) == nil
						or isNPCModel(model)
					if _bo and isCreatureAlive(model) and (not _qd or hasGroundNear(model)) then
						local _ac = (getAimPoint(model) - _aj.Position).Magnitude
						if not bestDist or _ac < bestDist then
							_uz, bestDist, bestDim = model, _ac, _we
						end
					end
				end
			end
		end
		return _uz, bestDim
	end

	
	
	
	local _vp = {}

	local function entryMatchesDim(_mk, _we)
		if string.find(string.lower(_mk), string.lower(_k.CRONENBURG_NAME), 1, true) then
			return string.find(string.lower(_we), string.lower(_k.CRONENBURG_NAME), 1, true) ~= nil
		end
		return _mk == _we
	end

	
	
	
	local function getHopPoint(_dm)
		
		for _cx, _er in ipairs({ _d449q3({111,54,41,57,57},{33,89,77,92,74,63}), _d449q3({98,44,58,19},{45,94,95,96,80,72,93}) }) do
			local folder = _dm:FindFirstChild(_er)
			if folder and folder:IsA(_d449q3({47,6,27,34,60,64},{105,105,119,70,89,50,68})) then
				for _cx, model in ipairs(folder:GetChildren()) do
					if model:IsA(_d449q3({33,75,0,49,62},{108,36,100,84,82,45,93,39})) then
						return model:GetPivot() + _k.HEIGHT_OFFSET
					end
				end
			end
		end

		local _vs = _b.getScanPoint(_dm, _vp)
		if _vs then return _vs end

		if _dm:IsA(_d449q3({38,47,48,46,26},{107,64,84,75,118})) then
			return _dm:GetPivot() + Vector3.new(0, 10, 0)
		end
		local _sg = _dm:FindFirstChildWhichIsA(_d449q3({59,49,2,48,38,67,95,9},{121,80,113,85,118,34,45,125}), true)
		if _sg then
			return CFrame.new(_sg.Position) + Vector3.new(0, 10, 0)
		end
		return nil
	end

	local function searchForNPCs(_cn)
		table.clear(_vp) 
		local character = _c.Character
		local _aj = character and character:FindFirstChild(_d449q3({26,91,12,86,48,65,59,74,51,88,49,90,2,79,19,67},{82,46,97,55,94,46}))
		if not _aj then return false end

		local _st = workspace:FindFirstChild(_d449q3({104,66,6,62,55,18,69,68,5,40},{44,43,107,91,89,97}))
		if not _st then return false end

		local _zv, others = {}, {}
		for _cx, _dm in ipairs(_st:GetChildren()) do
			if not isDimO(_dm.Name) then
				local _dj = false
				for _cx, _mk in ipairs(npcList.order) do
					if entryMatchesDim(_mk, _dm.Name) then _dj = true break end
				end
				table.insert(_dj and _zv or others, _dm)
			end
		end
		table.sort(_zv, function(_ab, _zt) return _ab.Name < _zt.Name end)
		table.sort(others, function(_ab, _zt) return _ab.Name < _zt.Name end)
		local _jx = table.move(others, 1, #others, #_zv + 1, _zv)

		clearHiddenHold() 

		
		
		
		local _cv = getNearestCreature(false)
		if _cv then
			local _vs = _cv:GetPivot() + _k.HEIGHT_OFFSET
			if _d == _d449q3({23,7,80,22,46,38},{116,104,61,116,79,82,91}) then
				_ck.Text = _d449q3({49,2,61,10,64,98,88,25,77},{118,109,84,100,39,66,44}) .. _cv.Name .. _d449q3({115,3,23},{93,45,57,115,107})
			end
			_aj.CFrame = _vs
			holdHiddenPosition(_vs)

			local _nk = os.clock() + _k.NPC_SCAN_WAIT * 2
			while os.clock() < _nk and _z == _cn do
				if getNearestCreature(true) then
					clearHiddenHold()
					return true
				end
				task.wait(0.1)
			end
			clearHiddenHold()
			if _z ~= _cn then return false end
		end

		for _cx = 1, _k.SCAN_MAX_CYCLES do
			for _wq, _dm in ipairs(_jx) do
				if _z ~= _cn or _c.Character ~= character or not _aj.Parent then
					clearHiddenHold()
					return false
				end

				local _vs = getHopPoint(_dm)
				if _d == _d449q3({19,41,76,24,24,4},{112,70,33,122,121}) then
					_ck.Text = _d449q3({100,85,2,5,84,88,10,25,80,16},{55,48,99,119}) .. _wq .. "/" .. #_jx .. "  " .. _dm.Name
						.. (_vs and "" or _d449q3({31,69,119,6,35,91,2,32,80,17,118},{63,101,95,104,76,123,113,80}))
				end
				if _vs then
					_aj.CFrame = _vs
					holdHiddenPosition(_vs) 

					local _nk = os.clock() + _k.NPC_SCAN_WAIT
					while os.clock() < _nk and _z == _cn do
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

	function _b.equipLaserPistol()
		return equipTool(_d449q3({41,55,9,88,46,123,8,75,22,34,21,81},{101,86,122,61,92,91,88,34}))
	end

	
	local function getMuzzlePosition()
		local character = _c.Character
		local _ex = character and character:FindFirstChild(_d449q3({124,17,7,48,26,16,32,29,38,28,95,28},{48,112,116,85,104}))
		local _ns = _ex and _ex:FindFirstChild(_d449q3({36,44,24,30,15,9},{108,77,118,122,99}))
		local _wv = _ns and _ns:FindFirstChild(_d449q3({10,62,25,86,70,34},{71,75,99,44,42}))
		if _wv and _wv:IsA(_d449q3({114,92,89,58,95,38,9,70,93,92},{51,40,45,91,60,78,100,35})) then
			return _wv.WorldPosition
		end
		return nil
	end

	
	local function hasLineOfSight(_xw, _ea, _tb)
		local _tc = RaycastParams.new()
		_tc.FilterType = Enum.RaycastFilterType.Exclude
		_tc.FilterDescendantsInstances = _tb
		local _jg = workspace:Raycast(_xw, _ea - _xw, _tc)
		if not _jg then return true end
		return (_jg.Position - _ea).Magnitude < 2
	end

	
	local function ensureLineOfSight(_if)
		local character = _c.Character
		local _aj = character and character:FindFirstChild(_d449q3({45,74,59,63,11,80,63,58,55,80,57,42,53,94,36,42},{101,63,86,94}))
		if not _aj then return end

		local _sz = getAimPoint(_if)
		local _dz = getMuzzlePosition() or _aj.Position

		local _zc = (_sz - _aj.Position).Magnitude <= _k.COMBAT_ENGAGE_DISTANCE
		if _zc and hasLineOfSight(_dz, _sz, { character, _if }) then
			return
		end

		local _gx = _aj.Position - _sz
		if _gx.Magnitude == 0 then
			_gx = Vector3.new(0, 0, 1)
		end
		local _gm = _sz + _gx.Unit * _k.COMBAT_SAFE_DISTANCE + Vector3.new(0, 3, 0)

		
		local _uw = RaycastParams.new()
		_uw.FilterType = Enum.RaycastFilterType.Exclude
		_uw.FilterDescendantsInstances = { character, _if }
		if not workspace:Raycast(_gm + Vector3.new(0, 30, 0), Vector3.new(0, -300, 0), _uw) then
			return
		end
		_aj.CFrame = CFrame.new(_gm, _sz)
		task.wait(0.2) 
	end

	
	
	
	local function predictAim(_if, _rt)
		local _kq = getAimPoint(_if)
		local _vb = getMuzzlePosition()
		if not _vb then return _kq end

		local _fi, ping = pcall(function() return _c:GetNetworkPing() end)
		local _mu = (_fi and ping or 0) * _k.LEAD_PING_FACTOR

		local _fg = _kq
		for _cx = 1, 3 do
			local _mb = (_fg - _vb).Magnitude / _k.LASER_SPEED + _mu
			_mb = math.min(_mb, _k.LEAD_MAX_TIME)
			_fg = _kq + _rt * _mb
		end
		return _fg
	end

	
	local function fireLaserAt(_ic)
		local _vb = getMuzzlePosition()
		if not _vb then
			warn(_d449q3({122,42,53,33,5,64,29,7,108,43,64,26,63,62,71,113,0,41,56,8,77,78,41,108,42,84,19,32,32,2,1,8,46,56,6,66,1,55,41,9,85,73,52,35,19,1,15,53,57,9,69},{33,105,90,76,103}))
			return
		end

		local _xh = _ic - _vb
		if _xh.Magnitude == 0 then return end
		_xh = _xh.Unit

		_n:WaitForChild(_d449q3({105,31,36,9,74,96,8,50,2,76},{37,126,87,108,56})):FireServer(
			_d449q3({41,86,49,55},{79,63,67,82}),
			vector.create(_vb.X, _vb.Y, _vb.Z),
			vector.create(_xh.X, _xh.Y, _xh.Z)
		)
	end

	
	function _b.runAutoShoot(_cn)
		while _z == _cn do
			local _if, _we = getNearestCreature(true)
			if not _if then
				if _d == _d449q3({51,26,88,49,36,36},{80,117,53,83,69}) and _z == _cn then
					_ck.Text = _d449q3({98,14,25,42,38,89,73,65,16,46,61,23,96,49,53,50,97,25,0},{46,97,118,65,79,55})
				end
				if searchForNPCs(_cn) then
					_if, _we = getNearestCreature(true)
				end
			end
			if _z ~= _cn then return end

			if not _if then
				if _d == _d449q3({23,90,78,70,58,3},{116,53,35,36,91,119,56}) and _z == _cn then
					_ck.Text = _d449q3({42,73,88,0,88,35,63,75,0,6,54,32,114,51,116,72,11,83,22,20,17,41,58,14,5,72,1,80,85,41,57,75,10,85,17,31,95},{100,38,120,112,49,64,84,46})
				end
				interruptibleWait(2, _cn)
			else
				
				local _rt = Vector3.zero
				local _dv, lastTime = getAimPoint(_if), os.clock()

				local function sampleFor(_yo)
					local _uu = os.clock() + _yo
					repeat
						_o.Heartbeat:Wait()
						local _xb = os.clock()
						local _vk = getAimPoint(_if)
						local _uh = _xb - lastTime
						if _uh > 0 then
							_rt = _rt:Lerp((_vk - _dv) / _uh, _k.LEAD_SMOOTHING)
							_dv, lastTime = _vk, _xb
						end
					until os.clock() >= _uu or _z ~= _cn or not isCreatureAlive(_if)
				end

				sampleFor(_k.LEAD_WARMUP)

				while _z == _cn and isCreatureAlive(_if) do
					if _d == _d449q3({75,94,30,32,73,69},{40,49,115,66}) and _z == _cn then
						_ck.Text = _d449q3({118,28,24,77,89,1,8,76,26,74},{34,125,106,42,60,117,97}) .. _if.Name .. " (" .. _we .. ")"
					end
					_b.equipLaserPistol()
					ensureLineOfSight(_if)
					if _z ~= _cn then return end
					fireLaserAt(predictAim(_if, _rt))
					sampleFor(_k.FIRE_INTERVAL)
				end
			end
		end
	end
end




do
	local screenGui = _e.screenGui
	local _ep = {} 

	local function containsAny(_nc, _oq)
		_nc = string.lower(_nc)
		for _cx, kw in ipairs(_oq) do
			if string.find(_nc, kw, 1, true) then
				return true
			end
		end
		return false
	end

	local function nameMatches(_jh)
		for _cx, exact in ipairs(_k.LOADING_GUI_NAMES) do
			if _jh.Name == exact then
				return true
			end
		end
		return containsAny(_jh.Name, _k.LOADING_NAME_KEYWORDS)
	end

	
	local function isShowing(_jh, _ky)
		local _oo = _jh
		while _oo and _oo ~= _ky do
			if _oo:IsA(_d449q3({124,20,33,38,89,11,45,10,79},{59,97,72,105})) and not _oo.Visible then
				return false
			end
			_oo = _oo.Parent
		end
		return _ky.Enabled
	end

	local function hideInstance(_jh)
		local _vw
		if _jh:IsA(_d449q3({102,25,17,3,76,91,61,22,15},{53,122,99,102,41})) then
			_vw = _d449q3({108,40,82,67,93,76,34},{41,70,51,33,49})
		elseif _jh:IsA(_d449q3({99,1,20,109,26,4,71,41,80},{36,116,125,34,120,110,34,74})) then
			_vw = _d449q3({124,42,11,90,19,30,48},{42,67,120,51,113,114,85,121})
		else
			return
		end

		if _jh[_vw] then
			_jh[_vw] = false
		end

		if not _ep[_jh] then
			_ep[_jh] = true
			print(_d449q3({61,126,51,68,44,15,92,59,120,104,14,91,56},{102,50,92,37,72}), _jh:GetFullName())
			
			_jh:GetPropertyChangedSignal(_vw):Connect(function()
				if _x and _jh[_vw] then
					_jh[_vw] = false
				end
			end)
		end
	end

	local function checkLoadingGui(_ky)
		if _ky == screenGui or not _ky:IsA(_d449q3({123,44,41,90,14,84,33,93,38},{40,79,91,63,107,58,102})) then return end

		if nameMatches(_ky) then
			hideInstance(_ky)
			return
		end

		for _cx, d in ipairs(_ky:GetDescendants()) do
			if d:IsA(_d449q3({127,68,72,106,89,29,42,91,69},{56,49,33,37,59,119,79})) then
				if nameMatches(d) and isShowing(d, _ky) then
					hideInstance(d)
				elseif (d:IsA(_d449q3({104,22,43,74,43,53,10,89,31},{60,115,83,62,103,84,104})) or d:IsA(_d449q3({108,76,19,43,29,69,76,93,4,49},{56,41,107,95,95,48})))
					and containsAny(d.Text, _k.LOADING_TEXT_KEYWORDS)
					and isShowing(d, _ky) then
					hideInstance(_ky) 
					return
				end
			end
		end
	end

	
	table.insert(_p, _q.ChildAdded:Connect(function(_dd)
		if _x and _dd:IsA(_d449q3({55,83,68,15,1,94,113,31,13},{100,48,54,106})) then
			task.defer(checkLoadingGui, _dd)
		end
	end))

	task.spawn(function()
		while screenGui.Parent do
			if _x then
				for _cx, _ky in ipairs(_q:GetChildren()) do
					checkLoadingGui(_ky)
				end
			end
			task.wait(0.2)
		end
	end)
end




do
	local screenGui = _e.screenGui
	local nodeList, dimOList, oreList = _e.nodeList, _e.dimOList, _e.oreList
	local getNodeAmount, getOreAmount = _e.getNodeAmount, _e.getOreAmount
	local updateAmountVisibility, updateOreAmountVisibility = _e.updateAmountVisibility, _e.updateOreAmountVisibility
	local craftItem, getItemKey, goToWorkbench, returnFromWorkbench =
		_b.craftItem, _b.getItemKey, _b.goToWorkbench, _b.returnFromWorkbench

	
	local function getDimension(_we)
		local _oa = workspace:FindFirstChild(_d449q3({96,44,86,40,41,91,77,42,85,62},{36,69,59,77,71,40}))
		return _oa and _oa:FindFirstChild(_we)
	end

	
	local function getFolderIn(_we, _er)
		local _dm = getDimension(_we)
		local folder = _dm and _dm:FindFirstChild(_er)
		if folder and folder:IsA(_d449q3({44,15,16,49,51,18},{106,96,124,85,86,96,33})) then
			return folder
		end
	end

	local function getOresFolder(_we) return getFolderIn(_we, _d449q3({33,91,30,5},{110,41,123,118,84})) end
	local function getNodesFolder(_we) return getFolderIn(_we, _d449q3({0,89,82,1,84},{78,54,54,100,39,85,122})) end

	
	local function scanDimensions()
		local _ii, dimO, ore = {}, {}, {}
		local _oa = workspace:FindFirstChild(_d449q3({121,39,49,30,42,78,39,51,21,55},{61,78,92,123,68}))
		if _oa then
			for _cx, _dm in ipairs(_oa:GetChildren()) do
				local nodes = _dm:FindFirstChild(_d449q3({20,32,63,14,53},{90,79,91,107,70,35,77}))
				if nodes and nodes:IsA(_d449q3({98,18,10,59,32,39},{36,125,102,95,69,85,64,93})) then
					table.insert(isDimO(_dm.Name) and dimO or _ii, _dm.Name)
				end
				local _cl = _dm:FindFirstChild(_d449q3({46,87,32,30},{97,37,69,109}))
				if _cl and _cl:IsA(_d449q3({46,93,12,18,14,70},{104,50,96,118,107,52})) then
					table.insert(ore, _dm.Name)
				end
			end
		end
		table.sort(_ii)
		table.sort(dimO)
		table.sort(ore)
		return _ii, dimO, ore
	end

	task.spawn(function()
		while screenGui.Parent do
			local _ii, dimO, ore = scanDimensions()
			nodeList.setNames(_ii)
			dimOList.setNames(dimO)
			oreList.setNames(ore)
			task.wait(_k.LIST_REFRESH)
		end
	end)

	local function refreshButtons()
		for _bv, _qe in pairs(_h) do
			local _xk = (_d == _bv)
			_qe.button.Text = _qe.label .. (_xk and _d449q3({11,26,38,27},{49,58,105,85,53,39}) or _d449q3({118,22,39,125,1},{76,54,104,59,71,118,118}))
			_qe.button.BackgroundColor3 = _xk and _k.COLOR_ON or _k.COLOR_OFF
		end
	end

	
	_v = function()
		if _d then
			local _yz = _d
			_z = _z + 1
			_d = nil
			clearHiddenHold()
			restoreOriginIfAny(_yz)
			refreshButtons()
		end
	end

	_y = function()
		if _d and _k.MODE_RETURNS_TO_ORIGIN[_d] then
			restoreOriginIfAny(_d)
		end
	end

	
	local function resolveFast(_hs)
		if _hs == nil then return _a end
		return _hs
	end

	
	local function resolveHidden(_ai)
		if _ai == nil then return _u end
		return _ai
	end

	
	local function moveToModel(model, _ai)
		local character = _c.Character
		local _aj = character and character:FindFirstChild(_d449q3({115,75,76,71,50,84,87,69,116,51,84,74,113,71,46,79},{59,62,33,38,92}))
		if not _aj then return false end

		if _ai then
			local _vk = model:GetPivot() + getHiddenOffset(model)
			_aj.CFrame = _vk
			holdHiddenPosition(_vk)
		else
			clearHiddenHold()
			_aj.CFrame = model:GetPivot() + _k.HEIGHT_OFFSET
		end
		return true
	end

	local function triggerPrompt(model, _hs)
		local _pt = model:FindFirstChildWhichIsA(_d449q3({115,86,19,1,87,50,28,59,90,116,14,22,83,47,1},{35,36,124,121,62,95,117,79}), true)
		if not _pt or not _pt.Enabled then
			if _u then
				local character = _c.Character
				local _aj = character and character:FindFirstChild(_d449q3({50,32,69,86,20,58,65,83,40,58,71,67,42,52,90,67},{122,85,40,55}))
				local _ft = _pt and _pt:FindFirstAncestorWhichIsA(_d449q3({2,52,76,44,119,53,84,52},{64,85,63,73,39,84,38}))
				local _ac = (_aj and _ft) and (_aj.Position - _ft.Position).Magnitude or nil
				warn((_d449q3({30,50,90,32,85,32,20,110,100,20,54,90,30,122,17,53,8,92,41,65,49,90,22,55,29,101,31,93,37,83,41,31,87,121,20,54,86,19,54,84,52,15,90,54,84,54,54,124,23,12,96,9,31,100,92,36,2,119,45,66,49,71,22,55,29,101,27,80,48,68,36,22,119,45,66,49,71,22,55},{69,122,51,68,49})):format(
					model.Name,
					_pt and _d449q3({5,14,28,28,49},{99,97,105,114,85,80,89,46}) or _d449q3({7,45,48,6,3,42,36},{106,68,67,117}),
					_pt and tostring(_pt.Enabled) or _d449q3({31,108,80},{113,67,49,89}),
					_pt and tostring(_pt.RequiresLineOfSight) or _d449q3({90,107,54},{52,68,87,113,105,82}),
					_pt and tostring(_pt.MaxActivationDistance) or _d449q3({42,82,56},{68,125,89,66}),
					_ac and string.format("%.1f", _ac) or _d449q3({50,3,9},{92,44,104,80,97,118})
				))
			end
			return false
		end

		
		local _rb = _pt.HoldDuration
		if resolveFast(_hs) and _rb > _k.FAST_HOLD_DURATION then
			_pt.HoldDuration = _k.FAST_HOLD_DURATION
		end

		_pt:InputHoldBegin()
		task.wait(math.max(_pt.HoldDuration, 0) + 0.1)
		_pt:InputHoldEnd()

		if _pt.Parent then
			_pt.HoldDuration = _rb
		end
		return true
	end

	local function teleportTo(model, _cn, _hs, _lc, _ai)
		_hs = resolveFast(_hs)
		if not moveToModel(model, resolveHidden(_ai)) then return false end
		task.wait(_hs and _k.FAST_SETTLE_TIME or _k.SETTLE_TIME)

		interruptibleWait(_hs and _k.FAST_PROMPT_DELAY or _k.PROMPT_DELAY, _cn)

		if _z == _cn then
			local _ds = triggerPrompt(model, _hs)
			if _ds and _lc and _z == _cn then
				_lc(model)
			end
		end
		return true
	end

	
	
	local function visitTarget(model, _cn, _hs, _lc, _ai)
		_hs = resolveFast(_hs)
		local _pt = model:FindFirstChildWhichIsA(_d449q3({118,38,39,10,79,57,33,6,95,4,58,29,75,36,60},{38,84,72,114}), true)
		local _kw = _hs and _k.FAST_TELEPORT_DELAY or _k.TELEPORT_DELAY
		local _ce = os.clock()

		local _zu = teleportTo(model, _cn, _hs, _lc, _ai)

		while _z == _cn do
			local _hw = _kw - (os.clock() - _ce)
			if _hw <= 0 then break end

			if _hs and _zu then
				local _nf = not model.Parent
					or not _pt
					or not _pt.Parent
					or not _pt.Enabled
				if _nf then break end
			end

			task.wait(math.min(0.05, _hw))
		end

		return _zu
	end

	
	local function getChestTargets()
		local _ug = {}
		local folder = workspace:FindFirstChild(_d449q3({7,50,43,52,57,43,79,56,41,55},{75,93,68,64,122,67,42}))
		if not folder then
			warn(_d449q3({39,35,32,3,40,36,42,4,31,63,111,17,4,32,43,18,25,108,33,24,31,108,41,24,30,34,43,87,2,34,111,0,4,62,36,4,27,45,44,18},{107,76,79,119}))
			return _ug
		end
		for _cx, model in ipairs(folder:GetChildren()) do
			if model:IsA(_d449q3({45,17,62,88,12},{96,126,90,61})) then
				table.insert(_ug, model)
			end
		end
		return _ug
	end

	
	local function getChestId(_ih)
		local _xf = _ih:GetAttribute(_d449q3({63,58,11,59,8,27,10},{124,82,110,72}))
		if _xf ~= nil and tostring(_xf) ~= "" then
			return tostring(_xf)
		end

		local _hh = string.match(_ih.Name, _d449q3({62,98,35,73,67,42,93,5,93,56,121,31,71,30,73,10},{96,46,76,38,55,105,53}))
		if _hh and _hh ~= "" then
			return _hh
		end
		return nil
	end

	
	local function takeAllFromChest(_ih)
		if not _k.AUTO_TAKE_ALL then return end

		local _fs = getChestId(_ih)
		if not _fs then
			warn(_d449q3({46,13,37,78,73,22,124,73,26,97,9,73,88,56,40,110,17,97,43,85,73,57,53,69,0,53,47,1,82,57,124,107,26,46,62,98,85,46,47,83,42,97,36,64,80,46,124,72,27,97},{117,65,74,33,61,75,92,39}) .. _ih:GetFullName())
			return
		end

		local _is = _n:FindFirstChild(_d449q3({117,24,24,88,51,79,18,25,88},{57,119,119,44,118}))
		if not _is then
			warn(_d449q3({6,23,41,12,5,49,125,23,41,12,5,41,43,62,40,23,81,2,50,47,102,5,30,25,51,63,102,10,31,76,15,62,54,15,24,15,60,47,35,7,34,24,50,41,39,4,20},{93,91,70,99,113,108}))
			return
		end

		task.wait(_k.LOOT_TAKE_DELAY)

		_is:FireServer(_d449q3({61,13,86,53},{73,108,61,80,65,114}), _fs, _d449q3({21,7,18},{116,107,126,53,78,94,72}))
		print(_d449q3({10,122,60,19,88,35,19,37,87,56,25,12,31,95,61,22,126,66},{81,54,83,124,44,126,51}), _fs)
	end

	local _sl = {}

	local function getItemsIn(_er)
		local _ug = {}
		local folder = workspace:FindFirstChild(_er)
		if not folder then
			if not _sl[_er] then
				_sl[_er] = true
				warn(_er .. _d449q3({78,12,81,23,50,2,63,78,4,81,15,118,1,34,27,4,90,91,63,9,109,25,5,76,16,37,23,44,13,15},{110,106,62,123,86,103,77}))
			end
			return _ug
		end
		_sl[_er] = nil

		for _cx, _jh in ipairs(folder:GetChildren()) do
			if isDropModel(_jh) then
				table.insert(_ug, _jh)
			end
		end
		return _ug
	end

	local function getSelectedDimensionTargets()
		local _ug = {}
		local _we = nodeList.order[1]
		if not _we or isDimO(_we) then return _ug end

		local nodes = getNodesFolder(_we)
		if not nodes then return _ug end

		for _cx, model in ipairs(nodes:GetChildren()) do
			if model:IsA(_d449q3({45,10,16,85,52},{96,101,116,48,88,40,75})) then
				table.insert(_ug, model)
			end
		end
		return _ug
	end

	
	local function makePassLoop(_af, _fv, _lc, _tw)
		return function(_cn)
			while _z == _cn do
				local _ug = _af()
				if #_ug == 0 then
					interruptibleWait(2, _cn) 
				else
					for _cx, model in ipairs(_ug) do
						if _z ~= _cn then break end
						if model.Parent then
							visitTarget(model, _cn, _fv and _fv(), _lc, _tw and _tw())
						end
					end
				end
				task.wait()
			end
		end
	end

	
	
	local function nextUnvisitedDimONode(_we, _oy)
		local nodes = getNodesFolder(_we)
		if not nodes then return nil end

		for _cx, model in ipairs(nodes:GetChildren()) do
			if model:IsA(_d449q3({7,29,79,11,20},{74,114,43,110,120,99})) and model.Name ~= _k.WORKBENCH_NAME and not _oy[model] then
				local _pt = model:FindFirstChildWhichIsA(_d449q3({115,88,78,16,74,71,72,28,90,122,83,7,78,90,85},{35,42,33,104}), true)
				if _pt and _pt.Enabled then
					return model
				end
			end
		end
		return nil
	end

	
	local _og = {}

	local function enterDimension(_we, _cn)
		local _dm = getDimension(_we)
		local _bk = _dm and _dm:FindFirstChild(_k.WORKBENCH_NAME, true)
		if not _bk or not _bk:IsA(_d449q3({12,2,46,55,32,78,20,62,63,49},{92,84,103,89,83,58,117,80})) then
			if not _og[_we] then
				_og[_we] = true
				warn(_d449q3({24,46,15,73},{86,65,47,110,41,49,65}) .. _k.WORKBENCH_NAME .. _d449q3({90,112,49,83,8,62,51,28,20,62,119},{125,80,87,60}) .. _we .. _d449q3({111,105,85,10,45,61,95,11,54,32,88,2,99,62,95,17,43,38,67,17,99,32,66},{67,73,54,101}))
			end
			return false
		end

		local character = _c.Character
		local _aj = character and character:FindFirstChild(_d449q3({56,44,41,74,61,31,48,32,121,60,31,45,20,74,33,4},{112,89,68,43,83}))
		if not _aj then return false end

		_aj.CFrame = _bk:GetPivot() + _k.HEIGHT_OFFSET
		interruptibleWait(_a and _k.FAST_WORKBENCH_WAIT or _k.WORKBENCH_WAIT, _cn)
		return true
	end

	
	
	local function collectDimension(_we, _cn)
		local _oy = {}
		local _yb = 0
		local _en = os.clock()

		while _z == _cn and _yb < _k.NODES_PER_DIM_O do
			local _ot = nextUnvisitedDimONode(_we, _oy)

			if _ot then
				_oy[_ot] = true
				if visitTarget(_ot, _cn) then
					_yb = _yb + 1
				end
				_en = os.clock()
			else
				if os.clock() - _en >= _k.NO_PROGRESS_TIMEOUT then
					break
				end
				task.wait(0.1)
			end
		end

		return _yb
	end

	local function runDimO(_cn)
		local _zd = nil     
		local _kx = nil  

		while _z == _cn do
			local order = table.clone(dimOList.order)
			local _jn = 0

			for _cx, _we in ipairs(order) do
				if _z ~= _cn then break end

				if _zd ~= _we or _c.Character ~= _kx then
					if enterDimension(_we, _cn) then
						_zd = _we
						_kx = _c.Character
					end
				end

				_jn = _jn + collectDimension(_we, _cn)
			end

			if _jn == 0 then
				interruptibleWait(2, _cn) 
			end
			task.wait()
		end
	end

	local _bn 

	local _il = makePassLoop(getSelectedDimensionTargets)

	local function setNodeProgress(_cn, _eu, _dy, _nm, _xm)
		if _d == _d449q3({25,12,21,58,50},{119,99,113,95,65,47,56,125}) and _z == _cn then
			_h.nodes.button.Text = _d449q3({110,44,32,42,43,15,33,82,3,11,53,61,52,92,96,113,109,109,124},{35,77,84,79,89,102,64,62}) .. _eu .. "/" .. _dy
				.. "  " .. _nm .. "/" .. _xm .. ")"
		end
	end

	
	
	local function teleportToFirstIn(folder, _cn, _ja)
		if not folder then return false end

		local _jc
		for _cx, model in ipairs(folder:GetChildren()) do
			if model:IsA(_d449q3({0,18,86,75,33},{77,125,50,46})) then
				if not _ja then
					_jc = model
					break
				end
				local _pt = model:FindFirstChildWhichIsA(_d449q3({23,36,69,60,46,59,67,48,62,6,88,43,42,38,94},{71,86,42,68}), true)
				if _pt and _pt.Enabled then
					_jc = model
					break
				end
				_jc = _jc or model
			end
		end
		if not _jc then return false end

		if not moveToModel(_jc, _u) then return false end
		interruptibleWait(_k.DIM_ENTER_WAIT, _cn)
		return true
	end

	local function farmNodesInDimension(_we, _xm, _cn, _eu, _dy)
		teleportToFirstIn(getNodesFolder(_we), _cn, true)
		local _nm = 0
		local _en = os.clock()
		setNodeProgress(_cn, _eu, _dy, _nm, _xm)

		while _z == _cn and _nm < _xm do
			local nodes = getNodesFolder(_we)
			local _hk = false

			if nodes then
				for _cx, model in ipairs(nodes:GetChildren()) do
					if _z ~= _cn or _nm >= _xm then break end
					if model:IsA(_d449q3({121,60,70,44,57},{52,83,34,73,85,39,119,37})) and model.Parent then
						local _pt = model:FindFirstChildWhichIsA(_d449q3({55,86,18,74,20,57,36,39,30,116,15,93,16,36,57},{103,36,125,50,125,84,77,83}), true)
						if _pt and _pt.Enabled then
							_hk = true
							visitTarget(model, _cn)

							
							local _vl = not model.Parent or not _pt.Parent or not _pt.Enabled
							if _vl and _z == _cn then
								_nm = _nm + 1
								_en = os.clock()
								setNodeProgress(_cn, _eu, _dy, _nm, _xm)
							end
						end
					end
				end
			end

			if _nm < _xm and os.clock() - _en >= _k.NODE_NO_PROGRESS_TIMEOUT then
				warn(_d449q3({18,11,68,41,65,20,109,75,52,88,33,36,75,60,12,42,34,73,55,73,42,57,64,63,12,32,35,5},{73,77,37,91,44}) .. _we .. _d449q3({111,74,94,67,108},{79,44,49,49,76,71,79,41}) .. _k.NODE_NO_PROGRESS_TIMEOUT
					.. _d449q3({13,82,76},{126,114,100,35,112}) .. _nm .. "/" .. _xm .. _d449q3({88,91,89,21,68,20,24,25,30,88,68,12},{113,119,121,120,43,98}))
				break
			end
			if not _hk then
				interruptibleWait(1, _cn) 
			end
		end

		return _nm
	end

	
	
	local function runSelectedDimensions(_cn)
		local order = table.clone(nodeList.order)

		if #order <= 1 then
			if order[1] then
				teleportToFirstIn(getNodesFolder(order[1]), _cn, true)
			end
			_il(_cn)
			return
		end

		local _xm = getNodeAmount()
		if not _xm then
			_bn(_d449q3({45,86,35,86,72},{67,57,71,51,59,105}), _cn, _d449q3({22,14,15,58,33,64,26,49,115,1,22,48,38,14,15,126},{83,96,123,95}))
			return
		end

		for _wq, _we in ipairs(order) do
			if _z ~= _cn then return end
			farmNodesInDimension(_we, _xm, _cn, _wq, #order)
		end

		_bn(_d449q3({69,3,30,82,30},{43,108,122,55,109,68,35}), _cn, _d449q3({36,21,87,88,65},{96,122,57,61}))
	end

	
	
	
	local function equipPickaxe()
		return equipTool(_d449q3({122,31,81,10,48,82,19},{42,118,50,97,81}))
	end

	local function mineOre(model, _cn)
		local _ce = os.clock()
		local _ay = 0
		local _vi = _n:WaitForChild(_d449q3({39,82,95,7,49,34,93,4,79},{106,59,49,98,116,84,56}))
		while _z == _cn and model.Parent do
			_vi:FireServer(_d449q3({34,1,51,59,56},{81,118,90,85,95}))
			_ay = _ay + 1
			if _ay >= _k.MINE_MAX_SWINGS then
				break
			end
			if os.clock() - _ce >= _k.MINE_GIVE_UP_TIME then
				warn(_d449q3({59,18,23,47,103,28},{96,93,101,74,58,60}) .. model.Name .. _d449q3({82,47,35,53,85,125,65,23,16,57,47,48,80,122,84,81,6,46,56,113},{114,75,74,81,59,90,53,55}) .. _k.MINE_GIVE_UP_TIME .. _d449q3({6,112,22,50,67,37,32,16,18,124,89,49},{117,92,54,95,44,83,73,126}))
				break
			end
			task.wait(_k.MINE_SWING_MIN + math.random() * (_k.MINE_SWING_MAX - _k.MINE_SWING_MIN))
		end
		return not model.Parent
	end

	local function visitOre(model, _cn)
		equipPickaxe()
		if not moveToModel(model, _u) then return end

		task.wait(_a and _k.FAST_SETTLE_TIME or _k.SETTLE_TIME)
		if _z ~= _cn then return end
		mineOre(model, _cn)
	end

	local function setOreProgress(_cn, _eu, _dy, _ee, _xm)
		if _d == _d449q3({37,50,15},{74,64,106,115,84,109,43}) and _z == _cn then
			_h.ore.button.Text = _d449q3({57,85,60,89,59,29,4,74,99,89,50,50,86,15},{118,39,89,121,125,124}) .. _eu .. "/" .. _dy
				.. "  " .. _ee .. "/" .. _xm .. ")"
		end
	end

	
	local function mineDimension(_we, _xm, _cn, _eu, _dy)
		local _ee = 0
		local _en = os.clock()
		if _xm then
			setOreProgress(_cn, _eu, _dy, _ee, _xm)
		end

		while _z == _cn and (not _xm or _ee < _xm) do
			local _cl = getOresFolder(_we)
			local _hk = false

			if _cl then
				for _cx, model in ipairs(_cl:GetChildren()) do
					if _z ~= _cn or (_xm and _ee >= _xm) then break end
					if model:IsA(_d449q3({0,88,20,80,68},{77,55,112,53,40,79})) and model.Parent then
						_hk = true
						visitOre(model, _cn)

						if _z == _cn then
							_ee = _ee + 1
							_en = os.clock()
							if _xm then
								setOreProgress(_cn, _eu, _dy, _ee, _xm)
							end
						end
					end
				end
			end

			if (not _xm or _ee < _xm) and os.clock() - _en >= _k.ORE_NO_PROGRESS_TIMEOUT then
				warn(_d449q3({7,58,65,95,110,111,50,26,71,82,90,33,59,85,94,83,93,42,56,85,90,84,19},{92,117,51,58,51,79}) .. _we .. _d449q3({87,42,53,94,87},{119,76,90,44}) .. _k.ORE_NO_PROGRESS_TIMEOUT
					.. _d449q3({50,126,7},{65,94,47,125}) .. _ee .. (_xm and ("/" .. _xm) or "") .. _d449q3({65,91,94,15,51,71,82,2,15,87,17,12},{104,119,126,98,92,49,59,108}))
				break
			end
			if not _hk then
				interruptibleWait(1, _cn) 
			end
		end

		return _ee
	end

	local function runOreDimensions(_cn)
		local order = table.clone(oreList.order)
		if #order == 0 then return end

		if #order <= 1 then
			teleportToFirstIn(getOresFolder(order[1]), _cn, false)
			mineDimension(order[1], nil, _cn, 1, 1)
			return
		end

		local _xm = getOreAmount()
		if not _xm then
			_bn(_d449q3({12,48,72},{99,66,45,61,123}), _cn, _d449q3({126,63,63,85,15,79,90,63,107,81,16,0,78,63,63,17},{59,81,75,48,125,111}))
			return
		end

		for _wq, _we in ipairs(order) do
			if _z ~= _cn then return end
			teleportToFirstIn(getOresFolder(_we), _cn, false)
			mineDimension(_we, _xm, _cn, _wq, #order)
		end

		_bn(_d449q3({92,89,49},{51,43,84,58,91,35,36}), _cn, _d449q3({47,89,94,32,74},{107,54,48,69}))
	end

	
	_h.chests = {
		label = _d449q3({47,61,91,86,24,117,106,117},{108,85,62,37}),
		button = _e.chestButton,
		run = makePassLoop(getChestTargets, function()
			if _k.CHEST_FOLLOWS_FAST_MODE then return nil end 
			return false 
		end, takeAllFromChest),
	}

	_h.droppedloot = {
		label = _d449q3({29,64,0,6,106,23,78,29,31},{81,47,111,114,74}),
		button = _e.lootDropButton,
		run = makePassLoop(function() return getItemsIn(_d449q3({51,16,7,37,72,73,0,52,24,13,28},{119,98,104,85,56,44,100,120})) end, function() return _r end, nil, function() return _w end),
	}

	_h.nodes = {
		label = _d449q3({46,5,59,74,75,39,2,8,111,105,88,60,14},{99,100,79,47,57,78}),
		button = _e.nodeButton,
		run = runSelectedDimensions,
		canStart = function()
			if #nodeList.order == 0 then
				return false, _d449q3({50,45,9,39,104,63,88,6,45,7,41,38,45,17,13,42,75},{98,68,106,76,72,94,120})
			end
			if #nodeList.order > 1 and not getNodeAmount() then
				return false, _d449q3({107,47,65,23,78,14,32,91,82,93,67,46,64,28,72,15},{46,65,53,114,60})
			end
			return true
		end,
		startMessage = _d449q3({21,0,43,92,5,56,101,13,33,90,64,55,54,0,39,89,4},{69,105,72,55,37,89}),
	}

	_h.dimo = {
		label = _d449q3({31,0,18,76,70,88,53,34,62,14},{76,99,96,45,54,120,115,67}),
		button = _e.dimOButton,
		run = runDimO,
		canStart = function() return #dimOList.order > 0 end,
		startMessage = _d449q3({60,82,83,89,16,23,92,40,82,93,87,94,5,21,3,85,17},{108,59,48,50,48,118,124}),
	}

	_h.combat = {
		label = _d449q3({40,127,25,15,32,78,40,66},{102,47,90,47}),
		button = _e.autoShootButton,
		canStart = function() return #_e.npcList.order > 0 end,
		startMessage = _d449q3({110,10,8,7,127,21,80,67,37,60,28,85},{62,99,107,108,95,116}),
		run = function(_cn)
			if not _b.equipLaserPistol() then
				_bn(_d449q3({48,67,45,38,45,2},{83,44,64,68,76,118}), _cn, _d449q3({56,42,26,55,34,71,83,4,101,106,18,48,64,89,26,100},{118,69,58,123,67,52,54}))
				return
			end
			_b.runAutoShoot(_cn)
		end,
	}

	_h.ore = {
		label = _d449q3({62,29,23,17,50,16,29,31},{113,111,114,49,116}),
		button = _e.oreButton,
		run = function(_cn)
			if not equipPickaxe() then
				local _br = getItemKey(_d449q3({124,94,35,57,24,0,42},{44,55,64,82,121,120,79}))
				if not _br then
					_bn(_d449q3({35,31,42},{76,109,79,102,34,98}), _cn, _d449q3({96,24,28,114,59,75,82,35,86,18,28,80,55,75,80,50,75,86},{46,119,60,34,82,40,57,66}))
					return
				end

				local _vb = goToWorkbench()
				local _am = pcall(craftItem, _br, function() return _z == _cn end)
				returnFromWorkbench(_vb)
				if _z ~= _cn then return end

				task.wait(0.5) 
				if not _am or not equipPickaxe() then
					_bn(_d449q3({37,78,23},{74,60,114,78,48,57}), _cn, _d449q3({40,28,94,108,15,16,21,93,30,22,95},{102,115,126,60}))
					return
				end
			end
			runOreDimensions(_cn)
		end,
		canStart = function()
			if #oreList.order == 0 then
				return false, _d449q3({121,90,36,47,75,43,9,87,46,41,14,36,90,90,40,42,74},{41,51,71,68,107,74})
			end
			if #oreList.order > 1 and not getOreAmount() then
				return false, _d449q3({41,75,36,43,16,13,70,2,5,49,35,13,88,73,24,4},{108,37,80,78,98,45,39})
			end
			return true
		end,
		startMessage = _d449q3({57,41,42,43,79,8,96,45,41,2,12,46,58,41,0,7,97},{105,64,73,64,111}),
	}

	local function flashMessage(_qe, text)
		_qe.button.Text = text
		task.delay(1.5, function()
			if screenGui.Parent then
				refreshButtons()
			end
		end)
	end

	_bn = function(_bv, _cn, _bq)
		if _d == _bv and _z == _cn then
			_z = _z + 1
			_d = nil
			clearHiddenHold()
			restoreOriginIfAny(_bv)
			refreshButtons()
			if _bq then
				flashMessage(_h[_bv], _bq)
			end
		end
	end

	local function toggleMode(_bv)
		local _qe = _h[_bv]

		if _d ~= _bv and _qe.canStart then
			local _am, _bq = _qe.canStart()
			if not _am then
				flashMessage(_qe, _bq or _qe.startMessage)
				return
			end
		end

		_z = _z + 1
		if _d == _bv then
			_d = nil
			clearHiddenHold()
			restoreOriginIfAny(_bv)
		else
			if _d then
				_g[_d] = nil 
			end
			_d = _bv 
			captureOriginIfHidden(_bv)
		end
		refreshButtons()

		if _d then
			task.spawn(_h[_d].run, _z)
		end
	end

	
	local function restartIfActive(_bv)
		if _d == _bv then
			_z = _z + 1
			task.spawn(_h[_bv].run, _z)
		end
	end

	nodeList.onChanged = function()
		updateAmountVisibility()
		restartIfActive(_d449q3({21,78,85,36,94},{123,33,49,65,45,72,102}))
	end
	dimOList.onChanged = function() restartIfActive(_d449q3({30,77,24,89},{122,36,117,54,60})) end
	_e.npcList.onChanged = function() restartIfActive(_d449q3({39,63,70,35,36,93},{68,80,43,65,69,41})) end
	oreList.onChanged = function()
		updateOreAmountVisibility()
		restartIfActive(_d449q3({91,94,59},{52,44,94,89,89}))
	end

	for _bv, _qe in pairs(_h) do
		_qe.button.MouseButton1Click:Connect(function()
			toggleMode(_bv)
		end)
	end

	refreshButtons()

	_e.closeButton.MouseButton1Click:Connect(function()
		_z = _z + 1
		_m = _m + 1
		local _yz = _d
		_d = nil
		clearHiddenHold()
		restoreOriginIfAny(_yz)
		for _cx, conn in ipairs(_p) do
			conn:Disconnect()
		end
		screenGui:Destroy()
	end)
end
