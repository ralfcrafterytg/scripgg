vif gg.isVisible(true) then 
   gg.setVisible(false) 
   end 
   local datee = os.date('%A, %d %B %Y--%I:%M:%S %p')
ROO=[[]]
local g = {}
g.last = gg.getFile()
hilow = nil
g.config = gg.EXT_CACHE_DIR..'/'..gg.getFile():match('[^/]+$') .. "configg"
g.data = loadfile(g.config)
if g.data ~= nil then
  hilow = g.data()
  g.data = nil
end
if hilow == nil then
  hilow = {
    g.last,
    g.last:gsub("/[^/]+$", "")
  }
end
hilow = gg.choice({
	"'gg' Replacer to Random Letters",
	"Hooker Log and load +dump",
	"Log All Resuorce gg code",
	"SCRIPT ENCRYPTOR"
	},2020,'CHOOSE ONLY ONE')
if hilow == nil then os.exit() end 
if hilow==1 then

Lua = ""
Choicee = gg.choice({
'START'
},15.5,'')

Choice = gg.prompt({"REPLACER\nEXAMPLE\ngg.alert('HI')\nand ALL FUCNTION\nSTART IN\ngg."},{[1] = 'PUT A CODE TO REPLACE RANDOM LETTERS'},{'text'})

if not Choicee then
  return
else
Lua = ''
Lua = Choice[1] 
  MesageCode = 'YOU NEED TO PUT A LIKE gg.toast("haha")'
  if load(Lua) == nil then
    print(MesageCode)
    os.exit()
  end
  MesageCode = 'lol'
end
function RandomLetter(Num)
  str = ""
  for x = 1, Num do
    X = math.random(65, 91)
    if X == 91 then
      str = str .. string.char(X + 4)
    else
      str = str .. string.char(X)
    end
  end
  return str
end
function RandomFloatNumber()
  load("X = ." .. math.random(1, 9))()
  return X
end
FuncBase = "function ReplaceMe(i) return math.floor(i - Replace2Me)end"
Load, Char, Dec, GG, Table, Key, DecString, IsTable, CheckParm, FirstName, FirstLoad, FirstChar, FirstFunc, FirstKey = {}, {}, {}, {}, {}, {}, {}, false, "", "", "", "", "", ""
Numb = 1
repeat
  table.insert(Load, RandomLetter(4))
  table.insert(Char, RandomLetter(4))
  table.insert(GG, RandomLetter(4))
  FirstName = RandomLetter(4)
  FirstLoad = RandomLetter(4)
  FirstKey = math.random(1, 10)
  FirstChar = RandomLetter(4)
  FirstFunc = string.gsub(string.gsub(FuncBase, "ReplaceMe", FirstName), "Replace2Me", tostring(FirstKey))
  Key[Numb] = math.random(1, 10)
  Dec[Numb] = RandomLetter(4)
  DecString[Numb] = string.gsub(string.gsub(FuncBase, "ReplaceMe", Dec[Numb]), "Replace2Me", tostring(Key[Numb]))
  Numb = Numb + 1
until #Load == 2
function GetEncoded(Object, IsLoad)
  if IsLoad ~= nil then
    local Bytes = gg.bytes(Object)
    local Responsed = {}
    for x = 1, #Bytes do
      local Floater = RandomFloatNumber()
      local KeyCode = tonumber(Bytes[x])
      table.insert(Responsed, FirstName .. "(" .. tostring(KeyCode + FirstKey) .. ")")
    end
    return FirstLoad .. "(" .. FirstChar .. "(" .. table.concat(Responsed, ",") .. "))()"
  end
  if type(Object) == "string" then
    local float = RandomFloatNumber()
    local ObjectBytes = gg.bytes(Object)
    local Response = {}
    for x = 2, #ObjectBytes - 1 do
      KeyNumber = math.random(1, 2)
      table.insert(Response, Dec[KeyNumber] .. "(" .. tostring(ObjectBytes[x] + Key[KeyNumber]) .. ")")
    end
    return Char[math.random(1, 2)] .. "(" .. table.concat(Response, ",") .. ")"
  end
  if type(Object) == "number" then
    local floater = math.random(10, 10)
    local KeyNum = math.random(1, 2)
    return "math.floor(" .. Dec[KeyNum] .. "(" .. tostring(Object + Key[KeyNum] - floater) .. "+ " .. tostring(floater) .. "))"
  end
  if type(Object) == "table" then
    Object[1] = Object[1]:gsub("{", "")
    Object[#Object] = Object[#Object]:gsub("}", "")
    local TableResponse = {}
    for x = 1, #Object do
      table.insert(TableResponse, GetEncoded(Object[x]))
    end
    return "{" .. table.concat(TableResponse, ",") .. "}"
  end
end
for k, v in pairs(gg)do
  if Lua:find(k) ~= nil and type(v) == "number" then
    Lua = Lua:gsub("gg." .. k, v)
  end
end
if Lua == "" then
  print(MesageCode)
  os.exit()
end
MesageCode = ''
Lua = Lua:gsub("gg.-%)", function(func)
  for parm in func:gmatch("%(.-(.-)%)") do
    parm = parm .. ","
    ParmsDone = ""
    for parms in parm:gmatch("(.-),") do
      CheckParm = parms
      if IsTable then
        if parms:byte(parms:len()) == 125 then
          table.insert(Table, parms)
          CheckParm = math.random(3234, 37373)
          IsTable = false
          ParmsDone = ParmsDone .. "," .. GetEncoded(Table)
          Table = {}
        else
          CheckParm = math.random(3234, 37373)
          table.insert(Table, parms)
        end
      end
      if parms:byte(1) == 123 then
        if parms:byte(1) == 123 and parms:byte(parms:len()) == 125 then
          Table = {}
          table.insert(Table, parms)
          CheckParm = math.random(3234, 37373)
          ParmsDone = ParmsDone .. "," .. GetEncoded(Table)
        else
          Table = {}
          IsTable = true
          table.insert(Table, parms)
          CheckParm = math.random(3234, 37373)
        end
      end
      if IsTable == false then
        if type(tonumber(parms)) == "number" then
          CheckParm = math.random(3234, 37373)
          ParmsDone = ParmsDone .. "," .. GetEncoded(tonumber(parms))
        end
        if parms:byte(1) == 34 and parms:byte(parms:len()) == 34 or parms:byte(1) == 39 and parms:byte(parms:len()) == 39 then
          CheckParm = math.random(3234, 37373)
          ParmsDone = ParmsDone .. "," .. GetEncoded(parms)
        end
      end
      if CheckParm == parms then
        ParmsDone = ParmsDone .. "," .. parms
      end
    end
  end
  RALFYTG = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n--█████████\n--█▄█████▄█\n--█▼▼▼▼▼\n--█ RALF CRAFTER\n--█▲▲▲▲▲\n--█████████\n --██ ██\n\n\n\n\n\n\n--╭━[✯ ➧ MADE By ➨ ✭RALF CRAFTER✯\n--╰╮\n--┏┻[YOUPORN PA MORE]\n--┗━[ Subscribe RALFCRAFTER ]\n------------------[]-----------[]------------[]----------\n--                    ╔═➣ SUBCRIBE TO \n-- ══════╬══➣ MY YOUTUBE\n--                    ╚═➣ CHANNEL YT \n-- ═════╔═=[ IF YOU WANT A AN UPDATE ] \n-- ═════╬═=[ THIS COMPILER ASK ME PM] \n-- ═════╬═=[ MY WHATSS APP NUMBER   ] \n-- ═════╬═=[-+639566473559-----------------------------] \n-- ═════╬═=[-rannlene30@gmail.com----------------] \n-- ═════╬═=[ FACEBOOK PAGE             ╔¦               ] \n-- ═════╚═=[-SPECIAL FORCE GROUP2 HACKS-] \n--╔╗﹏﹏﹏﹏\n--║╚╗╔╦╗╔═╗\n--║╬║║║║║╩╣\n--╚═╝╠╗║╚═╝\n--﹏﹏╚═╝﹏﹏﹏\n--👑       👑         👑👑👑👑👑         👑👑👑👑\n--??     ??                    👑                   👑               👑\n--👑   👑                     👑                   👑👑👑👑👑\n---👑👑                      👑                   👑\n--👑               👑👑👑👑👑         👑\n\n---RALF CRAFTER\n--&\n---TOP GEO\n\n\n\n\n\n\n"
  for KeyInGG in func:gmatch("gg%.(.-)%(") do
    FuncDone = GG[math.random(1, 2)] .. "[" .. GetEncoded("'" .. KeyInGG .. "'") .. "](" .. ParmsDone:gsub(",", "", 1) .. ")"
  end
  return FuncDone
end)
LoaderFunctions = FirstLoad .. " = load\n"
LoaderFunctions = RALFYTG .. LoaderFunctions .. FirstChar .. " = string.char\n"
LoaderFunctions = LoaderFunctions .. FirstLoad .. "(" .. FirstChar .. "(" .. table.concat(gg.bytes(FirstFunc), ",") .. "))()\n"
for x = 1, #Load do
  LoaderFunctions = LoaderFunctions .. GetEncoded(Load[x] .. "= load", true) .. "\n"
  LoaderFunctions = LoaderFunctions .. GetEncoded(Char[x] .. "= string.char", true) .. "\n"
  LoaderFunctions = LoaderFunctions .. GetEncoded(GG[x] .. "= gg", true) .. "\n"
  LoaderFunctions = LoaderFunctions .. GetEncoded(DecString[x], true) .. "\n"
end
MesageCode = ''
if load(LoaderFunctions .. Lua) == nil then
  print(MesageCode)
  os.exit()
end
MesageCode = 'YOU NEED TO PUT A LIKE gg.toast("haha")'
SCript = LoaderFunctions .. Lua
WG = gg.getFile() Directory = "/storage/emulated/0/RALF_CRAFTER_YTG_"
file = io.open(Directory.. ".REPLACED.lua", "wb")
file:write(SCript)
file:close()
print("THE FILE SAVE IN: \n/storage/emulated/0/RALF_CRAFTER_YTG_.REPLACED.lua")
 os.exit()
yhra = gg.prompt({" COPY IT"},{SCript},{'text'})
end
if hilow==2 then

local chunk=function()
local OG = {}--SaveUsedFunction
for i, v in pairs(_G) do OG[i] = v end
OG.io = {}
OG.gg = {}
OG.string = {}
for i, v in pairs(io) do OG.io[i] = v end
for i, v in pairs(string) do OG.string[i] = v end
for i, v in pairs(gg) do OG.gg[i] = v end

local OSET = {}--SaveInformation
OSET.fullName = OG.gg.getFile()
OSET.path = OSET.fullName:gsub("[^/]+$","")
OSET.name = OSET.fullName:match ("[^/]+$")
OSET.randomName = ""
OSET.outPath = OSET.path

OSET.ignoreHookGGFunction = "getLine;isVisible;setVisible"
OSET.ignoreInvokeGGFunction = ""
OSET.ignorePackage = "sstool.only.com.sstool"
OSET.ignoreExit = false
OSET.ignoreRemove = false
OSET.ignoreAssert = false
OSET.ignoreIo = false
OSET.ignoreWrite = false
OSET.ignoreAntiHook = true

OSET.isHookGg = true
OSET.isCreateLua = true
OSET.isHookLoad = true
OSET.isHookPcall = false
OSET.isHookLoadfile = true
OSET.isHookLoadOpt = true
OSET.isHookDofile = true
OSET.isUseRandomName = true
OSET.isUseRandomResult = false
OSET.isDebug = false


OSET.VVERSION = OG.gg.VERSION
OSET.VPACKAGE = OG.gg.PACKAGE
OSET.VBUILD = OG.gg.BUILD
OSET.getVERSION_INT = function ()
  return tonumber((OSET.VVERSION:gsub("%.[0-9]+", function(A0_23)
    A0_23 = A0_23:sub(2)
    if #A0_23 == 1 then
      A0_23 = "0" .. A0_23
    end
    return A0_23
  end)))
end

OSET.loadTimes = 0
OSET.msg = ""

while true do
 OSET.setsList = {
  "fullName",
  "outPath",
  "isUseRandomName",
  "isDebug",

  "VVERSION",
  "VBUILD",
  "VPACKAGE",
  "ignorePackage",

  "isHookLoad",
  "isHookLoadfile",
  "isHookDofile",
   "isHookPcall",
  "isHookLoadOpt",
  
  
  "isHookGg",
  "isCreateLua",
  "ignoreHookGGFunction",
  "ignoreInvokeGGFunction",
  "isUseRandomResult",
  

  "ignoreAntiHook",
  "ignoreExit",
  "ignoreIo",
  "ignoreWrite",
  "ignoreAssert",
  "ignoreRemove",
 }
 OSET.sets = {}
 for k, v in ipairs(OSET.setsList) do OSET.sets[k] = OSET[v] end
 OSET.info = gg.prompt({
  "Select Script To Hook:",
  "Select Output:",
  "Use Random name to output",
  "Debug Mode",
  
  "Set GG VERSION:",
  "Set GG BUILD",
  "Set GG PACKAGE Name",
  "Bypass package name detect(when multi package bypass,use ; for each package)",
  
  "[Load]Hook Load[Output load content,if it spams plz disable]",
  "[Loadfile]Hook Loadfile[Output Loadfile content,if spams plz disable]",
  "[Dofile]Hook Dofile[Output Dofile content,if spams plz disable]",
  "[Pcall]Hook Pcall[Output Pcall content,not recommand with Load Hook enabled]",
  "[Load&Loadfile&Dofile&Pcall]Hook fix[Stop some script spam file]",
  
  "GG function hook[When all function are not working]",
  "Gen usable script[Have to open with GG function hook]",
  "blacklist hook function(when multi function blackliat,use ; for each function)",
  "Ignore function while hook(when multi function Ignore,use ; for each function)[examples: searchNumber;alert]",
  "Return random value for 'Result' type function[Enable when above function are enabled]",
  
  "Bypass anti-hook[MUST ENABLE]",
  "os.exit() detect[Notice will pop-up]",
  "io.open()detect[popup notice,manage file result]",
  "io.open() Auto return random file[When above function are enabled,popup will be gone.]",
  "assert() Detect bypass[Check is file exist]",
  "os.remove() Detect bypass[advoid del files]"
  }, OSET.sets, {
  "file",
  "path",
  "checkbox",
  "checkbox",
  
  "number",
  "number",
  "text",
  "text",
  
  "checkbox",
  "checkbox",
  "checkbox",
  "checkbox",
  "checkbox",
  
  "checkbox",
  "checkbox",
  "text",
  "text",
  "checkbox",
  
  "checkbox",
  "checkbox",
  "checkbox",
  "checkbox",
  "checkbox",
  "checkbox",
  "checkbox",
  "checkbox"
  })


  if OSET.info == nil then break end
  
  ------------------------------------------InitializeInfomation----------------------------------------------------------
  for i, v in ipairs(OSET.info) do OSET[OSET.setsList[i]] = v end


  if OSET.isUseRandomName then
   math.randomseed(os.clock() * 9999)
   for i = 1, 5 do
   OSET.randomName = OSET.randomName .. string.char(math.random(65,90))
   end
  end
  OSET.path = OSET.fullName:gsub("[^/]+$", "")
  OSET.name = OSET.fullName:match("[^/]+$")
  if OSET.outPath:sub(-1,-1) ~= "/" then
   OSET.outPath = OSET.outPath .. "/"
  end
  -----------------------------------------------InitializeInfomation------------------------------------------------------
  OSET.chunk = loadfile(OSET.fullName)--LoadMain
  if OSET.chunk == nil then gg.alert("Script load error,please check script.") break end--CheckMain
  
  OSET.msg = OSET.msg .. "Hook started.If there's a password screen please enter password.Make sure you're in Main menu.\n\n" 
   local tr = {}--HookedFunctionList
   local funlist = {{nil, nil}}--BlockLog
   local loaded={}
   if OSET.isHookGg then --gg
    local funindex  = 1
                local file = OSET.outPath .. "[Hook Result]" .. OSET.name .. OSET.randomName .. ".log"
                OSET.outFile = OG.io.open(file, "w")
                local  function append(A0_24)
                  OSET.outFile:write(A0_24)
                  OSET.outFile:flush()
                end
                append("--- 凸ಠ益ಠ)凸 凸ಠ益ಠ)凸 凸ಠ益ಠ)凸\n--DECODE VIA LOG By Ralf Crafter YTG\n--You can Join My Telegram Group Chat With This Links\n--http://t.me/AskSomeCodes\n--http://t.me/RalfCrafterCodes\n--Subscribe To My Youtube Channel For More Decoder Txn\n--We are the tender love in the world.\n--By Ralf Crafter YTG\n\n")
                local function appendHook(A0_25)
                  if OSET.nowFunction ~= "clearResults" or OSET.lastFunction ~= OSET.nowFunction then
                    append(A0_25)
                  end
                  if funlist[funindex][1] ~= nil and OSET.nowFunction ~= "choice" and OSET.nowFunction ~= "multichoice" and (OSET.nowFunction ~= "clearResults" or OSET.lastFunction ~= OSET.nowFunction) then
                    funlist[funindex][2] = OG.tostring(funlist[funindex][2]) .. A0_25
                  end
                end
                local function closeFile()
     OSET.outFile:close()
                end
    local names = {
     setRanges = {'^REGION_'}, startFuzzy = {'^TYPE_', '0x%X', '0x%X'}, searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'}, searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'}, searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'}, loadList = {nil, '^LOAD_'}, saveList = {nil, '^SAVE_'}, editAll = {nil, '^TYPE_'}, copyMemory = {'0x%X', '0x%X'}, dumpMemory = {'0x%X', '0x%X'}} 
    local rets = {
     alert = 1, prompt = 1, choice = 1, multiChoice = 1} 
    local toFlags =function (check, value) --valueToConstant
      local ret = '' 
      for k, v in pairs(OG.gg) do
       if k:match(check) ~= nil and (value & v) == v then
        if ret ~= '' then
         ret = ret..' | '
        end
        ret = ret..'gg.'..k 
        value = value & ~v
       end
      end
      if ret == '' or value ~= 0 then
       if ret ~= '' then
        ret = ret..' | '
       end 
       ret = ret..value
      end 
     return ret
    end 
    for j, v in OG.pairs(OG.gg) do--HookEachGGMember
     if OG.type(v) ~= "function" then --constants
      if j == "PACKAGE" then _G.gg[j] = OSET.VPACKAGE
      elseif j == "VERSION" then  _G.gg[j] = OSET.VVERSION
      elseif j == "VERSION_INT" then  _G.gg[j] = OSET.getVERSION_INT()
      elseif j == "BUILD" then  _G.gg[j] = OSET.VBUILD
      end
      else
     end
     if OG.type(v) == "function" then--functions
      if OSET.ignoreHookGGFunction:match(j) == nil then
       local orig = v--originalFunction
       local name = j--nameOfFunction
       
       local hook=--FunctionToReplace
       function(...)
       local arg = {...}
                            OSET.lastFunction = OSET.nowFunction
       OSET.nowFunction = name
       appendHook("gg." .. name .."(")
       for c, a in OG.ipairs(arg) do --PrintEachArg
        if c ~= 1 then
         appendHook(', ')
        end
        if OG.type(a) == 'string' then
         appendHook('"')
        end 
        local b = a
        if OG.type(a) == 'number' and names[name] ~= nil and names[name][c] ~= nil then
         local check = names[name][c]
         if check:sub(1, 1) ~= '^' then
          if a == 0 or a == -1 then
           b = a
          else 
           b = check:format(a)
          end
         else 
          b = toFlags(check, a)
         end
        end 
        b =OG.tostring(b)
        appendHook(b)
        if OG.type(a) == 'string' then
         appendHook('"')
        end
       end 
       appendHook(")\n")
       ---returnReset
                            local result = 1
                            if OSET.ignoreInvokeGGFunction:match(name) then
                                OG.gg.toast("Auto bypass function gg." .. name .. "()'s execute")
                            elseif OSET.isUseRandomResult and (name=="getResults" or  name=="setRanges" or name=="editAll" or name=="clearResults" ) then
        if name=="getResults" then
         result=OG.math.random(100,1000)
        else
         result=true
        end
                            elseif name == "getFile" then
                                result = OSET.fullName
                           elseif name=="isPackageInstalled" then
        if OSET.ignorePackage:match(arg[1]) then
                                    result = false
                                else
         result=orig(...)
        end
       elseif name=="choice" then
        local list=arg[1] 
        local index=orig(...)
        append("\n------"..list[index].."-------\n")
        if funlist[funindex][2]==nil or funlist[funindex][2]=='' then
         funlist[funindex][1]=list[index] 
        elseif funlist[funindex][1]~=nil then
         funindex=funindex+1 funlist[funindex]={nil,nil} funlist[funindex][1]=list[index]
        end 
        result= index
       else
        result=orig(...)
       end
        return result
      end
     
       tr[hook]=orig
                             _G.gg[j] =hook
     end
     end
    end
    OSET.msg = OSET.msg .. "[GG Hook On]Hook result will write into: " .. file.."\n\n"
   end
   if OSET.ignoreExit then --os.exit
   OSET.msg = OSET.msg .. "[os.exit Detection on]\n\n" 
    local orig= os.exit
    local hook= 1
                hook= function (...)
     if OG.gg.alert("Script is tring to use os.exit(),please select result:", "Allow Exit", "Bypass Exit") == 2 then
     else
      onlyonly(666)--ToActivateAnError
     end
    end
   end
   if OSET.ignoreAntiHook then --string.dump 
   OSET.msg = OSET.msg .. "[Anti-Hook On]\n\n" 
    local orig = string.dump 
    local hook = 1 
    hook = function (...) local arg = {...}
     if tr[arg[1]] ~= nil then
      arg[1] = tr[arg[1]]
     end 
     return orig(arg[1], OG.select(2, ...))
    end  
    tr[hook] = orig 
    string.dump = hook
   end
   if OSET.ignoreAntiHook then --tostring
    local orig = tostring 
    local hook = 1 
    hook = function (...) 
     local old = tostring 
     local arg = {...}
     if tr[arg[1]] ~= nil then
      arg[1] = tr[arg[1]]
     end 
     local ret = orig(arg[1], OG.select(2, ...)) 
     tostring = old 
     return ret
    end 
    tr[hook] = orig 
    tostring = hook
   end
   if OSET.ignoreAntiHook then --debug.getupvalue 
    local orig = debug.getupvalue 
    local hook = 1 
    hook = function (...) 
     local arg = {...}
     if tr[arg[1]] ~= nil then
      arg[1] = OG.tostring[arg[1]]
     end 
     return orig(arg[1], OG.select(2, ...))
    end 
    tr[hook] = orig 
    debug.getupvalue = hook
   end
   if OSET.ignoreAntiHook then --debug.getinfo
    local orig = debug.getinfo 
    local hook = 1 
    hook = function (...) 
     local arg = {...}
   --	print("getinfo:"..OG.tostring(arg))
    local sum=1
    local a=orig(sum)
     while a do
     sum=sum+1
     a=orig(sum)
     end
     
     --print("sum:"..sum.." "..arg[1])
     
     --print("prerec:"..arg[1])
     if arg[1] ~= nil and arg[1] > 0  then
      arg[1] = arg[1] + 1
     end 
     --print(arg[1])
     
     
     --print("rec:"..arg[1])
     local ret=1
     if arg[1]<=sum-4 then
     ret=orig(arg[1], OG.select(2, ...))
     else
     ret=nil
     end
     --print(ret)
     return ret
    end 
    tr[hook] = orig 
    debug.getinfo = hook
   end
            if OSET.ignoreRemove then --os.remove
   OSET.msg = OSET.msg .. "[os.remove Bypass]\n\n" 
    local orig = os.remove
    local hook = 1 
    hook = function (...) 
     local arg = {...}
     OG.gg.toast("Hook has stopped"..arg[1].."'s deleteion.")
     return true
    end 
    tr[hook] = orig 
    os.remove = hook
   end
   if  OSET.ignoreAssert then --assert
    OSET.msg = OSET.msg .. "[assert bypass]\n\n" 
    local orig = assert
    local hook = 1 
    hook = function (...) 
     local arg = {...}
     OG.gg.toast("Bypass a file exist detection")
     return true
    end 
    tr[hook] = orig 
    os.remove = hook
   end
   if OSET.ignoreIo then --io.open
    OSET.msg = OSET.msg .. "[File manage On]\n\n" 
    local orig = io.open
    local hook = 1 
    hook = function (...) 
     local arg = {...}
     local todo = 1
                    if OSET.ignoreWrite == false then
                        todo = OG.gg.alert("Scriptvis tring to access" .. arg[1] .. ",please choose result:", "return random file", "return nil", "Ignore")
     end
     if todo == 1 then
      file=orig(OSET.outPath .. OSET.randomName, "w")
      file:write(OSET.randomName)
      file:close()
                        return orig(OSET.outPath .. OSET.randomName, arg[2])
                    elseif todo == 2 then
                        return nil
                    else
                        return orig(...)
                    end
     return true
    end 
    tr[hook] = orig 
    io.open = hook
   end 
   if OSET.isHookLoad then --load 
   OSET.msg = OSET.msg .. "[Load Output on]If the file is encrypted pelase decrypt yourself.\n\n" 
    local orig = load
    local hook = 1 
    hook = function (...) 
     local arg = {...}
     local result= orig(...)
     local data=OG.tostring(arg[1])
     if result then
      --print("load")
     --	print(data)
      if  OSET.isHookLoadOpt == false or
      

      loaded[arg[1]]==nil then
       --	print("startwrite")
      
       OSET.loadTimes = OSET.loadTimes + 1
       loaded[arg[1]]=OSET.loadTimes
                            file=OG.io.open(OSET.outPath .. "[LOAD" .. OSET.loadTimes .. "]" .. OSET.name .. OSET.randomName .. ".cpp", "w")
       file:write(data)
       file:close()
      end
     end
     return result
    end 
    tr[hook] = orig 
    load = hook
   end
   if OSET.isHookPcall then --pcall
   OSET.msg = OSET.msg .. "[Pcall Output on] If the file is encrypted pelase decrypt yourself.\n\n" 
    local orig = pcall
    local hook = 1 
    hook = function (...) 
     local arg = {...}
     local data=OG.tostring(arg[1])
     if arg[1] then
      if  OSET.isHookLoadOpt == false or data:match("searchNumber") then
       OSET.loadTimes = OSET.loadTimes + 1
                            file=OG.io.open(OSET.outPath .. "[PCALL" .. OSET.loadTimes .. "]" .. OSET.name .. OSET.randomName .. ".cpp", "w")
       file:write(data)
       file:close()
      end
     end
     return orig(...)
    end 
    tr[hook] = orig 
    pcall = hook
   end
   if OSET.isHookLoadfile then --loadfile
   OSET.msg = OSET.msg .. "[Loadfile output on] If the file is encrypted pelase decrypt yourself.\n\n" 
    local orig = loadfile
    local hook = 1 
    hook = function (...) 
     local arg = {...}
     local result= orig(...)
     local f=OG.io.open(arg[1], "r")
     local data=f:read('*a')
     f:close()
     if result then
      if  (OSET.isHookLoadOpt == false or data:match("searchNumber") or  data:match("load")) and loaded[arg[1]]==nil then
       OSET.loadTimes = OSET.loadTimes + 1
       loaded[arg[1]]=OSET.loadTimes
                            file=OG.io.open(OSET.outPath .. "[LOADFILE" .. OSET.loadTimes .. "]" .. OSET.name .. OSET.randomName .. ".cpp", "w")
       file:write(data)
       file:close()
      end
     end
     return result
    end 
    tr[hook] = orig 
    loadfile = hook
   end
      if OSET.isHookDofile then --loadfile
   OSET.msg = OSET.msg .. "[Dofile output on] If the file is encrypted pelase decrypt yourself.\n\n" 
    local orig = dofile
    local hook = 1 
    hook = function (...) 
     local arg = {...}
     local result= true
     local f=OG.io.open(arg[1], "r")
     local data=f:read('*a')
     f:close()
     if result then
      if  (OSET.isHookLoadOpt == false or data:match("searchNumber") or  data:match("load")) and loaded[arg[1]]==nil then
       OSET.loadTimes = OSET.loadTimes + 1
       loaded[arg[1]]=OSET.loadTimes
                            file=OG.io.open(OSET.outPath .. "[DOFILE" .. OSET.loadTimes .. "]" .. OSET.name .. OSET.randomName .. ".cpp", "w")
       file:write(data)
       file:close()
      end
     end
     return orig(...)
    end 
    tr[hook] = orig 
    dofile = hook
   end
  
   --OG.gg.alert(OSET.msg)--AlertMessage
   
   local function catch(e)
    if OSET.isDebug then
     OG.print("------------------------------")
     OG.print("debug:\n")
     OG.print(e.."\n")
     OG.print(debug.traceback())
     OG.print("------------------------------")
    end
   end
  --	print(OSET.chunk)
   xpcall(OSET.chunk,catch)--CallMain
--OSET.chunk()
   
   if OSET.outFile~=nil then OSET.outFile:close() end --CloseFile
   
   --print(funlist)
   
   if OSET.isCreateLua and funlist~=nil and funlist[1]~=nil and funlist[1][1]~=nil then --createLua
    local function CreateLuaText(fl) 
     local str =function(s)
      local ss= OG.tostring(s)
      if ss=='nil' then
       ss=''
      end 
      ss=ss:gsub('^nil','')
      return ss
     end
     fl[#fl+1]={'Exit Script','print("Create By Hook Tool")\nos.exit()\n'} local result='gg.alert("This script was made Ralf Crafter")\nfunction Main()\nmenu = gg.choice({' 
     local index=1 
     for index=1,#fl do 
      result=result..'"' result=result..fl[index][1] result=result..'"'
      if index~=#fl then
       result=result..','
      end
     end 
     result=result..'},nil,"Choose function to enable")\n' 
     for index=1,#fl do 
      result=result..'if menu=='..index..' then '
      if index==#fl then
       result=result..'Exit()end\n'
      else 
      result=result..'F'..index..'()end\n'
      end
     end 
     result=result..'vis=false\nend\n' 
     for index=1,#fl do 
      result=result..'\n-----'..fl[index][1]..'-----\nfunction '
      if index==#fl then
       result=result..'Exit()\n'
      else 
       result=result..'F'..index..'()\n'
      end 
      result=result..str(fl[index][2])..'end\n'
     end 
     result=result..'\nMain() \nwhile(true)do\n if gg.isVisible(true) then\n vis=true \n gg.setVisible(false) \n end \n gg.clearResults()\n if vis then\n Main() \nend \nend' 
     return result
    end 
      
    
    local luas=CreateLuaText(funlist)
    local file=OG.io.open(OSET.outPath .. "[⚠AUTO SCRIPT⚠]" .. OSET.name .. OSET.randomName .. ".cpp", "w+")
    file:write(luas)
    file:close()


   
   OG.print("END\n\nScript ended,result has generated.\n")
  os.exit()
  end
end
end
chunk()
end
if hilow==3 then
local path = gg.getFile():match("(.*\/).*")

local function call_back(new_function, ...)
  local result = nil
  for i = 1, #new_function.replace, 1 do
    result = {new_function.replace[i](...)}
    if result ~= nil and #result > 0 then
      return table.unpack(result)
    end
  end
  return nil
end

local function function_hook(target, replace)
  local new_function = {}
  new_function.replace = { replace }
  new_function.origin = target
  setmetatable(new_function, {
      __call = function(target, ...)
        local result = {call_back(new_function, ...)}
        if result ~= nil and #result > 0 then
          return table.unpack(result)
        end
        return new_function.origin(...)
      end
    })
  return new_function
end

ishook = true
script_file = gg.prompt({'Locate gg script file:'},{path..'lua',path..'path'}, {'file'})
file=io.open(script_file[1],"r")
assert(file)
file = io.open(script_file[1].. ".log.lua", "w")
file:write("--- 凸ಠ益ಠ)凸 凸ಠ益ಠ)凸 凸ಠ益ಠ)凸\n--DECODE VIA LOG By Ralf Crafter YTG\n--You can Join My Telegram Group Chat With This Links\n--http://t.me/AskSomeCodes\n--http://t.me/RalfCrafterCodes\n--Subscribe To My Youtube Channel For More Decoder Txn\n--And Only Source Code Can Get This logger")
file:write("\n--We are the tender love in the world.\n--By Ralf Crafter YTG\n\n")
code = ""
function new_load(msg)
  if string.match(msg,"gg.choice") then
    code = msg
  end
end
ggvar = {}
ggreg = {}
for k,v in pairs(gg) do
  if string.match(k,"REGION") then
    ggreg[v] = "gg."..k
  end
  if string.match(k,"_") and not string.match(k,"REGION") then
    ggvar[v] = "gg."..k
  end
end

function new_result(x)
  file:write(string.format("\nvar = gg.getResults(%s)",x))
  res = {}
  for i = x,1,-1 
  do 
    res [i] =  {}
  end
  return res
end
function new_edit(...)
  local data1 = {...}
  ok = ""
  a = 1
  for k,v in pairs(data1) do
    hey = tostring(v)
    if a == 1 then
      ok = ok..'"'..hey..'"'..","
    elseif a ~= #data1 and ggvar[v] and v ~= 0 then
      ok = ok..ggvar[v]..","
    elseif a == #data1 and ggvar[v] and v ~= 0 then
      ok = ok..ggvar[v]
    elseif a == #data1 then
      ok = ok..hey
    else
      ok = ok..hey..","
    end
    a = a+1
  end
  file:write(string.format("\ngg.editAll(%s)",ok))
  return true
end

function new_search(...)
  local data = {...}
  ok = ""
  a = 1
  for k,v in pairs(data) do
    hey = tostring(v)
    if a == 1 then
      ok = ok..'"'..hey..'"'..","
    elseif a ~= #data and ggvar[v] and v ~= 0 then
      ok = ok..ggvar[v]..","
    elseif a == #data and ggvar[v] and v ~= 0 then
      ok = ok..ggvar[v]
    elseif a == #data then
      ok = ok..hey
    else
      ok = ok..hey..","
    end
    a = a+1
  end
 file:write (string.format("\ngg.searchNumber(%s)",ok))
  return true
end

function new_clear()
  file:write("\ngg.clearResults()")
  return true
end

function new_getrange()
  file:write("\nvar = gg.getRanges()")
  return true
end

function new_setrange(range)
  if ggreg[range] then
    file:write("-- normal range")
    file:write(string.format("\ngg.setRanges(%s)",ggreg[range] ))
  elseif type (range) == "boolean"  then
    file:write('-- restore via var')
    file:write("gg.setRanges(var)\n")
  else
    file:write("-- bxor auto calculated")
    file:write(string.format("\ngg.setRanges(%d)",range))
  end
  return false
end

function new_add(x)
  t = ""
  for key,value in pairs(x) do
    if value.address then
      t = t.."var["..key.."].address = "..value.address.."\n"
    end
    if value.value then
      t = t.."var["..key.."].value = "..value.value.."\n"
    end
    if value.freeze ~= nil then
      t = t.."var["..key.."].freeze = "..tostring(value.freeze).."\n"
    end
    if value.freezeType then
      t = t.."var["..key.."].freezeType = "..ggvar[value.freezeType].."\n"
    end
  end
  file:write(t)
  file:write("\ngg.addListItems(var)")
  return true
end

function nprint(a,b)
  if b then
    return false --nulify print
  end
end

print = function_hook(print,nprint)
if ishook then
--- Important data remove other useless stuff ----
  gg.searchNumber = function_hook(gg.searchNumber,new_search)
  gg.getResults = function_hook(gg.getResults,new_result)
  gg.editAll = function_hook(gg.editAll,new_edit)
  gg.clearResults = function_hook(gg.clearResults,new_clear)
  gg.setRanges = function_hook(gg.setRanges, new_setrange)
  gg.getRanges = function_hook(gg.getRanges, new_getrange)
  gg.addListItems = function_hook(gg.addListItems, new_add)
else
  load = function_hook(load, new_load)
end
if  loadfile(script_file [1]) then
  loadfile(script_file [1])()
  local last = script_file[1]
local file = io.open(last, "r") 
assert(file) 
local code123= file:read("*a")
load(code123)()
else
  print("cant open")
end
if ishook == false then
  if code ~= "" or code ~= nil then
    file:write(ishook)
  else
    gg.alert("sorry fail try other options")
  end
end
end
if hilow==4 then
   FUCKERS =[[
 Time:%I:%M:%S %p
  Today:%A, %d %B %Y
➧ Script By➨ 
 ⚠Ralf Crafter⚠


      🇵 🇭 🇮 🇱 🇮 🇵 🇮 🇳 🇪 🇸
                              🇼 🇪 🇱 🇨 🇴 🇲 🇪

📢 Publiced Version

 ✨✨✨✨✨✨✨✨✨✨✨✨

                ➖➖➖➖➖➖
                  VERSION 18.0
                ➖➖➖➖➖➖
 ============================
 🚬 Script Abilities :
 ➣ Can Hide Functions 
 ➣ Add Password
 ➣ Add Expired Date
 ➣ Add Minimal GG Version
 ➣ Add Note When Start Script 
 ▶ And More Functions
 ➣ Blocking Decrypt With Unluac
 ➣ Block Load (Anti Load)
 ============================]]
local pogs = _ENV['_G']['gg']['alert'](os.date(FUCKERS), "                ☑START", "❎EXIT                ")
 if pogs == 1 then goto RFH end
 if pogs == 2 then os.exit() end
 if pogs == 3 then  gg.alert('THIS SCRIP SOMETIMES\nNOT WORKING\n IN SD CARD\n')  end
 if pogs == nil then os.exit() end
::RFH::
goto Ex
::Ex::
goto eX
::eX::
goto hillow
 ::hillow::
local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR..'/'..gg.getFile():match('[^/]+$') .. "cfg"
g.data = loadfile(g.config)
if g.data ~= nil then
  g.info = g.data()
  g.data = nil
end
if g.info == nil then
  g.info = {
    g.last,
    g.last:gsub("/[^/]+$", "")
  }
end
local MATH=math.random(1, 200)

function BYTR(str)
	return str:gsub('.', function (c)
		return string.format('%02x ', (string.byte(c)-MATH)%256)
	end):gsub(" $", "", 1)
end
local TOTEXT ='\nlocal function R_F(Text)\nText = Text:gsub([[ ]],"")\nreturn (Text:gsub("..",function (Text)\nreturn string.char((tonumber(Text,16)+'..MATH..')%256)\nend))\nend\n'
function encodegg(A0_67)
	return 'gg[R_F("' .. BYTR(A0_67) .. '")]('
end
function encodeos(A0_68)
	return 'os[R_F("' .. BYTR(A0_68) .. '")]('
end
function encodestr(A0_69)
	return 'string[R_F("' .. BYTR(A0_69) .. '")]('
end
function enc(A0_70)
	return 'Executer({' .. table.concat({A0_70:byte(1, -1)}, ",") .. "})"
end

while true do
gg.setVisible(false)
g.info = gg.prompt({
'🔐 Select file to encrypt :',--1
'📁 Select writable path for output :',--2
'TRY ME IM GOOD FOR PHONE WHAHAHA',--3
'1: ADD PASSWORD ANTI CRACK',--4
 '2: ADD DATE LIMIT',--5
 '3: ADD GAME OPEN\nFIRST TO RUN',--6
 '4: ADD GameGuardian Version',--7
 '5: BLOCK GG VERS v8.60.0\And Higher Vers',--8
'BACKUP FOR YOURE\nSCRIP IF IT\nlose',--9
'ADD IN TO YOURE SCRIPT NEED TO CONNECT IN INTERNET FIRST TO OPEN',--10
'ADD RENAME BLOCKER',--11
'COMPILE WITH RANDOM LETERS',--12
'FILE RENAME',--13
'ANTI LOG',--14
'ANTI DEC LOAD',--15
'ADD TOAST LOADING BAR'--16
},g.info,
{[[file]],--1
[[path]],--2
[[checkbox]],--3
[[checkbox]],--4
[[checkbox]],--5
[[checkbox]],--6
[[checkbox]],--7
[[checkbox]],--8
[[checkbox]],--9
[[checkbox]],--10
[[checkbox]],--11
[[checkbox]],--12
[[checkbox]],--13
[[checkbox]],--14
[[checkbox]],--15
[[checkbox]]--16
})


OFFF = 'NONE'
OFFf = '✖'
KbBON = '✔'
MbBON = '✔'
on = '✅✔'
off = '🚫❎'
fal = 'FALSE'
tru = 'TRUE'
limdate = off
inje = off
detectver = off
addpass = off
ggver = off
antin = off
mkl = off
bgl = off
bksp = off
pwnn = OFFF
gvv = OFFF
lid = OFFF
detecc = OFFF
deteccc = fal
lidd = fal
gvvv = fal
pwann = fal
KBON = OFFf
MBON = OFFf
RF = 'LOL'


  if g.info == nil then os.exit() end
  gg.saveVariable(g.info, g.config)
	g.LASS = RF
   g.last = g.info[1]
	g.test = loadfile(g.last)
	if g.test == nil then 
gg.alert ('⚠ Script Error Should Be Used ⚠')
print("FIX YOURE SCRIP ")
else
		g.name = g.last:match('[^/]+$')
		g.pathes = {g.info[2]..'/'..g.name, g.last, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}
		g.file = nil
		g.out = ''
		g.try = ''
		for i, v in ipairs(g.pathes) do
			g.out = v..".tmp.lua"
			g.file = io.open(g.out, "w")
 			if g.file ~= nil then
 				g.last = v:gsub('%.lua$', '')
 				break
			end
			g.try = g.try..' '..v
		end		
		if g.file == nil then
        gg.alert("Failed Load the Scrip:" .. g.try)
        print("FIX YOURE SCRIP")
      else
        g.file:close()
        os.remove(g.out)
        
gg.setVisible(false)
local last = g.info[1]
local file = io.open(last, "r") 
assert(file) 
local code12y= file:read("*a")
if code12y:find("Lu%a[A-Z_]+") then gg.alert('⚠The Script Sellected is Allready Encrypted⚠','') goto  hillow else end
local code12="\ngt='gg.toast(gg.alert(gg.propmt(gg.editAll(gg.searchNumber(gg.choice(gg.multiChoice(gg.choice('\n"..code12y
 if code12:find("gg.toast") then code1234=code12:gsub("gg.toast","gg.T_T_")
end
code12346="\nload(string.char(70,117,99,107,89,111,117,68,101,99,111,100,101,114,61,108,111,97,100,10,70,117,99,107,85,112,61,115,116,114,105,110,103,46,99,104,97,114,10,70,117,99,107,105,110,103,68,101,99,111,100,101,114,61,116,97,98,108,101,46,117,110,112,97,99,107))()\nFuckYouDecoder(FuckUp(FuckingDecoder({27;76;117;97;41;0;0;4;4;4;8;0;25;147;13;10;26;10;0;0;0;0;0;0;0;0;0;1;2;0;0;0;5;0;64;0;6;0;64;0;70;0;192;128;71;128;128;64;10;0;128;0;31;0;0;0;3;4;0;0;0;3;103;103;0;4;0;0;0;6;116;111;97;115;116;0;4;0;0;0;5;84;95;84;95;0;0;0;0;0;0;0;0;1;1;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0})))()\n"..code12y
local code12345=""..code12346
local code123=""..code1234
if not load(code123) then
	print("⚠ ERROR\n\nFile Can Not Be Encrypted !")
	break 
else
--[====[    code123=code123:gsub("gg%.(%a+)%(", encodegg)
	code123=code123:gsub("os%.(%a+)%(", encodeos)
	code123=code123:gsub("string%.(%a+)%(", encodestr)
	code123= TOTEXT .. code123]====]
	dij='\nscRF=string.char\ntuRF=table.unpack\n'
	code123=code1234:gsub("gg.toast(","gg[scRF(tuRF({116,111,97,115,116,}))]")--T_T_
	code123=code123:gsub("gg.alert(","gg[scRF(tuRF({97,108,101,114,116,}))]")--ALERT
	code123=code123:gsub("gg.choice(","gg[scRF(tuRF({99,104,111,105,99,101,}))]")--CHOICE
	code123=code123:gsub("gg.prompt(","gg[scRF(tuRF({112,114,111,109,112,116,}))]")--prompt
	code123=code123:gsub("gg.multiChoice(","gg[scRF(tuRF({109,117,108,116,105,67,104,111,105,99,101,}))]")
	code123=code123:gsub("gg.editAll(","gg[scRF(tuRF({101,100,105,116,65,108,108,}))]")
	code123=code123:gsub("gg.searchNumber(","gg[scRF(tuRF({115,101,97,114,99,104,78,117,109,98,101,114,}))]")
	code123= dij ..code123
	
	if not load(code123) then
	print('DONT PUT ANY TOOLS IN YOUR SCRIP OR TRT TI FIX IT')
	os.exit(gg.alert('ERROR TO ENCRYPT FIX YOUR SCRIPT FIRST',''))
	else
	FORGGAL=[[ if code12y:find("gg.toast") then code123=code12y:gsub("gg.alert","_ENV['_G']['gg']['alert']")]]
local whatThe = os.date('%I:%M:%S %p')
data1=" \n"..code12345
data2 = "   gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC | gg.REGION_C_BSS | gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_JAVA_HEAP | gg.REGION_PPSSPP) \n"..code123

code11223 = ""..code123
end
if g.info[2] then
 function RandomLetter(Num)
  str = ""
  for x = 1, Num do
    X = math.random(65, 91)
    if X == 91 then
      str = str .. string.char(X + 4)
    else
      str = str .. string.char(X)
    end
  end
  return str
end
function RandomFloatNumber()
  load("X = ." .. math.random(1, 9))()
  return X
end
FuncBase = "function ReplaceMe(i) return math.floor(i - Replace2Me)end"
Load, Char, Dec, GG, Table, Key, DecString, IsTable, CheckParm, FirstName, FirstLoad, FirstChar, FirstFunc, FirstKey = {}, {}, {}, {}, {}, {}, {}, false, "", "", "", "", "", ""
Numb = 1
repeat
  table.insert(Load, RandomLetter(10))
  table.insert(Char, RandomLetter(10))
  table.insert(GG, RandomLetter(10))
  FirstName = RandomLetter(10)
  FirstLoad = RandomLetter(10)
  FirstKey = math.random(1, 10)
  FirstChar = RandomLetter(10)
  FirstFunc = string.gsub(string.gsub(FuncBase, "ReplaceMe", FirstName), "Replace2Me", tostring(FirstKey))
  Key[Numb] = math.random(1, 10)
  Dec[Numb] = RandomLetter(10)
  DecString[Numb] = string.gsub(string.gsub(FuncBase, "ReplaceMe", Dec[Numb]), "Replace2Me", tostring(Key[Numb]))
  Numb = Numb + 1
until #Load == 2
function GetEncoded(Object, IsLoad)
  if IsLoad ~= nil then
    local Bytes = gg.bytes(Object)
    local Responsed = {}
    for x = 1, #Bytes do
      local Floater = RandomFloatNumber()
      local KeyCode = tonumber(Bytes[x])
      table.insert(Responsed, FirstName .. "(" .. tostring(KeyCode + FirstKey) .. ")")
    end
    return FirstLoad .. "(" .. FirstChar .. "(" .. table.concat(Responsed, ",") .. "))()"
  end
  if type(Object) == "string" then
    local float = RandomFloatNumber()
    local ObjectBytes = gg.bytes(Object)
    local Response = {}
    for x = 2, #ObjectBytes - 1 do
      KeyNumber = math.random(1, 2)
      table.insert(Response, Dec[KeyNumber] .. "(" .. tostring(ObjectBytes[x] + Key[KeyNumber]) .. ")")
    end
    return Char[math.random(1, 2)] .. "(" .. table.concat(Response, ",") .. ")"
  end
  if type(Object) == "number" then
    local floater = math.random(39999, 59999)
    local KeyNum = math.random(1, 2)
    return "math.floor(" .. Dec[KeyNum] .. "(" .. tostring(Object + Key[KeyNum] - floater) .. "+ " .. tostring(floater) .. "))"
  end
  if type(Object) == "table" then
    Object[1] = Object[1]:gsub("{", "")
    Object[#Object] = Object[#Object]:gsub("}", "")
    local TableResponse = {}
    for x = 1, #Object do
      table.insert(TableResponse, GetEncoded(Object[x]))
    end
    return "{" .. table.concat(TableResponse, ",") .. "}"
  end
end
for k, v in pairs(gg) do
  if data1:find(k) ~= nil and type(v) == "number" then
    data1 = data1:gsub("gg." .. k, v)
  end
end
if data1 == "" then
  print(MesageCode)
  os.exit()
end
MesageCode ="hello"
data1= data1:gsub("gg.-%)", function(func)
  for parm in func:gmatch("%(.-(.-)%)") do
    parm = parm .. ","
    ParmsDone = ""
    for parms in parm:gmatch("(.-),") do
      CheckParm = parms
      if IsTable then
        if parms:byte(parms:len()) == 125 then
          table.insert(Table, parms)
          CheckParm = math.random(3234, 37373)
          IsTable = false
          ParmsDone = ParmsDone .. "," .. GetEncoded(Table)
          Table = {}
        else
          CheckParm = math.random(3234, 37373)
          table.insert(Table, parms)
        end
      end
      if parms:byte(1) == 123 then
        if parms:byte(1) == 123 and parms:byte(parms:len()) == 125 then
          Table = {}
          table.insert(Table, parms)
          CheckParm = math.random(3234, 37373)
          ParmsDone = ParmsDone .. "," .. GetEncoded(Table)
        else
          Table = {}
          IsTable = true
          table.insert(Table, parms)
          CheckParm = math.random(3234, 37373)
        end
      end
      if IsTable == false then
        if type(tonumber(parms)) == "number" then
          CheckParm = math.random(3234, 37373)
          ParmsDone = ParmsDone .. "," .. GetEncoded(tonumber(parms))
        end
        if parms:byte(1) == 34 and parms:byte(parms:len()) == 34 or parms:byte(1) == 39 and parms:byte(parms:len()) == 39 then
          CheckParm = math.random(3234, 37373)
          ParmsDone = ParmsDone .. "," .. GetEncoded(parms)
        end
      end
      if CheckParm == parms then
        ParmsDone = ParmsDone .. "," .. parms
      end
    end
  end
  for KeyInGG in func:gmatch("gg%.(.-)%(") do
    FuncDone = GG[math.random(1, 2)] .. "[" .. GetEncoded("'" .. KeyInGG .. "'") .. "](" .. ParmsDone:gsub(",", "", 1) .. ")"
  end
  return FuncDone
end)

LoaderFunctions = FirstLoad .. " = load\n"
LoaderFunctions = LoaderFunctions .. FirstChar .. " = string.char\n"
LoaderFunctions = LoaderFunctions .. FirstLoad .. "(" .. FirstChar .. "(" .. table.concat(gg.bytes(FirstFunc), ",") .. "))()\n"
for x = 1, #Load do
  LoaderFunctions = LoaderFunctions .. GetEncoded(Load[x] .. "= load", true) .. "\n"
  LoaderFunctions = LoaderFunctions .. GetEncoded(Char[x] .. "= string.char", true) .. "\n"
  LoaderFunctions = LoaderFunctions .. GetEncoded(GG[x] .. "= gg", true) .. "\n"
  LoaderFunctions = LoaderFunctions .. GetEncoded(DecString[x], true) .. "\n"
end
MesageCode = "FAILED TO ENCRYPT FIX YOURE SCRIPT \nOR\nDONT ENCRYPT A COMPILER"
if load(LoaderFunctions .. data1) == nil then
  print(MesageCode)
  
end
Script = LoaderFunctions .. data1
if g.info[3] then
zibra=string.rep([[gg.processKill()]],99)
load(zibra)()
end
if g.info[1] then
::bintest::
  XB = RandomLetter(2)
hilorw = gg.multiChoice({
'RANDOM TEXT ,BIN,HEX,BIN STRONGEST',
'BIN HEX BIN',
'BIN HEX BIN BYTE BIN',
'BIN HEX BIN OBFUSCATE BIN',
'BIN HEX BIN COMBINE IN BYTE ,BIN'
},nil,'')
ERR ="⚠ERROR⚠\n CHOOSE ONLY ONE FUNCTIONS"

if hilorw[2] then
if hilorw[1] == true then os.exit(gg.alert(ERR)) end
if hilorw[3] == true then os.exit(gg.alert(ERR)) end
if hilorw[4] == true then os.exit(gg.alert(ERR)) end
if hilorw[5] == true then os.exit(gg.alert(ERR)) end
gg.toast("wew")
SSHEX="getfile = gg.getFile():match('[^/]+$')\n\n"
end end end
if g.info[4] == true then
g.pwn =  gg.prompt({' ADD A PASSWORD'},g.pwn,{'text'})
passs =[====[
local function pass(...)
RC ={...}
local pas=gg.prompt({"PASSWORD"},{},{"text"})
pas =pas and pas[1] .. " " or os.exit(print("ERROR"))
for i=1, #RC do
if RC[i] .. " "  == pas then gg.toast("PASSWORD CORRECT✔")
else
while (true) do
os.exit(gg.alert("   ⚠RONG PASS⚠  ",""))
end
end
end
end
]====]
past=passs..'pass("'..g.pwn[1]..'")'
data2= ""..past..""..data2
data1= ""..past..""..data1
addpass = on
pwnn = g.pwn[1]
pwann = tru
end

 
if g.info[5] then
g.lim = gg.prompt({os.date'ADD DATE limit\nEXAMPLE %Y%m%d'},{[1] = os.date'%Y%m%d'},{'number'})
data2 = "if os.date('%Y%m%d') > '"..g.lim[1].."'then gg.alert(os.date('SCRIP EXPIRED                                       DATE EXPIRATION:"..g.lim[1].."                        YOURE DATE IS:      %Y%m%d'))os.exit() end\n"..data2
data1 = "if os.date('%Y%m%d') > '"..g.lim[1].."'then gg.alert(os.date('SCRIP EXPIRED                                       DATE EXPIRATION:"..g.lim[1].."                        YOURE DATE IS:      %Y%m%d'))os.exit() end\n"..data1
limdate = on
lid = g.lim[1]
lidd = tru
end

if g.info[6] then

gg.alert('OBB OR DATA ONLY SOMETIMES IT NOT WORK')


g.cm = gg.prompt({'ADD GAME NEED\nEXAMPLE\ncom.vending','ADD THE NAME OF THE GAME'},{[1] = 'EXAMPLE : com.SpecialForceGroup2',[2] = gg.getTargetInfo().label},{'text','text'})

data2 = '\n\ninf = gg.getTargetInfo().packageName\n\n inff = gg.getTargetInfo().name\n pack = "'..g.cm[1]..'"\n\n if inf == pack then else gg.alert("📛 Game not detected                                                                      Script created for: " .. "'..g.cm[2]..'" .. [[                           Using: ]] .. gg.getTargetInfo().label .. [[                                                              Go into the "'..g.cm[2]..'" and try it again]],[[]])  os.exit() end\n '..data2
data1= '\n\ninf = gg.getTargetInfo().packageName\n\n inff = gg.getTargetInfo().name\n pack = "'..g.cm[1]..'"\n\n if inf == pack then else gg.alert("📛 Game not detected                                                                      Script created for: " .. "'..g.cm[2]..'" .. [[                           Using: ]] .. gg.getTargetInfo().label .. [[                                                              Go into the "'..g.cm[2]..'" and try it again]],[[]])  os.exit() end\n '..data1
detectver = on
detecc = g.cm[1]
deteccc = tru
end

if g.info[7] then 
  
g.gv = gg.prompt({'ADD GG VERSION '},{[1] = gg.VERSION},{'number'})
gg.saveVariable(g.gv, g.config)
gg.VERSION = g.gv[1]
	
--[=======[if "99.0" ~=gg.VERSION 
then print("⚠This Script Only Run With This v99.0⚠\n⚠Your GG version is v".. gg.VERSION .."⚠")
return "87.0"
else
end]=======]
data2 = "\n \n if gg.VERSION < '"..g.gv[1].."' then gg.alert('THIS SCRIP IS VERS FOR IS "..g.gv[1]..",'')\nos.exit() end\n"..data2
data1 = "\n \n if gg.VERSION < '"..g.gv[1].."' then gg.alert('THIS SCRIP IS VERS FOR IS "..g.gv[1]..",'')\nos.exit() end\n"..data1
ggver = on
gvv = g.gv[1]
gvvv = tru
end


if g.info[8] then

data2 = "LOL0_0 = gg;LOL1_1 = LOL0_0.VERSION;LOL2_2 = '8.60.0';LOL3_3 = print;LOL4_4 = 'Your gg version is old vers  .';if  LOL1_1 > LOL2_2 then LOL3_3(LOL4_4) os.exit() end\n"..data2
data1 = "LOL0_0 = gg;LOL1_1 = LOL0_0.VERSION;LOL2_2 = '8.60.0';LOL3_3 = print;LOL4_4 = 'gameguardian v8.60.0 .';if  LOL1_1 > LOL2_2 then LOL3_3(LOL4_4) os.exit() end\n"..data1
print('➣ HAHA')
bgl = on
end
if g.info[9] then
 if g.info[4] == true or g.info[5] == true or g.info[6] == true or g.info[7] == true or g.info[8] == true or g.info[10] == true or g.info[11] == true or g.info[12] == true then gg.alert("📄BACKUP SCRIPT📄\n ⚠EROR⚠\n DISABLE \nPASSWORD \nDATE\nPACKAGE\nVERSSION\nVERSSION BLOCKER\nCOMPILE RANDOM  LETERS \nDISABLE RENAME BLOCKER ") goto hillow end
 
 function Ecrypt(Text)
          return Text:gsub(".", function(c)
            return string.format("%02X", (string.byte(c) + 13) % 256)
          end):gsub(" ", "+")
        end
            os.remove(last..os.date('_%d-%m').."YOURE SCRIP")
local out = last..os.date('_%d-%m').."YOURE SCRIP"
           file = io.open(last, "r")
        assert(file)
        data = file:read("*a")
        file:close()
              c = Ecrypt(data)
        d = [[
 ]]
        e = " \ngetfile = gg.getFile():match('[^/]+$')\n  \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n--█████████\n--█▄█████▄█\n--█▼▼▼▼▼\n--█ RALF CRAFTER\n--█▲▲▲▲▲\n--█████████\n --██ ██\n\n\n\n\n\n\n--╭━[✯ ➧ MADE By ➨ ✭RALF CRAFTER✯\n--╰╮\n--┏┻[YOUPORN PA MORE]\n--┗━[ Subscribe RALFCRAFTER ]\n------------------[]-----------[]------------[]----------\n--                    ╔═➣ SUBCRIBE TO \n-- ══════╬══➣ MY YOUTUBE\n--                    ╚═➣ CHANNEL YT \n-- ═════╔═=[ IF YOU WANT A AN UPDATE ] \n-- ═════╬═=[ THIS COMPILER ASK ME PM] \n-- ═════╬═=[ MY WHATSS APP NUMBER   ] \n-- ═════╬═=[-+639662652595-----------------------------] \n-- ═════╬═=[-rannlene30@gmail.com----------------] \n-- ═════╬═=[ FACEBOOK PAGE             ╔¦               ] \n-- ═════╚═=[-SPECIAL FORCE GROUP2 HACKS-] \n--╔╗﹏﹏﹏﹏\n--║╚╗╔╦╗╔═╗\n--║╬║║║║║╩╣\n--╚═╝╠╗║╚═╝\n--﹏﹏╚═╝﹏﹏﹏\n--👑       👑         👑👑👑👑👑         👑👑??👑\n--??     ??                    👑                   👑               👑\n--👑   👑                     👑                   👑👑👑👑👑\n---👑👑                      👑                   👑\n--👑               👑👑👑👑👑         👑\n\n---RALF CRAFTER\n--&\n---TOP GEO\n\n\n\n\n\n\n"..data
        os.remove(g.last.."")
local out = g.last.."=BACKUP.txt"
        file = io.open(out, "w")
        file:write(e)
        file:close()
        
        bksp = on
        gg.alert(" \n\n\nFILE SAVE IN:"..g.last.."=BACKUP.txt")
            print("\n\n\nFILE SAVE IN:"..g.last.."=BACKUP.txt")
        os.exit()
    
        end
 
       if g.info[10] then
       data2='intreq =gg.makeRequest("http://www.IM/A/NOOB.com")\n'
            data1='intreq =gg.makeRequest("http://www.IM/A/NOOB.com")\n'
       end
       
       if g.info[11] then
       os.exit(gg.alert('THIS RENAME DETECTOR IS NOT FOR THIS VERSION THIS IS  RENAME DETECTOR IS BLOCK FOR NOW NO QURSTION ASK '))

       data2 =  " \n\n\ngetFile = gg.getFile():match('[^/]+$')\n Name = '"..g.name.."'\n \n\n\nif not getFile then os.exit() end \nif getFile == Name or getfile == Name then gg.toast(' USING IS:                 '..Name) \n else\nEROR = 'FILE RANAME DETECTED.                                 DONT RENAME IT DOWNLOAD IT AGAIN '  \nprint(EROR)print(EROR) print(EROR) print(EROR) print(EROR)\n\nreturn\nend \n"..data2
       
       gg.toast('..')
       end
      randss = ""
      rands = ""
       
       if g.info[12] then
 if g.info[11] == true then gg.alert(" ⚠EROR⚠\n DISABLE COMPILE RANDOM  LETERS OR \nDISABLE RENAME BLOCKER") goto hillow end

           rands = RandomLetter(20)
           randss = ".lua"
       end
if g.info[13] then 
 if g.info[11] == true or g.info[12] == true then gg.alert(" ⚠EROR⚠\n DISABLE COMPILE RANDOM  LETERS \nFILE RENAME\nOR \nDISABLE RENAME BLOCKER") goto hillow end
g.infor = gg.prompt({'PUT A NAME'},g.infor,{'text'})
os.rename(''..g.info[1]..'', ''..g.info[2]..'/'..g.infor[1]..'')
os.exit()
end 
if g.info[14] then
ANTILOG1= [[
  gc=gg.getFile() save = {}
for i1 = 1, -25000,-1 do
cx= gg.toast("FUCK_YOU_LOGER_FUCK_UP_DUDE_DONT_STEAL_YOU_COPY_PASTER_BITCH_NOOB") table.insert(save,{
    ['address'] = 0+i1,
    ['flags'] = 12
  })
  end
  ]]
ANTILOG=[==[
  local Tesxt = string.rep("😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈\n👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈👉👌👈\n😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈\n鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟醟ઈ鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘鿰袘\nSPAM LOG\nSPAM LOG\nSPAM LOG",4)
 local Text=""..Tesxt
for k,v in pairs(gg) do
if type(v) == "function" and k ~= "isPackageInstalled" then
def = function(...)
gg.isPackageInstalled(Text:rep(math.random(9999,9999)))
return v(table.unpack({...}))
end

_G["gg"][k] = def

end
end
  ]==]
end
if g.info[15] then
ANTILOAD=[==[
loads=string.rep([[loadfile("/system/priv-app/Settings/Settings.apk")]],99999)
load(loads)()
]==]
end
if g.info[16] then
toa=gg.choice({"ACTIVATE","CUSTOM"},2020,"CHOOSE 1")
if toa==1 then
data2='ProgressBar = "║░░░░░░░░░░░░░░░║";for x = 1,16,1 do gg.sleep(500) ProgressBar = ProgressBar:gsub("░","▓",1);gg.toast(ProgressBar) end'..data2
data1='ProgressBar = "║░░░░░░░░░░░░░░░║";for x = 1,16,1 do gg.sleep(500) ProgressBar = ProgressBar:gsub("░","▓",1);gg.toast(ProgressBar) end'..data1
end
if toa==2 then
cutoa=gg.prompt({"","",""}, {"║░░░░░░░░░░░░░░░║","░","▓"},{"text","text","text"})
data2='ProgressBar = "'..cutoa[1]..'";for x = 1,16,1 do gg.sleep(500) ProgressBar = ProgressBar:gsub("'..cutoa[2]..'","'..cutoa[3]..'",1);gg.toast(ProgressBar) end'..data2
data1='ProgressBar = "'..cutoa[1]..'";for x = 1,16,1 do gg.sleep(500) ProgressBar = ProgressBar:gsub("'..cutoa[2]..'","'..cutoa[3]..'",1);gg.toast(ProgressBar) end'..data1
end
end
ZIBVRA=" \nTXZ=[======[\n\n\n\n\n\n\n\n\n\n\n\n                      ENCRYPTED BY RALF CRAFTER YTG\n                         And TopGeo\n                      Telegram Channel & GC :\n                      [http://t.me/AskSomeCodes] \n                      [http://t.me/RalfCrafterCodes]\n\n\n\n\n\n\n]======]\n"
 COUNTER="Bitch='FUCK YOU DECODER'"
 GgFu=[==[
local gg=gg
if type(gg.T_T_) == 'function' then
gg.toast("YOU ARE USING RF GGMOD")
goto RZ 
elseif type(revo) == 'table' or type(gg.internal9) == 'function' then
print("DONT USE REVO MODED GG")
return
elseif type(gg.toast) == 'function' then
for i=1,1 do
gg.T_T_=gg.toast;gg.T_T_=gg.T_T_
gg.toast("YOU ARE USING NORMAL GG")
end
end
::RZ::

]==]
   gg.setVisible(true)
function EncHex(Text)
    return Text:gsub(".", function(Gg)
      return string.format("%02X", (string.byte(Gg) + 13 + 1999) % 256)
    end):gsub(" ", "+")
  end 
 
  dcb =""

  FUCKZ = "local_= ENC_RALF_CRAFTER"
  Gg= EncHex(FUCKZ)
  G = " function TG() local NN = {} local N = {} N.N = {} N.NNN = NN.G() N.NNN = N.NNN:G() N.N[T] = N[G]  end\nfunction RF(code)  if code ~= nil then for i = script, 0 do local sssss={}if sssss.data~=nil then sssss.sel=sssss.data()end sssss=nil end local data = '' for i = script, #code do data = data .. string.char(code[gg.clearResults]/math.random(1, 1100)) end return pcall(load(data)) end end\n for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end\n BITCH = 'FUCK YOU DECODER' \nif BITCH ~=nil then if Bitch ~= BITCH then gg.alert([[  ⚠THE SCRIPT HAS⚠\n  ⚠BEEN LOAD DEC⚠]],[[]]) return end else return end\nfunction R_F(A0_66)\n res = ''\n   for _FORV_4_ in ipairs(A0_66) do\n res = res .. string.char(A0_66[_FORV_4_])\nend\n return res\nend\n"..ANTILOG.."\n"..dcb.."function Executer(bytes)\nbyte ='' for i in ipairs(bytes) do \nbyte = byte ..string.char(bytes[i]) \nend return byte end\n  "..ROO.."\ngg.getFile()for ralf = 1,39999 do load('')() end \n gg.toast('ᴾᴿᴼᵀᴱᶜᵀᴱᴰ ᴮʸ ᴿᴬᴸᶠ ᶜᴿᴬᶠᵀᴱᴿ')\n\n print(os.date('══════╔═➣Time : %I:%M:%S %p')) print(os.date('══════╚═➣Today : %A, %d %B %Y'))\n\nprint('╭━[✯ ➧ Encrypt By ➨ ✭RALF CRAFTER✯') print('╰╮') print('┏┻[ ENCRYPT DATE : ["..datee.."]') print('┗━[ PROTECTED BY RALFCRAFTER ]') \ngg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_ANONYMOUS)\n \n if gg.VERSION == TyTy then \n function DecHex(key,code) \n    return (code:gsub('..', function (h) return string.char((tonumber(h,16)+256-13 - key + 999999*256)%256) end)) \n end \n  \n local v_value=gg.prompt({'Enter password:'},{[1]=past},{[1]='number'}) \n local data = DecHex(v_value[1],'technano') \n if v_value[1] == Ahihi then \ndata = 'DONT DEC IT BITCH HAHA' file = io.open(out, 'w')\n   file:write(data) \n\n   file:close() \n 	end \n end  \n\n"
datas2 = string.gsub(G,'technano',Gg)..data2
if string.find(datas2, "|") == nil then
  data = string.dump(load(datas2), true)
else
  x = string.rep([[
gg.setRanges(bit32.bxor(gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC | gg.REGION_C_BSS | gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_JAVA_HEAP | gg.REGION_PPSSPP))
--gg.setRanges]], 1)
  d = string.gsub(datas2, "gg.setRanges", x)
  data = string.dump(load(d), true)
end
strj = string.gsub(string.dump(load(data),true), "LuaR", "Lua ",9)
if hilorw[1] then
if hilorw[2] == true then os.exit(gg.alert(ERR)) end
if hilorw[3] == true then os.exit(gg.alert(ERR)) end
     if hilorw[4] == true then os.exit(gg.alert(ERR)) end
     if hilorw[5] == true then os.exit(gg.alert(ERR)) end
datas1=GgFu.. "function TG() local NN = {} local N = {} N.N = {} N.NNN = NN.G() N.NNN = N.NNN:G() N.N[T] = N[G]  end\nfunction RF(code)  if code ~= nil then for i = script, 0 do local sssss={}if sssss.data~=nil then sssss.sel=sssss.data()end sssss=nil end local data = '' for i = script, #code do data = data .. string.char(code[gg.clearResults]/math.random(1, 1100)) end return pcall(load(data)) end end\n for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end\n BITCH = 'FUCK YOU DECODER' \nif BITCH ~=nil then if Bitch ~= BITCH then gg.alert([[  ⚠THE SCRIPT HAS⚠\n  ⚠BEEN LOAD DEC⚠]],[[]]) return end else return end\n"..dcb.."\n"..ROO.."\n"..ANTILOG.."\n"..Script
if string.find(datas1, "|") == nil then
  data = string.dump(load(datas1), true)
else
  x = string.rep([[
gg.setRanges(bit32.bxor(gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC | gg.REGION_C_BSS | gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_JAVA_HEAP | gg.REGION_PPSSPP))
--gg.setRanges]], 1)
  d = string.gsub(datas1, "gg.setRanges", x)
  data = string.dump(load(d), true)
end
end
strj = string.gsub(string.dump(load(data),true), "LuaR.", "LuaRF",9)

GGV=[[GG='\n\n\n    ｓｃｒｉｐｔ   ｅｒｒｏｒ 🖕\n\n\nFuck You Noob Decoder .\nFuck You \nFuck You \nFuck You . . .\n\n\nlocal info = gg.getDecoderInfo()\nif info.FuckDecoder == false then gg.setFuckDecoder(true) end\n\n\n(for Decoder = 1,999 do FUCK end)\n\n\n\n'
]]
function Ecrypt(A0_0)
  return A0_0:gsub(".", function(fg)
    return string.format("%02X",(string.byte(fg)))
  end):gsub(" ", "+")
end
fg= Ecrypt(strj)
ter = "for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end\n"..SSHEX.." function RF(code)  if code ~= nil then for i = script, 0 do local sssss={}if sssss.data~=nil then sssss.sel=sssss.data()end sssss=nil end local data = '' for i = script, #code do data = data .. string.char(code[gg.clearResults]/math.random(1, 1100)) end return pcall(load(data)) end end \n  function HEX(codes);return (codes:gsub([[..]], function (h) return string.char((tonumber(h,16))) end)) end for ralf = 1,6999 do load([[]])() end \n\nBitch='FUCK YOU DECODER'\ngetfile = gg.getFile():match('[^/]+$')\nlocal key =tostring(gg)for i = 9,''..math.random(999,999) do load(key) end\nlocal result = gg.getResults(4)\ngg.setValues(result)\n\n"..ANTILOAD.."\nload(string.gsub(string.dump(load(HEX([[{∆}™]])),true),'LuaR.','LuaCC',12))()"
fas=''
FAX="\\"
faa = string.gsub(ter,'{∆}™',fg)

WEWS=string.gsub(string.dump(load(faa),true), "LuaR.", "LuaRF", 12)
            if hilorw[3] then 
            if hilorw[5] == true then os.exit(gg.alert(ERR)) end
                 if hilorw[4] == true then os.exit(gg.alert(ERR)) end
            if hilorw[2] == true then os.exit(gg.alert(ERR)) end
            if hilorw[1] == true then os.exit(gg.alert(ERR)) end
if g.info[11] == true then os.exit(gg.alert('⚠ERROR⚠\nPLZ DONT USE\nTHE RENAME DETECTOR'))
end
fgx = string.gsub(string.dump(load(faa),true), "LuaR.", "Lua"..XB.."",9)
buf=""
for v=1,string.len(fgx) do
buf = buf..";"..string.byte(fgx,v)
end
 if buf:find(";27") then butf=buf:gsub(";27","27")
end
luar=[[
load(string.char(70,117,99,107,89,111,117,68,101,99,111,100,101,114,61,108,111,97,100,10,70,117,99,107,85,112,61,115,116,114,105,110,103,46,99,104,97,114,10,70,117,99,107,105,110,103,68,101,99,111,100,101,114,61,116,97,98,108,101,46,117,110,112,97,99,107))()
]]
ter=""..GGV.." for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end\n"..luar.."\nfunction TG() local NN = {} local N = {} N.N = {} N.NNN = NN.G() N.NNN = N.NNN:G() N.N[T] = N[G]  end\nfunction RF(code)  if code ~= nil then for i = script, 0 do local sssss={}if sssss.data~=nil then sssss.sel=sssss.data()end sssss=nil end local data = '' for i = script, #code do data = data .. string.char(code[gg.clearResults]/math.random(1, 1100)) end return pcall(load(data)) end"..ZIBVRA.."end\nBitch = 'FUCK YOU'\nfunction script()\n\ngetfile = gg.getFile():match('[^/]+$')\nFuckYouDecoder(FuckUp(FuckingDecoder({"..butf.."})))()\nend\nscript()"
WEWS = string.gsub(string.dump(load(ter),true), "LuaR.", "Lua"..XB.."",9)
end
if hilorw[4] then
if g.info[11] == true then os.exit(gg.alert('⚠ERROR⚠\nPLZ DONT USE\nTHE RENAME DETECTOR'))
end
if hilorw[1] == true then os.exit(gg.alert(ERR)) end
if hilorw[2] == true then os.exit(gg.alert(ERR)) end
if hilorw[3] == true then os.exit(gg.alert(ERR)) end
if hilorw[5] == true then os.exit(gg.alert(ERR)) end
fgx = string.gsub(string.dump(load(faa),true), "LuaR.", "Lua"..XB.."",9)
function enc(A0_70)
	return 'load(LuaC({' .. table.concat({fgx:byte(1, -1)}, ",") .. "}"
end
FUCK = "getfile = gg.getFile():match('[^/]+$')\nfor x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end\nfunction TG() local NN = {} local N = {} N.N = {} N.NNN = NN.G() N.NNN = N.NNN:G() N.N[T] = N[G]  end\nfunction RF(code)  if code ~= nil then for i = script, 0 do local sssss={}if sssss.data~=nil then sssss.sel=sssss.data()end sssss=nil end local data = '' for i = script, #code do data = data .. string.char(code[gg.clearResults]/math.random(1, 1100)) end return pcall(load(data)) end".. ZIBVRA.."end\nfunction LuaC(bytes) \nbyte = '' for i in ipairs(bytes) do byte = byte ..string.char(bytes[i]) end return byte end\nfunction script()\nreturn load(string.gsub(string.dump(".. enc(A0_70)..")),true),'LuaR.','LuaCC',12))()\nend\nscript()"
WEWS = string.gsub(string.dump(load(FUCK),true), "LuaR.", "Lua"..XB.."",9)
WEWsS="".. FUCK
end
if hilorw[5] then
if hilorw[2] == true then os.exit(gg.alert(ERR)) end
if hilorw[3] == true then os.exit(gg.alert(ERR)) end
     if hilorw[4] == true then os.exit(gg.alert(ERR)) end
     if hilorw[1] == true then os.exit(gg.alert(ERR)) end
     fg= Ecrypt(data)
terx= "function TG() local NN = {} local N = {} N.N = {} N.NNN = NN.G() N.NNN = N.NNN:G() N.N[T] = N[G]  end\nfunction RF(code)  if code ~= nil then for i = script, 0 do local sssss={}if sssss.data~=nil then sssss.sel=sssss.data()end sssss=nil end local data = '' for i = script, #code do data = data .. string.char(code[gg.clearResults]/math.random(1, 1100)) end return pcall(load(data)) end".. ZIBVRA.."end\n for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end\nfunction HEX_BYTE(codes);return (codes:gsub([[..]], function (h) return string.char((tonumber(h,16))) end)) end for ralf = 1,6999 do load([[]])() end \ngetfile = gg.getFile():match('[^/]+$')\nBitch='FUCK YOU DECODER'\nlocal key =tostring(gg)for i = 9,''..math.random(999,999) do load(key) end\nlocal result = gg.getResults(999)\ngg.setValues(result)\n"..ANTILOAD.." \nload(string.gsub(string.dump(load(HEX_BYTE(string.char(table.unpack({'" .. table.concat(gg.bytes(fg), "';'") .. "'})))),true),'LuaR.','LuaCC',12))()"
WEWS = string.gsub(string.dump(load(terx),true), "LuaR.","Lua"..XB.."", 9)

end

WEWss=""..WEWS
if g.info[999999998888899] then 

 if WEWss:find("Lua".. XB.."") then WEWss=WEWss:gsub("Lua".. XB.."","GameGuardian")
 COUNTER =""
 end
 end
 if hilorw[6] then
datax1="function TG() local NN = {} local N = {} N.N = {} N.NNN = NN.G() N.NNN = N.NNN:G() N.N[T] = N[G]  end\nfunction RF(code)  if code ~= nil then for i = script, 0 do local sssss={}if sssss.data~=nil then sssss.sel=sssss.data()end sssss=nil end local data = '' for i = script, #code do data = data .. string.char(code[gg.clearResults]/math.random(1, 1100)) end return pcall(load(data)) end"..ZIBVRA.."end\n for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end\n BITCH = 'FUCK YOU DECODER' \nif BITCH ~=nil then if Bitch ~= BITCH then gg.alert([[  ⚠THE SCRIPT HAS⚠\n  ⚠BEEN LOAD DEC⚠]],[[]]) return end else return end\n"..data1
DATA= string.gsub(string.dump(load(datax1), true), "LuaR", "LuaF", 1)
GX=RandomLetter(10)
local Tobytes = {DATA:byte(1, -1)}
local Tobytes = '{' .. table.concat(Tobytes,");,") .. '}'
strj="Bitch='FUCK YOU DECODER'\nload(string.char(table.unpack(" .. Tobytes .. ")))() "
 if strj:find(";") then WEWs=strj:gsub(";",",😈")
end
WWs=""..WEWs
 if WWs:find("😈,") then WEWss=WWs:gsub("😈,","(")
 end
end
::LASTONE::

   os.remove(g.last.."")
local out = g.last.. rands.. randss..''
local file = io.open(out, "wr"):write(WEWss):close()
if not load(faa) then
xn=os.remove(out.."")
print('YOUR SCRIPT IS ERROR AND I DELETED IT')
gg.alert('YOUR SCRIPT IS ERROR FIX IT FIRST AND DONT PUT A TOOLS IN YOUR SCRIPT TO SUCSSES TO ENCRYPT IT','')
break
else
 gg.alert("Encrypt Success!\n\nMenu Added :\n\n"..limdate.." 🕛 Limit Date==\n"..lid.."\n"..detectver.." ✔️ Detect Game Versions==\n"..detecc.."\n"..addpass.." 🔑 Add Password=PW IS="..pwnn.."\n"..ggver.." 🛡️ Require GG Versions=GG V IS="..gvv.."\n"..bgl.."BLOCK GG VER 8.60 and Up\n"..bksp.."BACKUP FOR URE SCRIPT\n✔✅INJECT MORE FILE AFTER LOAD\n📁 File saved to : "..g.last.." ","")
    gg.setVisible(false)
OUTP ="Encrypt Success!\n\nMenu Added :\n\n"..limdate.." 🕛 Limit Date["..lidd.."]\n"..detectver.." Detect Game Versions["..deteccc.."]\n"..addpass.." 🔑 Add Password=PW IS=["..pwann.."]\n"..ggver.." 🛡️ Require GG Versions=GG V IS=["..gvvv.."]\n"..bgl.."BLOCK GG VER 8.60 and Up\n"..bksp.."BACKUP FOR URE SCRIPT\n✅✔INJECT MORE FILE AFTER LOAD\n📁 File saved to : "..g.last
 print(OUTP)
 
os.exit()
break
             end
         end
    end
os.exit()
end
end
end
