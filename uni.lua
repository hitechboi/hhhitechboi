local var = {
    -- script shit
    scriptName    = "Bite By Night",
    version       = "1.0",
    author        = "",
    -- accentsbruh
    accent        = Color3.fromRGB(70,120,255),
    card          = Color3.fromRGB(11,13,23),
    border        = Color3.fromRGB(30,40,72),
    textWhite     = Color3.fromRGB(215,220,240),
    textGray      = Color3.fromRGB(100,112,145),
    btnBackground = Color3.fromRGB(14,18,33),
    btnHovered    = Color3.fromRGB(20,28,50),
    btnPressed    = Color3.fromRGB(30,50,100),
    -- uisizing
    cardWidth     = 300,
    cardHeight    = 160,
    btnWidth      = 115,
    btnHeight     = 40,
    btnGap        = 16,
    cornerRadius  = 6,
    titleSize     = 22,
    subSize       = 12,
    btnLabelSize  = 16,
    -- anims
    scaleDuration = 0.4,
    slideDuration = 0.4,
    fadeOutDur    = 0.3,
    bounceDur     = 0.4,
    slideOffset   = 20,
}

local _0xD=function(b)local r=""for i=1,#b do r=r..string.char(b[i])end return r end
local _0x00=math.floor
local _0xGID=_0x00(game.GameId)
local _0xPID=_0x00(game.PlaceId)
if _0xPID==_0x00(70845479499574)then
    local _lp=game:GetService("Players").LocalPlayer
    local _ms=_lp:GetMouse()
    local cam=workspace.CurrentCamera
    local sx,sy=cam.ViewportSize.X,cam.ViewportSize.Y
    local v2=Vector2.new
    local flr=math.floor
    local clp=function(v,a,b)return math.max(a,math.min(b,v))end
    local lerp=function(a,b,t)return a+(b-a)*t end
    local lerpC=function(c1,c2,t)
        local r1,g1,b1=c1.R*255,c1.G*255,c1.B*255
        local r2,g2,b2=c2.R*255,c2.G*255,c2.B*255
        return Color3.fromRGB(flr(r1+(r2-r1)*t),flr(g1+(g2-g1)*t),flr(b1+(b2-b1)*t))
    end
    local easeOut=function(t)return 1-(1-t)*(1-t)*(1-t)end
    local ins=function(mx,my,rx,ry,rw,rh)return mx>=rx and mx<=rx+rw and my>=ry and my<=ry+rh end
    local accentCol=Color3.fromRGB(70,120,255)
    local cardCol=Color3.fromRGB(11,13,23)
    local borderCol=Color3.fromRGB(30,40,72)
    local whiteCol=Color3.fromRGB(215,220,240)
    local grayCol=Color3.fromRGB(100,112,145)
    local btnBg=Color3.fromRGB(14,18,33)
    local btnHover=Color3.fromRGB(20,28,50)
    local btnActive=Color3.fromRGB(30,50,100)
    local FNT=Drawing.Fonts.Monospace
    pcall(function()FNT=Drawing.Fonts.System end)
    local FNTB=FNT
    pcall(function()FNTB=Drawing.Fonts.SystemBold end)
    local dObjs={}
    local function mk(typ,props)
        local o=Drawing.new(typ)
        for k,vl in pairs(props)do o[k]=vl end
        table.insert(dObjs,o)
        return o
    end
    local function cleanup()
        for _,o in ipairs(dObjs)do pcall(function()o:Remove()end)end
        table.clear(dObjs)
    end
    local CW,CH=300,160
    local scx,scy=flr(sx/2),flr(sy/2)
    local r=6
    local bgS1=mk("Square",{Position=v2(scx,scy),Size=v2(0,0),Color=cardCol,Filled=true,Transparency=0,ZIndex=50,Visible=true})
    local bgS2=mk("Square",{Position=v2(scx,scy),Size=v2(0,0),Color=cardCol,Filled=true,Transparency=0,ZIndex=50,Visible=true})
    local bgC1=mk("Circle",{Position=v2(scx,scy),Radius=1,Color=cardCol,Filled=true,Transparency=0,NumSides=24,ZIndex=50,Visible=true})
    local bgC2=mk("Circle",{Position=v2(scx,scy),Radius=1,Color=cardCol,Filled=true,Transparency=0,NumSides=24,ZIndex=50,Visible=true})
    local bgC3=mk("Circle",{Position=v2(scx,scy),Radius=1,Color=cardCol,Filled=true,Transparency=0,NumSides=24,ZIndex=50,Visible=true})
    local bgC4=mk("Circle",{Position=v2(scx,scy),Radius=1,Color=cardCol,Filled=true,Transparency=0,NumSides=24,ZIndex=50,Visible=true})
    local bL1=mk("Line",{From=v2(scx,scy),To=v2(scx,scy),Color=borderCol,Thickness=1,Transparency=0,ZIndex=51,Visible=true})
    local bL2=mk("Line",{From=v2(scx,scy),To=v2(scx,scy),Color=borderCol,Thickness=1,Transparency=0,ZIndex=51,Visible=true})
    local bL3=mk("Line",{From=v2(scx,scy),To=v2(scx,scy),Color=borderCol,Thickness=1,Transparency=0,ZIndex=51,Visible=true})
    local bL4=mk("Line",{From=v2(scx,scy),To=v2(scx,scy),Color=borderCol,Thickness=1,Transparency=0,ZIndex=51,Visible=true})
    local function layoutCard(cw,ch)
        local lx=scx-flr(cw/2)
        local ly=scy-flr(ch/2)
        local cr=math.min(r,flr(math.min(cw,ch)/2))
        pcall(function()bgS1.Position=v2(lx+cr,ly);bgS1.Size=v2(math.max(0,cw-cr*2),ch)end)
        pcall(function()bgS2.Position=v2(lx,ly+cr);bgS2.Size=v2(cw,math.max(0,ch-cr*2))end)
        pcall(function()bgC1.Position=v2(lx+cr,ly+cr);bgC1.Radius=cr end)
        pcall(function()bgC2.Position=v2(lx+cw-cr,ly+cr);bgC2.Radius=cr end)
        pcall(function()bgC3.Position=v2(lx+cr,ly+ch-cr);bgC3.Radius=cr end)
        pcall(function()bgC4.Position=v2(lx+cw-cr,ly+ch-cr);bgC4.Radius=cr end)
        pcall(function()bL1.From=v2(lx+cr,ly);bL1.To=v2(lx+cw-cr,ly)end)
        pcall(function()bL2.From=v2(lx+cr,ly+ch);bL2.To=v2(lx+cw-cr,ly+ch)end)
        pcall(function()bL3.From=v2(lx,ly+cr);bL3.To=v2(lx,ly+ch-cr)end)
        pcall(function()bL4.From=v2(lx+cw,ly+cr);bL4.To=v2(lx+cw,ly+ch-cr)end)
    end
    local slideOff=20
    local titleParts={
        {txt="Bite By Night",col=accentCol,sz=22,bx=scx,by=scy-52},
    }
    local contentItems={}
    for _,p in ipairs(titleParts)do
        local o=mk("Text",{Text=p.txt,Position=v2(p.bx,p.by+slideOff),Color=p.col,Size=p.sz,Font=FNTB,Center=true,Outline=false,Transparency=0,ZIndex=52,Visible=true})
        table.insert(contentItems,{obj=o,bx=p.bx,by=p.by,delay=0})
    end
    local subObj=mk("Text",{Text="select version",Position=v2(scx,scy-24+slideOff),Color=grayCol,Size=12,Font=FNT,Center=true,Outline=false,Transparency=0,ZIndex=52,Visible=true})
    table.insert(contentItems,{obj=subObj,bx=scx,by=scy-24,delay=0.06})
    local BW,BH=115,40
    local bGap=16
    local b1x=scx-BW-flr(bGap/2)
    local b2x=scx+flr(bGap/2)
    local bby=scy+2
    local function mkBtn(bx,by,label,lblSz,defCol,delay)
        local bs1=mk("Square",{Position=v2(bx+6,by+slideOff),Size=v2(BW-12,BH),Color=btnBg,Filled=true,Transparency=0,ZIndex=52,Visible=true})
        local bs2=mk("Square",{Position=v2(bx,by+6+slideOff),Size=v2(BW,BH-12),Color=btnBg,Filled=true,Transparency=0,ZIndex=52,Visible=true})
        local bc1=mk("Circle",{Position=v2(bx+6,by+6+slideOff),Radius=6,Color=btnBg,Filled=true,Transparency=0,NumSides=20,ZIndex=52,Visible=true})
        local bc2=mk("Circle",{Position=v2(bx+BW-6,by+6+slideOff),Radius=6,Color=btnBg,Filled=true,Transparency=0,NumSides=20,ZIndex=52,Visible=true})
        local bc3=mk("Circle",{Position=v2(bx+6,by+BH-6+slideOff),Radius=6,Color=btnBg,Filled=true,Transparency=0,NumSides=20,ZIndex=52,Visible=true})
        local bc4=mk("Circle",{Position=v2(bx+BW-6,by+BH-6+slideOff),Radius=6,Color=btnBg,Filled=true,Transparency=0,NumSides=20,ZIndex=52,Visible=true})
        local bl=mk("Text",{Text=label,Position=v2(bx+flr(BW/2),by+flr(BH/2)-flr(lblSz/2)+slideOff),Color=defCol,Size=lblSz,Font=FNTB,Center=true,Outline=false,Transparency=0,ZIndex=54,Visible=true})
        local b={s1=bs1,s2=bs2,c1=bc1,c2=bc2,c3=bc3,c4=bc4,lbl=bl,ox=bx,oy=by,baseW=BW,baseH=BH,curScale=1,targetScale=1,defCol=defCol,lblT=0,delay=delay,lblSz=lblSz}
        local allParts={bs1,bs2,bc1,bc2,bc3,bc4,bl}
        for _,part in ipairs(allParts)do
            table.insert(contentItems,{obj=part,bx=0,by=0,delay=delay,isBtn=true,btn=b})
        end
        return b
    end
    local btnCI=mkBtn(b1x,bby,"Check It",16,whiteCol,0.12)
    local btnML=mkBtn(b2x,bby,"Matcha Latte",13,grayCol,0.18)
    local function layoutBtn(b,sc)
        local w=flr(b.baseW*sc)
        local h=flr(b.baseH*sc)
        local dx=flr((b.baseW-w)/2)
        local dy=flr((b.baseH-h)/2)
        local nx=b.ox+dx
        local ny=b.oy+dy
        local cr=math.max(1,flr(6*sc))
        pcall(function()b.s1.Position=v2(nx+cr,ny);b.s1.Size=v2(math.max(0,w-cr*2),h)end)
        pcall(function()b.s2.Position=v2(nx,ny+cr);b.s2.Size=v2(w,math.max(0,h-cr*2))end)
        pcall(function()b.c1.Position=v2(nx+cr,ny+cr);b.c1.Radius=cr end)
        pcall(function()b.c2.Position=v2(nx+w-cr,ny+cr);b.c2.Radius=cr end)
        pcall(function()b.c3.Position=v2(nx+cr,ny+h-cr);b.c3.Radius=cr end)
        pcall(function()b.c4.Position=v2(nx+w-cr,ny+h-cr);b.c4.Radius=cr end)
        pcall(function()b.lbl.Position=v2(nx+flr(w/2),ny+flr(h/2)-flr(b.lblSz/2))end)
    end
    local function setBtnCol(b,col)
        pcall(function()b.s1.Color=col;b.s2.Color=col end)
        pcall(function()b.c1.Color=col;b.c2.Color=col;b.c3.Color=col;b.c4.Color=col end)
    end
    local chosen=nil
    local bouncing=false
    local _prs=false
    local _drg=false
    local _dox,_doy=0,0
    local function moveAll(dx,dy)
        scx=scx+dx;scy=scy+dy
        btnCI.ox=btnCI.ox+dx;btnCI.oy=btnCI.oy+dy
        btnML.ox=btnML.ox+dx;btnML.oy=btnML.oy+dy
        for _,ci in ipairs(contentItems)do
            if not ci.isBtn then ci.bx=ci.bx+dx;ci.by=ci.by+dy end
        end
        layoutCard(CW,CH)
        if not bouncing then layoutBtn(btnCI,btnCI.curScale);layoutBtn(btnML,btnML.curScale)end
        for _,ci in ipairs(contentItems)do
            if not ci.isBtn then pcall(function()ci.obj.Position=v2(ci.bx,ci.by)end)end
        end
    end
    local cardBg={bgS1,bgS2,bgC1,bgC2,bgC3,bgC4,bL1,bL2,bL3,bL4}
    local scaleDur=0.4
    local s0=tick()
    while tick()-s0<scaleDur do
        local p=clp((tick()-s0)/scaleDur,0,1)
        local ep=easeOut(p)
        local cw=math.max(2,flr(CW*ep))
        local ch=math.max(2,flr(CH*ep))
        layoutCard(cw,ch)
        for _,o in ipairs(cardBg)do pcall(function()o.Transparency=ep end)end
        task.wait(0.016)
    end
    layoutCard(CW,CH)
    for _,o in ipairs(cardBg)do pcall(function()o.Transparency=1 end)end
    local slideDur=0.4
    local maxDelay=0.18
    local totalDur=slideDur+maxDelay
    local f0=tick()
    while tick()-f0<totalDur do
        local elapsed=tick()-f0
        for _,ci in ipairs(contentItems)do
            local t=elapsed-(ci.delay or 0)
            if t<0 then
                pcall(function()ci.obj.Transparency=0 end)
            elseif t<slideDur then
                local ep=easeOut(clp(t/slideDur,0,1))
                pcall(function()ci.obj.Transparency=ep end)
                if not ci.isBtn then
                    pcall(function()ci.obj.Position=v2(ci.bx,ci.by+flr(slideOff*(1-ep)))end)
                end
            else
                pcall(function()ci.obj.Transparency=1 end)
                if not ci.isBtn then
                    pcall(function()ci.obj.Position=v2(ci.bx,ci.by)end)
                end
            end
        end
        task.wait(0.016)
    end
    for _,ci in ipairs(contentItems)do
        pcall(function()ci.obj.Transparency=1 end)
        if not ci.isBtn then pcall(function()ci.obj.Position=v2(ci.bx,ci.by)end)end
    end
    layoutBtn(btnCI,1)
    layoutBtn(btnML,1)
    setBtnCol(btnCI,btnBg)
    setBtnCol(btnML,btnBg)
    btnCI.lblT=0;btnML.lblT=0
    pcall(function()btnCI.lbl.Color=btnCI.defCol end)
    pcall(function()btnML.lbl.Color=btnML.defCol end)
    while not chosen do
        task.wait(0.016)
        local mx,my=_ms.X,_ms.Y
        local m1=false
        pcall(function()m1=iskeypressed(0x01)end)
        local cardX=scx-flr(CW/2)
        local cardY=scy-flr(CH/2)
        local onCard=ins(mx,my,cardX,cardY,CW,CH)
        local onCI=ins(mx,my,btnCI.ox,btnCI.oy,btnCI.baseW,btnCI.baseH)
        local onML=ins(mx,my,btnML.ox,btnML.oy,btnML.baseW,btnML.baseH)
        if m1 and not _prs then
            _prs=true
            if onCI then
                chosen="checkit"
            elseif onML then
                chosen="matcha"
            elseif onCard then
                _drg=true;_dox=mx;_doy=my
            end
        elseif m1 and _prs then
            if _drg then
                local dx=mx-_dox
                local dy=my-_doy
                if dx~=0 or dy~=0 then
                    moveAll(dx,dy)
                    _dox=mx;_doy=my
                end
            end
        elseif not m1 then
            _prs=false
            _drg=false
        end
        local h1=onCI and not _drg
        local h2=onML and not _drg
        btnCI.targetScale=h1 and 1.08 or 1
        btnML.targetScale=h2 and 1.08 or 1
        setBtnCol(btnCI,h1 and btnHover or btnBg)
        setBtnCol(btnML,h2 and btnHover or btnBg)
        btnCI.lblT=clp(btnCI.lblT+(h1 and 0.08 or -0.08),0,1)
        btnML.lblT=clp(btnML.lblT+(h2 and 0.08 or -0.08),0,1)
        pcall(function()btnCI.lbl.Color=lerpC(btnCI.defCol,accentCol,easeOut(btnCI.lblT))end)
        pcall(function()btnML.lbl.Color=lerpC(btnML.defCol,accentCol,easeOut(btnML.lblT))end)
        if not bouncing then
            btnCI.curScale=lerp(btnCI.curScale,btnCI.targetScale,0.15)
            btnML.curScale=lerp(btnML.curScale,btnML.targetScale,0.15)
            layoutBtn(btnCI,btnCI.curScale)
            layoutBtn(btnML,btnML.curScale)
        end
    end
    local selBtn=chosen=="checkit" and btnCI or btnML
    setBtnCol(selBtn,btnActive)
    pcall(function()selBtn.lbl.Color=whiteCol end)
    bouncing=true
    local t0=tick()
    local dur2=0.4
    while tick()-t0<dur2 do
        local t=clp((tick()-t0)/dur2,0,1)
        local sc
        if t<0.25 then sc=lerp(1.08,0.88,easeOut(t/0.25))
        elseif t<0.55 then sc=lerp(0.88,1.06,easeOut((t-0.25)/0.3))
        elseif t<0.8 then sc=lerp(1.06,0.97,easeOut((t-0.55)/0.25))
        else sc=lerp(0.97,1.0,easeOut((t-0.8)/0.2))end
        layoutBtn(selBtn,sc)
        task.wait(0.016)
    end
    layoutBtn(selBtn,1.0)
    task.wait(0.15)
    local fa0=tick()
    local fd=0.3
    local snap={}
    for _,o in ipairs(dObjs)do table.insert(snap,o)end
    while tick()-fa0<fd do
        local p=clp((tick()-fa0)/fd,0,1)
        local ep=easeOut(p)
        for _,o in ipairs(snap)do pcall(function()o.Transparency=1-ep end)end
        task.wait(0.016)
    end
    cleanup()
    local cache="?cache="..tostring(os.time())
    local url
    if chosen=="checkit" then
        url=_0xD({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,104,105,116,101,99,104,98,111,105,47,99,104,101,99,107,105,116,118,50,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,98,105,116,101,98,121,110,105,103,104,116,46,108,117,97})
    else
        url=_0xD({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,104,105,116,101,99,104,98,111,105,47,99,104,101,99,107,105,116,118,50,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,98,98,110,109,97,116,99,104,97,108,97,116,116,101,46,108,117,97})
    end
    task.spawn(loadstring(game:HttpGet(url..cache)))
    while true do task.wait(60)end
elseif _0xGID==_0x00(6809578891)then
    loadstring(game:HttpGet(_0xD({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,104,105,116,101,99,104,98,111,105,47,98,105,122,122,97,114,101,104,105,106,105,110,107,115,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,104,105,110,106,105,107,115,101,46,108,117,97}).."?cache="..tostring(os.time())))()
elseif _0xGID==_0x00(73885730)then
    local _lp=game:GetService("Players").LocalPlayer
    local _ms=_lp:GetMouse()
    local cam=workspace.CurrentCamera
    local sx,sy=cam.ViewportSize.X,cam.ViewportSize.Y
    local v2=Vector2.new
    local flr=math.floor
    local clp=function(v,a,b)return math.max(a,math.min(b,v))end
    local lerp=function(a,b,t)return a+(b-a)*t end
    local lerpC=function(c1,c2,t)
        local r1,g1,b1=c1.R*255,c1.G*255,c1.B*255
        local r2,g2,b2=c2.R*255,c2.G*255,c2.B*255
        return Color3.fromRGB(flr(r1+(r2-r1)*t),flr(g1+(g2-g1)*t),flr(b1+(b2-b1)*t))
    end
    local easeOut=function(t)return 1-(1-t)*(1-t)*(1-t)end
    local ins=function(mx,my,rx,ry,rw,rh)return mx>=rx and mx<=rx+rw and my>=ry and my<=ry+rh end
    local accentCol=Color3.fromRGB(70,120,255)
    local cardCol=Color3.fromRGB(11,13,23)
    local borderCol=Color3.fromRGB(30,40,72)
    local whiteCol=Color3.fromRGB(215,220,240)
    local grayCol=Color3.fromRGB(100,112,145)
    local btnBg=Color3.fromRGB(14,18,33)
    local btnHover=Color3.fromRGB(20,28,50)
    local btnActive=Color3.fromRGB(30,50,100)
    local FNT=Drawing.Fonts.Monospace
    pcall(function()FNT=Drawing.Fonts.System end)
    local FNTB=FNT
    pcall(function()FNTB=Drawing.Fonts.SystemBold end)
    local dObjs={}
    local function mk(typ,props)
        local o=Drawing.new(typ)
        for k,vl in pairs(props)do o[k]=vl end
        table.insert(dObjs,o)
        return o
    end
    local function cleanup()
        for _,o in ipairs(dObjs)do pcall(function()o:Remove()end)end
        table.clear(dObjs)
    end
    local CW,CH=300,160
    local scx,scy=flr(sx/2),flr(sy/2)
    local r=6
    local bgS1=mk("Square",{Position=v2(scx,scy),Size=v2(0,0),Color=cardCol,Filled=true,Transparency=0,ZIndex=50,Visible=true})
    local bgS2=mk("Square",{Position=v2(scx,scy),Size=v2(0,0),Color=cardCol,Filled=true,Transparency=0,ZIndex=50,Visible=true})
    local bgC1=mk("Circle",{Position=v2(scx,scy),Radius=1,Color=cardCol,Filled=true,Transparency=0,NumSides=24,ZIndex=50,Visible=true})
    local bgC2=mk("Circle",{Position=v2(scx,scy),Radius=1,Color=cardCol,Filled=true,Transparency=0,NumSides=24,ZIndex=50,Visible=true})
    local bgC3=mk("Circle",{Position=v2(scx,scy),Radius=1,Color=cardCol,Filled=true,Transparency=0,NumSides=24,ZIndex=50,Visible=true})
    local bgC4=mk("Circle",{Position=v2(scx,scy),Radius=1,Color=cardCol,Filled=true,Transparency=0,NumSides=24,ZIndex=50,Visible=true})
    local bL1=mk("Line",{From=v2(scx,scy),To=v2(scx,scy),Color=borderCol,Thickness=1,Transparency=0,ZIndex=51,Visible=true})
    local bL2=mk("Line",{From=v2(scx,scy),To=v2(scx,scy),Color=borderCol,Thickness=1,Transparency=0,ZIndex=51,Visible=true})
    local bL3=mk("Line",{From=v2(scx,scy),To=v2(scx,scy),Color=borderCol,Thickness=1,Transparency=0,ZIndex=51,Visible=true})
    local bL4=mk("Line",{From=v2(scx,scy),To=v2(scx,scy),Color=borderCol,Thickness=1,Transparency=0,ZIndex=51,Visible=true})
    local function layoutCard(cw,ch)
        local lx=scx-flr(cw/2)
        local ly=scy-flr(ch/2)
        local cr=math.min(r,flr(math.min(cw,ch)/2))
        pcall(function()bgS1.Position=v2(lx+cr,ly);bgS1.Size=v2(math.max(0,cw-cr*2),ch)end)
        pcall(function()bgS2.Position=v2(lx,ly+cr);bgS2.Size=v2(cw,math.max(0,ch-cr*2))end)
        pcall(function()bgC1.Position=v2(lx+cr,ly+cr);bgC1.Radius=cr end)
        pcall(function()bgC2.Position=v2(lx+cw-cr,ly+cr);bgC2.Radius=cr end)
        pcall(function()bgC3.Position=v2(lx+cr,ly+ch-cr);bgC3.Radius=cr end)
        pcall(function()bgC4.Position=v2(lx+cw-cr,ly+ch-cr);bgC4.Radius=cr end)
        pcall(function()bL1.From=v2(lx+cr,ly);bL1.To=v2(lx+cw-cr,ly)end)
        pcall(function()bL2.From=v2(lx+cr,ly+ch);bL2.To=v2(lx+cw-cr,ly+ch)end)
        pcall(function()bL3.From=v2(lx,ly+cr);bL3.To=v2(lx,ly+ch-cr)end)
        pcall(function()bL4.From=v2(lx+cw,ly+cr);bL4.To=v2(lx+cw,ly+ch-cr)end)
    end
    local slideOff=20
    local titleParts={
        {txt="Check It",col=accentCol,sz=22,bx=scx,by=scy-52},
    }
    local contentItems={}
    for _,p in ipairs(titleParts)do
        local o=mk("Text",{Text=p.txt,Position=v2(p.bx,p.by+slideOff),Color=p.col,Size=p.sz,Font=FNTB,Center=true,Outline=false,Transparency=0,ZIndex=52,Visible=true})
        table.insert(contentItems,{obj=o,bx=p.bx,by=p.by,delay=0})
    end
    local subObj=mk("Text",{Text="select version",Position=v2(scx,scy-24+slideOff),Color=grayCol,Size=12,Font=FNT,Center=true,Outline=false,Transparency=0,ZIndex=52,Visible=true})
    table.insert(contentItems,{obj=subObj,bx=scx,by=scy-24,delay=0.06})
    local BW,BH=115,40
    local bGap=16
    local b1x=scx-BW-flr(bGap/2)
    local b2x=scx+flr(bGap/2)
    local bby=scy+2
    local function mkBtn(bx,by,label,defCol,delay)
        local bs1=mk("Square",{Position=v2(bx+6,by+slideOff),Size=v2(BW-12,BH),Color=btnBg,Filled=true,Transparency=0,ZIndex=52,Visible=true})
        local bs2=mk("Square",{Position=v2(bx,by+6+slideOff),Size=v2(BW,BH-12),Color=btnBg,Filled=true,Transparency=0,ZIndex=52,Visible=true})
        local bc1=mk("Circle",{Position=v2(bx+6,by+6+slideOff),Radius=6,Color=btnBg,Filled=true,Transparency=0,NumSides=20,ZIndex=52,Visible=true})
        local bc2=mk("Circle",{Position=v2(bx+BW-6,by+6+slideOff),Radius=6,Color=btnBg,Filled=true,Transparency=0,NumSides=20,ZIndex=52,Visible=true})
        local bc3=mk("Circle",{Position=v2(bx+6,by+BH-6+slideOff),Radius=6,Color=btnBg,Filled=true,Transparency=0,NumSides=20,ZIndex=52,Visible=true})
        local bc4=mk("Circle",{Position=v2(bx+BW-6,by+BH-6+slideOff),Radius=6,Color=btnBg,Filled=true,Transparency=0,NumSides=20,ZIndex=52,Visible=true})
        local bl=mk("Text",{Text=label,Position=v2(bx+flr(BW/2),by+flr(BH/2)-8+slideOff),Color=defCol,Size=16,Font=FNTB,Center=true,Outline=false,Transparency=0,ZIndex=54,Visible=true})
        local b={s1=bs1,s2=bs2,c1=bc1,c2=bc2,c3=bc3,c4=bc4,lbl=bl,ox=bx,oy=by,baseW=BW,baseH=BH,curScale=1,targetScale=1,defCol=defCol,lblT=0,delay=delay,lblSz=16}
        local allParts={bs1,bs2,bc1,bc2,bc3,bc4,bl}
        for _,part in ipairs(allParts)do
            table.insert(contentItems,{obj=part,bx=0,by=0,delay=delay,isBtn=true,btn=b})
        end
        return b
    end
    local btn2=mkBtn(b1x,bby,"Load v2",whiteCol,0.12)
    local btn1=mkBtn(b2x,bby,"Load v1",grayCol,0.18)
    local function layoutBtn(b,sc)
        local w=flr(b.baseW*sc)
        local h=flr(b.baseH*sc)
        local dx=flr((b.baseW-w)/2)
        local dy=flr((b.baseH-h)/2)
        local nx=b.ox+dx
        local ny=b.oy+dy
        local cr=math.max(1,flr(6*sc))
        pcall(function()b.s1.Position=v2(nx+cr,ny);b.s1.Size=v2(math.max(0,w-cr*2),h)end)
        pcall(function()b.s2.Position=v2(nx,ny+cr);b.s2.Size=v2(w,math.max(0,h-cr*2))end)
        pcall(function()b.c1.Position=v2(nx+cr,ny+cr);b.c1.Radius=cr end)
        pcall(function()b.c2.Position=v2(nx+w-cr,ny+cr);b.c2.Radius=cr end)
        pcall(function()b.c3.Position=v2(nx+cr,ny+h-cr);b.c3.Radius=cr end)
        pcall(function()b.c4.Position=v2(nx+w-cr,ny+h-cr);b.c4.Radius=cr end)
        pcall(function()b.lbl.Position=v2(nx+flr(w/2),ny+flr(h/2)-flr(b.lbl.Size/2))end)
    end
    local function setBtnCol(b,col)
        pcall(function()b.s1.Color=col;b.s2.Color=col end)
        pcall(function()b.c1.Color=col;b.c2.Color=col;b.c3.Color=col;b.c4.Color=col end)
    end
    local chosen=nil
    local bouncing=false
    local _prs=false
    local _drg=false
    local _dox,_doy=0,0
    local function moveAll(dx,dy)
        scx=scx+dx;scy=scy+dy
        btn2.ox=btn2.ox+dx;btn2.oy=btn2.oy+dy
        btn1.ox=btn1.ox+dx;btn1.oy=btn1.oy+dy
        for _,ci in ipairs(contentItems)do
            if not ci.isBtn then ci.bx=ci.bx+dx;ci.by=ci.by+dy end
        end
        layoutCard(CW,CH)
        if not bouncing then layoutBtn(btn2,btn2.curScale);layoutBtn(btn1,btn1.curScale)end
        for _,ci in ipairs(contentItems)do
            if not ci.isBtn then pcall(function()ci.obj.Position=v2(ci.bx,ci.by)end)end
        end
    end
    local cardBg={bgS1,bgS2,bgC1,bgC2,bgC3,bgC4,bL1,bL2,bL3,bL4}
    local scaleDur=0.4
    local s0=tick()
    while tick()-s0<scaleDur do
        local p=clp((tick()-s0)/scaleDur,0,1)
        local ep=easeOut(p)
        local cw=math.max(2,flr(CW*ep))
        local ch=math.max(2,flr(CH*ep))
        layoutCard(cw,ch)
        for _,o in ipairs(cardBg)do pcall(function()o.Transparency=ep end)end
        task.wait(0.016)
    end
    layoutCard(CW,CH)
    for _,o in ipairs(cardBg)do pcall(function()o.Transparency=1 end)end
    local slideDur=0.4
    local maxDelay=0.18
    local totalDur=slideDur+maxDelay
    local f0=tick()
    while tick()-f0<totalDur do
        local elapsed=tick()-f0
        for _,ci in ipairs(contentItems)do
            local t=elapsed-(ci.delay or 0)
            if t<0 then
                pcall(function()ci.obj.Transparency=0 end)
            elseif t<slideDur then
                local ep=easeOut(clp(t/slideDur,0,1))
                pcall(function()ci.obj.Transparency=ep end)
                if not ci.isBtn then
                    pcall(function()ci.obj.Position=v2(ci.bx,ci.by+flr(slideOff*(1-ep)))end)
                end
            else
                pcall(function()ci.obj.Transparency=1 end)
                if not ci.isBtn then
                    pcall(function()ci.obj.Position=v2(ci.bx,ci.by)end)
                end
            end
        end
        task.wait(0.016)
    end
    for _,ci in ipairs(contentItems)do
        pcall(function()ci.obj.Transparency=1 end)
        if not ci.isBtn then pcall(function()ci.obj.Position=v2(ci.bx,ci.by)end)end
    end
    layoutBtn(btn2,1)
    layoutBtn(btn1,1)
    setBtnCol(btn2,btnBg)
    setBtnCol(btn1,btnBg)
    btn2.lblT=0;btn1.lblT=0
    pcall(function()btn2.lbl.Color=btn2.defCol end)
    pcall(function()btn1.lbl.Color=btn1.defCol end)
    while not chosen do
        task.wait(0.016)
        local mx,my=_ms.X,_ms.Y
        local m1=false
        pcall(function()m1=iskeypressed(0x01)end)
        local cardX=scx-flr(CW/2)
        local cardY=scy-flr(CH/2)
        local onCard=ins(mx,my,cardX,cardY,CW,CH)
        local onB2=ins(mx,my,btn2.ox,btn2.oy,btn2.baseW,btn2.baseH)
        local onB1=ins(mx,my,btn1.ox,btn1.oy,btn1.baseW,btn1.baseH)
        if m1 and not _prs then
            _prs=true
            if onB2 then
                chosen="v2"
            elseif onB1 then
                chosen="v1"
            elseif onCard then
                _drg=true;_dox=mx;_doy=my
            end
        elseif m1 and _prs then
            if _drg then
                local dx=mx-_dox
                local dy=my-_doy
                if dx~=0 or dy~=0 then
                    moveAll(dx,dy)
                    _dox=mx;_doy=my
                end
            end
        elseif not m1 then
            _prs=false
            _drg=false
        end
        local h1=onB2 and not _drg
        local h2=onB1 and not _drg
        btn2.targetScale=h1 and 1.08 or 1
        btn1.targetScale=h2 and 1.08 or 1
        setBtnCol(btn2,h1 and btnHover or btnBg)
        setBtnCol(btn1,h2 and btnHover or btnBg)
        btn2.lblT=clp(btn2.lblT+(h1 and 0.08 or -0.08),0,1)
        btn1.lblT=clp(btn1.lblT+(h2 and 0.08 or -0.08),0,1)
        pcall(function()btn2.lbl.Color=lerpC(btn2.defCol,accentCol,easeOut(btn2.lblT))end)
        pcall(function()btn1.lbl.Color=lerpC(btn1.defCol,accentCol,easeOut(btn1.lblT))end)
        if not bouncing then
            btn2.curScale=lerp(btn2.curScale,btn2.targetScale,0.15)
            btn1.curScale=lerp(btn1.curScale,btn1.targetScale,0.15)
            layoutBtn(btn2,btn2.curScale)
            layoutBtn(btn1,btn1.curScale)
        end
    end
    local selBtn=chosen=="v2" and btn2 or btn1
    setBtnCol(selBtn,btnActive)
    pcall(function()selBtn.lbl.Color=whiteCol end)
    bouncing=true
    local t0=tick()
    local dur2=0.4
    while tick()-t0<dur2 do
        local t=clp((tick()-t0)/dur2,0,1)
        local sc
        if t<0.25 then sc=lerp(1.08,0.88,easeOut(t/0.25))
        elseif t<0.55 then sc=lerp(0.88,1.06,easeOut((t-0.25)/0.3))
        elseif t<0.8 then sc=lerp(1.06,0.97,easeOut((t-0.55)/0.25))
        else sc=lerp(0.97,1.0,easeOut((t-0.8)/0.2))end
        layoutBtn(selBtn,sc)
        task.wait(0.016)
    end
    layoutBtn(selBtn,1.0)
    task.wait(0.15)
    local fa0=tick()
    local fd=0.3
    local snap={}
    for _,o in ipairs(dObjs)do table.insert(snap,o)end
    while tick()-fa0<fd do
        local p=clp((tick()-fa0)/fd,0,1)
        local ep=easeOut(p)
        for _,o in ipairs(snap)do pcall(function()o.Transparency=1-ep end)end
        task.wait(0.016)
    end
    cleanup()
    local cache="?cache="..tostring(os.time())
    local url
    if chosen=="v2" then
        url=_0xD({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,104,105,116,101,99,104,98,111,105,47,99,104,101,99,107,105,116,118,50,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,112,114,105,115,111,110,108,105,102,101,118,50,46,108,117,97})
    else
        url=_0xD({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,104,105,116,101,99,104,98,111,105,47,99,104,101,99,107,105,116,118,50,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,112,114,105,115,111,110,108,105,102,101,46,108,117,97})
    end
    task.spawn(loadstring(game:HttpGet(url..cache)))
    while true do task.wait(60)end
else
    pcall(function()notify(_0xD({67,104,101,99,107,32,105,116}),_0xD({84,104,105,115,32,103,97,109,101,32,105,115,32,110,111,116,32,115,117,112,112,111,114,116,101,100,46}),5)end)
end
