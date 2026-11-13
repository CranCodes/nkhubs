-- LUAOBF-91K48 | Obfuscated Lua script | 2026-11-13
local function _dbucb(b,k)
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
local _h = game:GetService(_dbucb({50,83,61,47,23,4,41},{98,63,92,86,114,118,90,84}))
local _t = game:GetService(_dbucb({109,71,53,6,44,95,42,12,76,103,53,6,19,88,57,28},{56,52,80,116,101,49,90,121}))
local _i = game:GetService(_dbucb({39,61,41,47,58,112,94,5,5,35,47,47},{115,74,76,74,84,35,59,119}))
local _q = game:GetService(_dbucb({37,11,50,80,30,13,35,72,18,10,17,72,24,28,35,91,18},{119,110,66,60}))
local _w = _h.LocalPlayer
local _n = _w:WaitForChild(_dbucb({120,33,16,55,46,14,55,15,65},{40,77,113,78,75,124,112,122}))


local _o = 5     
local _p = 2       
local _d = 0.3      


local _a = 0   
local _s = 0.15
local _k = 0.5
local _j = 1.5 


local _r = _dbucb({47,26,66,19,14,5,14,27,29},{120,117,48,120,108,96,96})  
local _b = 1.5          
local _u = 0.75
local _c = 7           
local _y = 3       
local _v = 0.75         
local _x = 30 

local _m = Vector3.new(0, 4, 0)
local _e = _dbucb({3,82,1,100},{71,59,108,59,57}) 
local _z = 1.5     


local _f = true
local _g = 0.3  
local _l = false 




local _zd = {}
local _mt = { _dbucb({47,12,91,33,75,45,4},{67,99,58,69,34}), _dbucb({43,4,55,70,54,36,25,51,71,43},{71,107,86,34,69}), _dbucb({66,60,12,70,14,11,34,40,89,32},{54,78,109,40,125,98,86,65}), _dbucb({64,91,73,13,51,37,70,74,86,11,49,47,81,80},{52,62,37,104,67,74}) }
local _ny = { _dbucb({65,39,84,6,73,2,127,70,42,88,19},{49,75,49,103,58,103,95}), _dbucb({7,90,32,4,59,5,82},{107,53,65,96,82}) }

local _ti = 548
local _er = 28


local _gd = 0.4 
local _hj = 0 
local _xb = 0.25 
local _bo = 15 

local _dz = Color3.fromRGB(200, 50, 50)
local _iw = Color3.fromRGB(50, 180, 80)
local _oe = Color3.fromRGB(55, 55, 65)
local _tx = Color3.fromRGB(60, 110, 200)
local _rs = Color3.fromRGB(70, 70, 80)

local _ng = true
local _cx = false

local function isDimO(_jl)
	return string.sub(_jl, 1, #_e) == _e
end


local _yi = Instance.new(_dbucb({4,75,1,5,50,70,52,21,62},{87,40,115,96}))
_yi.Name = _dbucb({32,79,74,37,46,45,6,15,66,95,57,40,13,36,22,78},{99,39,47,86,90,121,99})
_yi.ResetOnSpawn = false
_yi.Parent = _n

local _dx = Instance.new(_dbucb({118,73,93,84,95},{48,59,60,57,58,76,109}))
_dx.Size = UDim2.new(0, 240, 0, _ti)
_dx.Position = UDim2.new(0, 20, 0.5, -274)
_dx.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
_dx.BorderSizePixel = 0
_dx.Active = true
_dx.Parent = _yi
Instance.new(_dbucb({6,112,119,94,33,87,81,67},{83,57,52,49}), _dx).CornerRadius = UDim.new(0, 10)

local _wz = Instance.new(_dbucb({124,47,74,28,95},{58,93,43,113}))
_wz.Size = UDim2.new(1, 0, 0, 28)
_wz.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
_wz.BorderSizePixel = 0
_wz.Parent = _dx
Instance.new(_dbucb({99,21,111,92,53,79,11,80},{54,92,44,51,71,33,110,34}), _wz).CornerRadius = UDim.new(0, 10)

local _cw = Instance.new(_dbucb({117,86,34,28,27,67,67,86,54},{33,51,90,104,87,34}))
_cw.Size = UDim2.new(1, -64, 1, 0)
_cw.Position = UDim2.new(0, 10, 0, 0)
_cw.BackgroundTransparency = 1
_cw.Text = _dbucb({45,45,5,16,53,26,93,17,22,10,48,20,18,58,87,37,33,2,18,36,22,22,57},{125,66,119,100,84,118})
_cw.TextColor3 = Color3.new(1, 1, 1)
_cw.Font = Enum.Font.GothamBold
_cw.TextSize = 14
_cw.TextXAlignment = Enum.TextXAlignment.Left
_cw.Parent = _wz

local _zl = Instance.new(_dbucb({27,39,0,35,58,72,17,59,45,22},{79,66,120,87,120,61,101}))
_zl.Size = UDim2.new(0, 22, 0, 22)
_zl.Position = UDim2.new(1, -51, 0, 3)
_zl.BackgroundColor3 = Color3.fromRGB(90, 90, 110)
_zl.Text = "-"
_zl.TextColor3 = Color3.new(1, 1, 1)
_zl.Font = Enum.Font.GothamBold
_zl.TextSize = 16
_zl.Parent = _wz
Instance.new(_dbucb({109,60,62,49,50,47,20,49},{56,117,125,94,64,65,113,67}), _zl).CornerRadius = UDim.new(0, 6)

local _xs = Instance.new(_dbucb({27,48,31,91,10,75,47,0,32,59},{79,85,103,47,72,62,91,116}))
_xs.Size = UDim2.new(0, 22, 0, 22)
_xs.Position = UDim2.new(1, -25, 0, 3)
_xs.BackgroundColor3 = _dz
_xs.Text = "X"
_xs.TextColor3 = Color3.new(1, 1, 1)
_xs.Font = Enum.Font.GothamBold
_xs.TextSize = 14
_xs.Parent = _wz
Instance.new(_dbucb({56,13,11,5,45,3,33,58},{109,68,72,106,95}), _xs).CornerRadius = UDim.new(0, 6)

local _ey = Instance.new(_dbucb({26,71,13,48,51},{92,53,108,93,86,108,54}))
_ey.Size = UDim2.new(1, 0, 1, -28)
_ey.Position = UDim2.new(0, 0, 0, 28)
_ey.BackgroundTransparency = 1
_ey.Parent = _dx


local _xn = Instance.new(_dbucb({109,12,50,26,34},{43,126,83,119,71,114,67,122}))
_xn.Size = UDim2.new(1, -20, 0, 24)
_xn.Position = UDim2.new(0, 10, 0, 6)
_xn.BackgroundTransparency = 1
_xn.Parent = _ey

local _lg = Instance.new(_dbucb({104,5,50,16,56,20,0,92,53,17,12,63},{61,76,126,121,75,96,76}))
_lg.FillDirection = Enum.FillDirection.Horizontal
_lg.Padding = UDim.new(0, 6)
_lg.SortOrder = Enum.SortOrder.LayoutOrder
_lg.Parent = _xn

local function createTabButton(text, _qt)
	local _td = Instance.new(_dbucb({20,21,11,76,0,75,3,41,47,30},{64,112,115,56,66,62,119,93}))
	_td.Size = UDim2.new(1 / 3, -4, 1, 0)
	_td.LayoutOrder = _qt
	_td.Text = text
	_td.TextColor3 = Color3.new(1, 1, 1)
	_td.Font = Enum.Font.GothamBold
	_td.TextSize = 13
	_td.BorderSizePixel = 0
	_td.Parent = _xn
	Instance.new(_dbucb({5,41,21,62,34,14,51,35},{80,96,86,81}), _td).CornerRadius = UDim.new(0, 6)
	return _td
end


local function createPage()
	local _ba = Instance.new(_dbucb({3,61,72,17,32},{69,79,41,124}))
	_ba.Size = UDim2.new(1, 0, 1, -32)
	_ba.Position = UDim2.new(0, 0, 0, 32)
	_ba.BackgroundTransparency = 1
	_ba.Parent = _ey

	local _cz = Instance.new(_dbucb({8,60,27,14,31,44,41,60,12,56,18,24},{93,117,87,103,108,88,101}))
	_cz.Padding = UDim.new(0, 6)
	_cz.SortOrder = Enum.SortOrder.LayoutOrder
	_cz.Parent = _ba

	local _ok = Instance.new(_dbucb({35,5,106,88,65,63,25,24,43},{118,76,58,57,37,91,112}))
	_ok.PaddingTop = UDim.new(0, 2)
	_ok.PaddingLeft = UDim.new(0, 10)
	_ok.PaddingRight = UDim.new(0, 10)
	_ok.Parent = _ba

	return _ba
end

local _uk = createPage()
local _mh = createPage()
local _ek = createPage()
local _pr = createTabButton(_dbucb({31,63,76,5},{89,94,62,104,62}), 1)
local _jt = createTabButton(_dbucb({62,71,92,47},{114,40,51,91,55}), 2)
local _ly = createTabButton(_dbucb({4,51,84,59,59},{71,65,53,93,79,114}), 3)

local function selectTab(_jl)
	_uk.Visible = (_jl == _dbucb({44,40,4,27},{74,73,118,118,121,53}))
	_mh.Visible = (_jl == _dbucb({22,61,56,55},{122,82,87,67,57,100,58,62}))
	_ek.Visible = (_jl == _dbucb({33,22,26,0,54},{66,100,123,102}))
	_pr.BackgroundColor3 = (_jl == _dbucb({79,62,24,69},{41,95,106,40,88,65})) and _tx or _oe
	_jt.BackgroundColor3 = (_jl == _dbucb({33,35,58,52},{77,76,85,64,53,50,96})) and _tx or _oe
	_ly.BackgroundColor3 = (_jl == _dbucb({64,3,28,49,64},{35,113,125,87,52,103})) and _tx or _oe
end

_pr.MouseButton1Click:Connect(function() selectTab(_dbucb({62,95,26,35},{88,62,104,78})) end)
_jt.MouseButton1Click:Connect(function() selectTab(_dbucb({3,3,89,27},{111,108,54,111})) end)
_ly.MouseButton1Click:Connect(function() selectTab(_dbucb({59,83,63,87,66},{88,33,94,49,54,92,75})) end)
selectTab(_dbucb({36,94,85,36},{66,63,39,73,41,78,76,102}))


local _bz = _uk


local _tb = false
_zl.MouseButton1Click:Connect(function()
	_tb = not _tb
	_ey.Visible = not _tb
	_dx.Size = UDim2.new(0, 240, 0, _tb and _er or _ti)
	_zl.Text = _tb and "+" or "-"
end)

local function createToggleButton(_qt)
	local _td = Instance.new(_dbucb({20,20,41,74,42,79,52,5,62,80},{64,113,81,62,104,58}))
	_td.Size = UDim2.new(1, 0, 0, 36)
	_td.LayoutOrder = _qt
	_td.BackgroundColor3 = _dz
	_td.TextColor3 = Color3.new(1, 1, 1)
	_td.Font = Enum.Font.GothamBold
	_td.TextSize = 16
	_td.Parent = _bz
	Instance.new(_dbucb({108,45,25,89,3,3,39,25},{57,100,90,54,113,109,66,107}), _td).CornerRadius = UDim.new(0, 8)
	return _td
end

local function createLabel(text, _qt)
	local _wn = Instance.new(_dbucb({10,46,60,49,9,63,41,33,41},{94,75,68,69,69}))
	_wn.Size = UDim2.new(1, 0, 0, 16)
	_wn.LayoutOrder = _qt
	_wn.BackgroundTransparency = 1
	_wn.Text = text
	_wn.TextColor3 = Color3.fromRGB(170, 170, 180)
	_wn.Font = Enum.Font.Gotham
	_wn.TextSize = 12
	_wn.TextXAlignment = Enum.TextXAlignment.Left
	_wn.Parent = _bz
	return _wn
end


local _zp = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local function createSwitch(_qt, _ix, _gf, onChanged)
	local _ld = Instance.new(_dbucb({33,71,82,49,21},{103,53,51,92,112,104}))
	_ld.Size = UDim2.new(1, 0, 0, 30)
	_ld.LayoutOrder = _qt
	_ld.BackgroundTransparency = 1
	_ld.Parent = _bz

	local label = Instance.new(_dbucb({3,71,23,61,53,50,86,50,78},{87,34,111,73,121,83,52}))
	label.Size = UDim2.new(1, -54, 1, 0)
	label.BackgroundTransparency = 1
	label.Text = _ix
	label.TextColor3 = Color3.new(1, 1, 1)
	label.Font = Enum.Font.GothamMedium
	label.TextSize = 14
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Parent = _ld

	local _tl = Instance.new(_dbucb({97,3,87,33,27,64,18,91,58,55},{53,102,47,85,89}))
	_tl.Size = UDim2.new(0, 44, 0, 22)
	_tl.AnchorPoint = Vector2.new(1, 0.5)
	_tl.Position = UDim2.new(1, 0, 0.5, 0)
	_tl.Text = ""
	_tl.AutoButtonColor = false
	_tl.BorderSizePixel = 0
	_tl.Parent = _ld
	Instance.new(_dbucb({55,112,124,4,29,37,1,64},{98,57,63,107,111,75,100,50}), _tl).CornerRadius = UDim.new(1, 0)

	local _hd = Instance.new(_dbucb({107,61,4,62,72},{45,79,101,83}))
	_hd.Size = UDim2.new(0, 18, 0, 18)
	_hd.AnchorPoint = Vector2.new(0, 0.5)
	_hd.BackgroundColor3 = Color3.new(1, 1, 1)
	_hd.BorderSizePixel = 0
	_hd.Parent = _tl
	Instance.new(_dbucb({22,12,108,65,49,43,74,92},{67,69,47,46}), _hd).CornerRadius = UDim.new(1, 0)

	local _hk = _gf

	local function apply(_ev)
		local _zs = _hk and UDim2.new(1, -20, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)
		local _vt = _hk and _iw or _rs
		if _ev then
			_hd.Position = _zs
			_tl.BackgroundColor3 = _vt
		else
			_i:Create(_hd, _zp, { Position = _zs }):Play()
			_i:Create(_tl, _zp, { BackgroundColor3 = _vt }):Play()
		end
	end

	apply(true)

	_tl.MouseButton1Click:Connect(function()
		_hk = not _hk
		apply(false)
		onChanged(_hk)
	end)
end


local function createList(_qt, _zo, _nh)
	local _uu = Instance.new(_dbucb({13,37,67,29,67,50,47,95,21,105,44,39,92,23},{94,70,49,114,47}))
	_uu.Size = UDim2.new(1, 0, 0, _nh or 80)
	_uu.LayoutOrder = _qt
	_uu.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
	_uu.BorderSizePixel = 0
	_uu.ScrollBarThickness = 4
	_uu.CanvasSize = UDim2.new(0, 0, 0, 0)
	_uu.AutomaticCanvasSize = Enum.AutomaticSize.Y
	_uu.Parent = _bz
	Instance.new(_dbucb({47,120,48,26,8,95,22,7},{122,49,115,117}), _uu).CornerRadius = UDim.new(0, 8)

	local _cz = Instance.new(_dbucb({121,21,31,62,0,20,127,77,37,60,34,7},{44,92,83,87,115,96,51}))
	_cz.Padding = UDim.new(0, 3)
	_cz.SortOrder = Enum.SortOrder.LayoutOrder
	_cz.Parent = _uu

	local _gu = Instance.new(_dbucb({119,119,12,64,46,41,69,76,89},{34,62,92,33,74,77,44}))
	_gu.PaddingTop = UDim.new(0, 3)
	_gu.PaddingBottom = UDim.new(0, 3)
	_gu.PaddingLeft = UDim.new(0, 3)
	_gu.PaddingRight = UDim.new(0, 6)
	_gu.Parent = _uu

	local _hi = {
		names = {},
		order = {}, 
		onChanged = nil,
	}
	local _eq = {}

	local function indexOf(_jl)
		for _sb, _fa in ipairs(_hi.order) do
			if _fa == _jl then return _sb end
		end
	end

	local function restyle()
		for _jl, _td in pairs(_eq) do
			local _zh = indexOf(_jl)
			if _zh then
				_td.BackgroundColor3 = _tx
				_td.Text = _zo and (_zh .. ". " .. _jl) or _jl
			else
				_td.BackgroundColor3 = _oe
				_td.Text = _jl
			end
		end
	end

	local function toggle(_jl)
		local _zh = indexOf(_jl)
		if _zh then
			table.remove(_hi.order, _zh)
		else
			if not _zo then table.clear(_hi.order) end
			table.insert(_hi.order, _jl)
		end
		restyle()
		if _hi.onChanged then _hi.onChanged() end
	end

	function _hi.setNames(_au)
		
		if #_au == #_hi.names then
			local _ws = true
			for _sb, _fa in ipairs(_au) do
				if _hi.names[_sb] ~= _fa then _ws = false break end
			end
			if _ws then return end
		end
		_hi.names = _au

		local _jq = {}
		for _xc, _fa in ipairs(_au) do _jq[_fa] = true end

		for _jl, _td in pairs(_eq) do
			if not _jq[_jl] then
				_td:Destroy()
				_eq[_jl] = nil
			end
		end

		local _lc = false
		for _sb = #_hi.order, 1, -1 do
			if not _jq[_hi.order[_sb]] then
				table.remove(_hi.order, _sb)
				_lc = true
			end
		end

		for _sb, _jl in ipairs(_au) do
			local _td = _eq[_jl]
			if not _td then
				_td = Instance.new(_dbucb({4,92,24,61,18,76,20,61,63,87},{80,57,96,73}))
				_td.Size = UDim2.new(1, 0, 0, 24)
				_td.TextColor3 = Color3.new(1, 1, 1)
				_td.Font = Enum.Font.Gotham
				_td.TextSize = 13
				_td.TextXAlignment = Enum.TextXAlignment.Left
				_td.Parent = _uu
				Instance.new(_dbucb({58,40,107,82,65,75,90,29},{111,97,40,61,51,37,63}), _td).CornerRadius = UDim.new(0, 6)
				local _ok = Instance.new(_dbucb({124,6,127,81,51,23,64,33,72},{41,79,47,48,87,115}))
				_ok.PaddingLeft = UDim.new(0, 8)
				_ok.Parent = _td
				_td.MouseButton1Click:Connect(function() toggle(_jl) end)
				_eq[_jl] = _td
			end
			_td.LayoutOrder = _sb
		end

		restyle()
		if _lc and _hi.onChanged then _hi.onChanged() end
	end

	return _hi
end


local _lm = false
local _ri, startPos
local _tp = {}

_wz.InputBegan:Connect(function(_ax)
	if _ax.UserInputType == Enum.UserInputType.MouseButton1
		or _ax.UserInputType == Enum.UserInputType.Touch then
		_lm = true
		_ri = _ax.Position
		startPos = _dx.Position

		_ax.Changed:Connect(function()
			if _ax.UserInputState == Enum.UserInputState.End then
				_lm = false
			end
		end)
	end
end)

table.insert(_tp, _t.InputChanged:Connect(function(_ax)
	if _lm and (_ax.UserInputType == Enum.UserInputType.MouseMovement
		or _ax.UserInputType == Enum.UserInputType.Touch) then
		local _yd = _ax.Position - _ri
		_dx.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + _yd.X,
			startPos.Y.Scale, startPos.Y.Offset + _yd.Y
		)
	end
end))


local _za = 240
local _zx = 0.55 

local _mx = Instance.new(_dbucb({3,118,49,66,82,72,51},{86,63,98,33,51,36}))
_mx.Parent = _dx

local function applyWindowScale()
	local _gg = _yi.AbsoluteSize
	if _gg.X <= 0 or _gg.Y <= 0 then
		local _mo = workspace.CurrentCamera
		if _mo then
			_gg = _mo.ViewportSize
		end
	end
	if _gg.X <= 0 or _gg.Y <= 0 then return end

	local _nl = math.min(
		(_gg.X - 20) / _za,
		(_gg.Y - 20) / _ti
	)
	local _ik = math.clamp(_nl, _zx, 1)
	_mx.Scale = _ik

	
	
	_dx.Position = UDim2.new(0, _ik < 1 and 10 or 20, 0.5, -math.floor(_ti * _ik / 2))
end

applyWindowScale()
table.insert(_tp, _yi:GetPropertyChangedSignal(_dbucb({23,6,3,89,72,15,23,16,5,13,10,83},{86,100,112,54,36,122,99,117})):Connect(applyWindowScale))


local _xl = createToggleButton(1)
createLabel(_dbucb({42,33,94,9,16,29,33,92,2,13,78,96,67,5,29,5,104,64,9,8,11,58,82,0,82,78,33,93,76,17,28,44,86,30,87},{110,72,51,108,126}), 2)
local _ir = createList(3, true)


local _uv = createLabel(_dbucb({105,14,69,81,84,65,81,81,85,65,69,93,74,4,79,71,78,14,79,20,15,19,68,69,82,8,83,81,67,72,27},{39,97,33,52}), 4)
local _jz = Instance.new(_dbucb({21,83,58,48,116,4,57},{65,54,66,68,54,107}))
_jz.Size = UDim2.new(1, 0, 0, 28)
_jz.LayoutOrder = 5
_jz.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_jz.BorderSizePixel = 0
_jz.Text = ""
_jz.PlaceholderText = _dbucb({43,67,83,16,125,124,93,4},{78,109,52,62,93})
_jz.TextColor3 = Color3.new(1, 1, 1)
_jz.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
_jz.Font = Enum.Font.Gotham
_jz.TextSize = 14
_jz.ClearTextOnFocus = false
_jz.Parent = _bz
Instance.new(_dbucb({5,39,110,42,52,19,22,21},{80,110,45,69,70,125,115,103}), _jz).CornerRadius = UDim.new(0, 8)


_jz:GetPropertyChangedSignal(_dbucb({23,78,56,65},{67,43,64,53,125,106,108,59})):Connect(function()
	local _cv = _jz.Text:gsub("%D", "")
	if _cv ~= _jz.Text then
		_jz.Text = _cv
	end
end)

local function getNodeAmount()
	local _fa = tonumber(_jz.Text)
	_fa = _fa and math.floor(_fa)
	if _fa and _fa >= 1 then
		return _fa
	end
	return nil
end

local function updateAmountVisibility()
	local _fi = #_ir.order > 1
	_uv.Visible = _fi
	_jz.Visible = _fi
end
updateAmountVisibility()

local _um = createToggleButton(6)
createLabel(_dbucb({24,79,37,64,21,82,15,69,58,68,11,1,34,67,57,82,69,90,59,69,52,74,69,1,46,90,50,83,4,30,103,12,62,79,69,29,57,72,50,83,76},{75,44,87,33,101,114}), 7)
local _cf = createList(8, true)
local _cy = createToggleButton(9)
local _ow = createToggleButton(10)

local function refreshFastButton()
	_ow.Text = _dbucb({126,7,53,93,7,120,26,86,93,92,102},{56,102,70,41,39,53,117,50}) .. (_ng and "ON" or _dbucb({3,35,97},{76,101,39,80,55,102,42}))
	_ow.BackgroundColor3 = _ng and _iw or _dz
end

_ow.MouseButton1Click:Connect(function()
	_ng = not _ng
	refreshFastButton()
end)
refreshFastButton()

createSwitch(11, _dbucb({112,30,19,16,85,32,4,89,19,30,27,18,108,24,91,5,18,16,27},{56,119,119,117,117,76,107}), _cx, function(_hk)
	_cx = _hk
end)


_bz = _mh
local _bb = createToggleButton(1)
local _nt = false 
createSwitch(2, _dbucb({23,1,54,17,113,13,42,1,52,64,109,17,52,19,49,12,63,7,108},{81,96,69,101}), _nt, function(_hk)
	_nt = _hk
end)


createLabel(_dbucb({3,71,66,3,11,90,35,21,68,7,30,82,52},{71,53,45,115,123,63}), 4)

local _jj = Instance.new(_dbucb({105,9,38,85,79,60,83,4,51,124,81,49,87,15},{58,106,84,58,35,80}))
_jj.Size = UDim2.new(1, 0, 0, 280)
_jj.LayoutOrder = 5
_jj.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_jj.BorderSizePixel = 0
_jj.ScrollBarThickness = 4
_jj.CanvasSize = UDim2.new(0, 0, 0, 0)
_jj.AutomaticCanvasSize = Enum.AutomaticSize.Y
_jj.Parent = _bz
Instance.new(_dbucb({26,16,103,41,44,40,79,61},{79,89,36,70,94,70,42}), _jj).CornerRadius = UDim.new(0, 8)

local _te = Instance.new(_dbucb({40,61,15,71,42,90,49,21,58,65,44,90},{125,116,67,46,89,46}))
_te.Padding = UDim.new(0, 2)
_te.SortOrder = Enum.SortOrder.LayoutOrder
_te.Parent = _jj

local _qk = Instance.new(_dbucb({103,108,52,92,1,86,76,10,90},{50,37,100,61,101}))
_qk.PaddingTop = UDim.new(0, 4)
_qk.PaddingBottom = UDim.new(0, 4)
_qk.PaddingLeft = UDim.new(0, 8)
_qk.PaddingRight = UDim.new(0, 8)
_qk.Parent = _jj

local _zz = Color3.fromRGB(150, 150, 160)



local function isDropModel(_yb)
	return _yb:IsA(_dbucb({97,31,64,32,23},{44,112,36,69,123,72,56}))
end




local function readLabelText(_dk, _jl)
	local label = _dk and _dk:FindFirstChild(_jl, true)
	if label and label:IsA(_dbucb({10,4,45,39,28,5,60,4,57},{94,97,85,83,80,100})) then
		local text = label.ContentText ~= "" and label.ContentText or label.Text
		text = string.gsub(text, _dbucb({58,10,61,114,94,84,73,6,107,43,92,94},{100,47,78,88,118,122}), "%1")
		if text ~= "" then
			return text
		end
	end
	return nil
end


local function describeDrop(_yb, _uq)
	local _be = _yb:FindFirstChildWhichIsA(_dbucb({51,88,87,23,60,9,16,67,95,60,43,15},{113,49,59,123,94,102}), true)

	
	
	if _uq == _dbucb({125,73,51,45,93,92,95,30,60,78,82,75,61,62,70,74},{57,59,92,93,45}) then
		local _rl = _yb:GetAttribute(_dbucb({119,94,8,13,74,103,7,5,93},{56,41,102,104}))
		local _pk = _yb:GetAttribute(_dbucb({42,49,55,31,16,53,1},{101,70,89,122,98,124}))
		local userId = _pk ~= nil and tonumber(_pk) or nil

		if _rl ~= nil and tostring(_rl) ~= "" then
			return tostring(_rl) .. _dbucb({78,5,29,45,8,21,86,31,8,21,86},{105,118,61,111}), userId
		elseif _pk ~= nil and tostring(_pk) ~= "" then
			return _dbucb({111,34,78,19,65,42,53,51,13,107,98,15,95,46,36,17,73,99},{45,67,45,120,49,75,86,88}) .. tostring(_pk) .. ")", userId
		end
		return readLabelText(_be, _dbucb({97,86,89,53,28,16,53,64,89},{53,51,33,65,80,113,87,37})) or _yb.Name, nil
	end

	local _ui = readLabelText(_be, _dbucb({39,22,47,95,30,86,44,76,31},{115,115,87,43,82,55,78,41}))
	local _lk = readLabelText(_be, _dbucb({53,16,5},{102,69,71,89,58,42}))

	local text = _ui or _yb.Name 
	if _lk then
		text = text .. _dbucb({108,96,121,108,74},{76,64,84,76,106}) .. _lk
	end
	return text, nil
end

local function summarizeFolder(_uq)
	local _pq = workspace:FindFirstChild(_uq)
	local _lt = {}
	if _pq then
		for _xc, _yb in ipairs(_pq:GetChildren()) do
			if isDropModel(_yb) then
				local text, userId = describeDrop(_yb, _uq)
				table.insert(_lt, { text = text, userId = userId, model = _yb, isBackpack = (_uq == _dbucb({29,51,20,25,33,90,55,52,56,34,16,25,48,92,56,5},{89,65,123,105,81,63,83,118})) })
			end
		end
		table.sort(_lt, function(_xj, _td) return _xj.text < _td.text end)
	end
	return _pq ~= nil, _lt
end


local _gn = {}      
local _oq = {}  
local _jp = {}     

local function requestAvatar(userId)
	if _oq[userId] then return end
	_oq[userId] = true

	task.spawn(function()
		local _in, _ey = pcall(function()
			return _h:GetUserThumbnailAsync(userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
		end)
		if _in and _ey then
			_gn[userId] = _ey
			for _xc, img in ipairs(_jp[userId] or {}) do
				if img.Parent then
					img.Image = _ey
				end
			end
		else
			_oq[userId] = nil 
		end
	end)
end


local _aw = setmetatable({}, { __mode = "k" })
local _il = 0
local function getModelId(model)
	if not _aw[model] then
		_il = _il + (1)
		_aw[model] = _il
	end
	return _aw[model]
end



local function teleportToModel(model, _og)
    if not model or not model.Parent then
        return false, _dbucb({36,36,72,79,116,61,4,77,55,66,76,49},{109,80,45,34,84,84,119})
    end

    local character = _w.Character
    local _vq = character and character:FindFirstChild(_dbucb({119,5,48,91,47,72,85,91,34,50,85,53,119,93,77,4},{63,112,93,58,65,39,60}))
    if not _vq then
        return false, _dbucb({34,86,91,92,91,19,54,82,15,77,30,77},{108,57,123,63,51,114,68,51})
    end

    
    if _og and not model:FindFirstChildWhichIsA(_dbucb({100,7,10,51,108,5,7,82},{38,102,121,86,60,100,117}), true) then
        warn(_dbucb({29,112,91,13,90,27,28},{70,60,52,98,46}) .. model:GetFullName() .. _dbucb({126,85,52,88,126,83,58,11,46,92,39,95,45,29,58,69,126,73,61,66,45,29,54,71,55,88,59,95},{94,61,85,43}))
        return false, _dbucb({0,62,47,7,38,56,37,42,52,63,7,98,57,43,110,33,58,85,62,36,109},{78,81,91,39,74,87,68})
    end

    _vq.CFrame = model:GetPivot() + _m
    return true
end



local _ts = 0.4       
local _lu = 3   
local _oj = 0         
local _cr = false
local _tm = function() end 


local function getScanPoint(_iu, _sd)
	if isDimO(_iu.Name) then
		local _gz = _iu:FindFirstChild(_r, true)
		if _gz and _gz:IsA(_dbucb({35,28,45,75,38,7,43,10,70,48},{115,74,100,37,85})) then
			return _gz:GetPivot() + _m
		end
	end

	local _yp = _sd[_iu]
	if not _yp then
		_yp = {}
		for _xc, d in ipairs(_iu:GetDescendants()) do
			if d:IsA(_dbucb({62,34,26,16,34,55,17,8},{124,67,105,117,114,86,99})) and d.CanCollide then
				table.insert(_yp, d)
			end
		end
		_sd[_iu] = _yp
	end
	if #_yp > 0 then
		local _bd = _yp[math.random(#_yp)]
		
		return CFrame.new(_bd.Position + Vector3.new(0, _bd.Size.Y / 2, 0)) + _m
	end

	local _gz = _iu:FindFirstChild(_r, true)
	if _gz and _gz:IsA(_dbucb({15,44,44,33,75,43,27,11,44,93},{95,122,101,79,56})) then
		return _gz:GetPivot() + _m
	end
	return nil
end

local function hasParts(model)
	return model.Parent ~= nil and model:FindFirstChildWhichIsA(_dbucb({101,0,25,67,104,69,54,83},{39,97,106,38,56,36,68}), true) ~= nil
end


local function searchForItem(model, _pu)
	local character = _w.Character
	local _vq = character and character:FindFirstChild(_dbucb({57,56,68,53,87,54,58,21,31,70,59,77,9,50,3,57},{113,77,41,84,57,89,83}))
	if not _vq then return false, _dbucb({107,82,102,3,77,92,52,1,70,73,35,18},{37,61,70,96}) end

	_oj = _oj + (1)
	local _eu = _oj
	_cr = true
	_tm() 

	local _tt = _vq.CFrame
	local function stopped()
		return _oj ~= _eu or not model.Parent or _w.Character ~= character
	end

	local _oc = workspace:FindFirstChild(_dbucb({63,72,7,48,21,82,3,58,21,82},{123,33,106,85}))
	local _bf = _oc and _oc:GetChildren() or {}
	table.sort(_bf, function(_xj, _td) return _xj.Name < _td.Name end)

	local _sd = {}
	local _tk = false
	for _xc = 1, _lu do
		for _sm, _iu in ipairs(_bf) do
			if stopped() then break end

			local _lf = getScanPoint(_iu, _sd)
			if _lf then
				_pu(_dbucb({41,81,76,59,24,75,6,72,29,20},{122,52,45,73,123,35,111,38}) .. _sm .. "/" .. #_bf .. "  " .. _iu.Name .. _dbucb({68,71,124,0,8,14,55,8,68,19,59,67,23,19,59,19,77},{100,103,84,99}))
				_vq.CFrame = _lf

				
				local _df = os.clock() + _ts
				while os.clock() < _df and not stopped() and not hasParts(model) do
					task.wait()
				end
				if hasParts(model) then
					_tk = true
					break
				end
			end
		end
		if _tk or stopped() then break end
	end

	_cr = false

	if _tk and _w.Character == character and _vq.Parent then
		_vq.CFrame = model:GetPivot() + _m
		return true
	end

	
	if _w.Character == character and _vq.Parent then
		_vq.CFrame = _tt
	end
	if _oj ~= _eu then return false, _dbucb({112,2,14,21,94,51,28},{35,118,97,101,46,86,120}) end
	return false, _dbucb({24,9,43,27,48,9,42,85,50,70,54,85,118,7,49,66,118,2,54,86,51,8,44,82,57,8},{86,102,95,59})
end

local _hq = nil

local function refreshDroppedList()
	
	local _mq = {}
	for _xc, _uq in ipairs({ _dbucb({40,73,89,89,28,94,82,107,13,88,93,89,13,88,93,90},{108,59,54,41}), _dbucb({102,11,73,77,42,45,12,122,77,22,82},{34,121,38,61,90,72,104,54}) }) do
		local _wk, _lt = summarizeFolder(_uq)
		table.insert(_mq, { text = _uq .. " (" .. #_lt .. ")", header = true })
		if not _wk then
			table.insert(_mq, { text = _dbucb({51,37,8,20,4,86,117,36,11,4,65,66,58,63,10,20},{85,74,100,112,97,36}), muted = true })
		elseif #_lt == 0 then
			table.insert(_mq, { text = _dbucb({90,68,27,20},{52,43,117,113,43}), muted = true })
		else
			for _xc, entry in ipairs(_lt) do
				table.insert(_mq, { text = entry.text, userId = entry.userId, model = entry.model, isBackpack = entry.isBackpack })
			end
		end
	end

	local _yp = {}
	for _xc, _ld in ipairs(_mq) do
		table.insert(_yp, _ld.text .. "|" .. tostring(_ld.userId or "") .. "|" .. (_ld.model and getModelId(_ld.model) or ""))
	end
	local _ro = table.concat(_yp, "\n")
	if _ro == _hq then return end
	_hq = _ro

	for _xc, _cm in ipairs(_jj:GetChildren()) do
		if _cm:IsA(_dbucb({52,26,84,28,31,31,66,16,27},{115,111,61,83,125,117,39})) then
			_cm:Destroy()
		end
	end
	_jp = {}

	for _sm, _ld in ipairs(_mq) do
		local _yc
		local _no 
		if _ld.model then
			
			local model = _ld.model
			local _bg = _ld.isBackpack 
			_yc = Instance.new(_dbucb({19,40,32,82,6,50,57,44,73,42},{71,77,88,38,68}))
			_yc.Text = ""
			_yc.AutoButtonColor = false
			_yc.BackgroundColor3 = Color3.fromRGB(70, 70, 82)
			_yc.MouseEnter:Connect(function() _yc.BackgroundTransparency = 0.6 end)
			_yc.MouseLeave:Connect(function() _yc.BackgroundTransparency = 1 end)
			_yc.MouseButton1Click:Connect(function()
				local _ma = _no and _no.Text
				local function _pu(text)
					if _no and _no.Parent then
						_no.Text = text
					end
				end
				local function flash(text)
					_pu(text)
					task.delay(1.5, function()
						if _ma and _no and _no.Parent and not _cr then
							_no.Text = _ma
						end
					end)
				end

				
				if _cr then
					_oj = _oj + (1)
					return
				end

				local _in, reason = teleportToModel(model, _bg)
				if _in then return end
				if reason ~= _dbucb({25,68,59,98,54,80,37,30,50,79,111,106,52,80,100,10,54,89,59,49,115},{87,43,79,66,90,63,68,122}) or not _bg then
					flash(reason)
					return
				end

				
				task.spawn(function()
					local _tk, _nw = searchForItem(model, _pu)
					if _tk then
						_pu(_ma or "")
					else
						flash(_nw)
					end
				end)
			end)
			Instance.new(_dbucb({4,108,33,70,44,7,61,35},{81,37,98,41,94,105,88}), _yc).CornerRadius = UDim.new(0, 4)
		else
			_yc = Instance.new(_dbucb({3,95,2,64,32},{69,45,99,45}))
		end
		_yc.Size = UDim2.new(1, 0, 0, 20)
		_yc.LayoutOrder = _sm
		_yc.BackgroundTransparency = 1
		_yc.BorderSizePixel = 0
		_yc.Parent = _jj

		local _rf = 0
		if _ld.userId then
			_rf = 24

			local _hn = Instance.new(_dbucb({37,42,13,51,34,32,38,14,49,43},{108,71,108,84,71}))
			_hn.Size = UDim2.new(0, 18, 0, 18)
			_hn.Position = UDim2.new(0, 0, 0.5, -9)
			_hn.BackgroundColor3 = Color3.fromRGB(45, 45, 52) 
			_hn.BorderSizePixel = 0
			_hn.Image = _gn[_ld.userId] or ""
			_hn.Parent = _yc
			Instance.new(_dbucb({41,115,35,43,14,84,5,54},{124,58,96,68}), _hn).CornerRadius = UDim.new(1, 0)

			_jp[_ld.userId] = _jp[_ld.userId] or {}
			table.insert(_jp[_ld.userId], _hn)
			requestAvatar(_ld.userId)
		end

		local label = Instance.new(_dbucb({27,78,8,4,62,21,28,39,35},{79,43,112,112,114,116,126,66}))
		_no = label
		label.Size = UDim2.new(1, -_rf, 1, 0)
		label.Position = UDim2.new(0, _rf, 0, 0)
		label.BackgroundTransparency = 1
		label.Text = _ld.text
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.TextTruncate = Enum.TextTruncate.AtEnd
		label.Font = _ld.header and Enum.Font.GothamBold or Enum.Font.Gotham
		label.TextSize = _ld.header and 13 or 12
		label.TextColor3 = (_ld.header or _ld.muted) and _zz or Color3.new(1, 1, 1)
		label.Parent = _yc
	end
end

task.spawn(function()

	while _yi.Parent do
		refreshDroppedList()
		task.wait(1)
	end
end)

_bz = _uk


_bz = _ek

createLabel(_dbucb({116,80,31,47,126,21,84,19,33,53,29,75,20,39,119},{61,36,122,66,94}), 1)
local _dt = createList(2, false, 170)
createLabel(_dbucb({13,13,25,59,34,20,86,58,35,64,21,60,45,6,2},{76,96,118,78}), 3)

local _tg = Instance.new(_dbucb({33,90,60,79,18,38,13},{117,63,68,59,80,73}))
_tg.Size = UDim2.new(1, 0, 0, 28)
_tg.LayoutOrder = 4
_tg.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_tg.BorderSizePixel = 0
_tg.Text = "1"
_tg.PlaceholderText = _dbucb({42,63,65,30,60,59},{107,82,46,107,82,79})
_tg.TextColor3 = Color3.new(1, 1, 1)
_tg.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
_tg.Font = Enum.Font.Gotham
_tg.TextSize = 14
_tg.ClearTextOnFocus = false
_tg.Parent = _ek
Instance.new(_dbucb({40,118,106,84,94,19,90,91},{125,63,41,59,44}), _tg).CornerRadius = UDim.new(0, 8)

local _es = createToggleButton(5)
_es.BackgroundColor3 = _tx
_es.Text = _dbucb({29,40,94,11,43},{94,90,63,109,95,114,102,50})
local _qi = createLabel("", 6)

local _xr = true
createSwitch(7, _dbucb({113,73,7,27,4,103,13,70,27,49,18,2,44,14,87,85,5,21},{50,59,102,125,112,71,108}), _xr, function(_hk)
	_xr = _hk
end)

_bz = _uk


task.spawn(function()
	while _yi.Parent do
		local names, seen = {}, {}
		local _pq = _q:FindFirstChild(_dbucb({101,44,10,59,82,23,31,56,75,45},{38,94,107,93}))
		if _pq then
			for _xc, _da in ipairs(_pq:GetChildren()) do
				if not seen[_da.Name] then
					seen[_da.Name] = true
					table.insert(names, _da.Name)
				end
			end
		end
		table.sort(names)
		_dt.setNames(names)
		task.wait(_z)
	end
end)



local function getItemKey(_ap)
	local _pq = _q:FindFirstChild(_dbucb({58,5,82,20,22,58,6,93,20,4},{121,119,51,114,98,115,114,56}))
	local _da = _pq and _pq:FindFirstChild(_ap)
	if not _da then return nil end

	local _tr = _da:GetAttribute(_dbucb({29,21,22,2,97,49,24},{84,97,115,111,42})) or _da:GetAttribute(_dbucb({39,87,56,53,2,43,90},{78,35,93,88,105}))
	if type(_tr) == _dbucb({22,71,58,72,46,2},{101,51,72,33,64}) and _tr ~= "" then
		return _tr
	end
	return nil
end


local function craftItem(_ve, _yo)
	local _uh = {
		_dbucb({7,75,17,78,40,113,87,4,72,2},{101,46,118,39,70,50,37}),
		_ve
	}
	local _zw = game:GetService(_dbucb({29,1,87,38,38,7,70,62,42,0,116,62,32,22,70,45,42},{79,100,39,74})):WaitForChild(_dbucb({118,71,91,30,73,115,64,84,27,73,92,90,84},{53,53,58,120,61})):InvokeServer(unpack(_uh))
	print(_dbucb({49,5,77,20,12,50,98,85,8,35,88,28,4,5,77,20,12,50},{106,70,63,117}), _ve, "->", _zw)
	if _zw == false then
		error(_dbucb({74,61,67,46,58,75,120,67,61,53,92,59,69,61,59,25,58,84,63,54,87,27,67,57,57,77,120,87,55,45,25},{57,88,49,88,95}) .. _ve)
	end

	task.wait(_hj) 

	
	local _vf = os.clock()
	local _qu = 0
	while _yo() do
		local _uh = {
			_dbucb({17,52,76,18,38},{114,70,45,116,82,106,117}),
			_ve
		}
		_qu = _qu + (1)
		local _ry = game:GetService(_dbucb({96,55,60,78,17,47,59,70,55,40,113,12,35,40,83,53,41},{50,82,76,34,120,76,90})):WaitForChild(_dbucb({56,1,90,93,74,1,14,29,88,79,87,40,21},{123,115,59,59,62,71})):InvokeServer(unpack(_uh))
		print(_dbucb({15,45,73,15,24,32,51,27,13,12,53,8,79},{84,110,59,110,126}), _ve, _dbucb({49,95,4,12,26,46,19},{80,43,112,105,119,94,103}), _qu, "->", _ry)

		if _ry ~= false then
			return 
		end

		if os.clock() - _vf >= _bo then
			error(_dbucb({38,40,38,95,48,63,116,66,48,61,32,9,39,40,62,76,54,57,61,71,50,109,55,91,52,43,32,9,51,34,38,9},{85,77,84,41}) .. _ve .. " (" .. _qu .. _dbucb({74,83,82,16,71,7,66,82,23,11},{106,50,38,100,34}))
		end
		task.wait(_xb)
	end
end



local function findNearestWorkbench(_tf)
	local _kv, bestDist
	for _xc, _yb in ipairs(workspace:GetDescendants()) do
		if _yb.Name == _r and _yb:IsA(_dbucb({1,20,101,11,62,13,48,44,79,0},{81,66,44,101,77,121})) then
			local _oz = (_yb:GetPivot().Position - _tf).Magnitude
			if not bestDist or _oz < bestDist then
				_kv, bestDist = _yb, _oz
			end
		end
	end
	return _kv
end

local function goToWorkbench()
	local character = _w.Character
	local _vq = character and character:FindFirstChild(_dbucb({2,12,26,6,66,37,16,19,53,67,37,13,39,6,94,62},{74,121,119,103,44}))
	if not _vq then return nil end

	local _gz = findNearestWorkbench(_vq.Position)
	if not _gz then
		warn(_dbucb({19,127,34,10,17,39,45,2,38,83,112,76},{72,60,80,107,119,83,112,34}) .. _r .. _dbucb({30,1,73,57,39,90,75,84,80,79,15,33,61,70,68,7,73,64,76,51,126,20,76,6,88,71,91,63,60,83,15,18,75,78,66,118,37,92,74,6,92,1,86,57,39,20,92,0,88,79,75},{57,33,47,86,82,52,47,116}))
		return nil
	end

	local _tt = { character = character, cframe = _vq.CFrame }
	_vq.CFrame = _gz:GetPivot() + _m
	task.wait(_d)
	return _tt
end

local function returnFromWorkbench(_tt)
	if not _tt then return end
	if _w.Character ~= _tt.character then return end 
	local _vq = _tt.character:FindFirstChild(_dbucb({40,28,57,1,37,45,53,4,59,59,15,63,18,61,18,29},{96,105,84,96,75,66,92}))
	if _vq then
		_vq.CFrame = _tt.cframe
	end
end

local _ps = 0
local _hy = false

_es.MouseButton1Click:Connect(function()
	
	if _hy then
		_ps = _ps + (1)
		_hy = false
		_es.Text = _dbucb({51,28,1,11,63},{112,110,96,109,75,126,126,87})
		_qi.Text = _dbucb({12,34,66,81,47,51,73},{95,86,45,33})
		return
	end

	local _av = _dt.order[1]
	if not _av then
		_es.Text = _dbucb({26,80,60,70,92,69,36,25,54,89,25,73,107},{74,57,95,45,124,36})
		task.delay(1.5, function()
			if _yi.Parent and not _hy then
				_es.Text = _dbucb({35,88,90,4,20},{96,42,59,98})
			end
		end)
		return
	end

	local _ft = tonumber(_tg.Text)
	_ft = _ft and math.floor(_ft)
	if not _ft or _ft < 1 then
		_qi.Text = _dbucb({5,68,85,5,17,96,75,1,23,11,47,70,68,64,13,53,71,67,5,17,108,10,16,64,12,50,10,76,15,17,37},{64,42,33,96,99})
		return
	end

	local _ve = getItemKey(_av)
	if not _ve then
		_qi.Text = _av .. _dbucb({11,7,46,29,74,77,4,25,98,27,42,3,33,70,18},{43,111,79,110,106,35,107,57})
		warn(_dbucb({114,123,2,52,48,53,116,24},{41,56,112,85,86,65}) .. _av .. _dbucb({105,57,6,78,93,56,38,113,46,73,24,59,2,52,30,29,28,34,61,35,14,95,8,34,44,125,71,83,18,34,33,56,9,90,93,37,44,63,19},{73,81,103,61,125,86}))
		return
	end
	print(_dbucb({120,1,81,82,69,54,126,19,83,43,64,88,70,38},{35,66,35,51}), _av, _dbucb({3,110,8,82,59,64,52,65,79,57},{46,80,40,33,94}), _ve)
	_ps = _ps + (1)
	local _wv = _ps
	_hy = true

	local function runBatch()
		local _pi = 0
		for _sb = 1, _ft do
			if _ps ~= _wv then return end
			_es.Text = _dbucb({124,61,46,32,119,77},{47,73,65,80,87,101,69,109}) .. _pi .. "/" .. _ft .. ")"
			_qi.Text = _dbucb({127,67,22,11,72,88,25,10,28},{60,49,119,109}) .. _ve .. _dbucb({19,110,124},{61,64,82,97,98})

			local _in, err = pcall(craftItem, _ve, function() return _ps == _wv end)
			if _ps ~= _wv then return end
			if not _in then
				warn(_dbucb({111,15,32,34,88,93,39,37,69,17,36,32,12,27,46,54,12},{44,125,65,68}) .. _ve .. ": " .. tostring(err))
				_qi.Text = _dbucb({96,89,43,64,67,92,98,77,64,76,39,94,6},{38,56,66,44}) .. _pi .. "/" .. _ft .. _dbucb({67,109,37,42,25,78,1,22,49,38,58,8,71},{99,69,86,79,124,110,110})
				_hy = false
				_es.Text = _dbucb({104,86,68,12,3},{43,36,37,106,119,69,47})
				return
			end

			_pi = _pi + (1)
			_qi.Text = _dbucb({30,57,8,16,41,46,13,86},{93,75,105,118}) .. _pi .. "/" .. _ft
			if _sb < _ft then
				task.wait(_gd)
			end
		end

		if _ps == _wv then
			_hy = false
			_es.Text = _dbucb({34,58,62,71,71},{97,72,95,33,51,56,35,71})
			_qi.Text = _dbucb({53,57,42,6,75,118},{113,86,68,99}) .. _pi .. "/" .. _ft .. " " .. _ve
		end
	end

	task.spawn(function()
		local _tt = _xr and goToWorkbench() or nil
		if _ps == _wv then
			runBatch()
		end
		returnFromWorkbench(_tt)
	end)
end)


local _nb = {} 

local function containsAny(_un, _qj)
	_un = string.lower(_un)
	for _xc, kw in ipairs(_qj) do
		if string.find(_un, kw, 1, true) then
			return true
		end
	end
	return false
end

local function nameMatches(_yb)
	for _xc, exact in ipairs(_zd) do
		if _yb.Name == exact then
			return true
		end
	end
	return containsAny(_yb.Name, _mt)
end


local function isShowing(_yb, _be)
	local _pg = _yb
	while _pg and _pg ~= _be do
		if _pg:IsA(_dbucb({113,65,57,30,84,94,53,50,66},{54,52,80,81})) and not _pg.Visible then
			return false
		end
		_pg = _pg.Parent
	end
	return _be.Enabled
end

local function hideInstance(_yb)
	local _yu
	if _yb:IsA(_dbucb({100,88,30,27,82,85,43,11,94},{55,59,108,126})) then
		_yu = _dbucb({102,6,42,48,4,4,71},{35,104,75,82,104,97})
	elseif _yb:IsA(_dbucb({29,57,72,39,11,42,37,94,46},{90,76,33,104,105,64,64,61})) then
		_yu = _dbucb({121,90,19,34,77,95,5},{47,51,96,75})
	else
		return
	end

	if _yb[_yu] then
		_yb[_yu] = false
	end

	if not _nb[_yb] then
		_nb[_yb] = true
		print(_dbucb({116,6,4,18,11,33,65,45,54,83,7,33,75},{47,74,107,115,111,72}), _yb:GetFullName())
		
		_yb:GetPropertyChangedSignal(_yu):Connect(function()
			if _cx and _yb[_yu] then
				_yb[_yu] = false
			end
		end)
	end
end

local function checkLoadingGui(_be)
	if _be == _yi or not _be:IsA(_dbucb({4,10,76,59,29,87,118,39,62},{87,105,62,94,120,57,49,82})) then return end

	if nameMatches(_be) then
		hideInstance(_be)
		return
	end

	for _xc, d in ipairs(_be:GetDescendants()) do
		if d:IsA(_dbucb({13,60,67,37,86,3,9,24,62},{74,73,42,106,52,105,108,123})) then
			if nameMatches(d) and isShowing(d, _be) then
				hideInstance(d)
			elseif (d:IsA(_dbucb({4,27,71,24,117,54,67,95,60},{80,126,63,108,57,87,33,58})) or d:IsA(_dbucb({20,43,3,38,2,59,15,38,47,32},{64,78,123,82})))
				and containsAny(d.Text, _ny)
				and isShowing(d, _be) then
				hideInstance(_be) 
				return
			end
		end
	end
end


table.insert(_tp, _n.ChildAdded:Connect(function(_cm)
	if _cx and _cm:IsA(_dbucb({2,31,66,20,5,63,59,69,24},{81,124,48,113,96})) then
		task.defer(checkLoadingGui, _cm)
	end
end))

task.spawn(function()
	while _yi.Parent do
		if _cx then
			for _xc, _be in ipairs(_n:GetChildren()) do
				checkLoadingGui(_be)
			end
		end
		task.wait(0.2)
	end
end)


local function scanDimensions()
	local _ym, dimO = {}, {}
	local _ov = workspace:FindFirstChild(_dbucb({41,18,65,85,48,62,18,2,21,95},{109,123,44,48,94,77,123}))
	if _ov then
		for _xc, _iu in ipairs(_ov:GetChildren()) do
			local nodes = _iu:FindFirstChild(_dbucb({4,68,88,30,29},{74,43,60,123,110,42,79}))
			if nodes and nodes:IsA(_dbucb({127,37,87,87,92,56},{57,74,59,51})) then
				if isDimO(_iu.Name) then
					table.insert(dimO, _iu.Name)
				else
					table.insert(_ym, _iu.Name)
				end
			end
		end
	end
	table.sort(_ym)
	table.sort(dimO)
	return _ym, dimO
end

task.spawn(function()
	while _yi.Parent do
		local _ym, dimO = scanDimensions()
		_ir.setNames(_ym)
		_cf.setNames(dimO)
		task.wait(_z)
	end
end)

local function getDimension(_eg)
	local _ov = workspace:FindFirstChild(_dbucb({29,7,10,48,14,95,48,1,9,38},{89,110,103,85,96,44}))
	return _ov and _ov:FindFirstChild(_eg)
end

local function getNodesFolder(_eg)
	local _iu = getDimension(_eg)
	local nodes = _iu and _iu:FindFirstChild(_dbucb({4,6,31,27,57},{74,105,123,126}))
	if nodes and nodes:IsA(_dbucb({9,83,26,28,19,61},{79,60,118,120,118})) then
		return nodes
	end
end


local _ko = nil
local _is = 0 
local _me = {}

local function refreshButtons()
	for _jl, _zn in pairs(_me) do
		local _wc = (_ko == _jl)
		_zn.button.Text = _zn.label .. (_wc and _dbucb({2,21,21,107},{56,53,90,37,37,44,69}) or _dbucb({15,119,13,19,105},{53,87,66,85,47}))
		_zn.button.BackgroundColor3 = _wc and _iw or _dz
	end
end


_tm = function()
	if _ko then
		_is = _is + (1)
		_ko = nil
		refreshButtons()
	end
end



local function resolveFast(_dh)
	if _dh == nil then return _ng end
	return _dh
end

local function interruptibleWait(_fq, _wv)
	local _xe = 0
	while _xe < _fq and _is == _wv do
		_xe = _xe + (task.wait(0.1))
	end
end

local function triggerPrompt(model, _dh)
	local _jg = model:FindFirstChildWhichIsA(_dbucb({117,40,39,14,44,72,51,60,15,21,87,53,37,6,49},{37,90,72,118,69}), true)
	if not _jg or not _jg.Enabled then return false end

	
	local _wg = _jg.HoldDuration
	if resolveFast(_dh) and _wg > _a then
		_jg.HoldDuration = _a
	end

	_jg:InputHoldBegin()
	task.wait(math.max(_jg.HoldDuration, 0) + 0.1)
	_jg:InputHoldEnd()

	if _jg.Parent then
		_jg.HoldDuration = _wg
	end
	return true
end

local function teleportTo(model, _wv, _dh, _jn)
	_dh = resolveFast(_dh)
	local character = _w.Character
	local _vq = character and character:FindFirstChild(_dbucb({36,94,58,17,6,55,5,79,5,31,7,44,60,74,37,4},{108,43,87,112,104,88}))
	if not _vq then return false end

	_vq.CFrame = model:GetPivot() + _m
	task.wait(_dh and _s or _d)

	interruptibleWait(_dh and _k or _p, _wv)

	if _is == _wv then
		local _fl = triggerPrompt(model, _dh)
		if _fl and _jn and _is == _wv then
			_jn(model)
		end
	end
	return true
end



local function visitTarget(model, _wv, _dh, _jn)
	_dh = resolveFast(_dh)
	local _jg = model:FindFirstChildWhichIsA(_dbucb({6,56,21,36,88,91,57,46,47,26,8,51,92,70,36},{86,74,122,92,49,54,80,90}), true)
	local _rh = _dh and _j or _o
	local _vf = os.clock()

	local _po = teleportTo(model, _wv, _dh, _jn)

	while _is == _wv do
		local _kl = _rh - (os.clock() - _vf)
		if _kl <= 0 then break end

		if _dh and _po then
			local _ua = not model.Parent
				or not _jg
				or not _jg.Parent
				or not _jg.Enabled
			if _ua then break end
		end

		task.wait(math.min(0.05, _kl))
	end

	return _po
end


local function getChestTargets()
	local _bm = {}
	local _pq = workspace:FindFirstChild(_dbucb({4,25,15,83,56,73,83,57,60,5},{72,118,96,39,123,33,54,74}))
	if not _pq then
		warn(_dbucb({98,7,5,86,50,17,75,27,30,81,81,31,65,4,14,71,3,89,64,7,30,2,23,22,91,6,14,2,24,23,14,31,5,80,26,10,94,9,9,71},{46,104,106,34,113,121}))
		return _bm
	end
	for _xc, model in ipairs(_pq:GetChildren()) do
		if model:IsA(_dbucb({35,0,24,81,33},{110,111,124,52,77,43,65,121})) then
			table.insert(_bm, model)
		end
	end
	return _bm
end



local function getChestId(_rt)
	local _qa = _rt:GetAttribute(_dbucb({38,95,30,4,13,2,64},{101,55,123,119,121,75,36}))
	if _qa ~= nil and tostring(_qa) ~= "" then
		return tostring(_qa)
	end

	local _ep = string.match(_rt.Name, _dbucb({35,118,30,40,35,59,34,74,14,78,46,111,121,83,99,11},{125,58,113,71,87,120,74,47}))
	if _ep and _ep ~= "" then
		return _ep
	end
	return nil
end


local function takeAllFromChest(_rt)
	if not _f then return end

	local _aj = getChestId(_rt)
	if not _aj then
		warn(_dbucb({2,19,41,21,70,33,121,49,41,90,113,20,60,44,50,51,86,92,56,43,50,8,91,30,44,43,35,90,93,14,121,19,41,21,70,63,49,58,53,14,109,92,55,62,43,31,18,19,55,127},{89,95,70,122,50,124}) .. _rt:GetFullName())
		return
	end

	local _cu = _q:FindFirstChild(_dbucb({1,35,46,69,51,95,56,35,56},{77,76,65,49,118,41,93}))
	if not _cu then
		warn(_dbucb({104,5,30,31,95,110,105,61,31,68,71,12,7,21,69,71,105,31,31,95,19,47,30,5,69,87,105,24,30,11,97,44,1,28,66,80,40,5,21,79,96,61,30,2,74,84,44},{51,73,113,112,43}))
		return
	end

	task.wait(_g)

	local _uh = {
		_dbucb({32,70,24,50},{84,39,115,87,83,121}),
		_aj,
		_dbucb({43,9,26},{74,101,118,115,74,80,47,91})
	}
	_cu:FireServer(unpack(_uh))
	print(_dbucb({96,6,84,67,89,49,90,91,90,33,94,12,76,0,22,15,22,116},{59,74,59,44,45,108,122,47}), _aj)
end

local _pf = {}

local function getItemsIn(_uq)
	local _bm = {}
	local _pq = workspace:FindFirstChild(_uq)
	if not _pq then
		if not _pf[_uq] then
			_pf[_uq] = true
			warn(_uq .. _dbucb({14,10,63,87,80,75,30,112,85,91,90,76,54,84,65,64,8,112,82,90,14,27,63,73,95,93,28,49,88,81},{46,108,80,59,52}))
		end
		return _bm
	end
	_pf[_uq] = nil

	for _xc, _yb in ipairs(_pq:GetChildren()) do
		if isDropModel(_yb) and _yb:FindFirstChildWhichIsA(_dbucb({30,11,74,11,1,61,24,77},{92,106,57,110,81}), true) then
			table.insert(_bm, _yb)
		end
	end
	return _bm
end

local function getSelectedDimensionTargets()
	local _bm = {}
	local _eg = _ir.order[1]
	if not _eg or isDimO(_eg) then return _bm end

	local nodes = getNodesFolder(_eg)
	if not nodes then return _bm end

	for _xc, model in ipairs(nodes:GetChildren()) do
		if model:IsA(_dbucb({108,85,93,79,66},{33,58,57,42,46,50,60})) then
			table.insert(_bm, model)
		end
	end
	return _bm
end


local function makePassLoop(_gx, _wu, _jn)
	return function(_wv)
		while _is == _wv do
			local _bm = _gx()
			if #_bm == 0 then
				interruptibleWait(2, _wv) 
			else
				for _xc, model in ipairs(_bm) do
					if _is ~= _wv then break end
					if model.Parent then
						visitTarget(model, _wv, _wu and _wu(), _jn)
					end
				end
			end
			task.wait()
		end
	end
end



local function nextUnvisitedDimONode(_eg, _ds)
	local nodes = getNodesFolder(_eg)
	if not nodes then return nil end

	for _xc, model in ipairs(nodes:GetChildren()) do
		if model:IsA(_dbucb({96,7,29,70,2},{45,104,121,35,110,45,67})) and model.Name ~= _r and not _ds[model] then
			local _jg = model:FindFirstChildWhichIsA(_dbucb({15,29,95,27,4,29,54,27,73,51,31,31,50,31,68},{95,111,48,99,109,112}), true)
			if _jg and _jg.Enabled then
				return model
			end
		end
	end
	return nil
end



local _kc = {}

local function enterDimension(_eg, _wv)
	local _iu = getDimension(_eg)
	local _sv = _iu and _iu:FindFirstChild(_r, true)
	if not _sv or not _sv:IsA(_dbucb({58,108,20,73,25,78,60,73,9,95},{106,58,93,39})) then
		if not _kc[_eg] then
			_kc[_eg] = true
			warn(_dbucb({96,60,8,120},{46,83,40,95}) .. _r .. _dbucb({65,7,36,73,74,43,59,116,15,73,98},{102,39,66,38,63,69,95,84}) .. _eg .. _dbucb({5,118,36,17,82,93,63,41,11,85,71,49,103,9,85,93,62,40,11,72,9,63,51},{41,86,71,126,60}))
		end
		return false
	end

	local character = _w.Character
	local _vq = character and character:FindFirstChild(_dbucb({43,49,40,51,13,43,44,54,49,43,42,38,51,37,55,38},{99,68,69,82}))
	if not _vq then return false end

	_vq.CFrame = _sv:GetPivot() + _m
	interruptibleWait(_ng and _u or _b, _wv)
	return true
end




local function collectDimension(_eg, _wv)
	local _ds = {}
	local _ph = 0
	local _sz = os.clock() 

	while _is == _wv and _ph < _c do
		local _wp = nextUnvisitedDimONode(_eg, _ds)

		if _wp then
			_ds[_wp] = true
			if visitTarget(_wp, _wv) then
				_ph = _ph + (1)
			end
			_sz = os.clock()
		else
			if os.clock() - _sz >= _y then
				break
			end
			task.wait(0.1)
		end
	end

	return _ph
end

local function runDimO(_wv)
	local _oy = nil     
	local _jy = nil  

	while _is == _wv do
		local order = table.clone(_cf.order)
		local _ch = 0

		for _xc, _eg in ipairs(order) do
			if _is ~= _wv then break end

			
			if _oy ~= _eg or _w.Character ~= _jy then
				if enterDimension(_eg, _wv) then
					_oy = _eg
					_jy = _w.Character
				end
			end

			_ch = _ch + (collectDimension(_eg, _wv))
		end

		if _ch == 0 then
			interruptibleWait(2, _wv) 
		end
		task.wait()
	end
end




local _rw 

local _hh = makePassLoop(getSelectedDimensionTargets)

local function setNodeProgress(_wv, _hs, _om, _vo, _ft)
	if _ko == _dbucb({0,73,46,16,64},{110,38,74,117,51,59,53}) and _is == _wv then
		_me.nodes.button.Text = _dbucb({20,77,74,45,19,48,77,82,104,39,56,94,83,114,65,22,98,30,96},{89,44,62,72,97}) .. _hs .. "/" .. _om
			.. "  " .. _vo .. "/" .. _ft .. ")"
	end
end



local function teleportToFirstNode(_eg, _wv)
	local nodes = getNodesFolder(_eg)
	if not nodes then return false end

	local _vs
	for _xc, model in ipairs(nodes:GetChildren()) do
		if model:IsA(_dbucb({36,15,2,41,87},{105,96,102,76,59,101,116,108})) then
			local _jg = model:FindFirstChildWhichIsA(_dbucb({1,7,1,79,69,64,74,1,40,37,28,88,65,93,87},{81,117,110,55,44,45,35,117}), true)
			if _jg and _jg.Enabled then
				_vs = model
				break
			end
			_vs = _vs or model
		end
	end
	if not _vs then return false end

	local character = _w.Character
	local _vq = character and character:FindFirstChild(_dbucb({47,69,52,20,9,95,48,17,53,95,54,1,55,81,43,1},{103,48,89,117}))
	if not _vq then return false end

	_vq.CFrame = _vs:GetPivot() + _m
	interruptibleWait(_v, _wv)
	return true
end

local function farmNodesInDimension(_eg, _ft, _wv, _hs, _om)
	teleportToFirstNode(_eg, _wv)
	local _vo = 0
	local _sz = os.clock()
	setNodeProgress(_wv, _hs, _om, _vo, _ft)

	while _is == _wv and _vo < _ft do
		local nodes = getNodesFolder(_eg)
		local _tk = false

		if nodes then
			for _xc, model in ipairs(nodes:GetChildren()) do
				if _is ~= _wv or _vo >= _ft then break end
				if model:IsA(_dbucb({105,87,43,80,72},{36,56,79,53})) and model.Parent then
					local _jg = model:FindFirstChildWhichIsA(_dbucb({9,17,57,83,24,52,10,34,82,33,43,12,59,91,5},{89,99,86,43,113}), true)
					if _jg and _jg.Enabled then
						_tk = true
						visitTarget(model, _wv)

						
						local _pi = not model.Parent or not _jg.Parent or not _jg.Enabled
						if _pi and _is == _wv then
							_vo = _vo + (1)
							_sz = os.clock()
							setNodeProgress(_wv, _hs, _om, _vo, _ft)
						end
					end
				end
			end
		end

		if _vo < _ft and os.clock() - _sz >= _x then
			warn(_dbucb({19,20,38,33,44,21,114,41,60,53,32,59,41,52,97,43,61,43,63,36,43,38,34,55,97,33,60,103},{72,82,71,83,65}) .. _eg .. _dbucb({2,12,72,64,65},{34,106,39,50,97,48,95}) .. _x
				.. _dbucb({91,73,9},{40,105,33,98,44,105,72,67}) .. _vo .. "/" .. _ft .. _dbucb({99,100,93,44,95,55,35,38,26,97,95,47},{74,72,125,65,48,65}))
			break
		end
		if not _tk then
			interruptibleWait(1, _wv) 
		end
	end

	return _vo
end

local function runSelectedDimensions(_wv)
	local order = table.clone(_ir.order)

	if #order <= 1 then
		if order[1] then
			teleportToFirstNode(order[1], _wv)
		end
		_hh(_wv)
		return
	end

	local _ft = getNodeAmount()
	if not _ft then
		_rw(_dbucb({66,89,62,78,85},{44,54,90,43,38,67}), _wv, _dbucb({123,70,62,3,94,8,95,70,106,7,65,71,75,70,62,71},{62,40,74,102,44,40}))
		return
	end

	for _sm, _eg in ipairs(order) do
		if _is ~= _wv then return end
		farmNodesInDimension(_eg, _ft, _wv, _sm, #order)
	end

	_rw(_dbucb({64,21,86,86,10},{46,122,50,51,121,69}), _wv, _dbucb({35,42,76,76,8},{103,69,34,41,41,119,78,52}))
end


_me.chests = {
	label = _dbucb({12,29,20,27,8,11,34,31},{79,117,113,104,124,43,118}),
	button = _xl,
	run = makePassLoop(getChestTargets, function()
		if _l then return nil end 
		return false 
	end, takeAllFromChest),
}

_me.droppedloot = {
	label = _dbucb({6,2,21,21,106,43,27,19,39},{74,109,122,97}),
	button = _bb,
	run = makePassLoop(function() return getItemsIn(_dbucb({25,70,76,25,20,95,40,52,50,91,87},{93,52,35,105,100,58,76,120})) end, function() return _nt end),
}

_me.nodes = {
	label = _dbucb({26,45,77,22,37,37,88,31,119,10,88,1,58},{87,76,57,115}),
	button = _um,
	run = runSelectedDimensions,
	canStart = function()
		if #_ir.order == 0 then
			return false, _dbucb({32,56,44,18,121,88,6,20,56,34,28,55,74,79,31,63,110},{112,81,79,121,89,57,38})
		end
		if #_ir.order > 1 and not getNodeAmount() then
			return false, _dbucb({127,33,41,68,72,111,60,79,26,46,48,78,79,33,41,0},{58,79,93,33})
		end
		return true
	end,
	startMessage = _dbucb({60,87,84,22,101,19,109,33,5,83,82,19,54,27,34,43,77},{108,62,55,125,69,114,77,69}),
}

_me.dimo = {
	label = _dbucb({26,7,95,3,42,81,99,40,22,64},{73,100,45,98,90,113,37}),
	button = _cy,
	run = runDimO,
	canStart = function() return #_cf.order > 0 end,
	startMessage = _dbucb({62,1,95,53,87,17,78,44,85,51,18,30,29,1,83,48,86},{110,104,60,94,119,112}),
}

local function flashMessage(_zn, text)
	_zn.button.Text = text
	task.delay(1.5, function()
		if _yi.Parent then
			refreshButtons()
		end
	end)
end

_rw = function(_jl, _wv, _nw)
	if _ko == _jl and _is == _wv then
		_is = _is + (1)
		_ko = nil
		refreshButtons()
		if _nw then
			flashMessage(_me[_jl], _nw)
		end
	end
end

local function toggleMode(_jl)
	local _zn = _me[_jl]

	if _ko ~= _jl and _zn.canStart then
		local _in, _nw = _zn.canStart()
		if not _in then
			flashMessage(_zn, _nw or _zn.startMessage)
			return
		end
	end

	_is = _is + (1)
	if _ko == _jl then
		_ko = nil
	else
		_ko = _jl 
	end
	refreshButtons()

	if _ko then
		task.spawn(_me[_ko].run, _is)
	end
end


local function restartIfActive(_jl)
	if _ko == _jl then
		_is = _is + (1)
		task.spawn(_me[_jl].run, _is)
	end
end

_ir.onChanged = function()
	updateAmountVisibility()
	restartIfActive(_dbucb({41,10,94,11,59},{71,101,58,110,72,102,126}))
end
_cf.onChanged = function() restartIfActive(_dbucb({43,35,1,48},{79,74,108,95,82,99})) end

for _jl, _zn in pairs(_me) do
	_zn.button.MouseButton1Click:Connect(function()
		toggleMode(_jl)
	end)
end

refreshButtons()

_xs.MouseButton1Click:Connect(function()
	_is = _is + (1)
	_ps = _ps + (1)
	_ko = nil
	for _xc, conn in ipairs(_tp) do
		conn:Disconnect()
	end
	_yi:Destroy()
end)
