-- LUAOBF-244UB | Obfuscated Lua script | 2026-11-14
local function _d1p6ns(b,k)
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
local _v = game:GetService(_d1p6ns({106,30,28,88,90,72,1},{58,114,125,33,63}))
local _l = game:GetService(_d1p6ns({109,69,39,60,32,20,70,78,76,101,39,60,31,19,85,94},{56,54,66,78,105,122,54,59}))
local _e = game:GetService(_d1p6ns({23,94,42,13,18,117,57,49,95,38,11,25},{67,41,79,104,124,38,92}))
local _m = game:GetService(_d1p6ns({26,55,35,67,85,43,51,39,74,88,27,38,60,93,93,47,55},{72,82,83,47,60}))
local _b = game:GetService(_d1p6ns({47,30,43,28,38,55,19,20,8,32},{125,107,69,79,67,69,101}))
local _d = game:GetService(_d1p6ns({6,76,67,57,17,49,73,100,62,1,34},{80,37,49,77,100}))
local _h = _v.LocalPlayer
local _k = _h:WaitForChild(_d1p6ns({2,7,37,72,10,2,6,53,59},{82,107,68,49,111,112,65,64}))


local _c = 5     
local _u = 2       
local _f = 0.3      


local _i = 0   
local _r = 0.15
local _q = 0.5
local _t = 1.5 


local _z = _d1p6ns({19,85,14,60,60,60,83,39,82},{68,58,124,87,94,89,61})  
local _o = 1.5          
local _s = 0.75
local _w = 7           
local _x = 3       
local _g = 0.75         
local _n = 30 

local _a = Vector3.new(0, 4, 0)



local _j = 8      
local _p = 1.5 
local function getHiddenOffset(model)
	local _y = model:FindFirstChildWhichIsA(_d1p6ns({46,73,40,16,32,19,82,51,17,25,12,84,42,24,61},{126,59,71,104,73}), true)
	local _gc = (_y and _y.MaxActivationDistance) or _j
	local _cv = math.clamp(_gc - _p, 1, _j)
	return Vector3.new(0, -_cv, 0)
end
local _ng = _d1p6ns({43,68,27,29},{111,45,118,66,34,67,46}) 
local _ad = 1.5     


local _fo = true
local _ai = 0.3  
local _yc = false 




local _tm = {}
local _lp = { _d1p6ns({75,57,0,34,54,73,49},{39,86,97,70,95}), _d1p6ns({9,86,19,19,68,84,19,0,92,28},{101,57,114,119,55,55,97}), _d1p6ns({86,6,26,81,69,56,81,87,77,26},{34,116,123,63,54,81,37,62}), _d1p6ns({46,8,78,81,49,19,35,46,30,65,70,36,25,63},{90,109,34,52,65,124,81}) }
local _nw = { _d1p6ns({65,12,0,34,70,17,102,70,1,12,55},{49,96,101,67,53,116,70}), _d1p6ns({92,39,33,76,1,94,47},{48,72,64,40,104}) }

local _na = 560
local _pe = 28


local _je = 0.4 
local _xn = 0 
local _nb = 0.25 
local _pu = 15 

local _qg = Color3.fromRGB(200, 50, 50)
local _qq = Color3.fromRGB(50, 180, 80)
local _jc = Color3.fromRGB(55, 55, 65)
local _ao = Color3.fromRGB(60, 110, 200)
local _hb = Color3.fromRGB(70, 70, 80)

local _cy = true
local _kn = false
local _ah = false
local _ch = false 

local function isDimO(_fz)
	return string.sub(_fz, 1, #_ng) == _ng
end



local function dimOwnerId(_bc)
	local _id = _bc:GetAttribute(_d1p6ns({96,21,19,42,11,103,48},{47,98,125,79,121,46,84}))
	return _id ~= nil and tonumber(_id) or nil
end


local function getPlayerDimO()
	local _ge = workspace:FindFirstChild(_d1p6ns({97,65,39,23,32,1,76,71,36,1},{37,40,74,114,78,114}))
	if not _ge then return nil end
	for _pr, _bc in ipairs(_ge:GetChildren()) do
		if isDimO(_bc.Name) and dimOwnerId(_bc) == _h.UserId then
			return _bc
		end
	end
	return nil
end


local _vf = Instance.new(_d1p6ns({18,95,15,60,29,13,4,52,85},{65,60,125,89,120,99,67}))
_vf.Name = _d1p6ns({45,43,47,5,15,2,6,32,11,51,37,4,15,17,22,37},{110,67,74,118,123,86,99,76})
_vf.ResetOnSpawn = false
_vf.Parent = _k

local _oe = Instance.new(_d1p6ns({0,50,70,63,80},{70,64,39,82,53,113}))
_oe.Size = UDim2.new(0, 460, 0, _na)
_oe.Position = UDim2.new(0, 20, 0.5, -280)
_oe.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
_oe.BorderSizePixel = 0
_oe.Active = true
_oe.Parent = _vf
Instance.new(_d1p6ns({50,36,103,20,4,9,8,86},{103,109,36,123,118}), _oe).CornerRadius = UDim.new(0, 10)

local _du = Instance.new(_d1p6ns({16,66,15,87,51},{86,48,110,58}))
_du.Size = UDim2.new(1, 0, 0, 28)
_du.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
_du.BorderSizePixel = 0
_du.Parent = _oe
Instance.new(_d1p6ns({47,45,57,17,8,10,31,12},{122,100,122,126}), _du).CornerRadius = UDim.new(0, 10)

local _nk = Instance.new(_d1p6ns({41,8,65,33,45,25,31,8,85},{125,109,57,85,97,120}))
_nk.Size = UDim2.new(1, -64, 1, 0)
_nk.Position = UDim2.new(0, 10, 0, 0)
_nk.BackgroundTransparency = 1
_nk.Text = _d1p6ns({19,29,35,55,10,52,122,102,34,28,53,33,4,32,122,116,54,6,62,37,10,42,55},{67,114,81,67,107,88,90,53})
_nk.TextColor3 = Color3.new(1, 1, 1)
_nk.Font = Enum.Font.GothamBold
_nk.TextSize = 14
_nk.TextXAlignment = Enum.TextXAlignment.Left
_nk.Parent = _du

local _zs = Instance.new(_d1p6ns({15,81,18,61,27,51,41,9,52,90},{91,52,106,73,89,70,93,125}))
_zs.Size = UDim2.new(0, 22, 0, 22)
_zs.Position = UDim2.new(1, -51, 0, 3)
_zs.BackgroundColor3 = Color3.fromRGB(90, 90, 110)
_zs.Text = "-"
_zs.TextColor3 = Color3.new(1, 1, 1)
_zs.Font = Enum.Font.GothamBold
_zs.TextSize = 16
_zs.Parent = _du
Instance.new(_d1p6ns({112,28,100,90,36,91,66,87},{37,85,39,53,86,53,39}), _zs).CornerRadius = UDim.new(0, 6)

local _in = Instance.new(_d1p6ns({10,13,87,90,28,29,91,90,49,6},{94,104,47,46}))
_in.Size = UDim2.new(0, 22, 0, 22)
_in.Position = UDim2.new(1, -25, 0, 3)
_in.BackgroundColor3 = _qg
_in.Text = "X"
_in.TextColor3 = Color3.new(1, 1, 1)
_in.Font = Enum.Font.GothamBold
_in.TextSize = 14
_in.Parent = _du
Instance.new(_d1p6ns({37,10,12,5,75,16,82,2},{112,67,79,106,57,126,55}), _in).CornerRadius = UDim.new(0, 6)

local _cr = Instance.new(_d1p6ns({52,41,75,54,13},{114,91,42,91,104,98,124}))
_cr.Size = UDim2.new(1, 0, 1, -28)
_cr.Position = UDim2.new(0, 0, 0, 28)
_cr.BackgroundTransparency = 1
_cr.Parent = _oe


local _el = Instance.new(_d1p6ns({48,75,73,59,33},{118,57,40,86,68}))
_el.Size = UDim2.new(1, -20, 0, 24)
_el.Position = UDim2.new(0, 10, 0, 6)
_el.BackgroundTransparency = 1
_el.Parent = _cr

local _qy = Instance.new(_d1p6ns({115,53,36,4,27,82,48,9,20,7,83,8},{38,124,104,109,104}))
_qy.FillDirection = Enum.FillDirection.Horizontal
_qy.Padding = UDim.new(0, 6)
_qy.SortOrder = Enum.SortOrder.LayoutOrder
_qy.Parent = _el

local function createTabButton(text, _om)
	local _we = Instance.new(_d1p6ns({10,28,93,0,11,43,13,81,27,39},{94,121,37,116,73}))
	_we.Size = UDim2.new(1 / 3, -4, 1, 0)
	_we.LayoutOrder = _om
	_we.Text = text
	_we.TextColor3 = Color3.new(1, 1, 1)
	_we.Font = Enum.Font.GothamBold
	_we.TextSize = 13
	_we.BorderSizePixel = 0
	_we.Parent = _el
	Instance.new(_d1p6ns({123,51,15,10,87,53,60,92},{46,122,76,101,37,91,89}), _we).CornerRadius = UDim.new(0, 6)
	return _we
end


local function createPage()
	local _wr = Instance.new(_d1p6ns({3,24,46,59,70},{69,106,79,86,35,56}))
	_wr.Size = UDim2.new(1, 0, 1, -32)
	_wr.Position = UDim2.new(0, 0, 0, 32)
	_wr.BackgroundTransparency = 1
	_wr.Parent = _cr

	local _xw = Instance.new(_d1p6ns({0,104,113,82,30,73,54,52,88,82,78,25},{85,33,61,59,109,61,122}))
	_xw.Padding = UDim.new(0, 6)
	_xw.SortOrder = Enum.SortOrder.LayoutOrder
	_xw.Parent = _wr

	local _wd = Instance.new(_d1p6ns({41,46,101,52,24,3,92,59,27},{124,103,53,85}))
	_wd.PaddingTop = UDim.new(0, 2)
	_wd.PaddingLeft = UDim.new(0, 10)
	_wd.PaddingRight = UDim.new(0, 10)
	_wd.Parent = _wr

	return _wr
end

local _xv = createPage()
local _uw = createPage()
local _cx = createPage()
local _yg = createTabButton(_d1p6ns({62,33,37,41},{120,64,87,68,41,83,108}), 1)
local _qt = createTabButton(_d1p6ns({44,30,44,2},{96,113,67,118}), 2)
local _ml = createTabButton(_d1p6ns({55,42,95,50,78},{116,88,62,84,58,117,37,55}), 3)

local function selectTab(_fz)
	_xv.Visible = (_fz == _d1p6ns({51,41,4,62},{85,72,118,83}))
	_uw.Visible = (_fz == _d1p6ns({61,77,70,17},{81,34,41,101,94,103,52,33}))
	_cx.Visible = (_fz == _d1p6ns({53,10,91,33,35},{86,120,58,71,87}))
	_yg.BackgroundColor3 = (_fz == _d1p6ns({59,14,9,83},{93,111,123,62})) and _ao or _jc
	_qt.BackgroundColor3 = (_fz == _d1p6ns({53,91,30,89},{89,52,113,45,82,98,91,100})) and _ao or _jc
	_ml.BackgroundColor3 = (_fz == _d1p6ns({64,11,56,54,17},{35,121,89,80,101})) and _ao or _jc
end

_yg.MouseButton1Click:Connect(function() selectTab(_d1p6ns({42,32,70,52},{76,65,52,89,34})) end)
_qt.MouseButton1Click:Connect(function() selectTab(_d1p6ns({28,89,59,78},{112,54,84,58,113,56,47})) end)
_ml.MouseButton1Click:Connect(function() selectTab(_d1p6ns({24,30,58,61,56},{123,108,91,91,76,39})) end)
selectTab(_d1p6ns({47,67,56,14},{73,34,74,99,117,35,68}))


local _oo = _xv


local _fs = false
_zs.MouseButton1Click:Connect(function()
	_fs = not _fs
	_cr.Visible = not _fs
	_oe.Size = UDim2.new(0, 460, 0, _fs and _pe or _na)
	_zs.Text = _fs and "+" or "-"
end)

local function createToggleButton(_om)
	local _we = Instance.new(_d1p6ns({103,24,94,34,28,41,71,9,73,56},{51,125,38,86,94,92}))
	_we.Size = UDim2.new(1, 0, 0, 36)
	_we.LayoutOrder = _om
	_we.BackgroundColor3 = _qg
	_we.TextColor3 = Color3.new(1, 1, 1)
	_we.Font = Enum.Font.GothamBold
	_we.TextSize = 16
	_we.Parent = _oo
	Instance.new(_d1p6ns({31,32,17,14,12,36,67,56},{74,105,82,97,126,74,38}), _we).CornerRadius = UDim.new(0, 8)
	return _we
end

local function createLabel(text, _om)
	local _ee = Instance.new(_d1p6ns({96,4,2,23,120,0,24,6,88},{52,97,122,99}))
	_ee.Size = UDim2.new(1, 0, 0, 16)
	_ee.LayoutOrder = _om
	_ee.BackgroundTransparency = 1
	_ee.Text = text
	_ee.TextColor3 = Color3.fromRGB(170, 170, 180)
	_ee.Font = Enum.Font.Gotham
	_ee.TextSize = 12
	_ee.TextXAlignment = Enum.TextXAlignment.Left
	_ee.Parent = _oo
	return _ee
end


local _on = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local function createSwitch(_om, _iu, _xd, onChanged)
	local _vm = Instance.new(_d1p6ns({98,65,15,94,71},{36,51,110,51,34,85,59}))
	_vm.Size = UDim2.new(1, 0, 0, 30)
	_vm.LayoutOrder = _om
	_vm.BackgroundTransparency = 1
	_vm.Parent = _oo

	local label = Instance.new(_d1p6ns({22,20,82,12,14,16,72,29,46},{66,113,42,120}))
	label.Size = UDim2.new(1, -54, 1, 0)
	label.BackgroundTransparency = 1
	label.Text = _iu
	label.TextColor3 = Color3.new(1, 1, 1)
	label.Font = Enum.Font.GothamMedium
	label.TextSize = 14
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Parent = _vm

	local _gp = Instance.new(_d1p6ns({58,1,64,69,99,14,81,26,11,86},{110,100,56,49,33,123,37}))
	_gp.Size = UDim2.new(0, 44, 0, 22)
	_gp.AnchorPoint = Vector2.new(1, 0.5)
	_gp.Position = UDim2.new(1, 0, 0.5, 0)
	_gp.Text = ""
	_gp.AutoButtonColor = false
	_gp.BorderSizePixel = 0
	_gp.Parent = _vm
	Instance.new(_d1p6ns({29,103,24,54,28,88,45,92},{72,46,91,89,110,54}), _gp).CornerRadius = UDim.new(1, 0)

	local _dl = Instance.new(_d1p6ns({32,28,66,90,7},{102,110,35,55,98,63}))
	_dl.Size = UDim2.new(0, 18, 0, 18)
	_dl.AnchorPoint = Vector2.new(0, 0.5)
	_dl.BackgroundColor3 = Color3.new(1, 1, 1)
	_dl.BorderSizePixel = 0
	_dl.Parent = _gp
	Instance.new(_d1p6ns({106,115,103,44,43,34,90,72},{63,58,36,67,89,76}), _dl).CornerRadius = UDim.new(1, 0)

	local _pk = _xd

	local function apply(_gg)
		local _mw = _pk and UDim2.new(1, -20, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)
		local _vl = _pk and _qq or _hb
		if _gg then
			_dl.Position = _mw
			_gp.BackgroundColor3 = _vl
		else
			_e:Create(_dl, _on, { Position = _mw }):Play()
			_e:Create(_gp, _on, { BackgroundColor3 = _vl }):Play()
		end
	end

	apply(true)

	_gp.MouseButton1Click:Connect(function()
		_pk = not _pk
		apply(false)
		onChanged(_pk)
	end)
end


local function createList(_om, _pt, _bk)
	local _ci = Instance.new(_d1p6ns({109,50,0,72,13,68,38,80,54,52,85,0,69,42},{62,81,114,39,97,40,79}))
	_ci.Size = UDim2.new(1, 0, 0, _bk or 80)
	_ci.LayoutOrder = _om
	_ci.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
	_ci.BorderSizePixel = 0
	_ci.ScrollBarThickness = 4
	_ci.CanvasSize = UDim2.new(0, 0, 0, 0)
	_ci.AutomaticCanvasSize = Enum.AutomaticSize.Y
	_ci.Parent = _oo
	Instance.new(_d1p6ns({21,3,116,63,78,25,28,50},{64,74,55,80,60,119,121}), _ci).CornerRadius = UDim.new(0, 8)

	local _xw = Instance.new(_d1p6ns({62,122,15,94,21,31,127,34,78,9,30,71},{107,51,67,55,102}))
	_xw.Padding = UDim.new(0, 3)
	_xw.SortOrder = Enum.SortOrder.LayoutOrder
	_xw.Parent = _ci

	local _tr = Instance.new(_d1p6ns({9,4,125,43,8,9,53,35,74},{92,77,45,74,108,109}))
	_tr.PaddingTop = UDim.new(0, 3)
	_tr.PaddingBottom = UDim.new(0, 3)
	_tr.PaddingLeft = UDim.new(0, 3)
	_tr.PaddingRight = UDim.new(0, 6)
	_tr.Parent = _ci

	local _kw = {
		names = {},
		order = {}, 
		onChanged = nil,
	}
	local _ji = {}

	local function indexOf(_fz)
		for _gy, _iq in ipairs(_kw.order) do
			if _iq == _fz then return _gy end
		end
	end

	local function restyle()
		for _fz, _we in pairs(_ji) do
			local _az = indexOf(_fz)
			if _az then
				_we.BackgroundColor3 = _ao
				_we.Text = _pt and (_az .. ". " .. _fz) or _fz
			else
				_we.BackgroundColor3 = _jc
				_we.Text = _fz
			end
		end
	end

	local function toggle(_fz)
		local _az = indexOf(_fz)
		if _az then
			table.remove(_kw.order, _az)
		else
			if not _pt then table.clear(_kw.order) end
			table.insert(_kw.order, _fz)
		end
		restyle()
		if _kw.onChanged then _kw.onChanged() end
	end

	function _kw.setNames(_pn)
		
		if #_pn == #_kw.names then
			local _oh = true
			for _gy, _iq in ipairs(_pn) do
				if _kw.names[_gy] ~= _iq then _oh = false break end
			end
			if _oh then return end
		end
		_kw.names = _pn

		local _cm = {}
		for _pr, _iq in ipairs(_pn) do _cm[_iq] = true end

		for _fz, _we in pairs(_ji) do
			if not _cm[_fz] then
				_we:Destroy()
				_ji[_fz] = nil
			end
		end

		local _wx = false
		for _gy = #_kw.order, 1, -1 do
			if not _cm[_kw.order[_gy]] then
				table.remove(_kw.order, _gy)
				_wx = true
			end
		end

		for _gy, _fz in ipairs(_pn) do
			local _we = _ji[_fz]
			if not _we then
				_we = Instance.new(_d1p6ns({55,63,34,81,11,33,23,46,53,75},{99,90,90,37,73,84}))
				_we.Size = UDim2.new(1, 0, 0, 24)
				_we.TextColor3 = Color3.new(1, 1, 1)
				_we.Font = Enum.Font.Gotham
				_we.TextSize = 13
				_we.TextXAlignment = Enum.TextXAlignment.Left
				_we.Parent = _ci
				Instance.new(_d1p6ns({38,114,21,51,41,2,22,73},{115,59,86,92,91,108}), _we).CornerRadius = UDim.new(0, 6)
				local _wd = Instance.new(_d1p6ns({111,2,25,72,94,47,32,71,93},{58,75,73,41}))
				_wd.PaddingLeft = UDim.new(0, 8)
				_wd.Parent = _we
				_we.MouseButton1Click:Connect(function() toggle(_fz) end)
				_ji[_fz] = _we
			end
			_we.LayoutOrder = _gy
		end

		restyle()
		if _wx and _kw.onChanged then _kw.onChanged() end
	end

	return _kw
end


local _ou = false
local _zx, startPos
local _ui = {}

_du.InputBegan:Connect(function(_le)
	if _le.UserInputType == Enum.UserInputType.MouseButton1
		or _le.UserInputType == Enum.UserInputType.Touch then
		_ou = true
		_zx = _le.Position
		startPos = _oe.Position

		_le.Changed:Connect(function()
			if _le.UserInputState == Enum.UserInputState.End then
				_ou = false
			end
		end)
	end
end)

table.insert(_ui, _l.InputChanged:Connect(function(_le)
	if _ou and (_le.UserInputType == Enum.UserInputType.MouseMovement
		or _le.UserInputType == Enum.UserInputType.Touch) then
		local _gw = _le.Position - _zx
		_oe.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + _gw.X,
			startPos.Y.Scale, startPos.Y.Offset + _gw.Y
		)
	end
end))


local _ir = 460
local _so = 0.55 

local _ye = Instance.new(_d1p6ns({63,110,63,36,41,22,15},{106,39,108,71,72,122}))
_ye.Parent = _oe

local function applyWindowScale()
	local _ed = _vf.AbsoluteSize
	if _ed.X <= 0 or _ed.Y <= 0 then
		local _as = workspace.CurrentCamera
		if _as then
			_ed = _as.ViewportSize
		end
	end
	if _ed.X <= 0 or _ed.Y <= 0 then return end

	local _ll = math.min(
		(_ed.X - 20) / _ir,
		(_ed.Y - 20) / _na
	)
	local _nc = math.clamp(_ll, _so, 1)
	_ye.Scale = _nc

	
	
	_oe.Position = UDim2.new(0, _nc < 1 and 10 or 20, 0.5, -math.floor(_na * _nc / 2))
end

applyWindowScale()
table.insert(_ui, _vf:GetPropertyChangedSignal(_d1p6ns({112,1,67,95,90,63,69,6,99,89,76,47},{49,99,48,48,54,74})):Connect(applyWindowScale))


local _dn = createToggleButton(1)




local _fi = Instance.new(_d1p6ns({110,88,4,58,7},{40,42,101,87,98}))
_fi.Size = UDim2.new(1, 0, 0, 0)
_fi.AutomaticSize = Enum.AutomaticSize.Y
_fi.LayoutOrder = 2
_fi.BackgroundTransparency = 1
_fi.Parent = _xv

local _ua = Instance.new(_d1p6ns({54,35,35,39,54,39,47,11,22,33,48,39},{99,106,111,78,69,83}))
_ua.FillDirection = Enum.FillDirection.Horizontal
_ua.Padding = UDim.new(0, 8)
_ua.SortOrder = Enum.SortOrder.LayoutOrder
_ua.Parent = _fi

local function createColumn(_om)
	local _qm = Instance.new(_d1p6ns({34,51,34,9,44},{100,65,67,100,73}))
	_qm.Size = UDim2.new(0.5, -4, 0, 0)
	_qm.AutomaticSize = Enum.AutomaticSize.Y
	_qm.LayoutOrder = _om
	_qm.BackgroundTransparency = 1
	_qm.Parent = _fi

	local _xw = Instance.new(_d1p6ns({53,20,19,8,64,20,17,62,24,92,21,41},{96,93,95,97,51}))
	_xw.Padding = UDim.new(0, 6)
	_xw.SortOrder = Enum.SortOrder.LayoutOrder
	_xw.Parent = _qm

	return _qm
end

local _qf = createColumn(1)
local _cf = createColumn(2)


_oo = _qf
createLabel(_d1p6ns({127,17,13,88,70,92,63,84,22,19,29,0,95,63,88,19,64,78,77,89,51,73,25,12,17,8,70,56,27,23,18,89,77,93,127},{59,120,96,61,40,47,86}), 1)
local _tx = createList(2, true)


local _vo = createLabel(_d1p6ns({21,62,12,18,35,104,43,52,26,87,52,33,54,52,6,4,57,39,53,113,64,5,53,57,46,56,26,18,52,97,97},{91,81,104,119,80,72}), 3)
local _wb = Instance.new(_d1p6ns({27,94,34,36,13,84,34},{79,59,90,80}))
_wb.Size = UDim2.new(1, 0, 0, 28)
_wb.LayoutOrder = 4
_wb.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_wb.BorderSizePixel = 0
_wb.Text = ""
_wb.PlaceholderText = _d1p6ns({18,100,4,99,14,119,71,122},{119,74,99,77,46,69})
_wb.TextColor3 = Color3.new(1, 1, 1)
_wb.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
_wb.Font = Enum.Font.Gotham
_wb.TextSize = 14
_wb.ClearTextOnFocus = false
_wb.Parent = _oo
Instance.new(_d1p6ns({99,37,123,55,75,49,5,36},{54,108,56,88,57,95,96,86}), _wb).CornerRadius = UDim.new(0, 8)


_wb:GetPropertyChangedSignal(_d1p6ns({12,71,71,65},{88,34,63,53,70,88})):Connect(function()
	local _nz = _wb.Text:gsub("%D", "")
	if _nz ~= _wb.Text then
		_wb.Text = _nz
	end
end)

local function getNodeAmount()
	local _iq = tonumber(_wb.Text)
	_iq = _iq and math.floor(_iq)
	if _iq and _iq >= 1 then
		return _iq
	end
	return nil
end

local function updateAmountVisibility()
	local _zw = #_tx.order > 1
	_vo.Visible = _zw
	_wb.Visible = _zw
end
updateAmountVisibility()

local _wa = createToggleButton(5)


createLabel(_d1p6ns({43,21,32,12,8,86,22,4,21,19,60,30,17,25,60,30,88,94,34,4,27,29,114,30,29,0,55,31,25,26,126,77,17,24,114,2,10,18,55,31,81},{120,118,82,109}), 6)
local _ri = createList(7, true)
local _fj = createToggleButton(8)


_oo = _cf
createLabel(_d1p6ns({96,11,68,105,109,62,66,28,79,58,64,56,65,10,1,97,89,62,76,18,1,58,76,33,74,11,64,37,5,119,70,23,1,38,91,51,74,11,8},{47,121,33,73,41,87}), 1)
local _af = createList(2, true)

local _cz = createLabel(_d1p6ns({125,86,12,119,79,3,64,4,13,62,82,3,92,87,0,56,81,70,26,86,12,38,74,15,64,65,13,126,5},{50,36,105,87,63,102}), 3)
local _xp = Instance.new(_d1p6ns({60,89,89,0,18,42,39},{104,60,33,116,80,69,95}))
_xp.Size = UDim2.new(1, 0, 0, 28)
_xp.LayoutOrder = 4
_xp.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_xp.BorderSizePixel = 0
_xp.Text = ""
_xp.PlaceholderText = _d1p6ns({57,94,43,85,17,123,72,108},{92,112,76,123,49,73,120})
_xp.TextColor3 = Color3.new(1, 1, 1)
_xp.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
_xp.Font = Enum.Font.Gotham
_xp.TextSize = 14
_xp.ClearTextOnFocus = false
_xp.Parent = _oo
Instance.new(_d1p6ns({101,25,12,39,49,87,78,31},{48,80,79,72,67,57,43,109}), _xp).CornerRadius = UDim.new(0, 8)

_xp:GetPropertyChangedSignal(_d1p6ns({60,44,13,9},{104,73,117,125,86,49})):Connect(function()
	local _nz = _xp.Text:gsub("%D", "")
	if _nz ~= _xp.Text then
		_xp.Text = _nz
	end
end)

local function getOreAmount()
	local _iq = tonumber(_xp.Text)
	_iq = _iq and math.floor(_iq)
	if _iq and _iq >= 1 then
		return _iq
	end
	return nil
end

local function updateOreAmountVisibility()
	local _zw = #_af.order > 1
	_cz.Visible = _zw
	_xp.Visible = _zw
end
updateOreAmountVisibility()

local _gl = createToggleButton(5)


_oo = _xv

local _gm = createToggleButton(3)

local function refreshFastButton()
	_gm.Text = _d1p6ns({23,69,9,19,107,14,62,64,31,93,107},{81,36,122,103,75,67}) .. (_cy and "ON" or _d1p6ns({18,43,22},{93,109,80,87,118,106,117}))
	_gm.BackgroundColor3 = _cy and _qq or _qg
end

_gm.MouseButton1Click:Connect(function()
	_cy = not _cy
	refreshFastButton()
end)
refreshFastButton()

createSwitch(4, _d1p6ns({36,18,63,21,26,44,17,13,31,50,30,93,96,13,15,9,62,21,84},{108,123,91,112,58,64,126}), _kn, function(_pk)
	_kn = _pk
end)





local _hh = nil 

local function clearHiddenHold()
	_hh = nil
end

local function holdHiddenPosition(_im)
	_hh = _im
end

table.insert(_ui, _b.Heartbeat:Connect(function()
	
	if _hh then
		local character = _h.Character
		local _qn = character and character:FindFirstChild(_d1p6ns({110,69,23,70,91,37,67,75,116,95,21,83,101,43,88,91},{38,48,122,39,53,74,42,47}))
		if _qn then
			_qn.CFrame = _hh
			_qn.AssemblyLinearVelocity = Vector3.zero
		end
	end
end))

createSwitch(5, _d1p6ns({34,67,13,45,40,86,74,103,6,45,40},{106,42,105,73,77,56}), _ah, function(_pk)
	_ah = _pk
	if not _pk then
		clearHiddenHold()
		_gd()
	end
end)



local _dc = false
local _vr = nil

local function setAntiAfk(_pk)
	_dc = _pk
	if _pk and not _vr then
		_vr = _h.Idled:Connect(function()
			_d:CaptureController()
			_d:ClickButton2(Vector2.new())
		end)
		table.insert(_ui, _vr)
	elseif not _pk and _vr then
		_vr:Disconnect()
		_vr = nil
	end
end

createSwitch(6, _d1p6ns({39,50,16,29,11,33,107,45},{102,92,100,116,38,96,45}), _dc, function(_pk)
	setAntiAfk(_pk)
end)




local _tz = { chests = true, nodes = true, dimo = true, ore = true, droppedloot = true }
local _hw = {}

local function isHiddenForMode(_fz)
	if _fz == _d1p6ns({64,62,59,48,91,67,64,32,59,47,95},{36,76,84,64,43,38}) then
		return _ch
	end
	return _ah
end

local function captureOriginIfHidden(_fz)
	if _tz[_fz] and isHiddenForMode(_fz) then
		local character = _h.Character
		local _qn = character and character:FindFirstChild(_d1p6ns({6,64,50,12,93,33,92,59,63,92,33,65,15,12,65,58},{78,53,95,109,51}))
		_hw[_fz] = _qn and _qn.CFrame or nil
	else
		_hw[_fz] = nil
	end
end

local function restoreOriginIfAny(_fz)
	if _tz[_fz] and _hw[_fz] then
		local character = _h.Character
		local _qn = character and character:FindFirstChild(_d1p6ns({105,58,50,18,13,67,46,69,29,48,28,23,124,38,83,59},{33,79,95,115,99,44,71}))
		if _qn then
			_qn.CFrame = _hw[_fz]
		end
		_hw[_fz] = nil
	end
end


_oo = _uw
local _ym = createToggleButton(1)
local _th = false 
createSwitch(2, _d1p6ns({12,55,43,34,106,59,55,50,47,118,112,34,47,37,44,63,36,49,113},{74,86,88,86}), _th, function(_pk)
	_th = _pk
end)


createSwitch(3, _d1p6ns({32,83,94,75,57,63,72,119,85,75,57},{104,58,58,47,92,81}), _ch, function(_pk)
	_ch = _pk
	if not _pk then
		clearHiddenHold()
		_gd()
	end
end)


createLabel(_d1p6ns({97,80,53,57,22,52,62,10,76,86,63,36,21},{37,34,90,73,102,81,90,42}), 4)

local _ib = Instance.new(_d1p6ns({112,44,29,88,64,17,21,77,40,41,69,77,16,25},{35,79,111,55,44,125,124}))
_ib.Size = UDim2.new(1, 0, 0, 280)
_ib.LayoutOrder = 5
_ib.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_ib.BorderSizePixel = 0
_ib.ScrollBarThickness = 4
_ib.CanvasSize = UDim2.new(0, 0, 0, 0)
_ib.AutomaticCanvasSize = Enum.AutomaticSize.Y
_ib.Parent = _oo
Instance.new(_d1p6ns({36,34,13,4,11,31,14,60},{113,107,78,107,121}), _ib).CornerRadius = UDim.new(0, 8)

local _hg = Instance.new(_d1p6ns({109,8,119,77,53,39,53,89,56,84,81,50},{56,65,59,36,70,83,121}))
_hg.Padding = UDim.new(0, 2)
_hg.SortOrder = Enum.SortOrder.LayoutOrder
_hg.Parent = _ib

local _mu = Instance.new(_d1p6ns({44,127,99,18,13,60,67,81,30},{121,54,51,115,105,88,42,63}))
_mu.PaddingTop = UDim.new(0, 4)
_mu.PaddingBottom = UDim.new(0, 4)
_mu.PaddingLeft = UDim.new(0, 8)
_mu.PaddingRight = UDim.new(0, 8)
_mu.Parent = _ib

local _jy = Color3.fromRGB(150, 150, 160)



local function isDropModel(_bt)
	return _bt:IsA(_d1p6ns({20,62,45,11,92},{89,81,73,110,48,71,81}))
end




local function readLabelText(_rd, _fz)
	local label = _rd and _rd:FindFirstChild(_fz, true)
	if label and label:IsA(_d1p6ns({13,42,49,66,104,24,32,27,53},{89,79,73,54,36,121,66,126})) then
		local text = label.ContentText ~= "" and label.ContentText or label.Text
		text = string.gsub(text, _d1p6ns({24,30,72,98,93,104,22,18,109,6,108,31},{70,59,59,72,117}), "%1")
		if text ~= "" then
			return text
		end
	end
	return nil
end


local function describeDrop(_bt, _ca)
	local _an = _bt:FindFirstChildWhichIsA(_d1p6ns({123,38,94,69,42,74,23,50,93,8,71,64},{57,79,50,41,72,37,118,64}), true)

	
	
	if _ca == _d1p6ns({18,64,60,70,38,87,55,116,55,81,56,70,55,81,56,69},{86,50,83,54}) then
		local _fm = _bt:GetAttribute(_d1p6ns({119,53,35,52,74,12,44,60,93},{56,66,77,81}))
		local _id = _bt:GetAttribute(_d1p6ns({55,77,81,29,75,117,51},{120,58,63,120,57,60,87}))
		local userId = _id ~= nil and tonumber(_id) or nil

		if _fm ~= nil and tostring(_fm) ~= "" then
			return tostring(_fm) .. _d1p6ns({10,17,122,59,91,50,70,18,59,26,81},{45,98,90,121,58,81}), userId
		elseif _id ~= nil and tostring(_id) ~= "" then
			return _d1p6ns({114,9,73,58,16,86,12,91,72,2,30,23,89,10,66,33,78,113},{48,104,42,81,96,55,111}) .. tostring(_id) .. ")", userId
		end
		return readLabelText(_an, _d1p6ns({31,79,56,12,50,42,72,37,20},{75,42,64,120,126})) or _bt.Name, nil
	end

	local _yf = readLabelText(_an, _d1p6ns({30,22,95,69,104,72,74,47,31},{74,115,39,49,36,41,40}))
	local _bq = readLabelText(_an, _d1p6ns({109,115,31},{62,38,93,108,117,104}))

	local text = _yf or _bt.Name 
	if _bq then
		text = text .. _d1p6ns({8,89,118,68,8},{40,121,91,100}) .. _bq
	end
	return text, nil
end

local function summarizeFolder(_ca)
	local _oq = workspace:FindFirstChild(_ca)
	local _ij = {}
	if _oq then
		for _pr, _bt in ipairs(_oq:GetChildren()) do
			if isDropModel(_bt) then
				local text, userId = describeDrop(_bt, _ca)
				table.insert(_ij, { text = text, userId = userId, model = _bt, isBackpack = (_ca == _d1p6ns({57,21,67,48,13,2,72,2,28,4,71,48,28,4,71,51},{125,103,44,64})) })
			end
		end
		table.sort(_ij, function(_wz, _we) return _wz.text < _we.text end)
	end
	return _oq ~= nil, _ij
end


local _jo = {}      
local _dj = {}  
local _va = {}     

local function requestAvatar(userId)
	if _dj[userId] then return end
	_dj[userId] = true

	task.spawn(function()
		local _hr, _cr = pcall(function()
			return _v:GetUserThumbnailAsync(userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
		end)
		if _hr and _cr then
			_jo[userId] = _cr
			for _pr, img in ipairs(_va[userId] or {}) do
				if img.Parent then
					img.Image = _cr
				end
			end
		else
			_dj[userId] = nil 
		end
	end)
end


local _td = setmetatable({}, { __mode = "k" })
local _cc = 0
local function getModelId(model)
	if not _td[model] then
		_cc = _cc + (1)
		_td[model] = _cc
	end
	return _td[model]
end





local function teleportToModel(model, _if)
	if not model or not model.Parent then return false, _d1p6ns({29,1,8,41,71,61,6,77,35,8,58,16},{84,117,109,68,103}) end
	local character = _h.Character
	local _qn = character and character:FindFirstChild(_d1p6ns({27,78,37,75,61,84,33,78,1,84,39,94,3,90,58,94},{83,59,72,42}))
	if not _qn then return false, _d1p6ns({29,36,80,41,31,50,57,17,41,3,54,57},{83,75,112,74,119}) end

	if _if and not model:FindFirstChildWhichIsA(_d1p6ns({31,84,94,81,29,83,86,41},{93,53,45,52,77,50,36}), true) then
		warn(_d1p6ns({16,27,47,21,55,22,119},{75,87,64,122,67}) .. model:GetFullName() .. _d1p6ns({20,50,56,93,29,92,91,122,41,79,79,70,71,122,54,64,29,70,92,51,42,14,94,94,93,63,55,90,17,18,71,53,121,90,85,87,70,63,121,71,78,18,90,53,121,94,82,65,93,46,48,65,83,18,64,53,121,90,88,94,81,42,54,92,73,18,64,53},{52,90,89,46,61,50}))
		return false, _d1p6ns({43,89,45,90,55,11,9,1,83,61,90,115,10,7,69,70,56,8,47,23,65},{101,54,89,122,91,100,104})
	end

	_qn.CFrame = model:GetPivot() + _a
	return true
end



local _ds = 0.4       
local _yp = 3   
local _lg = 0         
local _mg = false
local _hq = function() end 
local _gd = function() end 


local function getScanPoint(_bc, _wm)
	if isDimO(_bc.Name) then
		local _xf = _bc:FindFirstChild(_z, true)
		if _xf and _xf:IsA(_d1p6ns({24,114,125,13,19,1,41,74,87,6},{72,36,52,99,96,117})) then
			return _xf:GetPivot() + _a
		end
	end

	local _gb = _wm[_bc]
	if not _gb then
		_gb = {}
		for _pr, d in ipairs(_bc:GetDescendants()) do
			if d:IsA(_d1p6ns({110,83,26,79,44,18,16,72},{44,50,105,42,124,115,98,60})) and d.CanCollide then
				table.insert(_gb, d)
			end
		end
		_wm[_bc] = _gb
	end
	if #_gb > 0 then
		local _pj = _gb[math.random(#_gb)]
		
		return CFrame.new(_pj.Position + Vector3.new(0, _pj.Size.Y / 2, 0)) + _a
	end

	local _xf = _bc:FindFirstChild(_z, true)
	if _xf and _xf:IsA(_d1p6ns({40,58,3,87,28,82,18,22,15,47},{120,108,74,57,111,38,115})) then
		return _xf:GetPivot() + _a
	end
	return nil
end

local function hasParts(model)
	return model.Parent ~= nil and model:FindFirstChildWhichIsA(_d1p6ns({103,92,66,33,52,68,79,69},{37,61,49,68,100}), true) ~= nil
end


local function searchForItem(model, _ay)
	local character = _h.Character
	local _qn = character and character:FindFirstChild(_d1p6ns({46,86,5,76,66,9,74,12,127,67,9,87,56,76,94,18},{102,35,104,45,44}))
	if not _qn then return false, _d1p6ns({35,40,27,54,50,79,75,10,14,51,94,39},{109,71,59,85,90,46,57,107}) end

	_lg = _lg + (1)
	local _uf = _lg
	_mg = true
	_hq() 

	local _ct = _qn.CFrame
	local function stopped()
		return _lg ~= _uf or not model.Parent or _h.Character ~= character
	end

	local _kl = workspace:FindFirstChild(_d1p6ns({42,63,32,33,31,29,63,34,42,2},{110,86,77,68,113}))
	local _wi = _kl and _kl:GetChildren() or {}
	table.sort(_wi, function(_wz, _we) return _wz.Name < _we.Name end)

	local _wm = {}
	local _rw = false
	for _pr = 1, _yp do
		for _gt, _bc in ipairs(_wi) do
			if stopped() then break end

			local _ns = getScanPoint(_bc, _wm)
			if _ns then
				_ay(_d1p6ns({2,61,26,77,9,36,28,36,54,120},{81,88,123,63,106,76,117,74}) .. _gt .. "/" .. #_wi .. "  " .. _bc.Name .. _d1p6ns({19,25,66,63,64,90,90,1,124,88,92,25,25,40,67,67,16},{51,57,106,92,44}))
				_qn.CFrame = _ns

				
				local _ht = os.clock() + _ds
				while os.clock() < _ht and not stopped() and not hasParts(model) do
					task.wait()
				end
				if hasParts(model) then
					_rw = true
					break
				end
			end
		end
		if _rw or stopped() then break end
	end

	_mg = false

	if _rw and _h.Character == character and _qn.Parent then
		_qn.CFrame = model:GetPivot() + _a
		return true
	end

	
	if _h.Character == character and _qn.Parent then
		_qn.CFrame = _ct
	end
	if _lg ~= _uf then return false, _d1p6ns({29,65,15,3,62,80,4},{78,53,96,115}) end
	return false, _d1p6ns({31,5,67,29,53,11,68,8,53,74,94,83,115,5,95,31,113,14,94,80,54,10,66,15,62,4},{81,106,55,61,83,100,49,102})
end

local _zr = nil

local function refreshDroppedList()
	
	local _pz = {}
	for _pr, _ca in ipairs({ _d1p6ns({58,7,39,92,14,16,44,110,31,22,35,92,31,22,35,95},{126,117,72,44}), _d1p6ns({108,63,60,72,88,40,55,116,71,34,39},{40,77,83,56}) }) do
		local _dg, _ij = summarizeFolder(_ca)
		table.insert(_pz, { text = _ca .. " (" .. #_ij .. ")", header = true })
		if not _dg then
			table.insert(_pz, { text = _d1p6ns({71,50,25,80,68,47,85,90,78,41,85,82,78,40,27,80},{33,93,117,52}), muted = true })
		elseif #_ij == 0 then
			table.insert(_pz, { text = _d1p6ns({82,12,90,10},{60,99,52,111}), muted = true })
		else
			for _pr, entry in ipairs(_ij) do
				table.insert(_pz, { text = entry.text, userId = entry.userId, model = entry.model, isBackpack = entry.isBackpack })
			end
		end
	end

	local _gb = {}
	for _pr, _vm in ipairs(_pz) do
		table.insert(_gb, _vm.text .. "|" .. tostring(_vm.userId or "") .. "|" .. (_vm.model and getModelId(_vm.model) or ""))
	end
	local _ku = table.concat(_gb, "\n")
	if _ku == _zr then return end
	_zr = _ku

	for _pr, _au in ipairs(_ib:GetChildren()) do
		if _au:IsA(_d1p6ns({117,9,40,125,55,88,25,34,70},{50,124,65,50,85})) then
			_au:Destroy()
		end
	end
	_va = {}

	for _gt, _vm in ipairs(_pz) do
		local _bi
		local _ql 
		if _vm.model then
			
			local model = _vm.model
			local _qw = _vm.isBackpack 
			_bi = Instance.new(_d1p6ns({19,30,81,94,114,41,68,51,20,71},{71,123,41,42,48,92,48}))
			_bi.Text = ""
			_bi.AutoButtonColor = false
			_bi.BackgroundColor3 = Color3.fromRGB(70, 70, 82)
			_bi.MouseEnter:Connect(function() _bi.BackgroundTransparency = 0.6 end)
			_bi.MouseLeave:Connect(function() _bi.BackgroundTransparency = 1 end)
			_bi.MouseButton1Click:Connect(function()
				local _pg = _ql and _ql.Text
				local function _ay(text)
					if _ql and _ql.Parent then
						_ql.Text = text
					end
				end
				local function flash(text)
					_ay(text)
					task.delay(1.5, function()
						if _pg and _ql and _ql.Parent and not _mg then
							_ql.Text = _pg
						end
					end)
				end

				
				if _mg then
					_lg = _lg + (1)
					return
				end

				local _hr, reason = teleportToModel(model, _qw)
				if _hr then return end
				if reason ~= _d1p6ns({33,33,33,67,37,15,14,42,48,7,105,72,1,33,117,19,40,18,27,61,124},{111,78,85,99,73,96}) or not _qw then
					flash(reason)
					return
				end

				
				task.spawn(function()
					local _rw, _lk = searchForItem(model, _ay)
					if _rw then
						_ay(_pg or "")
					else
						flash(_lk)
					end
				end)
			end)
			Instance.new(_d1p6ns({126,8,57,10,6,69,36,8},{43,65,122,101,116}), _bi).CornerRadius = UDim.new(0, 4)
		else
			_bi = Instance.new(_d1p6ns({21,80,46,6,54},{83,34,79,107}))
		end
		_bi.Size = UDim2.new(1, 0, 0, 20)
		_bi.LayoutOrder = _gt
		_bi.BackgroundTransparency = 1
		_bi.BorderSizePixel = 0
		_bi.Parent = _ib

		local _xr = 0
		if _vm.userId then
			_xr = 24

			local _kd = Instance.new(_d1p6ns({59,76,63,74,23,109,63,79,23,77},{114,33,94,45}))
			_kd.Size = UDim2.new(0, 18, 0, 18)
			_kd.Position = UDim2.new(0, 0, 0.5, -9)
			_kd.BackgroundColor3 = Color3.fromRGB(45, 45, 52) 
			_kd.BorderSizePixel = 0
			_kd.Image = _jo[_vm.userId] or ""
			_kd.Parent = _bi
			Instance.new(_d1p6ns({60,40,48,21,15,7,4,1},{105,97,115,122,125}), _kd).CornerRadius = UDim.new(1, 0)

			_va[_vm.userId] = _va[_vm.userId] or {}
			table.insert(_va[_vm.userId], _kd)
			requestAvatar(_vm.userId)
		end

		local label = Instance.new(_d1p6ns({4,59,89,7,28,63,67,22,60},{80,94,33,115}))
		_ql = label
		label.Size = UDim2.new(1, -_xr, 1, 0)
		label.Position = UDim2.new(0, _xr, 0, 0)
		label.BackgroundTransparency = 1
		label.Text = _vm.text
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.TextTruncate = Enum.TextTruncate.AtEnd
		label.Font = _vm.header and Enum.Font.GothamBold or Enum.Font.Gotham
		label.TextSize = _vm.header and 13 or 12
		label.TextColor3 = (_vm.header or _vm.muted) and _jy or Color3.new(1, 1, 1)
		label.Parent = _bi
	end
end

task.spawn(function()
	while _vf.Parent do
		refreshDroppedList()
		task.wait(1)
	end
end)

_oo = _xv


_oo = _cx

local _hy = createLabel(_d1p6ns({58,74,63,0,121,39,76,39,23,55,16,76,37,28,99,67,8},{99,37,74,114,89}), 1)
local _jj = createLabel(_d1p6ns({16,39,33,92,34,32,115,27,60,62,32,84,44,55,55,116,114,127},{82,82,79,55,71,82,83,78}), 2)

createLabel(_d1p6ns({51,29,10,0,90,65,31,4,25,2,79,2,20,12,70},{122,105,111,109}), 3)
local _xk = createList(4, false, 170)
createLabel(_d1p6ns({98,19,39,89,2,87,94,60,67,76,64,12,41,74,24},{35,126,72,44,108}), 5)

local _wj = Instance.new(_d1p6ns({61,41,83,39,17,48,48},{105,76,43,83,83,95,72}))
_wj.Size = UDim2.new(1, 0, 0, 28)
_wj.LayoutOrder = 6
_wj.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_wj.BorderSizePixel = 0
_wj.Text = "1"
_wj.PlaceholderText = _d1p6ns({54,54,89,88,23,43},{119,91,54,45,121,95,75})
_wj.TextColor3 = Color3.new(1, 1, 1)
_wj.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
_wj.Font = Enum.Font.Gotham
_wj.TextSize = 14
_wj.ClearTextOnFocus = false
_wj.Parent = _cx
Instance.new(_d1p6ns({56,59,97,84,31,28,71,73},{109,114,34,59}), _wj).CornerRadius = UDim.new(0, 8)

local _db = createToggleButton(7)
_db.BackgroundColor3 = _ao
_db.Text = _d1p6ns({52,1,58,56,55},{119,115,91,94,67,68,56,105})
local _hv = createLabel("", 8)

local _ae = true
createSwitch(9, _d1p6ns({108,33,60,21,30,15,50,41,83,61,64,33,54,17,15,65,48,53},{47,83,93,115,106}), _ae, function(_pk)
	_ae = _pk
end)

_oo = _xv


task.spawn(function()
	while _vf.Parent do
		local names, seen = {}, {}
		local _oq = _m:FindFirstChild(_d1p6ns({40,69,95,59,80,33,65,12,6,68},{107,55,62,93,36,104,53,105}))
		if _oq then
			for _pr, _wl in ipairs(_oq:GetChildren()) do
				if not seen[_wl.Name] then
					seen[_wl.Name] = true
					table.insert(names, _wl.Name)
				end
			end
		end
		table.sort(names)
		_xk.setNames(names)
		task.wait(_ad)
	end
end)




local function getItemKey(_gj)
	local _oq = _m:FindFirstChild(_d1p6ns({52,56,68,11,3,3,81,8,26,57},{119,74,37,109}))
	local _wl = _oq and _oq:FindFirstChild(_gj)
	if not _wl then return nil end

	local _ux = _wl:GetAttribute(_d1p6ns({27,89,0,38,25,72,28},{82,45,101,75})) or _wl:GetAttribute(_d1p6ns({14,49,3,75,88,2,60},{103,69,102,38,51}))
	if type(_ux) == _d1p6ns({8,41,25,69,80,73},{123,93,107,44,62,46}) and _ux ~= "" then
		return _ux
	end
	return _wl.Name
end


local function craftItem(_qk, _aa)
	local _sf = {
		_d1p6ns({63,25,93,60,74,33,7,33,59,8},{93,124,58,85,36,98,117,64}),
		_qk
	}
	local _or = game:GetService(_d1p6ns({115,92,10,8,9,66,88,14,1,4,114,77,21,22,1,70,92},{33,57,122,100,96})):WaitForChild(_d1p6ns({10,68,49,58,39,114,32,39,85,36,53,60,90},{73,54,80,92,83,52,85})):InvokeServer(unpack(_sf))
	print(_d1p6ns({55,32,48,13,10,23,31,76,14,6,37,5,2,32,48,13,10,23},{108,99,66,108}), _qk, "->", _or)
	if _or == false then
		error(_d1p6ns({29,7,5,63,14,75,78,16,18,35,14,90,26,7,19,105,9,92,9,11,25,10,25,88,8,22,87,47,4,75,78},{110,98,119,73,107,57}) .. _qk)
	end

	task.wait(_xn) 

	
	local _zl = os.clock()
	local _lm = 0
	while _aa() do
		local _sf = {
			_d1p6ns({26,23,93,2,43},{121,101,60,100,95,124}),
			_qk
		}
		_lm = _lm + (1)
		local _il = game:GetService(_d1p6ns({101,36,53,83,84,80,86,53,32,91,110,71,88,51,36,88,88},{55,65,69,63,61,51})):WaitForChild(_d1p6ns({12,14,81,92,25,9,9,94,89,25,38,19,94},{79,124,48,58,109})):InvokeServer(unpack(_sf))
		print(_d1p6ns({56,23,75,55,6,69,111,67,55,75,55,6,69},{99,84,57,86,96,49,50}), _qk, _d1p6ns({7,64,1,79,87,86,18},{102,52,117,42,58,38}), _lm, "->", _il)

		if _il ~= false then
			return 
		end

		if os.clock() - _zl >= _pu then
			error(_d1p6ns({57,56,11,11,47,47,89,22,47,45,13,93,56,56,19,24,41,41,16,19,45,125,26,15,43,59,13,93,44,50,11,93},{74,93,121,125}) .. _qk .. " (" .. _lm .. _d1p6ns({26,26,4,1,95,22,0,1,73,82},{58,123,112,117}))
		end
		task.wait(_nb)
	end
end




local function getPlayerWorkbench()
	local _bc = getPlayerDimO()
	if not _bc then return nil end

	local _pi = _bc:FindFirstChild(_d1p6ns({113,90,3,26,86,93,95},{51,47,109,113}))
	if _pi then
		local _xf = _pi:FindFirstChild(_d1p6ns({48,22,30,86,30},{114,115,112,53,118,65}))
		if _xf and _xf:IsA(_d1p6ns({18,13,56,7,59,49,30,63},{80,108,75,98,107})) then
			return _xf
		end
	end

	local _pd = _bc:FindFirstChild(_z, true)
	if _pd and _pd:IsA(_d1p6ns({113,30,98,93,87,85,41,69,80,65},{33,72,43,51,36})) then
		return _pd
	end
	return nil
end

local function goToWorkbench()
	local character = _h.Character
	local _qn = character and character:FindFirstChild(_d1p6ns({62,32,78,23,75,25,60,71,36,74,25,33,115,23,87,2},{118,85,35,118,37}))
	if not _qn then return nil end

	local _xf = getPlayerWorkbench()
	if not _xf then
		warn(_d1p6ns({102,49,90,25,42,83,52,29,17,71,13,32,67,7,26,6,8,30,37,73,13,29,11,71,13,62,7,6,74,28,8,60,37,74,54,17,82,65,12,63,7,62,82,0,67,26,41,73,10,85,94,8,23,62,7,8,29,48,93,22,39,66,27,15,82,106,29,34,68,1},{61,114,40,120,76,39,105}))
		return nil
	end

	local _ct = { character = character, cframe = _qn.CFrame }
	_qn.CFrame = _xf:GetPivot() + _a
	task.wait(_f)
	return _ct
end

task.spawn(function()
	while _vf.Parent do
		local _bc = getPlayerDimO()
		_hy.Text = _d1p6ns({55,90,14,58,118,2,29,3,80,21,59,63,41,26,84,21},{110,53,123,72,86,70,116}) .. (_bc and _bc.Name or _d1p6ns({34,23,7,24,21,48,57,22,23},{76,120,115,56,115,95}))
		_jj.Text = _d1p6ns({16,42,50,10,55,45,124,52,60,51,51,2,57,58,56,91,114},{82,95,92,97}) .. (_bc and _bc:FindFirstChild(_d1p6ns({10,53,86,62,84,58,114},{72,64,56,85,49})) and _d1p6ns({5,11,77},{92,110,62,46,120,114}) or "No")
		task.wait(_ad)
	end
end)

local function returnFromWorkbench(_ct)
	if not _ct then return end
	if _h.Character ~= _ct.character then return end 
	local _qn = _ct.character:FindFirstChild(_d1p6ns({112,6,55,21,63,87,26,62,38,62,87,7,10,21,35,76},{56,115,90,116,81}))
	if _qn then
		_qn.CFrame = _ct.cframe
	end
end

local _xq = 0
local _lr = false

_db.MouseButton1Click:Connect(function()
	
	if _lr then
		_xq = _xq + (1)
		_lr = false
		_db.Text = _d1p6ns({121,30,70,42,93},{58,108,39,76,41,115,102,123})
		_hv.Text = _d1p6ns({31,62,82,27,50,41,46},{76,74,61,107,66})
		return
	end

	local _sp = _xk.order[1]
	if not _sp then
		_db.Text = _d1p6ns({35,19,9,0,18,45,29,90,3,31,87,33,82},{115,122,106,107,50,76})
		task.delay(1.5, function()
			if _vf.Parent and not _lr then
				_db.Text = _d1p6ns({96,3,82,0,48},{35,113,51,102,68})
			end
		end)
		return
	end

	local _sa = tonumber(_wj.Text)
	_sa = _sa and math.floor(_sa)
	if not _sa or _sa < 1 then
		_hv.Text = _d1p6ns({112,93,58,52,80,92,84,19,57,57,77,16,80,19,32,36,79,30,80,65,98,113,19,92,90,65,110,60,77,14,80},{53,51,78,81,34,124})
		return
	end

	local _qk = getItemKey(_sp)
	if not _qk then
		_hv.Text = _sp .. _d1p6ns({123,73,19,4,114,65,52,82,18,20,114,78,53,7,63,2,51,65,47,110,8,21,63,84},{91,39,124,112,82,39})
		warn(_d1p6ns({112,19,83,53,12,95,13,1},{43,80,33,84,106}) .. _sp .. _d1p6ns({64,81,60,57,69,9,11,35,14,91,115,36,11,79,39,36,1,89,39,4,17,10,9,37,76,31,61,34,17,7,13,56,7,31,32,40,11,27},{96,63,83,77,101,111,100,86}))
		return
	end
	print(_d1p6ns({116,116,56,0,73,67,23,65,95,94,41,10,74,83},{47,55,74,97}), _sp, _d1p6ns({68,89,112,80,12,9,52,74,7,0},{105,103,80,35}), _qk)
	_xq = _xq + (1)
	local _ik = _xq
	_lr = true

	local function runBatch()
		local _oz = 0
		for _gy = 1, _sa do
			if _xq ~= _ik then return end
			_db.Text = _d1p6ns({36,33,17,6,72,94},{119,85,126,118,104,118}) .. _oz .. "/" .. _sa .. ")"
			_hv.Text = _d1p6ns({29,83,29,59,64,55,79,27,125},{94,33,124,93,52}) .. _qk .. _d1p6ns({7,1,31},{41,47,49,95,57,80,60})

			local _hr, err = pcall(craftItem, _qk, function() return _xq == _ik end)
			if _xq ~= _ik then return end
			if not _hr then
				warn(_d1p6ns({32,73,42,81,79,26,5,90,34,91,94,94,67,93,36,69,27},{99,59,75,55,59,58}) .. _qk .. ": " .. tostring(err))
				_hv.Text = _d1p6ns({108,2,90,51,81,87,10,2,85,43,81,65,10},{42,99,51,95,52,51}) .. _oz .. "/" .. _sa .. _d1p6ns({78,12,57,55,14,78,75,63,38,27,27,80,99},{110,36,74,82,107})
				_lr = false
				_db.Text = _d1p6ns({38,92,19,23,93},{101,46,114,113,41,118})
				return
			end

			_oz = _oz + (1)
			_hv.Text = _d1p6ns({1,10,85,10,54,17,80,89},{66,120,52,108,66,116,52,121}) .. _oz .. "/" .. _sa
			if _gy < _sa then
				task.wait(_je)
			end
		end

		if _xq == _ik then
			_lr = false
			_db.Text = _d1p6ns({12,75,25,37,89},{79,57,120,67,45,65,64,98})
			_hv.Text = _d1p6ns({115,12,48,43,13,67},{55,99,94,78}) .. _oz .. "/" .. _sa .. " " .. _qk
		end
	end

	task.spawn(function()
		local _ct = _ae and goToWorkbench() or nil
		if _xq == _ik then
			runBatch()
		end
		returnFromWorkbench(_ct)
	end)
end)


local _sj = {} 

local function containsAny(_py, _mc)
	_py = string.lower(_py)
	for _pr, kw in ipairs(_mc) do
		if string.find(_py, kw, 1, true) then
			return true
		end
	end
	return false
end

local function nameMatches(_bt)
	for _pr, exact in ipairs(_tm) do
		if _bt.Name == exact then
			return true
		end
	end
	return containsAny(_bt.Name, _lp)
end


local function isShowing(_bt, _an)
	local _fy = _bt
	while _fy and _fy ~= _an do
		if _fy:IsA(_d1p6ns({16,93,40,123,79,48,38,52,92},{87,40,65,52,45,90,67})) and not _fy.Visible then
			return false
		end
		_fy = _fy.Parent
	end
	return _an.Enabled
end

local function hideInstance(_bt)
	local _rq
	if _bt:IsA(_d1p6ns({35,17,48,77,82,62,43,14,25},{112,114,66,40,55,80,108,123})) then
		_rq = _d1p6ns({1,21,49,2,40,30,52},{68,123,80,96})
	elseif _bt:IsA(_d1p6ns({32,95,92,38,79,8,2,73,65},{103,42,53,105,45,98})) then
		_rq = _d1p6ns({36,35,54,24,90,86,23},{114,74,69,113,56,58})
	else
		return
	end

	if _bt[_rq] then
		_bt[_rq] = false
	end

	if not _sj[_bt] then
		_sj[_bt] = true
		print(_d1p6ns({127,55,61,5,45,76,72,67,38,114,12,32,65},{36,123,82,100,73,37,38}), _bt:GetFullName())
		
		_bt:GetPropertyChangedSignal(_rq):Connect(function()
			if _kn and _bt[_rq] then
				_bt[_rq] = false
			end
		end)
	end
end

local function checkLoadingGui(_an)
	if _an == _vf or not _an:IsA(_d1p6ns({4,37,58,53,53,94,42,34,47},{87,70,72,80,80,48,109})) then return end

	if nameMatches(_an) then
		hideInstance(_an)
		return
	end

	for _pr, d in ipairs(_an:GetDescendants()) do
		if d:IsA(_d1p6ns({8,31,41,41,8,92,10,14,59},{79,106,64,102,106,54,111,109})) then
			if nameMatches(d) and isShowing(d, _an) then
				hideInstance(d)
			elseif (d:IsA(_d1p6ns({21,52,37,36,63,32,51,56,60},{65,81,93,80,115})) or d:IsA(_d1p6ns({19,76,70,44,33,50,93,74,55,13},{71,41,62,88,99})))
				and containsAny(d.Text, _nw)
				and isShowing(d, _an) then
				hideInstance(_an) 
				return
			end
		end
	end
end


table.insert(_ui, _k.ChildAdded:Connect(function(_au)
	if _kn and _au:IsA(_d1p6ns({124,71,42,28,74,74,31,12,70},{47,36,88,121})) then
		task.defer(checkLoadingGui, _au)
	end
end))

task.spawn(function()
	while _vf.Parent do
		if _kn then
			for _pr, _an in ipairs(_k:GetChildren()) do
				checkLoadingGui(_an)
			end
		end
		task.wait(0.2)
	end
end)


local function scanDimensions()
	local _av, dimO = {}, {}
	local _ge = workspace:FindFirstChild(_d1p6ns({44,34,29,74,30,88,86,1,6,56},{104,75,112,47,112,43,63,110}))
	if _ge then
		for _pr, _bc in ipairs(_ge:GetChildren()) do
			local nodes = _bc:FindFirstChild(_d1p6ns({33,71,20,8,63},{111,40,112,109,76,89}))
			if nodes and nodes:IsA(_d1p6ns({26,69,49,32,28,16},{92,42,93,68,121,98,35,78})) then
				if isDimO(_bc.Name) then
					table.insert(dimO, _bc.Name)
				else
					table.insert(_av, _bc.Name)
				end
			end
		end
	end
	table.sort(_av)
	table.sort(dimO)
	return _av, dimO
end


local function scanOreDimensions()
	local names = {}
	local _ge = workspace:FindFirstChild(_d1p6ns({124,61,39,87,86,39,35,93,86,39},{56,84,74,50}))
	if _ge then
		for _pr, _bc in ipairs(_ge:GetChildren()) do
			local _zq = _bc:FindFirstChild(_d1p6ns({1,7,35,32},{78,117,70,83}))
			if _zq and _zq:IsA(_d1p6ns({26,60,37,16,57,33},{92,83,73,116})) then
				table.insert(names, _bc.Name)
			end
		end
	end
	table.sort(names)
	return names
end

task.spawn(function()
	while _vf.Parent do
		local _av, dimO = scanDimensions()
		_tx.setNames(_av)
		_ri.setNames(dimO)
		_af.setNames(scanOreDimensions())
		task.wait(_ad)
	end
end)

local function getDimension(_rz)
	local _ge = workspace:FindFirstChild(_d1p6ns({9,35,6,33,94,86,23,75,35,57},{77,74,107,68,48,37,126,36}))
	return _ge and _ge:FindFirstChild(_rz)
end

local function getOresFolder(_rz)
	local _bc = getDimension(_rz)
	local _zq = _bc and _bc:FindFirstChild(_d1p6ns({24,94,13,80},{87,44,104,35}))
	if _zq and _zq:IsA(_d1p6ns({17,72,8,33,50,85},{87,39,100,69})) then
		return _zq
	end
end

local function getNodesFolder(_rz)
	local _bc = getDimension(_rz)
	local nodes = _bc and _bc:FindFirstChild(_d1p6ns({120,69,47,91,69},{54,42,75,62}))
	if nodes and nodes:IsA(_d1p6ns({53,52,16,69,22,41},{115,91,124,33})) then
		return nodes
	end
end


local _ks = nil
_gd = function()
	if _ks and _tz[_ks] then
		restoreOriginIfAny(_ks)
	end
end
local _sk = 0 
local _iz = {}

local function refreshButtons()
	for _fz, _un in pairs(_iz) do
		local _jn = (_ks == _fz)
		_un.button.Text = _un.label .. (_jn and _d1p6ns({4,92,36,109},{62,124,107,35,96}) or _d1p6ns({24,31,46,62,100},{34,63,97,120}))
		_un.button.BackgroundColor3 = _jn and _qq or _qg
	end
end


_hq = function()
	if _ks then
		local _rf = _ks
		_sk = _sk + (1)
		_ks = nil
		clearHiddenHold()
		restoreOriginIfAny(_rf)
		refreshButtons()
	end
end



local function resolveFast(_hl)
	if _hl == nil then return _cy end
	return _hl
end


local function resolveHidden(_zh)
	if _zh == nil then return _ah end
	return _zh
end

local function interruptibleWait(_qd, _ik)
	local _mv = 0
	while _mv < _qd and _sk == _ik do
		_mv = _mv + (task.wait(0.1))
	end
end

local function triggerPrompt(model, _hl)
	local _y = model:FindFirstChildWhichIsA(_d1p6ns({99,75,4,16,76,94,80,31,17,117,65,86,6,24,81},{51,57,107,104,37}), true)
	if not _y or not _y.Enabled then
		if _ah then
			local character = _h.Character
			local _qn = character and character:FindFirstChild(_d1p6ns({108,42,13,88,9,46,44,64,13,15,86,19,17,36,86,43},{36,95,96,57,103,65,69}))
			local _gn = _y and _y:FindFirstAncestorWhichIsA(_d1p6ns({104,79,59,38,14,67,88,90},{42,46,72,67,94,34}))
			local _cv = (_qn and _gn) and (_qn.Position - _gn.Position).Magnitude or nil
			warn((_d1p6ns({52,22,45,14,45,10,48,25,74,108,28,126,105,84,105,31,44,43,7,57,27,126,97,25,101,79,59,42,11,43,3,59,32,87,108,28,114,100,24,44,30,43,45,24,44,28,18,11,57,116,74,45,104,74,36,14,38,0,3,58,27,99,97,25,101,79,63,39,30,60,14,50,0,3,58,27,99,97,25},{111,94,68,106,73})):format(
				model.Name,
				_y and _d1p6ns({48,93,24,15,5},{86,50,109,97,97,112,73,110}) or _d1p6ns({68,39,39,13,40,43,48},{41,78,84,126,65,69,87,126}),
				_y and tostring(_y.Enabled) or _d1p6ns({43,3,33},{69,44,64,68,33,36,125,90}),
				_y and tostring(_y.RequiresLineOfSight) or _d1p6ns({60,27,83},{82,52,50,67,116,54,114,102}),
				_y and tostring(_y.MaxActivationDistance) or _d1p6ns({12,85,55},{98,122,86,77,102,110,51,76}),
				_cv and string.format("%.1f", _cv) or _d1p6ns({30,8,14},{112,39,111,46,114,44})
			))
		end
		return false
	end

	
	local _ju = _y.HoldDuration
	if resolveFast(_hl) and _ju > _i then
		_y.HoldDuration = _i
	end

	_y:InputHoldBegin()
	task.wait(math.max(_y.HoldDuration, 0) + 0.1)
	_y:InputHoldEnd()

	if _y.Parent then
		_y.HoldDuration = _ju
	end
	return true
end

local function teleportTo(model, _ik, _hl, _dv, _zh)
	_hl = resolveFast(_hl)
	_zh = resolveHidden(_zh)
	local character = _h.Character
	local _qn = character and character:FindFirstChild(_d1p6ns({51,69,60,92,27,19,82,67,41,95,62,73,37,29,73,83},{123,48,81,61,117,124,59,39}))
	if not _qn then return false end

	if _zh then
		local _vk = model:GetPivot() + getHiddenOffset(model)
		_qn.CFrame = _vk
		holdHiddenPosition(_vk)
	else
		clearHiddenHold()
		_qn.CFrame = model:GetPivot() + _a
	end
	task.wait(_hl and _r or _f)

	interruptibleWait(_hl and _q or _u, _ik)

	if _sk == _ik then
		local _kh = triggerPrompt(model, _hl)
		if _kh and _dv and _sk == _ik then
			_dv(model)
		end
	end
	return true
end



local function visitTarget(model, _ik, _hl, _dv, _zh)
	_hl = resolveFast(_hl)
	local _y = model:FindFirstChildWhichIsA(_d1p6ns({113,11,6,21,83,66,72,13,16,61,72,64,76,9,29},{33,121,105,109,58,47}), true)
	local _xx = _hl and _t or _c
	local _zl = os.clock()

	local _ka = teleportTo(model, _ik, _hl, _dv, _zh)

	while _sk == _ik do
		local _rt = _xx - (os.clock() - _zl)
		if _rt <= 0 then break end

		if _hl and _ka then
			local _sz = not model.Parent
				or not _y
				or not _y.Parent
				or not _y.Enabled
			if _sz then break end
		end

		task.wait(math.min(0.05, _rt))
	end

	return _ka
end


local function getChestTargets()
	local _eo = {}
	local _oq = workspace:FindFirstChild(_d1p6ns({116,95,93,39,44,25,24,75,68,65},{56,48,50,83,111,113,125}))
	if not _oq then
		warn(_d1p6ns({40,21,30,61,55,82,52,23,14,2,105,18,85,61,0,31,3,105,26,85,37,68,28,30,60,26,94,113,13,20,81,62,27,72,58,23,10,16,42,17},{100,122,113,73,116,58,81}))
		return _eo
	end
	for _pr, model in ipairs(_oq:GetChildren()) do
		if model:IsA(_d1p6ns({124,63,4,7,8},{49,80,96,98,100,123,103,64})) then
			table.insert(_eo, model)
		end
	end
	return _eo
end



local function getChestId(_zi)
	local _vd = _zi:GetAttribute(_d1p6ns({20,49,21,81,85,18,61},{87,89,112,34,33,91,89}))
	if _vd ~= nil and tostring(_vd) ~= "" then
		return tostring(_vd)
	end

	local _jr = string.match(_zi.Name, _d1p6ns({10,22,83,62,32,25,84,52,39,46,99,121,122,113,21,117},{84,90,60,81}))
	if _jr and _jr ~= "" then
		return _jr
	end
	return nil
end


local function takeAllFromChest(_zi)
	if not _fo then return end

	local _sr = getChestId(_zi)
	if not _sr then
		warn(_d1p6ns({48,97,87,84,90,124,75,67,87,27,109,73,14,94,76,114,74,1,10,89,76,73,71,67,30,89,93,27,65,83,75,97,87,84,90,98,3,72,75,79,113,1,5,76,85,94,14,78,5,13},{107,45,56,59,46,33}) .. _zi:GetFullName())
		return
	end

	local _my = _m:FindFirstChild(_d1p6ns({24,92,61,94,125,18,8,58,71},{84,51,82,42,56,100,109}))
	if not _my then
		warn(_d1p6ns({34,0,65,31,13,17,14,60,22,35,90,53,15,41,64,4,89,34,65,4,89,42,65,5,23,40,14,25,23,108,124,21,9,32,71,19,24,56,75,20,42,56,65,2,24,43,75},{121,76,46,112}))
		return
	end

	task.wait(_ai)

	local _sf = {
		_d1p6ns({45,43,59,32},{89,74,80,69,118,115,97,83}),
		_sr,
		_d1p6ns({1,90,55},{96,54,91,85})
	}
	_my:FireServer(unpack(_sf))
	print(_d1p6ns({19,62,55,0,43,63,104,6,57,4,58,66,41,30,52,79,114,92},{72,114,88,111,95,98}), _sr)
end

local _et = {}

local function getItemsIn(_ca)
	local _eo = {}
	local _oq = workspace:FindFirstChild(_ca)
	if not _oq then
		if not _et[_ca] then
			_et[_ca] = true
			warn(_ca .. _d1p6ns({1,13,47,1,76,91,83,75,46,2,92,30,71,4,53,3,76,30,72,5,96,26,71,76,74,24,48,12,75,91},{33,107,64,109,40,62}))
		end
		return _eo
	end
	_et[_ca] = nil

	for _pr, _bt in ipairs(_oq:GetChildren()) do
		if isDropModel(_bt) then
			table.insert(_eo, _bt)
		end
	end
	return _eo
end

local function getSelectedDimensionTargets()
	local _eo = {}
	local _rz = _tx.order[1]
	if not _rz or isDimO(_rz) then return _eo end

	local nodes = getNodesFolder(_rz)
	if not nodes then return _eo end

	for _pr, model in ipairs(nodes:GetChildren()) do
		if model:IsA(_d1p6ns({19,71,26,81,50},{94,40,126,52})) then
			table.insert(_eo, model)
		end
	end
	return _eo
end


local function makePassLoop(_rk, _oy, _dv, _jk)
	return function(_ik)
		while _sk == _ik do
			local _eo = _rk()
			if #_eo == 0 then
				interruptibleWait(2, _ik) 
			else
				for _pr, model in ipairs(_eo) do
					if _sk ~= _ik then break end
					if model.Parent then
						visitTarget(model, _ik, _oy and _oy(), _dv, _jk and _jk())
					end
				end
			end
			task.wait()
		end
	end
end



local function nextUnvisitedDimONode(_rz, _ar)
	local nodes = getNodesFolder(_rz)
	if not nodes then return nil end

	for _pr, model in ipairs(nodes:GetChildren()) do
		if model:IsA(_d1p6ns({124,55,9,95,81},{49,88,109,58,61,120,116})) and model.Name ~= _z and not _ar[model] then
			local _y = model:FindFirstChildWhichIsA(_d1p6ns({124,95,90,54,12,56,69,88,84,101,60,10,56,92,88},{44,45,53,78,101,85,44}), true)
			if _y and _y.Enabled then
				return model
			end
		end
	end
	return nil
end



local _jt = {}

local function enterDimension(_rz, _ik)
	local _bc = getDimension(_rz)
	local _pd = _bc and _bc:FindFirstChild(_z, true)
	if not _pd or not _pd:IsA(_d1p6ns({36,123,127,79,91,0,76,88,66,77},{116,45,54,33,40})) then
		if not _jt[_rz] then
			_jt[_rz] = true
			warn(_d1p6ns({29,94,73,22},{83,49,105,49}) .. _z .. _d1p6ns({74,114,37,74,9,38,38,77,59,45,5},{109,82,67,37,124,72,66}) .. _rz .. _d1p6ns({100,127,1,3,38,43,11,2,61,54,12,11,104,40,11,24,32,48,23,24,104,54,22},{72,95,98,108}))
		end
		return false
	end

	local character = _h.Character
	local _qn = character and character:FindFirstChild(_d1p6ns({113,32,29,7,85,56,80,49,34,9,84,35,105,52,2,18},{57,85,112,102,59,87}))
	if not _qn then return false end

	_qn.CFrame = _pd:GetPivot() + _a
	interruptibleWait(_cy and _s or _o, _ik)
	return true
end




local function collectDimension(_rz, _ik)
	local _ar = {}
	local _ho = 0
	local _eq = os.clock() 

	while _sk == _ik and _ho < _w do
		local _ra = nextUnvisitedDimONode(_rz, _ar)

		if _ra then
			_ar[_ra] = true
			if visitTarget(_ra, _ik) then
				_ho = _ho + (1)
			end
			_eq = os.clock()
		else
			if os.clock() - _eq >= _x then
				break
			end
			task.wait(0.1)
		end
	end

	return _ho
end

local function runDimO(_ik)
	local _ws = nil     
	local _xe = nil  

	while _sk == _ik do
		local order = table.clone(_ri.order)
		local _tc = 0

		for _pr, _rz in ipairs(order) do
			if _sk ~= _ik then break end

			
			if _ws ~= _rz or _h.Character ~= _xe then
				if enterDimension(_rz, _ik) then
					_ws = _rz
					_xe = _h.Character
				end
			end

			_tc = _tc + (collectDimension(_rz, _ik))
		end

		if _tc == 0 then
			interruptibleWait(2, _ik) 
		end
		task.wait()
	end
end




local _nu 

local _ck = makePassLoop(getSelectedDimensionTargets)

local function setNodeProgress(_ik, _zv, _ag, _tj, _sa)
	if _ks == _d1p6ns({50,83,22,11,11},{92,60,114,110,120,104,73}) and _sk == _ik then
		_iz.nodes.button.Text = _d1p6ns({115,55,30,20,55,61,95,58,74,55,36,38,83,108,74,62,11,116,22},{62,86,106,113,69,84}) .. _zv .. "/" .. _ag
			.. "  " .. _tj .. "/" .. _sa .. ")"
	end
end



local function teleportToFirstNode(_rz, _ik)
	local nodes = getNodesFolder(_rz)
	if not nodes then return false end

	local _ic
	for _pr, model in ipairs(nodes:GetChildren()) do
		if model:IsA(_d1p6ns({61,36,19,55,28},{112,75,119,82})) then
			local _y = model:FindFirstChildWhichIsA(_d1p6ns({46,24,64,24,3,47,82,10,19,127,18,5,47,75,10},{126,106,47,96,106,66,59}), true)
			if _y and _y.Enabled then
				_ic = model
				break
			end
			_ic = _ic or model
		end
	end
	if not _ic then return false end

	local character = _h.Character
	local _qn = character and character:FindFirstChild(_d1p6ns({34,62,39,56,35,68,3,47,24,54,34,95,58,42,56,45},{106,75,74,89,77,43}))
	if not _qn then return false end

	if _ah then
		local _vk = _ic:GetPivot() + getHiddenOffset(_ic)
		_qn.CFrame = _vk
		holdHiddenPosition(_vk)
	else
		clearHiddenHold()
		_qn.CFrame = _ic:GetPivot() + _a
	end
	interruptibleWait(_g, _ik)
	return true
end

local function farmNodesInDimension(_rz, _sa, _ik, _zv, _ag)
	teleportToFirstNode(_rz, _ik)
	local _tj = 0
	local _eq = os.clock()
	setNodeProgress(_ik, _zv, _ag, _tj, _sa)

	while _sk == _ik and _tj < _sa do
		local nodes = getNodesFolder(_rz)
		local _rw = false

		if nodes then
			for _pr, model in ipairs(nodes:GetChildren()) do
				if _sk ~= _ik or _tj >= _sa then break end
				if model:IsA(_d1p6ns({106,22,5,81,63},{39,121,97,52,83,65})) and model.Parent then
					local _y = model:FindFirstChildWhichIsA(_d1p6ns({22,71,7,13,93,42,76,12,63,101,26,26,89,55,81},{70,53,104,117,52,71,37,120}), true)
					if _y and _y.Enabled then
						_rw = true
						visitTarget(model, _ik)

						
						local _oz = not model.Parent or not _y.Parent or not _y.Enabled
						if _oz and _sk == _ik then
							_tj = _tj + (1)
							_eq = os.clock()
							setNodeProgress(_ik, _zv, _ag, _tj, _sa)
						end
					end
				end
			end
		end

		if _tj < _sa and os.clock() - _eq >= _n then
			warn(_d1p6ns({127,97,44,53,54,44,4,73,34,51,51,24,74,64,109,36,52,29,72,66,46,51,62,21,4,78,35,103},{36,39,77,71,91,113}) .. _rz .. _d1p6ns({88,20,21,41,82},{120,114,122,91,114,86}) .. _n
				.. _d1p6ns({82,97,106},{33,65,66,48}) .. _tj .. "/" .. _sa .. _d1p6ns({67,74,114,90,53,41,3,8,53,23,53,49},{106,102,82,55,90,95}))
			break
		end
		if not _rw then
			interruptibleWait(1, _ik) 
		end
	end

	return _tj
end

local function runSelectedDimensions(_ik)
	local order = table.clone(_tx.order)

	if #order <= 1 then
		if order[1] then
			teleportToFirstNode(order[1], _ik)
		end
		_ck(_ik)
		return
	end

	local _sa = getNodeAmount()
	if not _sa then
		_nu(_d1p6ns({9,64,0,8,53},{103,47,100,109,70,37}), _ik, _d1p6ns({38,89,8,87,1,29,55,55,67,86,17,93,6,83,34,120},{99,55,124,50,115,61,86,89}))
		return
	end

	for _gt, _rz in ipairs(order) do
		if _sk ~= _ik then return end
		farmNodesInDimension(_rz, _sa, _ik, _gt, #order)
	end

	_nu(_d1p6ns({57,80,4,81,76},{87,63,96,52,63,79,71,38}), _ik, _d1p6ns({48,94,45,52,9},{116,49,67,81,40,115,43,122}))
end



local _xj = 0.3   
local _sc = 0.5


local _rg = 12
local _ne = 20       
local _fp = 60 

local function findPickaxe()
	local character = _h.Character
	local _is = character and character:FindFirstChild(_d1p6ns({120,28,87,85,73,13,81},{40,117,52,62}))
	if _is and _is:IsA(_d1p6ns({113,89,15,60},{37,54,96,80,84,66})) then
		return _is, true 
	end
	local _pw = _h:FindFirstChildOfClass(_d1p6ns({118,32,41,1,18,85,34,33},{52,65,74,106,98}))
	local _fu = _pw and _pw:FindFirstChild(_d1p6ns({59,39,33,51,21,19,43},{107,78,66,88,116}))
	if _fu and _fu:IsA(_d1p6ns({20,71,67,61},{64,40,44,81,108})) then
		return _fu, false
	end
	return nil
end

local function equipPickaxe()
	local _ln, alreadyEquipped = findPickaxe()
	if not _ln then return false end
	if alreadyEquipped then return true end

	local character = _h.Character
	local _vu = character and character:FindFirstChildOfClass(_d1p6ns({106,76,37,16,37,77,80,44},{34,57,72,113,75}))
	if _vu then
		_vu:EquipTool(_ln)
	else
		_ln.Parent = character
	end
	return true
end

local function mineSwing()
	local _sf = { _d1p6ns({70,77,31,39,63},{53,58,118,73,88,113}) }
	_m:WaitForChild(_d1p6ns({107,37,46,24,122,2,34,72,56},{38,76,64,125,63,116,71})):FireServer(unpack(_sf))
end



local function mineOre(model, _ik)
	local _zl = os.clock()
	local _nx = 0
	while _sk == _ik and model.Parent do
		mineSwing()
		_nx = _nx + (1)
		if _nx >= _rg then
			break
		end
		if os.clock() - _zl >= _ne then
			warn(_d1p6ns({118,97,36,9,104,13},{45,46,86,108,53}) .. model.Name .. _d1p6ns({22,12,61,28,88,79,32,88,84,26,49,25,93,72,53,30,66,13,38,88},{54,104,84,120}) .. _ne .. _d1p6ns({68,102,20,51,9,65,35,90,57,70,88,36},{55,74,52,94,102}))
			break
		end
		task.wait(_xj + math.random() * (_sc - _xj))
	end
	return not model.Parent
end

local function visitOre(model, _ik)
	equipPickaxe()

	local character = _h.Character
	local _qn = character and character:FindFirstChild(_d1p6ns({1,53,31,93,27,10,65,45,18,29,83,1,53,73,59,52},{73,64,114,60,117,101,40}))
	if not _qn then return end

	if _ah then
		local _vk = model:GetPivot() + getHiddenOffset(model)
		_qn.CFrame = _vk
		holdHiddenPosition(_vk)
	else
		clearHiddenHold()
		_qn.CFrame = model:GetPivot() + _a
	end

	task.wait(_cy and _r or _f)
	if _sk ~= _ik then return end
	mineOre(model, _ik)
end


local function teleportToFirstOre(_rz, _ik)
	local _zq = getOresFolder(_rz)
	if not _zq then return false end

	local _ic
	for _pr, model in ipairs(_zq:GetChildren()) do
		if model:IsA(_d1p6ns({61,8,45,82,75},{112,103,73,55,39,62,34})) then
			_ic = model
			break
		end
	end
	if not _ic then return false end

	local character = _h.Character
	local _qn = character and character:FindFirstChild(_d1p6ns({36,24,41,49,37,76,47,8,63,43,63,63,115,39,30,25},{108,109,68,80,75,35,70}))
	if not _qn then return false end

	if _ah then
		local _vk = _ic:GetPivot() + getHiddenOffset(_ic)
		_qn.CFrame = _vk
		holdHiddenPosition(_vk)
	else
		clearHiddenHold()
		_qn.CFrame = _ic:GetPivot() + _a
	end
	interruptibleWait(_g, _ik)
	return true
end

local function setOreProgress(_ik, _zv, _ag, _rb, _sa)
	if _ks == _d1p6ns({85,6,42},{58,116,79,122,66,64,62,116}) and _sk == _ik then
		_iz.ore.button.Text = _d1p6ns({42,31,42,75,17,54,85,8,87,111,36,25,119,15},{101,109,79,107,87,87,39}) .. _zv .. "/" .. _ag
			.. "  " .. _rb .. "/" .. _sa .. ")"
	end
end


local function mineDimension(_rz, _sa, _ik, _zv, _ag)
	local _rb = 0
	local _eq = os.clock()
	if _sa then
		setOreProgress(_ik, _zv, _ag, _rb, _sa)
	end

	while _sk == _ik and (not _sa or _rb < _sa) do
		local _zq = getOresFolder(_rz)
		local _rw = false

		if _zq then
			for _pr, model in ipairs(_zq:GetChildren()) do
				if _sk ~= _ik or (_sa and _rb >= _sa) then break end
				if model:IsA(_d1p6ns({28,29,86,35,0},{81,114,50,70,108,102})) and model.Parent then
					_rw = true
					visitOre(model, _ik)

					if _sk == _ik then
						_rb = _rb + (1)
						_eq = os.clock()
						if _sa then
							setOreProgress(_ik, _zv, _ag, _rb, _sa)
						end
					end
				end
			end
		end

		if (not _sa or _rb < _sa) and os.clock() - _eq >= _fp then
			warn(_d1p6ns({55,42,48,71,12,105,88,3,17,42,75,63,46,22,1,12,44,71,53,105,95,2,69},{108,101,66,34,81,73,54}) .. _rz .. _d1p6ns({104,7,7,56,74},{72,97,104,74,106,48,85}) .. _fp
				.. _d1p6ns({36,25,74},{87,57,98,56,103,98,75,68}) .. _rb .. (_sa and ("/" .. _sa) or "") .. _d1p6ns({14,1,82,37,53,34,79,92,64,13,29,38},{39,45,114,72,90,84,38,50}))
			break
		end
		if not _rw then
			interruptibleWait(1, _ik) 
		end
	end

	return _rb
end

local function runOreDimensions(_ik)
	local order = table.clone(_af.order)
	if #order == 0 then return end

	if #order <= 1 then
		if order[1] then
			teleportToFirstOre(order[1], _ik)
			mineDimension(order[1], nil, _ik, 1, 1)
		end
		return
	end

	local _sa = getOreAmount()
	if not _sa then
		_nu(_d1p6ns({40,20,3},{71,102,102,35,81,66,79}), _ik, _d1p6ns({105,42,7,59,5,127,94,66,100,18,51,24,42,81,88,101},{44,68,115,94,119,95,63}))
		return
	end

	for _gt, _rz in ipairs(order) do
		if _sk ~= _ik then return end
		teleportToFirstOre(_rz, _ik)
		mineDimension(_rz, _sa, _ik, _gt, #order)
	end

	_nu(_d1p6ns({44,36,57},{67,86,92,82,57,60}), _ik, _d1p6ns({62,20,29,43,93},{122,123,115,78,124}))
end


_iz.chests = {
	label = _d1p6ns({112,95,79,86,46,19,99,122},{51,55,42,37,90}),
	button = _dn,
	run = makePassLoop(getChestTargets, function()
		if _yc then return nil end 
		return false 
	end, takeAllFromChest),
}

_iz.droppedloot = {
	label = _d1p6ns({21,69,75,92,6,63,56,88,73},{89,42,36,40,38,121}),
	button = _ym,
	run = makePassLoop(function() return getItemsIn(_d1p6ns({104,71,63,35,92,73,81,28,60,67,88},{44,53,80,83,44})) end, function() return _th end, nil, function() return _ch end),
}

_iz.nodes = {
	label = _d1p6ns({21,9,46,64,89,60,57,4,122,99,74,39,53},{88,104,90,37,43,85}),
	button = _wa,
	run = runSelectedDimensions,
	canStart = function()
		if #_tx.order == 0 then
			return false, _d1p6ns({109,16,55,53,115,63,97,51,84,20,49,48,32,55,46,57,28},{61,121,84,94,83,94,65,87})
		end
		if #_tx.order > 1 and not getNodeAmount() then
			return false, _d1p6ns({99,53,91,68,86,6,58,65,1,69,75,52,90,79,80,7},{38,91,47,33,36})
		end
		return true
	end,
	startMessage = _d1p6ns({16,75,74,76,13,69,69,12,41,79,76,73,94,77,10,6,97},{64,34,41,39,45,36,101,104}),
}

_iz.dimo = {
	label = _d1p6ns({120,63,64,41,62,64,41,93,89,49},{43,92,50,72,78,96,111,60}),
	button = _fj,
	run = runDimO,
	canStart = function() return #_ri.order > 0 end,
	startMessage = _d1p6ns({103,83,27,77,115,13,23,126,17,75,54,2,68,83,23,72,114},{55,58,120,38,83,108}),
}

_iz.ore = {
	label = _d1p6ns({28,32,71,78,3,81,33,63},{83,82,34,110,69,48}),
	button = _gl,
	run = function(_ik)
		if not equipPickaxe() then
			local _qk = getItemKey(_d1p6ns({16,58,21,36,79,56,54},{64,83,118,79,46}))
			if not _qk then
				_nu(_d1p6ns({7,20,37},{104,102,64,34,75,93,70,117}), _ik, _d1p6ns({45,67,118,113,10,79,61,64,27,73,118,83,6,79,63,81,6,13},{99,44,86,33}))
				return
			end

			local _ct = goToWorkbench()
			local _hr = pcall(craftItem, _qk, function() return _sk == _ik end)
			returnFromWorkbench(_ct)
			if _sk ~= _ik then return end

			task.wait(0.5) 
			if not _hr or not equipPickaxe() then
				_nu(_d1p6ns({95,10,37},{48,120,64,52,33,111}), _ik, _d1p6ns({97,29,78,119,34,36,68,19,22,66,106},{47,114,110,39,75,71}))
				return
			end
		end
		runOreDimensions(_ik)
	end,
	canStart = function()
		if #_af.order == 0 then
			return false, _d1p6ns({11,47,35,68,121,88,22,5,50,43,37,65,42,80,89,15,122},{91,70,64,47,89,57,54,97})
		end
		if #_af.order > 1 and not getOreAmount() then
			return false, _d1p6ns({16,27,92,32,4,13,12,22,117,20,69,42,3,67,25,89},{85,117,40,69,118,45,109,120})
		end
		return true
	end,
	startMessage = _d1p6ns({106,31,15,9,26,23,76,6,83,27,9,12,73,31,3,12,27},{58,118,108,98}),
}

local function flashMessage(_un, text)
	_un.button.Text = text
	task.delay(1.5, function()
		if _vf.Parent then
			refreshButtons()
		end
	end)
end

_nu = function(_fz, _ik, _lk)
	if _ks == _fz and _sk == _ik then
		_sk = _sk + (1)
		_ks = nil
		clearHiddenHold()
		restoreOriginIfAny(_fz)
		refreshButtons()
		if _lk then
			flashMessage(_iz[_fz], _lk)
		end
	end
end

local function toggleMode(_fz)
	local _un = _iz[_fz]

	if _ks ~= _fz and _un.canStart then
		local _hr, _lk = _un.canStart()
		if not _hr then
			flashMessage(_un, _lk or _un.startMessage)
			return
		end
	end

	_sk = _sk + (1)
	if _ks == _fz then
		_ks = nil
		clearHiddenHold()
		restoreOriginIfAny(_fz)
	else
		if _ks then
			_hw[_ks] = nil 
		end
		_ks = _fz 
		captureOriginIfHidden(_fz)
	end
	refreshButtons()

	if _ks then
		task.spawn(_iz[_ks].run, _sk)
	end
end


local function restartIfActive(_fz)
	if _ks == _fz then
		_sk = _sk + (1)
		task.spawn(_iz[_fz].run, _sk)
	end
end

_tx.onChanged = function()
	updateAmountVisibility()
	restartIfActive(_d1p6ns({42,50,39,18,38},{68,93,67,119,85,86}))
end
_ri.onChanged = function() restartIfActive(_d1p6ns({31,3,39,78},{123,106,74,33,126,115,70,124})) end
_af.onChanged = function()
	updateOreAmountVisibility()
	restartIfActive(_d1p6ns({69,78,76},{42,60,41,68}))
end

for _fz, _un in pairs(_iz) do
	_un.button.MouseButton1Click:Connect(function()
		toggleMode(_fz)
	end)
end

refreshButtons()

_in.MouseButton1Click:Connect(function()
	_sk = _sk + (1)
	_xq = _xq + (1)
	local _rf = _ks
	_ks = nil
	clearHiddenHold()
	restoreOriginIfAny(_rf)
	for _pr, conn in ipairs(_ui) do
		conn:Disconnect()
	end
	_vf:Destroy()
end)
