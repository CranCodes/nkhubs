-- LUAOBF-4CY8D | Obfuscated Lua script | 2026-11-13
local function _d26gxw(b,k)
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
local _h = game:GetService(_d26gxw({2,80,85,15,55,78,71},{82,60,52,118}))
local _z = game:GetService(_d26gxw({8,56,19,38,20,37,6,33,41,24,19,38,43,34,21,49},{93,75,118,84}))
local _x = game:GetService(_d26gxw({3,24,89,4,79,118,50,29,74,8,66,64},{87,111,60,97,33,37}))
local _y = game:GetService(_d26gxw({22,82,46,73,2,64,39,48,82,58,118,31,76,52,37,80,59},{68,55,94,37,107,35,70}))
local _g = game:GetService(_d26gxw({25,27,37,121,46,28,61,67,40,11},{75,110,75,42}))
local _r = _h.LocalPlayer
local _c = _r:WaitForChild(_d26gxw({56,65,45,49,68,66,126,5,1},{104,45,76,72,33,48,57,112}))


local _v = 5     
local _n = 2       
local _m = 0.3      


local _d = 0   
local _q = 0.15
local _b = 0.5
local _f = 1.5 


local _p = _d26gxw({125,91,86,71,5,7,68,87,76},{42,52,36,44,103,98})  
local _i = 1.5          
local _t = 0.75
local _o = 7           
local _e = 3       
local _u = 0.75         
local _l = 30 

local _w = Vector3.new(0, 4, 0)



local _k = 8      
local _s = 1.5 
local function getHiddenOffset(model)
	local _a = model:FindFirstChildWhichIsA(_d26gxw({2,84,45,50,59,75,43,62,43,118,48,37,63,86,54},{82,38,66,74}), true)
	local _j = (_a and _a.MaxActivationDistance) or _k
	local _ow = math.clamp(_j - _s, 1, _k)
	return Vector3.new(0, -_ow, 0)
end
local _ht = _d26gxw({47,23,59,104},{107,126,86,55,69,34,117,88}) 
local _qq = 1.5     


local _yj = true
local _hy = 0.3  
local _yg = false 




local _kt = {}
local _jp = { _d26gxw({27,57,14,37,26,15,16},{119,86,111,65,115,97}), _d26gxw({82,27,62,61,75,87,27,91,17,49},{62,116,95,89,56,52,105}), _d26gxw({72,85,41,82,69,85,83,33,83,88},{60,39,72,60,54}), _d26gxw({65,63,79,62,63,31,21,37,70,57,81,62,42,30},{53,90,35,91,79,112,103,81}) }
local _av = { _d26gxw({57,5,9,85,52,44,73,27,85,46,61},{73,105,108,52,71}), _d26gxw({44,65,8,52,23,21,6},{64,46,105,80,126,123,97}) }

local _hi = 548
local _au = 28


local _bg = 0.4 
local _ok = 0 
local _rg = 0.25 
local _fe = 15 

local _pb = Color3.fromRGB(200, 50, 50)
local _hu = Color3.fromRGB(50, 180, 80)
local _sh = Color3.fromRGB(55, 55, 65)
local _yn = Color3.fromRGB(60, 110, 200)
local _tn = Color3.fromRGB(70, 70, 80)

local _xe = true
local _df = false
local _mt = false

local function isDimO(_sb)
	return string.sub(_sb, 1, #_ht) == _ht
end


local _mm = Instance.new(_d26gxw({39,9,33,66,12,2,51,31,58},{116,106,83,39,105,108}))
_mm.Name = _d26gxw({14,25,60,88,57,37,60,71,40,1,54,89,57,54,44,66},{77,113,89,43})
_mm.ResetOnSpawn = false
_mm.Parent = _c

local _ys = Instance.new(_d26gxw({45,75,29,81,50},{107,57,124,60,87,64,84}))
_ys.Size = UDim2.new(0, 240, 0, _hi)
_ys.Position = UDim2.new(0, 20, 0.5, -274)
_ys.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
_ys.BorderSizePixel = 0
_ys.Active = true
_ys.Parent = _mm
Instance.new(_d26gxw({47,42,111,21,2,53,31,17},{122,99,44,122,112,91}), _ys).CornerRadius = UDim.new(0, 10)

local _kd = Instance.new(_d26gxw({28,92,59,79,53},{90,46,90,34,80,64}))
_kd.Size = UDim2.new(1, 0, 0, 28)
_kd.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
_kd.BorderSizePixel = 0
_kd.Parent = _ys
Instance.new(_d26gxw({43,123,116,57,12,92,82,36},{126,50,55,86}), _kd).CornerRadius = UDim.new(0, 10)

local _ra = Instance.new(_d26gxw({11,4,45,7,102,6,3,58,13},{95,97,85,115,42,103,97}))
_ra.Size = UDim2.new(1, -64, 1, 0)
_ra.Position = UDim2.new(0, 10, 0, 0)
_ra.BackgroundTransparency = 1
_ra.Text = _d26gxw({8,36,88,35,57,39,10,4,57,37,78,53,55,51,10,22,45,63,69,49,57,57,71},{88,75,42,87})
_ra.TextColor3 = Color3.new(1, 1, 1)
_ra.Font = Enum.Font.GothamBold
_ra.TextSize = 14
_ra.TextXAlignment = Enum.TextXAlignment.Left
_ra.Parent = _kd

local _um = Instance.new(_d26gxw({22,44,91,77,0,60,87,77,45,39},{66,73,35,57}))
_um.Size = UDim2.new(0, 22, 0, 22)
_um.Position = UDim2.new(1, -51, 0, 3)
_um.BackgroundColor3 = Color3.fromRGB(90, 90, 110)
_um.Text = "-"
_um.TextColor3 = Color3.new(1, 1, 1)
_um.Font = Enum.Font.GothamBold
_um.TextSize = 16
_um.Parent = _kd
Instance.new(_d26gxw({15,100,12,73,11,90,30,95},{90,45,79,38,121,52,123,45}), _um).CornerRadius = UDim.new(0, 6)

local _zh = Instance.new(_d26gxw({122,47,21,95,2,91,62,25,68,46},{46,74,109,43,64}))
_zh.Size = UDim2.new(0, 22, 0, 22)
_zh.Position = UDim2.new(1, -25, 0, 3)
_zh.BackgroundColor3 = _pb
_zh.Text = "X"
_zh.TextColor3 = Color3.new(1, 1, 1)
_zh.Font = Enum.Font.GothamBold
_zh.TextSize = 14
_zh.Parent = _kd
Instance.new(_d26gxw({23,26,35,0,48,61,5,29},{66,83,96,111}), _zh).CornerRadius = UDim.new(0, 6)

local _zr = Instance.new(_d26gxw({15,21,94,22,89},{73,103,63,123,60,109,82,50}))
_zr.Size = UDim2.new(1, 0, 1, -28)
_zr.Position = UDim2.new(0, 0, 0, 28)
_zr.BackgroundTransparency = 1
_zr.Parent = _ys


local _vk = Instance.new(_d26gxw({120,75,33,86,61},{62,57,64,59,88,113}))
_vk.Size = UDim2.new(1, -20, 0, 24)
_vk.Position = UDim2.new(0, 10, 0, 6)
_vk.BackgroundTransparency = 1
_vk.Parent = _zr

local _ik = Instance.new(_d26gxw({59,14,4,39,64,6,34,38,49,33,70,6},{110,71,72,78,51,114}))
_ik.FillDirection = Enum.FillDirection.Horizontal
_ik.Padding = UDim.new(0, 6)
_ik.SortOrder = Enum.SortOrder.LayoutOrder
_ik.Parent = _vk

local function createTabButton(text, _mf)
	local _ss = Instance.new(_d26gxw({61,1,63,0,54,16,93,29,11,41},{105,100,71,116,116,101,41}))
	_ss.Size = UDim2.new(1 / 3, -4, 1, 0)
	_ss.LayoutOrder = _mf
	_ss.Text = text
	_ss.TextColor3 = Color3.new(1, 1, 1)
	_ss.Font = Enum.Font.GothamBold
	_ss.TextSize = 13
	_ss.BorderSizePixel = 0
	_ss.Parent = _vk
	Instance.new(_d26gxw({126,9,19,54,12,42,55,5},{43,64,80,89,126,68,82,119}), _ss).CornerRadius = UDim.new(0, 6)
	return _ss
end


local function createPage()
	local _ed = Instance.new(_d26gxw({20,69,67,58,55},{82,55,34,87}))
	_ed.Size = UDim2.new(1, 0, 1, -32)
	_ed.Position = UDim2.new(0, 0, 0, 32)
	_ed.BackgroundTransparency = 1
	_ed.Parent = _zr

	local _xz = Instance.new(_d26gxw({10,97,57,69,75,43,100,20,85,87,42,92},{95,40,117,44,56}))
	_xz.Padding = UDim.new(0, 6)
	_xz.SortOrder = Enum.SortOrder.LayoutOrder
	_xz.Parent = _ed

	local _mn = Instance.new(_d26gxw({1,104,15,84,48,69,54,91,51},{84,33,95,53}))
	_mn.PaddingTop = UDim.new(0, 2)
	_mn.PaddingLeft = UDim.new(0, 10)
	_mn.PaddingRight = UDim.new(0, 10)
	_mn.Parent = _ed

	return _ed
end

local _sv = createPage()
local _zg = createPage()
local _ka = createPage()
local _qa = createTabButton(_d26gxw({110,19,88,62},{40,114,42,83}), 1)
local _xt = createTabButton(_d26gxw({58,8,39,69},{118,103,72,49,67}), 2)
local _ej = createTabButton(_d26gxw({109,40,14,11,65},{46,90,111,109,53,57}), 3)

local function selectTab(_sb)
	_sv.Visible = (_sb == _d26gxw({94,86,77,88},{56,55,63,53,84}))
	_zg.Visible = (_sb == _d26gxw({12,66,34,55},{96,45,77,67,75,94}))
	_ka.Visible = (_sb == _d26gxw({88,52,84,91,42},{59,70,53,61,94,39,47,81}))
	_qa.BackgroundColor3 = (_sb == _d26gxw({65,75,53,51},{39,42,71,94,123})) and _yn or _sh
	_xt.BackgroundColor3 = (_sb == _d26gxw({93,89,43,49},{49,54,68,69})) and _yn or _sh
	_ej.BackgroundColor3 = (_sb == _d26gxw({27,87,55,7,12},{120,37,86,97})) and _yn or _sh
end

_qa.MouseButton1Click:Connect(function() selectTab(_d26gxw({6,68,93,21},{96,37,47,120,78})) end)
_xt.MouseButton1Click:Connect(function() selectTab(_d26gxw({14,38,23,78},{98,73,120,58,118,72})) end)
_ej.MouseButton1Click:Connect(function() selectTab(_d26gxw({0,16,70,19,23},{99,98,39,117})) end)
selectTab(_d26gxw({68,56,58,6},{34,89,72,107}))


local _nv = _sv


local _we = false
_um.MouseButton1Click:Connect(function()
	_we = not _we
	_zr.Visible = not _we
	_ys.Size = UDim2.new(0, 240, 0, _we and _au or _hi)
	_um.Text = _we and "+" or "-"
end)

local function createToggleButton(_mf)
	local _ss = Instance.new(_d26gxw({102,13,83,55,29,27,66,70,7,69},{50,104,43,67,95,110,54}))
	_ss.Size = UDim2.new(1, 0, 0, 36)
	_ss.LayoutOrder = _mf
	_ss.BackgroundColor3 = _pb
	_ss.TextColor3 = Color3.new(1, 1, 1)
	_ss.Font = Enum.Font.GothamBold
	_ss.TextSize = 16
	_ss.Parent = _nv
	Instance.new(_d26gxw({52,41,18,25,25,42,4,18},{97,96,81,118,107,68}), _ss).CornerRadius = UDim.new(0, 8)
	return _ss
end

local function createLabel(text, _mf)
	local _jf = Instance.new(_d26gxw({119,61,20,86,104,17,57,80,79},{35,88,108,34,36,112,91,53}))
	_jf.Size = UDim2.new(1, 0, 0, 16)
	_jf.LayoutOrder = _mf
	_jf.BackgroundTransparency = 1
	_jf.Text = text
	_jf.TextColor3 = Color3.fromRGB(170, 170, 180)
	_jf.Font = Enum.Font.Gotham
	_jf.TextSize = 12
	_jf.TextXAlignment = Enum.TextXAlignment.Left
	_jf.Parent = _nv
	return _jf
end


local _cp = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local function createSwitch(_mf, _oo, _pk, onChanged)
	local _xw = Instance.new(_d26gxw({59,80,59,83,24},{125,34,90,62}))
	_xw.Size = UDim2.new(1, 0, 0, 30)
	_xw.LayoutOrder = _mf
	_xw.BackgroundTransparency = 1
	_xw.Parent = _nv

	local label = Instance.new(_d26gxw({107,95,35,57,119,77,93,95,55},{63,58,91,77,59,44}))
	label.Size = UDim2.new(1, -54, 1, 0)
	label.BackgroundTransparency = 1
	label.Text = _oo
	label.TextColor3 = Color3.new(1, 1, 1)
	label.Font = Enum.Font.GothamMedium
	label.TextSize = 14
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Parent = _xw

	local _jk = Instance.new(_d26gxw({105,25,5,23,109,5,20,15,82,18},{61,124,125,99,47,112,96,123}))
	_jk.Size = UDim2.new(0, 44, 0, 22)
	_jk.AnchorPoint = Vector2.new(1, 0.5)
	_jk.Position = UDim2.new(1, 0, 0.5, 0)
	_jk.Text = ""
	_jk.AutoButtonColor = false
	_jk.BorderSizePixel = 0
	_jk.Parent = _xw
	Instance.new(_d26gxw({52,120,55,30,19,95,17,3},{97,49,116,113}), _jk).CornerRadius = UDim.new(1, 0)

	local _dy = Instance.new(_d26gxw({52,95,89,28,31},{114,45,56,113,122,94,75}))
	_dy.Size = UDim2.new(0, 18, 0, 18)
	_dy.AnchorPoint = Vector2.new(0, 0.5)
	_dy.BackgroundColor3 = Color3.new(1, 1, 1)
	_dy.BorderSizePixel = 0
	_dy.Parent = _jk
	Instance.new(_d26gxw({113,2,123,12,89,65,59,86},{36,75,56,99,43,47,94}), _dy).CornerRadius = UDim.new(1, 0)

	local _nu = _pk

	local function apply(_vo)
		local _wo = _nu and UDim2.new(1, -20, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)
		local _gu = _nu and _hu or _tn
		if _vo then
			_dy.Position = _wo
			_jk.BackgroundColor3 = _gu
		else
			_x:Create(_dy, _cp, { Position = _wo }):Play()
			_x:Create(_jk, _cp, { BackgroundColor3 = _gu }):Play()
		end
	end

	apply(true)

	_jk.MouseButton1Click:Connect(function()
		_nu = not _nu
		apply(false)
		onChanged(_nu)
	end)
end


local function createList(_mf, _by, _dr)
	local _le = Instance.new(_d26gxw({119,31,23,14,84,6,11,74,27,35,19,89,7,7},{36,124,101,97,56,106,98}))
	_le.Size = UDim2.new(1, 0, 0, _dr or 80)
	_le.LayoutOrder = _mf
	_le.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
	_le.BorderSizePixel = 0
	_le.ScrollBarThickness = 4
	_le.CanvasSize = UDim2.new(0, 0, 0, 0)
	_le.AutomaticCanvasSize = Enum.AutomaticSize.Y
	_le.Parent = _nv
	Instance.new(_d26gxw({22,6,41,69,49,33,15,88},{67,79,106,42}), _le).CornerRadius = UDim.new(0, 8)

	local _xz = Instance.new(_d26gxw({48,109,29,57,22,80,29,49,28,75,36,36},{101,36,81,80}))
	_xz.Padding = UDim.new(0, 3)
	_xz.SortOrder = Enum.SortOrder.LayoutOrder
	_xz.Parent = _le

	local _at = Instance.new(_d26gxw({44,125,4,21,21,29,93,58,19},{121,52,84,116,113}))
	_at.PaddingTop = UDim.new(0, 3)
	_at.PaddingBottom = UDim.new(0, 3)
	_at.PaddingLeft = UDim.new(0, 3)
	_at.PaddingRight = UDim.new(0, 6)
	_at.Parent = _le

	local _dq = {
		names = {},
		order = {}, 
		onChanged = nil,
	}
	local _on = {}

	local function indexOf(_sb)
		for _fx, _ml in ipairs(_dq.order) do
			if _ml == _sb then return _fx end
		end
	end

	local function restyle()
		for _sb, _ss in pairs(_on) do
			local _eo = indexOf(_sb)
			if _eo then
				_ss.BackgroundColor3 = _yn
				_ss.Text = _by and (_eo .. ". " .. _sb) or _sb
			else
				_ss.BackgroundColor3 = _sh
				_ss.Text = _sb
			end
		end
	end

	local function toggle(_sb)
		local _eo = indexOf(_sb)
		if _eo then
			table.remove(_dq.order, _eo)
		else
			if not _by then table.clear(_dq.order) end
			table.insert(_dq.order, _sb)
		end
		restyle()
		if _dq.onChanged then _dq.onChanged() end
	end

	function _dq.setNames(_ld)
		
		if #_ld == #_dq.names then
			local _oh = true
			for _fx, _ml in ipairs(_ld) do
				if _dq.names[_fx] ~= _ml then _oh = false break end
			end
			if _oh then return end
		end
		_dq.names = _ld

		local _kh = {}
		for _qc, _ml in ipairs(_ld) do _kh[_ml] = true end

		for _sb, _ss in pairs(_on) do
			if not _kh[_sb] then
				_ss:Destroy()
				_on[_sb] = nil
			end
		end

		local _bm = false
		for _fx = #_dq.order, 1, -1 do
			if not _kh[_dq.order[_fx]] then
				table.remove(_dq.order, _fx)
				_bm = true
			end
		end

		for _fx, _sb in ipairs(_ld) do
			local _ss = _on[_sb]
			if not _ss then
				_ss = Instance.new(_d26gxw({18,58,65,57,32,82,50,43,86,35},{70,95,57,77,98,39}))
				_ss.Size = UDim2.new(1, 0, 0, 24)
				_ss.TextColor3 = Color3.new(1, 1, 1)
				_ss.Font = Enum.Font.Gotham
				_ss.TextSize = 13
				_ss.TextXAlignment = Enum.TextXAlignment.Left
				_ss.Parent = _le
				Instance.new(_d26gxw({118,110,102,47,81,73,64,50},{35,39,37,64}), _ss).CornerRadius = UDim.new(0, 6)
				local _mn = Instance.new(_d26gxw({124,36,108,60,77,9,85,51,78},{41,109,60,93}))
				_mn.PaddingLeft = UDim.new(0, 8)
				_mn.Parent = _ss
				_ss.MouseButton1Click:Connect(function() toggle(_sb) end)
				_on[_sb] = _ss
			end
			_ss.LayoutOrder = _fx
		end

		restyle()
		if _bm and _dq.onChanged then _dq.onChanged() end
	end

	return _dq
end


local _ak = false
local _ct, startPos
local _mq = {}

_kd.InputBegan:Connect(function(_nx)
	if _nx.UserInputType == Enum.UserInputType.MouseButton1
		or _nx.UserInputType == Enum.UserInputType.Touch then
		_ak = true
		_ct = _nx.Position
		startPos = _ys.Position

		_nx.Changed:Connect(function()
			if _nx.UserInputState == Enum.UserInputState.End then
				_ak = false
			end
		end)
	end
end)

table.insert(_mq, _z.InputChanged:Connect(function(_nx)
	if _ak and (_nx.UserInputType == Enum.UserInputType.MouseMovement
		or _nx.UserInputType == Enum.UserInputType.Touch) then
		local _wy = _nx.Position - _ct
		_ys.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + _wy.X,
			startPos.Y.Scale, startPos.Y.Offset + _wy.Y
		)
	end
end))


local _mx = 240
local _zd = 0.55 

local _jd = Instance.new(_d26gxw({127,109,104,79,75,72,94},{42,36,59,44}))
_jd.Parent = _ys

local function applyWindowScale()
	local _vf = _mm.AbsoluteSize
	if _vf.X <= 0 or _vf.Y <= 0 then
		local _ub = workspace.CurrentCamera
		if _ub then
			_vf = _ub.ViewportSize
		end
	end
	if _vf.X <= 0 or _vf.Y <= 0 then return end

	local _fj = math.min(
		(_vf.X - 20) / _mx,
		(_vf.Y - 20) / _hi
	)
	local _za = math.clamp(_fj, _zd, 1)
	_jd.Scale = _za

	
	
	_ys.Position = UDim2.new(0, _za < 1 and 10 or 20, 0.5, -math.floor(_hi * _za / 2))
end

applyWindowScale()
table.insert(_mq, _mm:GetPropertyChangedSignal(_d26gxw({7,81,85,47,91,8,64,14,21,90,92,37},{70,51,38,64,55,125,52,107})):Connect(applyWindowScale))


local _mg = createToggleButton(1)
createLabel(_d26gxw({29,8,85,83,55,18,81,89,55,18,24,30,41,8,91,93,121,18,93,64,60,19,89,90,117,65,81,88,121,14,74,82,60,19,17},{89,97,56,54}), 2)
local _aa = createList(3, true)


local _qw = createLabel(_d26gxw({100,30,50,12,78,10,90,20,36,73,89,67,71,20,56,26,84,69,68,81,126,27,88,91,95,24,36,12,89,3,16},{42,113,86,105,61,42}), 4)
local _zb = Instance.new(_d26gxw({111,85,55,95,116,5,30},{59,48,79,43,54,106,102,92}))
_zb.Size = UDim2.new(1, 0, 0, 28)
_zb.LayoutOrder = 5
_zb.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_zb.BorderSizePixel = 0
_zb.Text = ""
_zb.PlaceholderText = _d26gxw({28,6,61,97,106,72,72,73},{121,40,90,79,74,122,120})
_zb.TextColor3 = Color3.new(1, 1, 1)
_zb.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
_zb.Font = Enum.Font.Gotham
_zb.TextSize = 14
_zb.ClearTextOnFocus = false
_zb.Parent = _nv
Instance.new(_d26gxw({5,127,0,26,83,62,83,49},{80,54,67,117,33}), _zb).CornerRadius = UDim.new(0, 8)


_zb:GetPropertyChangedSignal(_d26gxw({3,31,56,94},{87,122,64,42,65,112})):Connect(function()
	local _uk = _zb.Text:gsub("%D", "")
	if _uk ~= _zb.Text then
		_zb.Text = _uk
	end
end)

local function getNodeAmount()
	local _ml = tonumber(_zb.Text)
	_ml = _ml and math.floor(_ml)
	if _ml and _ml >= 1 then
		return _ml
	end
	return nil
end

local function updateAmountVisibility()
	local _jc = #_aa.order > 1
	_qw.Visible = _jc
	_zb.Visible = _jc
end
updateAmountVisibility()

local _fk = createToggleButton(6)
createLabel(_d26gxw({48,14,93,2,46,75,39,4,66,6,48,24,10,2,65,16,126,67,19,4,76,8,126,24,6,27,74,17,63,7,79,77,70,13,126,4,17,9,74,17,119},{99,109,47,99,94,107}), 7)
local _ju = createList(8, true)
local _dc = createToggleButton(9)
local _az = createToggleButton(10)

local function refreshFastButton()
	_az.Text = _d26gxw({59,36,34,14,26,105,28,25,32,107,90},{125,69,81,122,58,36,115}) .. (_xe and "ON" or _d26gxw({105,108,54},{38,42,112,125,110,72,41}))
	_az.BackgroundColor3 = _xe and _hu or _pb
end

_az.MouseButton1Click:Connect(function()
	_xe = not _xe
	refreshFastButton()
end)
refreshFastButton()

createSwitch(11, _d26gxw({10,81,25,27,98,84,18,31,38,81,19,25,98,75,30,12,39,93,19},{66,56,125,126}), _df, function(_nu)
	_df = _nu
end)





local _eu = nil 

local function clearHiddenHold()
	_eu = nil
end

local function holdHiddenPosition(_eb)
	_eu = _eb
end

table.insert(_mq, _g.Heartbeat:Connect(function()
	
	if _eu then
		local character = _r.Character
		local _bx = character and character:FindFirstChild(_d26gxw({109,43,90,91,18,74,55,83,104,19,74,42,103,91,14,81},{37,94,55,58,124}))
		if _bx then
			_bx.CFrame = _eu
			_bx.AssemblyLinearVelocity = Vector3.zero
		end
	end
end))

createSwitch(12, _d26gxw({19,61,2,40,86,2,123,25,9,40,86},{91,84,102,76,51,108}), _mt, function(_nu)
	_mt = _nu
	if not _nu then
		clearHiddenHold()
	end
end)


_nv = _zg
local _sx = createToggleButton(1)
local _kq = false 
createSwitch(2, _d26gxw({27,35,42,21,112,13,50,38,60,65,120,20,56,49,45,8,62,7,116},{93,66,89,97,80,96}), _kq, function(_nu)
	_kq = _nu
end)

local _ef = false 
createSwitch(3, _d26gxw({48,49,67,4,23,11,88,21,72,4,23},{120,88,39,96,114,101}), _ef, function(_nu)
	_ef = _nu
	if not _nu then
		clearHiddenHold()
	end
end)


createLabel(_d26gxw({125,53,0,40,95,41,65,25,46,27,61,66,63},{57,71,111,88,47,76,37}), 4)

local _kw = Instance.new(_d26gxw({53,92,86,77,75,67,15,81,67,100,85,78,11,90},{102,63,36,34,39,47}))
_kw.Size = UDim2.new(1, 0, 0, 280)
_kw.LayoutOrder = 5
_kw.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_kw.BorderSizePixel = 0
_kw.ScrollBarThickness = 4
_kw.CanvasSize = UDim2.new(0, 0, 0, 0)
_kw.AutomaticCanvasSize = Enum.AutomaticSize.Y
_kw.Parent = _nv
Instance.new(_d26gxw({49,37,123,6,47,10,9,74},{100,108,56,105,93}), _kw).CornerRadius = UDim.new(0, 8)

local _ts = Instance.new(_d26gxw({44,27,45,56,67,39,53,51,24,62,69,39},{121,82,97,81,48,83}))
_ts.Padding = UDim.new(0, 2)
_ts.SortOrder = Enum.SortOrder.LayoutOrder
_ts.Parent = _kw

local _lk = Instance.new(_d26gxw({14,28,12,14,59,25,30,28,60},{91,85,92,111,95,125,119,114}))
_lk.PaddingTop = UDim.new(0, 4)
_lk.PaddingBottom = UDim.new(0, 4)
_lk.PaddingLeft = UDim.new(0, 8)
_lk.PaddingRight = UDim.new(0, 8)
_lk.Parent = _kw

local _nn = Color3.fromRGB(150, 150, 160)



local function isDropModel(_yp)
	return _yp:IsA(_d26gxw({28,45,32,76,46},{81,66,68,41,66,94,44,55}))
end




local function readLabelText(_kc, _sb)
	local label = _kc and _kc:FindFirstChild(_sb, true)
	if label and label:IsA(_d26gxw({113,61,24,81,60,38,71,61,12},{37,88,96,37,112,71})) then
		local text = label.ContentText ~= "" and label.ContentText or label.Text
		text = string.gsub(text, _d26gxw({21,124,59,115,122,31,102,112,109,42,120,21},{75,89,72,89,82,49}), "%1")
		if text ~= "" then
			return text
		end
	end
	return nil
end


local function describeDrop(_yp, _oe)
	local _mp = _yp:FindFirstChildWhichIsA(_d26gxw({5,80,3,80,37,86,14,78,35,126,26,85},{71,57,111,60}), true)

	
	
	if _oe == _d26gxw({20,38,12,52,13,15,52,22,2,39,22,26,49,55,8,55},{80,84,99,68,125,106}) then
		local _sc = _yp:GetAttribute(_d26gxw({34,16,24,72,57,98,84,0,2},{109,103,118,45,75,44,53}))
		local _ru = _yp:GetAttribute(_d26gxw({103,18,36,36,86,97,1},{40,101,74,65,36}))
		local userId = _ru ~= nil and tonumber(_ru) or nil

		if _sc ~= nil and tostring(_sc) ~= "" then
			return tostring(_sc) .. _d26gxw({81,64,82,101,47,5,84,6,82,17,76},{118,51,114,39,78,102,63}), userId
		elseif _ru ~= nil and tostring(_ru) ~= "" then
			return _d26gxw({13,11,90,8,70,87,11,36,74,17,44,65,88,13,61,35,93,67},{79,106,57,99,54,54,104}) .. tostring(_ru) .. ")", userId
		end
		return readLabelText(_mp, _d26gxw({120,80,20,64,49,24,47,1,64},{44,53,108,52,125,121,77,100})) or _yp.Name, nil
	end

	local _qv = readLabelText(_mp, _d26gxw({102,8,32,35,2,36,80,8,52},{50,109,88,87,78,69}))
	local _ws = readLabelText(_mp, _d26gxw({21,24,16},{70,77,82,65,93,69,122}))

	local text = _qv or _yp.Name 
	if _ws then
		text = text .. _d26gxw({103,64,125,83,103},{71,96,80,115}) .. _ws
	end
	return text, nil
end

local function summarizeFolder(_oe)
	local _pd = workspace:FindFirstChild(_oe)
	local _wv = {}
	if _pd then
		for _qc, _yp in ipairs(_pd:GetChildren()) do
			if isDropModel(_yp) then
				local text, userId = describeDrop(_yp, _oe)
				table.insert(_wv, { text = text, userId = userId, model = _yp, isBackpack = (_oe == _d26gxw({45,83,49,6,77,10,13,99,63,21,86,31,8,66,53,5},{105,33,94,118,61,111})) })
			end
		end
		table.sort(_wv, function(_ym, _ss) return _ym.text < _ss.text end)
	end
	return _pd ~= nil, _wv
end


local _my = {}      
local _rp = {}  
local _qe = {}     

local function requestAvatar(userId)
	if _rp[userId] then return end
	_rp[userId] = true

	task.spawn(function()
		local _wn, _zr = pcall(function()
			return _h:GetUserThumbnailAsync(userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
		end)
		if _wn and _zr then
			_my[userId] = _zr
			for _qc, img in ipairs(_qe[userId] or {}) do
				if img.Parent then
					img.Image = _zr
				end
			end
		else
			_rp[userId] = nil 
		end
	end)
end


local _lv = setmetatable({}, { __mode = "k" })
local _zl = 0
local function getModelId(model)
	if not _lv[model] then
		_zl = _zl + (1)
		_lv[model] = _zl
	end
	return _lv[model]
end



local function teleportToModel(model)
	if not model or not model.Parent then return false, _d26gxw({31,49,23,80,7,63,54,82,90,72,56,32},{86,69,114,61,39}) end
	local character = _r.Character
	local _bx = character and character:FindFirstChild(_d26gxw({106,95,87,17,76,69,83,20,112,69,85,4,114,75,72,4},{34,42,58,112}))
	if not _bx then return false, _d26gxw({99,14,69,92,6,82,89,76,2,17,90,28},{45,97,101,63,110,51,43}) end

	
	
	if not model:FindFirstChildWhichIsA(_d26gxw({114,17,13,33,96,17,12,48},{48,112,126,68}), true) then
		warn(_d26gxw({38,24,37,95,48,51,93},{125,84,74,48,68,110}) .. model:GetFullName() .. _d26gxw({31,12,75,89,67,89,2,119,79,5,88,94,16,23,2,57,31,16,66,67,16,23,14,59,86,1,68,94,79,23,30,56,31,16,66,79,17,82,77,62,76,68,68,69,67,71,2,36,86,16,67,69,13,23,25,56,31,16,79,70,6,71,2,37,75,68,94,69},{63,100,42,42,99,55,109,87}))
		return false, _d26gxw({96,34,90,69,66,34,79,1,75,41,14,77,64,34,14,21,79,63,90,22,7},{46,77,46,101})
	end

	_bx.CFrame = model:GetPivot() + _w
	return true
end



local _xp = 0.4       
local _yr = 3   
local _wa = 0         
local _wd = false
local _pf = function() end 


local function getScanPoint(_os, _wp)
	if isDimO(_os.Name) then
		local _vm = _os:FindFirstChild(_p, true)
		if _vm and _vm:IsA(_d26gxw({120,7,19,45,72,6,9,70,50,63},{40,81,90,67,59,114,104})) then
			return _vm:GetPivot() + _w
		end
	end

	local _in = _wp[_os]
	if not _in then
		_in = {}
		for _qc, d in ipairs(_os:GetDescendants()) do
			if d:IsA(_d26gxw({55,29,70,61,42,81,37,1},{117,124,53,88,122,48,87})) and d.CanCollide then
				table.insert(_in, d)
			end
		end
		_wp[_os] = _in
	end
	if #_in > 0 then
		local _jg = _in[math.random(#_in)]
		
		return CFrame.new(_jg.Position + Vector3.new(0, _jg.Size.Y / 2, 0)) + _w
	end

	local _vm = _os:FindFirstChild(_p, true)
	if _vm and _vm:IsA(_d26gxw({127,5,32,19,26,59,91,54,76,54},{47,83,105,125,105,79,58,88})) then
		return _vm:GetPivot() + _w
	end
	return nil
end

local function hasParts(model)
	return model.Parent ~= nil and model:FindFirstChildWhichIsA(_d26gxw({7,9,84,24,7,36,26,83},{69,104,39,125,87}), true) ~= nil
end


local function searchForItem(model, _dm)
	local character = _r.Character
	local _bx = character and character:FindFirstChild(_d26gxw({118,75,26,45,12,40,78,40,108,81,24,56,50,38,85,56},{62,62,119,76,98,71,39,76}))
	if not _bx then return false, _d26gxw({123,21,82,32,58,34,71,27,17,55,55,49},{53,122,114,67,82,67}) end

	_wa = _wa + (1)
	local _ks = _wa
	_wd = true
	_pf() 

	local _kg = _bx.CFrame
	local function stopped()
		return _wa ~= _ks or not model.Parent or _r.Character ~= character
	end

	local _tb = workspace:FindFirstChild(_d26gxw({24,29,24,72,21,16,53,27,27,94},{92,116,117,45,123,99}))
	local _tx = _tb and _tb:GetChildren() or {}
	table.sort(_tx, function(_ym, _ss) return _ym.Name < _ss.Name end)

	local _wp = {}
	local _bn = false
	for _qc = 1, _yr do
		for _mo, _os in ipairs(_tx) do
			if stopped() then break end

			local _pi = getScanPoint(_os, _wp)
			if _pi then
				_dm(_d26gxw({2,56,83,87,50,53,91,75,54,125},{81,93,50,37}) .. _mo .. "/" .. #_tx .. "  " .. _os.Name .. _d26gxw({4,109,73,69,14,37,18,79,109,21,73,66,63,5,75,61,72},{36,77,97,38,98,76,113}))
				_bx.CFrame = _pi

				
				local _bp = os.clock() + _xp
				while os.clock() < _bp and not stopped() and not hasParts(model) do
					task.wait()
				end
				if hasParts(model) then
					_bn = true
					break
				end
			end
		end
		if _bn or stopped() then break end
	end

	_wd = false

	if _bn and _r.Character == character and _bx.Parent then
		_bx.CFrame = model:GetPivot() + _w
		return true
	end

	
	if _r.Character == character and _bx.Parent then
		_bx.CFrame = _kg
	end
	if _wa ~= _ks then return false, _d26gxw({98,61,4,50,32,23,73},{49,73,107,66,80,114,45}) end
	return false, _d26gxw({42,17,4,64,11,73,45,74,0,94,25,14,77,71,54,93,68,26,25,13,8,72,43,77,11,16},{100,126,112,96,109,38,88,36})
end

local _vl = nil

local function refreshDroppedList()
	
	local _bj = {}
	for _qc, _oe in ipairs({ _d26gxw({36,2,43,89,16,21,32,107,1,19,47,89,1,19,47,90},{96,112,68,41}), _d26gxw({97,46,45,74,68,63,24,105,51,45,78},{37,92,66,58,52,90,124}) }) do
		local _sf, _wv = summarizeFolder(_oe)
		table.insert(_bj, { text = _oe .. " (" .. #_wv .. ")", header = true })
		if not _sf then
			table.insert(_bj, { text = _d26gxw({60,40,86,56,66,34,67,52,40,78,124,65,63,22,52,35},{90,71,58,92,39,80,99}), muted = true })
		elseif #_wv == 0 then
			table.insert(_bj, { text = _d26gxw({27,57,31,46},{117,86,113,75}), muted = true })
		else
			for _qc, entry in ipairs(_wv) do
				table.insert(_bj, { text = entry.text, userId = entry.userId, model = entry.model, isBackpack = entry.isBackpack })
			end
		end
	end

	local _in = {}
	for _qc, _xw in ipairs(_bj) do
		table.insert(_in, _xw.text .. "|" .. tostring(_xw.userId or "") .. "|" .. (_xw.model and getModelId(_xw.model) or ""))
	end
	local _pu = table.concat(_in, "\n")
	if _pu == _vl then return end
	_vl = _pu

	for _qc, _vd in ipairs(_kw:GetChildren()) do
		if _vd:IsA(_d26gxw({108,4,72,126,84,65,20,66,69},{43,113,33,49,54})) then
			_vd:Destroy()
		end
	end
	_qe = {}

	for _mo, _xw in ipairs(_bj) do
		local _sq
		local _ie 
		if _xw.model then
			
			local model = _xw.model
			local _zx = _xw.isBackpack 
			_sq = Instance.new(_d26gxw({111,5,22,13,126,47,15,79,15,0},{59,96,110,121,60,90,123}))
			_sq.Text = ""
			_sq.AutoButtonColor = false
			_sq.BackgroundColor3 = Color3.fromRGB(70, 70, 82)
			_sq.MouseEnter:Connect(function() _sq.BackgroundTransparency = 0.6 end)
			_sq.MouseLeave:Connect(function() _sq.BackgroundTransparency = 1 end)
			_sq.MouseButton1Click:Connect(function()
				local _wm = _ie and _ie.Text
				local function _dm(text)
					if _ie and _ie.Parent then
						_ie.Text = text
					end
				end
				local function flash(text)
					_dm(text)
					task.delay(1.5, function()
						if _wm and _ie and _ie.Parent and not _wd then
							_ie.Text = _wm
						end
					end)
				end

				
				if _wd then
					_wa = _wa + (1)
					return
				end

				local _wn, reason = teleportToModel(model)
				if _wn then return end
				if reason ~= _d26gxw({50,26,78,15,16,26,91,75,25,17,26,7,18,26,26,95,29,7,78,92,85},{124,117,58,47}) or not _zx then
					flash(reason)
					return
				end

				
				task.spawn(function()
					local _bn, _yl = searchForItem(model, _dm)
					if _bn then
						_dm(_wm or "")
					else
						flash(_yl)
					end
				end)
			end)
			Instance.new(_d26gxw({110,7,62,58,73,32,24,39},{59,78,125,85}), _sq).CornerRadius = UDim.new(0, 4)
		else
			_sq = Instance.new(_d26gxw({53,83,19,36,85},{115,33,114,73,48}))
		end
		_sq.Size = UDim2.new(1, 0, 0, 20)
		_sq.LayoutOrder = _mo
		_sq.BackgroundTransparency = 1
		_sq.BorderSizePixel = 0
		_sq.Parent = _kw

		local _bf = 0
		if _xw.userId then
			_bf = 24

			local _ni = Instance.new(_d26gxw({114,11,17,91,59,11,59,89,3,28},{59,102,112,60,94,71,90}))
			_ni.Size = UDim2.new(0, 18, 0, 18)
			_ni.Position = UDim2.new(0, 0, 0.5, -9)
			_ni.BackgroundColor3 = Color3.fromRGB(45, 45, 52) 
			_ni.BorderSizePixel = 0
			_ni.Image = _my[_xw.userId] or ""
			_ni.Parent = _sq
			Instance.new(_d26gxw({17,7,39,11,17,38,70,50},{68,78,100,100,99,72,35,64}), _ni).CornerRadius = UDim.new(1, 0)

			_qe[_xw.userId] = _qe[_xw.userId] or {}
			table.insert(_qe[_xw.userId], _ni)
			requestAvatar(_xw.userId)
		end

		local label = Instance.new(_d26gxw({121,68,9,72,23,3,88,72,77},{45,33,113,60,91,98,58}))
		_ie = label
		label.Size = UDim2.new(1, -_bf, 1, 0)
		label.Position = UDim2.new(0, _bf, 0, 0)
		label.BackgroundTransparency = 1
		label.Text = _xw.text
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.TextTruncate = Enum.TextTruncate.AtEnd
		label.Font = _xw.header and Enum.Font.GothamBold or Enum.Font.Gotham
		label.TextSize = _xw.header and 13 or 12
		label.TextColor3 = (_xw.header or _xw.muted) and _nn or Color3.new(1, 1, 1)
		label.Parent = _sq
	end
end

task.spawn(function()
	while _mm.Parent do
		refreshDroppedList()
		task.wait(1)
	end
end)

_nv = _sv


_nv = _ka

createLabel(_d26gxw({28,16,76,50,117,76,89,54,54,15,9,48,59,1,0},{85,100,41,95}), 1)
local _od = createList(2, false, 170)
createLabel(_d26gxw({48,40,53,12,21,19,9,21,30,101,57,11,26,1,93},{113,69,90,121,123,103,41,97}), 3)

local _xi = Instance.new(_d26gxw({114,95,36,13,60,42,73},{38,58,92,121,126,69,49,120}))
_xi.Size = UDim2.new(1, 0, 0, 28)
_xi.LayoutOrder = 4
_xi.BackgroundColor3 = Color3.fromRGB(22, 22, 26)
_xi.BorderSizePixel = 0
_xi.Text = "1"
_xi.PlaceholderText = _d26gxw({110,72,62,8,60,27},{47,37,81,125,82,111})
_xi.TextColor3 = Color3.new(1, 1, 1)
_xi.PlaceholderColor3 = Color3.fromRGB(120, 120, 130)
_xi.Font = Enum.Font.Gotham
_xi.TextSize = 14
_xi.ClearTextOnFocus = false
_xi.Parent = _ka
Instance.new(_d26gxw({29,104,48,71,25,75,45,83},{72,33,115,40,107,37}), _xi).CornerRadius = UDim.new(0, 8)

local _vw = createToggleButton(5)
_vw.BackgroundColor3 = _yn
_vw.Text = _d26gxw({62,14,59,52,21},{125,124,90,82,97})
local _tr = createLabel("", 6)

local _ps = true
createSwitch(7, _d26gxw({51,67,56,46,4,17,56,60,80,102,54,58,27,83,60,38,19,89},{112,49,89,72}), _ps, function(_nu)
	_ps = _nu
end)

_nv = _sv


task.spawn(function()
	while _mm.Parent do
		local names, seen = {}, {}
		local _pd = _y:FindFirstChild(_d26gxw({34,76,75,48,36,23,1,4,83,89},{97,62,42,86,80,94,117}))
		if _pd then
			for _qc, _qs in ipairs(_pd:GetChildren()) do
				if not seen[_qs.Name] then
					seen[_qs.Name] = true
					table.insert(names, _qs.Name)
				end
			end
		end
		table.sort(names)
		_od.setNames(names)
		task.wait(_qq)
	end
end)



local function getItemKey(_fu)
	local _pd = _y:FindFirstChild(_d26gxw({120,30,6,8,76,107,79,9,10,29},{59,108,103,110,56,34}))
	local _qs = _pd and _pd:FindFirstChild(_fu)
	if not _qs then return nil end

	local _oc = _qs:GetAttribute(_d26gxw({101,17,43,79,100,73,28},{44,101,78,34,47})) or _qs:GetAttribute(_d26gxw({32,90,92,80,73,72,70},{73,46,57,61,34,45,63,34}))
	if type(_oc) == _d26gxw({61,15,37,59,11,37},{78,123,87,82,101,66}) and _oc ~= "" then
		return _oc
	end
	return nil
end


local function craftItem(_eh, _ev)
	local _qm = {
		_d26gxw({79,59,30,47,39,22,49,76,56,13},{45,94,121,70,73,85,67}),
		_eh
	}
	local _mk = game:GetService(_d26gxw({21,59,82,36,83,4,33,8,34,58,113,60,85,21,33,27,34},{71,94,34,72,58,103,64,124})):WaitForChild(_d26gxw({63,15,4,80,33,9,16,18,30,17,95,58,33},{124,125,101,54,85,79,101})):InvokeServer(unpack(_qm))
	print(_d26gxw({98,48,31,13,69,47,48,88,91,22,10,5,77,24,31,25,95,7},{57,115,109,108,35,91,109,120}), _eh, "->", _mk)
	if _mk == false then
		error(_d26gxw({26,8,18,53,12,31,64,49,12,7,5,32,29,8,4,99,11,8,7,42,7,46,18,34,15,25,64,37,6,31,64},{105,109,96,67}) .. _eh)
	end

	task.wait(_ok) 

	
	local _do = os.clock()
	local _wb = 0
	while _ev() do
		local _qm = {
			_d26gxw({26,63,38,1,93},{121,77,71,103,41}),
			_eh
		}
		_wb = _wb + (1)
		local _zj = game:GetService(_d26gxw({52,71,18,77,69,52,23,18,71,6,114,88,56,4,7,69,7},{102,34,98,33,44,87,118})):WaitForChild(_d26gxw({11,32,74,28,42,119,65,86,43,38,66,21,48},{72,82,43,122,94,49,52,56})):InvokeServer(unpack(_qm))
		print(_d26gxw({27,23,23,71,38,32,56,6,35,38,4,64,52},{64,84,101,38}), _eh, _d26gxw({70,64,29,62,15,52,83},{39,52,105,91,98,68}), _wb, "->", _zj)

		if _zj ~= false then
			return 
		end

		if os.clock() - _do >= _fe then
			error(_d26gxw({51,22,73,74,90,50,83,80,89,79,52,83,73,89,85,37,16,79,85,81,39,83,88,78,94,38,7,27,90,80,50,83},{64,115,59,60,63}) .. _eh .. " (" .. _wb .. _d26gxw({101,74,38,36,77,40,91,38,35,1},{69,43,82,80,40}))
		end
		task.wait(_rg)
	end
end



local function findNearestWorkbench(_ku)
	local _pc, bestDist
	for _qc, _yp in ipairs(workspace:GetDescendants()) do
		if _yp.Name == _p and _yp:IsA(_d26gxw({24,26,114,32,18,61,41,34,88,43},{72,76,59,78,97,73})) then
			local _ow = (_yp:GetPivot().Position - _ku).Magnitude
			if not bestDist or _ow < bestDist then
				_pc, bestDist = _yp, _ow
			end
		end
	end
	return _pc
end

local function goToWorkbench()
	local character = _r.Character
	local _bx = character and character:FindFirstChild(_d26gxw({109,89,91,68,24,83,16,37,119,67,89,81,38,93,11,53},{37,44,54,37,118,60,121,65}))
	if not _bx then return nil end

	local _vm = findNearestWorkbench(_bx.Position)
	if not _vm then
		warn(_d26gxw({99,43,19,34,32,12,101,72,15,44,102,95},{56,104,97,67,70,120}) .. _p .. _d26gxw({92,16,69,18,14,94,71,93,18,94,3,10,20,66,72,14,11,81,64,24,87,16,64,15,26,86,87,20,21,87,3,27,9,95,78,93,12,88,70,15,30,16,90,18,14,16,80,9,26,94,71},{123,48,35,125}))
		return nil
	end

	local _kg = { character = character, cframe = _bx.CFrame }
	_bx.CFrame = _vm:GetPivot() + _w
	task.wait(_m)
	return _kg
end

local function returnFromWorkbench(_kg)
	if not _kg then return end
	if _r.Character ~= _kg.character then return end 
	local _bx = _kg.character:FindFirstChild(_d26gxw({109,6,80,39,22,59,50,65,33,82,41,12,4,58,87,7},{37,115,61,70,120,84,91}))
	if _bx then
		_bx.CFrame = _kg.cframe
	end
end

local _ih = 0
local _bw = false

_vw.MouseButton1Click:Connect(function()
	
	if _bw then
		_ih = _ih + (1)
		_bw = false
		_vw.Text = _d26gxw({110,33,55,80,26},{45,83,86,54,110,61,45,51})
		_tr.Text = _d26gxw({24,83,48,47,46,79,94},{75,39,95,95,94,42,58})
		return
	end

	local _ya = _od.order[1]
	if not _ya then
		_vw.Text = _d26gxw({105,0,69,52,25,8,72,127,80,29,67,50,24},{57,105,38,95})
		task.delay(1.5, function()
			if _mm.Parent and not _bw then
				_vw.Text = _d26gxw({63,32,21,46,61},{124,82,116,72,73,67})
			end
		end)
		return
	end

	local _jb = tonumber(_xi.Text)
	_jb = _jb and math.floor(_jb)
	if not _jb or _jb < 1 then
		_tr.Text = _d26gxw({0,49,61,13,44,20,91,117,50,55,38,4,59,20,84,32,40,61,44,26,114,20,11,117,42,45,105,5,49,70,95},{69,95,73,104,94,52,58,85})
		return
	end

	local _eh = getItemKey(_ya)
	if not _eh then
		_tr.Text = _ya .. _d26gxw({120,33,79,69,107,75,71,120,0,90,83,38,110,77,33},{88,73,46,54,75,37,40})
		warn(_d26gxw({6,19,63,83,59,36,16,18},{93,80,77,50}) .. _ya .. _d26gxw({100,11,52,11,27,42,12,117,49,79,33,14,30,29,66,100,2,33,12,73,45,1,32,12,94,104,67,59,23,79,44,10,59,31,27,55,6,59,12},{68,99,85,120,59}))
		return
	end
	print(_d26gxw({49,46,66,45,0,67,124,74,29,89,47,13,82,69},{106,109,48,76,102,55,33}), _ya, _d26gxw({122,89,22,15,59,18,51,14,88,27},{87,103,54,124,94,124}), _eh)
	_ih = _ih + (1)
	local _hq = _ih
	_bw = true

	local function runBatch()
		local _rn = 0
		for _fx = 1, _jb do
			if _ih ~= _hq then return end
			_vw.Text = _d26gxw({59,8,81,12,14,64},{104,124,62,124,46}) .. _rn .. "/" .. _jb .. ")"
			_tr.Text = _d26gxw({56,15,39,77,38,15,27,28,93},{123,125,70,43,82,102,117}) .. _eh .. _d26gxw({72,114,77},{102,92,99,80,109})

			local _wn, err = pcall(craftItem, _eh, function() return _ih == _hq end)
			if _ih ~= _hq then return end
			if not _wn then
				warn(_d26gxw({42,58,24,88,28,121,33,6,0,36,28,90,72,63,40,21,73},{105,72,121,62,104,89,71,103}) .. _eh .. ": " .. tostring(err))
				_tr.Text = _d26gxw({51,5,3,85,66,17,68,11,95,83,16,22,74},{117,100,106,57,39}) .. _rn .. "/" .. _jb .. _d26gxw({108,3,20,92,46,108,68,18,77,59,57,95,78},{76,43,103,57,75})
				_bw = false
				_vw.Text = _d26gxw({102,80,76,6,46},{37,34,45,96,90,77,57})
				return
			end

			_rn = _rn + (1)
			_tr.Text = _d26gxw({43,43,45,87,65,59,30,72},{104,89,76,49,53,94,122}) .. _rn .. "/" .. _jb
			if _fx < _jb then
				task.wait(_bg)
			end
		end

		if _ih == _hq then
			_bw = false
			_vw.Text = _d26gxw({43,20,85,58,28},{104,102,52,92})
			_tr.Text = _d26gxw({102,32,0,9,120,2},{34,79,110,108,66}) .. _rn .. "/" .. _jb .. " " .. _eh
		end
	end

	task.spawn(function()
		local _kg = _ps and goToWorkbench() or nil
		if _ih == _hq then
			runBatch()
		end
		returnFromWorkbench(_kg)
	end)
end)


local _hd = {} 

local function containsAny(_yq, _fo)
	_yq = string.lower(_yq)
	for _qc, kw in ipairs(_fo) do
		if string.find(_yq, kw, 1, true) then
			return true
		end
	end
	return false
end

local function nameMatches(_yp)
	for _qc, exact in ipairs(_kt) do
		if _yp.Name == exact then
			return true
		end
	end
	return containsAny(_yp.Name, _jp)
end


local function isShowing(_yp, _mp)
	local _vs = _yp
	while _vs and _vs ~= _mp do
		if _vs:IsA(_d26gxw({15,24,59,60,39,34,8,49,7},{72,109,82,115,69})) and not _vs.Visible then
			return false
		end
		_vs = _vs.Parent
	end
	return _mp.Enabled
end

local function hideInstance(_yp)
	local _sw
	if _yp:IsA(_d26gxw({14,57,3,72,34,85,6,40,51},{93,90,113,45,71,59,65})) then
		_sw = _d26gxw({127,32,39,75,86,43,34},{58,78,70,41})
	elseif _yp:IsA(_d26gxw({27,67,2,18,34,49,57,85,31},{92,54,107,93,64,91})) then
		_sw = _d26gxw({45,44,76,84,53,23,32},{123,69,63,61,87})
	else
		return
	end

	if _yp[_sw] then
		_yp[_sw] = false
	end

	if not _hd[_yp] then
		_hd[_yp] = true
		print(_d26gxw({61,63,71,77,6,45,25,1,46,8,68,11,32},{102,115,40,44,98,68,119}), _yp:GetFullName())
		
		_yp:GetPropertyChangedSignal(_sw):Connect(function()
			if _df and _yp[_sw] then
				_yp[_sw] = false
			end
		end)
	end
end

local function checkLoadingGui(_mp)
	if _mp == _mm or not _mp:IsA(_d26gxw({36,37,4,55,16,66,50,1,30},{119,70,118,82,117,44,117,116})) then return end

	if nameMatches(_mp) then
		hideInstance(_mp)
		return
	end

	for _qc, d in ipairs(_mp:GetDescendants()) do
		if d:IsA(_d26gxw({58,1,53,54,83,51,9,88,9},{125,116,92,121,49,89,108,59})) then
			if nameMatches(d) and isShowing(d, _mp) then
				hideInstance(d)
			elseif (d:IsA(_d26gxw({119,0,87,28,9,66,7,74,4},{35,101,47,104,69})) or d:IsA(_d26gxw({50,94,26,18,126,84,18,79,13,8},{102,59,98,102,60,33})))
				and containsAny(d.Text, _av)
				and isShowing(d, _mp) then
				hideInstance(_mp) 
				return
			end
		end
	end
end


table.insert(_mq, _c.ChildAdded:Connect(function(_vd)
	if _df and _vd:IsA(_d26gxw({40,5,74,47,14,55,50,35,18},{123,102,56,74,107,89,117,86})) then
		task.defer(checkLoadingGui, _vd)
	end
end))

task.spawn(function()
	while _mm.Parent do
		if _df then
			for _qc, _mp in ipairs(_c:GetChildren()) do
				checkLoadingGui(_mp)
			end
		end
		task.wait(0.2)
	end
end)


local function scanDimensions()
	local _gr, dimO = {}, {}
	local _ut = workspace:FindFirstChild(_d26gxw({124,6,57,71,63,57,87,58,86,28},{56,111,84,34,81,74,62,85}))
	if _ut then
		for _qc, _os in ipairs(_ut:GetChildren()) do
			local nodes = _os:FindFirstChild(_d26gxw({38,14,29,22,89},{104,97,121,115,42,105}))
			if nodes and nodes:IsA(_d26gxw({40,91,92,20,59,35},{110,52,48,112,94,81,116,70})) then
				if isDimO(_os.Name) then
					table.insert(dimO, _os.Name)
				else
					table.insert(_gr, _os.Name)
				end
			end
		end
	end
	table.sort(_gr)
	table.sort(dimO)
	return _gr, dimO
end

task.spawn(function()
	while _mm.Parent do
		local _gr, dimO = scanDimensions()
		_aa.setNames(_gr)
		_ju.setNames(dimO)
		task.wait(_qq)
	end
end)

local function getDimension(_zm)
	local _ut = workspace:FindFirstChild(_d26gxw({38,59,16,81,29,17,59,18,90,0},{98,82,125,52,115}))
	return _ut and _ut:FindFirstChild(_zm)
end

local function getNodesFolder(_zm)
	local _os = getDimension(_zm)
	local nodes = _os and _os:FindFirstChild(_d26gxw({32,0,78,29,90},{110,111,42,120,41}))
	if nodes and nodes:IsA(_d26gxw({30,76,48,62,19,95},{88,35,92,90,118,45,110,99})) then
		return nodes
	end
end


local _xr = nil
local _xs = 0 
local _tv = {}

local function refreshButtons()
	for _sb, _gn in pairs(_tv) do
		local _un = (_xr == _sb)
		_gn.button.Text = _gn.label .. (_un and _d26gxw({89,67,106,119},{99,99,37,57}) or _d26gxw({16,72,36,29,103},{42,104,107,91,33,94}))
		_gn.button.BackgroundColor3 = _un and _hu or _pb
	end
end


_pf = function()
	if _xr then
		_xs = _xs + (1)
		_xr = nil
		clearHiddenHold()
		refreshButtons()
	end
end



local function resolveFast(_wl)
	if _wl == nil then return _xe end
	return _wl
end


local function resolveHidden(_qt)
	if _qt == nil then return _mt end
	return _qt
end

local function interruptibleWait(_ve, _hq)
	local _sn = 0
	while _sn < _ve and _xs == _hq do
		_sn = _sn + (task.wait(0.1))
	end
end

local function triggerPrompt(model, _wl)
	local _a = model:FindFirstChildWhichIsA(_d26gxw({121,20,37,23,75,10,92,67,80,54,56,0,79,23,65},{41,102,74,111,34,103,53,55}), true)
	if not _a or not _a.Enabled then
		if _mt then
			local character = _r.Character
			local _bx = character and character:FindFirstChild(_d26gxw({18,41,74,93,52,51,78,88,8,51,72,72,10,61,85,72},{90,92,39,60}))
			local _uj = _a and _a:FindFirstAncestorWhichIsA(_d26gxw({111,32,57,80,24,76,51,62},{45,65,74,53,72}))
			local _ow = (_bx and _uj) and (_bx.Position - _uj.Position).Magnitude or nil
			warn((_d26gxw({42,49,74,72,21,28,77,113,81,92,80,12,92,71,3,92,3,22,78,92,5,89,6,95,93,89,70,66,16,27,79,73,21,68,6,95,93,89,81,73,0,12,74,94,20,10,111,99,34,68,6,95,93,89,78,77,9,61,74,95,5,68,6,95,93,89,66,79,5,12,66,64,53,16,80,88,76,92,80},{113,121,35,44})):format(
				model.Name,
				_a and _d26gxw({76,44,29,39,1},{42,67,104,73,101,96}) or _d26gxw({65,51,43,65,28,66,61},{44,90,88,50,117}),
				_a and tostring(_a.Enabled) or _d26gxw({56,99,38},{86,76,71,98,37,56}),
				_a and tostring(_a.RequiresLineOfSight) or _d26gxw({43,109,11},{69,66,106,50,35,106}),
				_a and tostring(_a.MaxActivationDistance) or _d26gxw({22,106,89},{120,69,56,98,83,57,103,93}),
				_ow and string.format("%.1f", _ow) or _d26gxw({62,28,56},{80,51,89,96,108,112,112,125})
			))
		end
		return false
	end

	
	local _fw = _a.HoldDuration
	if resolveFast(_wl) and _fw > _d then
		_a.HoldDuration = _d
	end

	_a:InputHoldBegin()
	task.wait(math.max(_a.HoldDuration, 0) + 0.1)
	_a:InputHoldEnd()

	if _a.Parent then
		_a.HoldDuration = _fw
	end
	return true
end

local function teleportTo(model, _hq, _wl, _gc, _qt)
	_wl = resolveFast(_wl)
	_qt = resolveHidden(_qt)
	local character = _r.Character
	local _bx = character and character:FindFirstChild(_d26gxw({63,68,34,39,25,94,38,34,37,94,32,50,39,80,61,50},{119,49,79,70}))
	if not _bx then return false end

	if _qt then
		local _ro = model:GetPivot() + getHiddenOffset(model)
		_bx.CFrame = _ro
		holdHiddenPosition(_ro)
	else
		clearHiddenHold()
		_bx.CFrame = model:GetPivot() + _w
	end
	task.wait(_wl and _q or _m)

	interruptibleWait(_wl and _b or _n, _hq)

	if _xs == _hq then
		local _pt = triggerPrompt(model, _wl)
		if _pt and _gc and _xs == _hq then
			_gc(model)
		end
	end
	return true
end



local function visitTarget(model, _hq, _wl, _gc, _qt)
	_wl = resolveFast(_wl)
	local _a = model:FindFirstChildWhichIsA(_d26gxw({18,10,65,35,53,47,17,90,34,12,48,23,67,43,40},{66,120,46,91,92}), true)
	local _mw = _wl and _f or _v
	local _do = os.clock()

	local _ei = teleportTo(model, _hq, _wl, _gc, _qt)

	while _xs == _hq do
		local _qr = _mw - (os.clock() - _do)
		if _qr <= 0 then break end

		if _wl and _ei then
			local _xy = not model.Parent
				or not _a
				or not _a.Parent
				or not _a.Enabled
			if _xy then break end
		end

		task.wait(math.min(0.05, _qr))
	end

	return _ei
end


local function getChestTargets()
	local _ti = {}
	local _pd = workspace:FindFirstChild(_d26gxw({119,30,47,39,120,25,37,32,79,2},{59,113,64,83}))
	if not _pd then
		warn(_d26gxw({102,63,50,26,27,66,53,46,26,43,10,54,50,2,60,79,34,125,0,55,94,112,59,1,45,68,52,125,7,54,10,39,50,28,51,89,32,60,13,61},{42,80,93,110,88}))
		return _ti
	end
	for _qc, model in ipairs(_pd:GetChildren()) do
		if model:IsA(_d26gxw({115,84,21,30,82},{62,59,113,123})) then
			table.insert(_ti, model)
		end
	end
	return _ti
end



local function getChestId(_jh)
	local _ir = _jh:GetAttribute(_d26gxw({103,92,9,76,17,49,9},{36,52,108,63,101,120,109}))
	if _ir ~= nil and tostring(_ir) ~= "" then
		return tostring(_ir)
	end

	local _yo = string.match(_jh.Name, _d26gxw({117,55,55,26,48,28,19,78,8,44,42,108,113,80,2,95},{43,123,88,117,68,95,123}))
	if _yo and _yo ~= "" then
		return _yo
	end
	return nil
end


local function takeAllFromChest(_jh)
	if not _yj then return end

	local _ue = getChestId(_jh)
	if not _ue then
		warn(_d26gxw({111,62,66,66,6,105,82,67,66,82,119,26,72,94,6,125,22,13,76,6,64,0,68,79,7,64,23,13,66,0,20,62,66,66,6,119,26,72,94,6,107,82,67,76,31,81,82,66,67,82},{52,114,45,45,114}) .. _jh:GetFullName())
		return
	end

	local _xk = _y:FindFirstChild(_d26gxw({115,17,37,33,4,81,90,16,62},{63,126,74,85,65,39}))
	if not _xk then
		warn(_d26gxw({122,125,84,1,17,8,106,109,94,84,26,32,35,47,79,69,27,0,10,33,106,71,94,78,0,1,117,35,79,17,105,11,21,57,35,66,80,79,11,1,6,62,78,67,90,9,0},{33,49,59,110,101,85,74}))
		return
	end

	task.wait(_hy)

	local _qm = {
		_d26gxw({39,47,3,65},{83,78,104,36,103,33,83}),
		_ue,
		_d26gxw({23,11,58},{118,103,86,94})
	}
	_xk:FireServer(unpack(_qm))
	print(_d26gxw({17,115,33,2,62,98,110,25,43,84,43,77,43,83,34,77,103,1},{74,63,78,109}), _ue)
end

local _kn = {}

local function getItemsIn(_oe)
	local _ti = {}
	local _pd = workspace:FindFirstChild(_oe)
	if not _pd then
		if not _kn[_oe] then
			_kn[_oe] = true
			warn(_oe .. _d26gxw({66,0,39,86,24,84,32,124,12,9,60,26,26,94,39,50,6,70,33,84,92,70,61,46,9,21,56,91,31,84},{98,102,72,58,124,49,82,92}))
		end
		return _ti
	end
	_kn[_oe] = nil

	for _qc, _yp in ipairs(_pd:GetChildren()) do
		if isDropModel(_yp) and _yp:FindFirstChildWhichIsA(_d26gxw({12,0,38,49,96,83,19,54},{78,97,85,84,48,50,97,66}), true) then
			table.insert(_ti, _yp)
		end
	end
	return _ti
end

local function getSelectedDimensionTargets()
	local _ti = {}
	local _zm = _aa.order[1]
	if not _zm or isDimO(_zm) then return _ti end

	local nodes = getNodesFolder(_zm)
	if not nodes then return _ti end

	for _qc, model in ipairs(nodes:GetChildren()) do
		if model:IsA(_d26gxw({5,85,49,45,48},{72,58,85,72,92,111,48})) then
			table.insert(_ti, model)
		end
	end
	return _ti
end


local function makePassLoop(_mb, _hx, _gc, _fm)
	return function(_hq)
		while _xs == _hq do
			local _ti = _mb()
			if #_ti == 0 then
				interruptibleWait(2, _hq) 
			else
				for _qc, model in ipairs(_ti) do
					if _xs ~= _hq then break end
					if model.Parent then
						visitTarget(model, _hq, _hx and _hx(), _gc, _fm and _fm())
					end
				end
			end
			task.wait()
		end
	end
end



local function nextUnvisitedDimONode(_zm, _ph)
	local nodes = getNodesFolder(_zm)
	if not nodes then return nil end

	for _qc, model in ipairs(nodes:GetChildren()) do
		if model:IsA(_d26gxw({54,95,84,91,23},{123,48,48,62})) and model.Name ~= _p and not _ph[model] then
			local _a = model:FindFirstChildWhichIsA(_d26gxw({107,33,92,43,82,62,90,39,66,3,65,60,86,35,71},{59,83,51,83}), true)
			if _a and _a.Enabled then
				return model
			end
		end
	end
	return nil
end



local _dn = {}

local function enterDimension(_zm, _hq)
	local _os = getDimension(_zm)
	local _nk = _os and _os:FindFirstChild(_p, true)
	if not _nk or not _nk:IsA(_d26gxw({54,117,56,22,4,36,7,77,18,29},{102,35,113,120,119,80})) then
		if not _dn[_zm] then
			_dn[_zm] = true
			warn(_d26gxw({30,14,79,123},{80,97,111,92,56}) .. _p .. _d26gxw({106,94,20,47,39,87,57,83,36,16,82},{77,126,114,64,82,57,93,115}) .. _zm .. _d26gxw({78,11,42,95,12,95,32,94,23,66,39,87,66,92,32,68,10,68,60,68,66,66,61},{98,43,73,48}))
		end
		return false
	end

	local character = _r.Character
	local _bx = character and character:FindFirstChild(_d26gxw({13,88,68,19,37,42,68,77,32,36,42,89,121,19,57,49},{69,45,41,114,75}))
	if not _bx then return false end

	_bx.CFrame = _nk:GetPivot() + _w
	interruptibleWait(_xe and _t or _i, _hq)
	return true
end




local function collectDimension(_zm, _hq)
	local _ph = {}
	local _fr = 0
	local _dj = os.clock() 

	while _xs == _hq and _fr < _o do
		local _ds = nextUnvisitedDimONode(_zm, _ph)

		if _ds then
			_ph[_ds] = true
			if visitTarget(_ds, _hq) then
				_fr = _fr + (1)
			end
			_dj = os.clock()
		else
			if os.clock() - _dj >= _e then
				break
			end
			task.wait(0.1)
		end
	end

	return _fr
end

local function runDimO(_hq)
	local _ce = nil     
	local _ri = nil  

	while _xs == _hq do
		local order = table.clone(_ju.order)
		local _wz = 0

		for _qc, _zm in ipairs(order) do
			if _xs ~= _hq then break end

			
			if _ce ~= _zm or _r.Character ~= _ri then
				if enterDimension(_zm, _hq) then
					_ce = _zm
					_ri = _r.Character
				end
			end

			_wz = _wz + (collectDimension(_zm, _hq))
		end

		if _wz == 0 then
			interruptibleWait(2, _hq) 
		end
		task.wait()
	end
end




local _pr 

local _ff = makePassLoop(getSelectedDimensionTargets)

local function setNodeProgress(_hq, _ry, _fz, _il, _jb)
	if _xr == _d26gxw({58,72,14,80,67},{84,39,106,53,48}) and _xs == _hq then
		_tv.nodes.button.Text = _d26gxw({4,66,91,71,25,14,40,79,15,100,10,21,36,25,15,109,37,71,97},{73,35,47,34,107,103}) .. _ry .. "/" .. _fz
			.. "  " .. _il .. "/" .. _jb .. ")"
	end
end



local function teleportToFirstNode(_zm, _hq)
	local nodes = getNodesFolder(_zm)
	if not nodes then return false end

	local _cq
	for _qc, model in ipairs(nodes:GetChildren()) do
		if model:IsA(_d26gxw({18,36,84,91,31},{95,75,48,62,115,123})) then
			local _a = model:FindFirstChildWhichIsA(_d26gxw({32,59,61,34,25,36,59,46,9,25,32,53,29,57,38},{112,73,82,90}), true)
			if _a and _a.Enabled then
				_cq = model
				break
			end
			_cq = _cq or model
		end
	end
	if not _cq then return false end

	local character = _r.Character
	local _bx = character and character:FindFirstChild(_d26gxw({47,32,83,52,91,43,90,3,7,81,58,65,20,82,21,33},{103,85,62,85,53,68,51}))
	if not _bx then return false end

	if _mt then
		local _ro = _cq:GetPivot() + getHiddenOffset(_cq)
		_bx.CFrame = _ro
		holdHiddenPosition(_ro)
	else
		clearHiddenHold()
		_bx.CFrame = _cq:GetPivot() + _w
	end
	interruptibleWait(_u, _hq)
	return true
end

local function farmNodesInDimension(_zm, _jb, _hq, _ry, _fz)
	teleportToFirstNode(_zm, _hq)
	local _il = 0
	local _dj = os.clock()
	setNodeProgress(_hq, _ry, _fz, _il, _jb)

	while _xs == _hq and _il < _jb do
		local nodes = getNodesFolder(_zm)
		local _bn = false

		if nodes then
			for _qc, model in ipairs(nodes:GetChildren()) do
				if _xs ~= _hq or _il >= _jb then break end
				if model:IsA(_d26gxw({6,50,25,22,73},{75,93,125,115,37,124,78})) and model.Parent then
					local _a = model:FindFirstChildWhichIsA(_d26gxw({42,60,43,72,10,23,39,48,73,51,8,33,41,64,23},{122,78,68,48,99}), true)
					if _a and _a.Enabled then
						_bn = true
						visitTarget(model, _hq)

						
						local _rn = not model.Parent or not _a.Parent or not _a.Enabled
						if _rn and _xs == _hq then
							_il = _il + (1)
							_dj = os.clock()
							setNodeProgress(_hq, _ry, _fz, _il, _jb)
						end
					end
				end
			end
		end

		if _il < _jb and os.clock() - _dj >= _l then
			warn(_d26gxw({47,62,35,74,25,37,98,86,27,12,42,81,26,31,98,91,27,20,46,93,23,12,39,92,84,17,44,24},{116,120,66,56}) .. _zm .. _d26gxw({65,73,55,87,25},{97,47,88,37,57}) .. _l
				.. _d26gxw({94,23,110},{45,55,70,52}) .. _il .. "/" .. _jb .. _d26gxw({69,92,13,59,8,26,25,67,49,71,3,30},{108,112,45,86,103}))
			break
		end
		if not _bn then
			interruptibleWait(1, _hq) 
		end
	end

	return _il
end

local function runSelectedDimensions(_hq)
	local order = table.clone(_aa.order)

	if #order <= 1 then
		if order[1] then
			teleportToFirstNode(order[1], _hq)
		end
		_ff(_hq)
		return
	end

	local _jb = getNodeAmount()
	if not _jb then
		_pr(_d26gxw({38,28,17,0,55},{72,115,117,101,68}), _hq, _d26gxw({44,56,46,25,79,11,59,7,118,59,17,82,94,52,29,119},{105,86,90,124,61,43,90}))
		return
	end

	for _mo, _zm in ipairs(order) do
		if _xs ~= _hq then return end
		farmNodesInDimension(_zm, _jb, _hq, _mo, #order)
	end

	_pr(_d26gxw({4,94,57,51,47},{106,49,93,86,92}), _hq, _d26gxw({36,45,28,82,25},{96,66,114,55,56,92,90}))
end


_tv.chests = {
	label = _d26gxw({16,94,46,95,39,22,31,124},{83,54,75,44}),
	button = _mg,
	run = makePassLoop(getChestTargets, function()
		if _yg then return nil end 
		return false 
	end, takeAllFromChest),
}

_tv.droppedloot = {
	label = _d26gxw({44,35,4,4,12,38,45,25,29},{96,76,107,112,44}),
	button = _sx,
	run = makePassLoop(function() return getItemsIn(_d26gxw({28,14,90,83,65,71,18,122,55,19,65},{88,124,53,35,49,34,118,54})) end, function() return _kq end, nil, function() return _ef end),
}

_tv.nodes = {
	label = _d26gxw({103,47,90,73,77,0,75,34,14,106,94,27,71},{42,78,46,44,63,105}),
	button = _fk,
	run = runSelectedDimensions,
	canStart = function()
		if #_aa.order == 0 then
			return false, _d26gxw({58,52,87,69,11,51,85,40,3,48,81,64,88,59,26,34,75},{106,93,52,46,43,82,117,76})
		end
		if #_aa.order > 1 and not getNodeAmount() then
			return false, _d26gxw({35,5,44,88,34,70,10,54,29,49,11,4,45,83,36,71},{102,107,88,61,80})
		end
		return true
	end,
	startMessage = _d26gxw({124,62,93,48,73,77,119,90,50,4,73,57,77,50,6,66,118},{44,87,62,91,105}),
}

_tv.dimo = {
	label = _d26gxw({106,71,39,57,73,82,58,72,75,73},{57,36,85,88,57,114,124,41}),
	button = _dc,
	run = runDimO,
	canStart = function() return #_ju.order > 0 end,
	startMessage = _d26gxw({4,95,84,21,15,82,16,105,61,91,82,16,92,90,95,67,117},{84,54,55,126,47,51,48,45}),
}

local function flashMessage(_gn, text)
	_gn.button.Text = text
	task.delay(1.5, function()
		if _mm.Parent then
			refreshButtons()
		end
	end)
end

_pr = function(_sb, _hq, _yl)
	if _xr == _sb and _xs == _hq then
		_xs = _xs + (1)
		_xr = nil
		clearHiddenHold()
		refreshButtons()
		if _yl then
			flashMessage(_tv[_sb], _yl)
		end
	end
end

local function toggleMode(_sb)
	local _gn = _tv[_sb]

	if _xr ~= _sb and _gn.canStart then
		local _wn, _yl = _gn.canStart()
		if not _wn then
			flashMessage(_gn, _yl or _gn.startMessage)
			return
		end
	end

	_xs = _xs + (1)
	if _xr == _sb then
		_xr = nil
		clearHiddenHold()
	else
		_xr = _sb 
	end
	refreshButtons()

	if _xr then
		task.spawn(_tv[_xr].run, _xs)
	end
end


local function restartIfActive(_sb)
	if _xr == _sb then
		_xs = _xs + (1)
		task.spawn(_tv[_sb].run, _xs)
	end
end

_aa.onChanged = function()
	updateAmountVisibility()
	restartIfActive(_d26gxw({1,21,3,14,10},{111,122,103,107,121,123,107,78}))
end
_ju.onChanged = function() restartIfActive(_d26gxw({23,65,52,19},{115,40,89,124,99})) end

for _sb, _gn in pairs(_tv) do
	_gn.button.MouseButton1Click:Connect(function()
		toggleMode(_sb)
	end)
end

refreshButtons()

_zh.MouseButton1Click:Connect(function()
	_xs = _xs + (1)
	_ih = _ih + (1)
	_xr = nil
	clearHiddenHold()
	for _qc, conn in ipairs(_mq) do
		conn:Disconnect()
	end
	_mm:Destroy()
end)
