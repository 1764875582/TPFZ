--恭喜你死马了，小垃圾，想盗源码或者二改
--没门，傻逼，垃圾迷你

wljbht = "http://www.iyuji.cn/iyuji/s/b0s3bGFuWUE5bkplUlZvcEhJZkIvZz09/1628485892223668"
  BX = gg.makeRequest(wljbht).content
    qwtjqdcs = BX:match("<div class=\"read_txt\">阅读&nbsp; (.-)</div>")
    gg.alert("该辅助总共被启动：" .. qwtjqdcs .. "次")

gg.alert("请耐心等待，当前版本2.5（最终版，以后不更了） 无敌炸迷你模式，QQ群:645398481，盗源码者s🐎")

ffvpn = "https://biaozhunshijian.bmcx.com"

ffvpn = "https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F"

x = tostring(gg.makeRequest(ffvpn))

if not x or not x:sub(1, 20) then

  gg.alert("修改器无法访问网络请查看相应限权", "")

elseif #x < 100 or x:find("SSL") or x:find("I/O") or x:find("javax") then

  gg.alert("❗️❗️❗️\n网络被乌鸡哥断了")

else

while #tostring(gg.makeRequest("https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F")) < 100 or tostring(gg.makeRequest("https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F")):find("SSL") or tostring(gg.makeRequest("https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F")):find("I/O") or tostring(gg.makeRequest("https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F")):find("javax") do

os.remove(gg.getFile():match("[^/]*$"))

print("nmsl")

sj= os.date("%Y%m%d%H%M%S")-xc    gg.alert("本次辅助运行使用时长:"..sj.."秒") os.exit()
end
end
--天跑jio本，你看到这个是不是要二改了，二改你就s🐎
--总群:645398481
--请勿搬运代码以及二改圈钱
--二改没🐎
--请把游戏更新至最新版本1.2.1
--游戏版本过低将无法使用该脚本
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "失败") end end end end

  

function Main()
SJ = os.date("北京时间:%Y年%m月%d日%H时%M分%S秒")
menu = gg.choice({
	 "🖕🏿开始辅助🖕🏿",
	 "🖕🏿查看我的宝天气🖕🏿",
	 "👎退出辅助👎",
}, nil, "V2.5 beta6 版本号\n"..SJ.."\n天青色等烟雨，而我在等你，欢迎来到天跑辅助，注:天跑辅助不只是炸图，点取消没效果正常\n官网:https://1764875582.github.io/QCNB")
if menu == 1 then TP666() end
if menu == 2 then WDB() end
if menu == 3 then Exit() end
FX1=0
end

function WDB()
file=io.open("/storage/emulated/0/.MyCity","r")
if file~=nil then con=file:read("*a") dz=con:match("%&(.-)%&") city=con:match("@(.-)@") file:close()
 else
  city=gg.prompt({"输入城市"},{""},{"text"})[1]
  local function Enc(Mzsh)
    return Mzsh:gsub(".", function(jia)
      return string.format("%%%02X", (string.byte(jia)) % 256)
    end):gsub(" ", "+")
  end
  dz=string.match(gg.makeRequest("http://toy1.weather.com.cn/search?cityname="..Enc(city).."&callback=success_jsonpCallback&_=1532937966722").content,"ref\":\"(.-)~")
  if dz==nil then gg.alert("输入错误城市，请重新输入") os.exit() else f=io.open("/storage/emulated/0/.MyCity","w"):write("@"..city.."@\n&"..dz.."&"):close() end
end
function split(s, p)
  local rt = {}
  string.gsub(s,"[^" .. p .. "]+",function(w)
    table.insert(rt, w)
  end
  )
  return rt
end
function x(x)
  local i=0
  for w in string.gmatch(x,"active") do
    i=i+1 end
  local t=string.rep("⭐",i)
  return t
end
-------
tq=gg.makeRequest("http://www.weather.com.cn/weather1d/"..dz..".shtml").content
---获取1天内天气
a=string.gsub(string.gsub(string.gsub(string.gsub(string.match(tq,"var hour3data={\"1d\":%[(.-)]"),"\",\"","$$"),"\"",""),",...,",","),",(%d+)%$","")
b=split(a,"$")--天气

---获取生活指数
tab={"<h2>(.-)</h2>","<em>(.-)</em>","\n<i (.-)</i>\n","<dd>(.-)</dd>"}
shzs=gg.makeRequest("http://www.weather.com.cn/weather1dn/"..dz..".shtml").content
tq1=string.match(shzs,"<b>生活助手</b>(.-)</div>")
c={}
for i=1,4 do
  c[i]={}
  for w in string.gmatch(tq1,tab[i]) do
    if i==1 then if string.find(w,"em") then w="健臻·血糖" end end
    table.insert(c[i],w)
  end
end
ts={}
for v=1,6 do
  ts[v]={}
  for i=1,4 do
    table.insert(ts[v],c[i][v])
  end
end
mm=""
for i=1,6 do
  mm=mm..ts[i][1]..":"..ts[i][2].."\n指数:"..x(ts[i][3]).."\n温馨提示:"..ts[i][4].."\n\n"
end
gg.alert("当前城市:"..city.."\n"..table.concat(b,"\n").."\n-----------\n".."生活助手:\n"..mm)
end

function TP666()
  menu = gg.choice({
    '👑联机功能区👑',
    
    '👑房主功能区👑',
    
    '👑其它功能区👑',
    
    '🚪炸图功能区🚪',
    
    '🌚恶心崩服区🌝',
    
    '🌚恶心踢人区🌝',
    
    '🌕美丽改皮区🌝',
    
    '🏎十年老兵区🏎',
    
    '🏎傻逼家园改25级🏎',
    
    '🏎PVP牛逼区🏎',
    
    '🌼动听音乐区🌼',
    
    '🌚连接其他辅助（开放）🌝',
    
    '🇨🇳关于辅助🇨🇳',
    
    '⚡返回上一页⚡'},
  2,'天跑脚本2.5 beta6 无敌炸迷你模式，二改没🐎，QQ群:645398481 官网:https://1764875582.github.io/QCNB')
  if menu == 1 then A() end
  if menu == 2 then B() end
  if menu == 3 then C() end
  if menu == 4 then D() end
  if menu == 5 then E() end
  if menu == 6 then F() end
  if menu == 7 then G() end
  if menu == 8 then H() end
  if menu == 9 then SB() end
  if menu == 10 then CAJ() end
  if menu == 11 then Main6() end
  if menu == 12 then LXDJ() end 
  if menu == 13 then GY() end
  if menu == 14 then HOME() end
  XGCK=-1
end





function A()
  menu1 = gg.multiChoice({
    '人物加速',
    '人物高跳',
    '高跳关闭',
    '连跳飞天',
    '天空黑色',
    '天黑关闭',
    '方块透视',
    '透视关闭',
    '无限距离',
    '距离关闭',
    '解禁地形编辑器',
    '能量剑改地形编辑器',
    '喷射钩爪改地形编辑器',
    '玩法生存改创造',
    '人物穿墙',
    '穿墙关闭',
    '强制打字',
    '返回上一页'},
  nil,'联机功能区')
  if menu1 == nil then else
    if menu1[1] == true then a1() end
    if menu1[2] == true then a2() end
    if menu1[3] == true then a3() end
    if menu1[4] == true then a4() end
    if menu1[5] == true then a5() end
    if menu1[6] == true then a6() end
    if menu1[7] == true then a7() end
    if menu1[8] == true then a8() end
    if menu1[9] == true then a9() end
    if menu1[10] == true then a10() end
    if menu1[11] == true then a11() end
    if menu1[12] == true then a12() end
    if menu1[13] == true then a13() end
    if menu1[14] == true then a14() end
    if menu1[15] == true then a15() end
    if menu1[16] == true then a16() end
    if menu1[17] == true then a17() end
    if menu1[18] == true then HOME() end
  end
  GLWW=-1
end



function B()
  menu1 = gg.multiChoice({
    '近战秒杀',
    '远程秒杀',
    '无限血量',
    '无限饥饿',
    '无限氧气',
    '无限星星',
    '无限物品『物品栏第一格』',
    '秒拆方块',
    '功能名称',
    '功能名称',
    '返回上一页'},
  nil,'房主功能区')
  if menu1 == nil then else
    if menu1[1] == true then b1() end
    if menu1[2] == true then b2() end
    if menu1[3] == true then b3() end
    if menu1[4] == true then b4() end
    if menu1[5] == true then b5() end
    if menu1[6] == true then b6() end
    if menu1[7] == true then b7() end
    if menu1[8] == true then b8() end
    if menu1[9] == true then b9() end
    if menu1[10] == true then b10() end
    if menu1[11] == true then HOME() end
  end
  GLWW=-1
end



function C()
  menu1 = gg.multiChoice({
    '解除防沉迷',
    '强制修改密码',
    '密码弹窗关闭',
    '功能名称',
    '功能名称',
    '功能名称',
    '功能名称',
    '功能名称',
    '功能名称',
    '功能名称',
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
    if menu1[8] == true then c8() end
    if menu1[9] == true then c9() end
    if menu1[10] == true then c10() end
    if menu1[11] == true then HOME() end
  end
  GLWW=-1
end

function D()
  menu1 = gg.multiChoice({
    '短剑改黑龙球',
    '仙人掌改大伊万（炸弹）',
    '水火桶改岩浆',
    '忘了',
    '开发者菜单（XE）',
    '第八格编辑器',
    '枪射手雷',
    '弓射火箭弹',
    '枪射火箭弹',
    '枪射炸弹',
    '临时改名',
    '解除禁用危险品', 
    '强制打字',
    '删房主备份',
    '解锁火箭筒',
    '猪蛋改黑龙蛋',
    '增强玩法改编辑', 
    '改创造2.0', 
    '等待', 
    '等待',
    '返回上一页'},
  nil,'炸图功能区')
  if menu1 == nil then else
    if menu1[1] == true then D1() end
    if menu1[2] == true then D2() end
    if menu1[3] == true then D3() end
    if menu1[4] == true then D4() end
    if menu1[5] == true then D5() end
    if menu1[6] == true then D6() end
    if menu1[7] == true then D7() end
    if menu1[8] == true then D8() end
    if menu1[9] == true then D9() end
    if menu1[10] == true then D10() end
    if menu1[11] == true then D11() end
    if menu1[12] == true then D12() end
    if menu1[13] == true then D13() end
    if menu1[14] == true then D14() end
    if menu1[15] == true then D15() end
    if menu1[16] == true then D16() end
    if menu1[17] == true then D17() end
    if menu1[18] == true then D18() end
    if menu1[19] == true then D19() end
    if menu1[20] == true then D20() end
    
    if menu1[21] == true then HOME() end
  end
  GLWW=-1
end

function H()
  menu1 = gg.multiChoice({
    '手杀基岩',
    '召唤傻逼东西',
    '秒杀',
    '伤害转移',
    '动态发红绿灯中间的颜色图片',
    '钻石剑无冷却时间',
    '过游戏检测（变速建议开）',
    '隔空打mn',
    '留言板打傻逼',
    '联机打字',
    '无限连跳〈修改中请勿移动〉',
    '解锁物品', 
    'g',
    'g',
    'g',
    'g',
    'g', 
    '等待', 
    '等待', 
    '等待',
    '返回上一页'},
  nil,'十年老兵区')
  if menu1 == nil then else
    if menu1[1] == true then H1() end
    if menu1[2] == true then H2() end
    if menu1[3] == true then H3() end
    if menu1[4] == true then H4() end
    if menu1[5] == true then H5() end
    if menu1[6] == true then H6() end
    if menu1[7] == true then H7() end
    if menu1[8] == true then H8() end
    if menu1[9] == true then H9() end
    if menu1[10] == true then H10() end
    if menu1[11] == true then H11() end
    if menu1[12] == true then H12() end
    if menu1[13] == true then H13() end
    if menu1[14] == true then H14() end
    if menu1[15] == true then H15() end
    if menu1[16] == true then H16() end
    if menu1[17] == true then H17() end
    if menu1[18] == true then H18() end
    if menu1[19] == true then H19() end
    if menu1[20] == true then H20() end
    
    if menu1[21] == true then HOME() end
  end
  GLWW=-1
end

function SB()
  menu1 = gg.multiChoice({
    '一级家园改25级1',
    '一级家园改25级2',
    '二级家园改25级1',
    '二级家园改25级2',
    '三级家园改25级1',
    '三级家园改25级2',
    '四级家园改25级1',
    '四级家园改25级2',
    '五级家园改25级1',
    '五级家园改25级2',
    
    '返回上一页'},
  nil,'修改25级，获得傻逼东西')
  if menu1 == nil then else
    if menu1[1] == true then SB1() end
    if menu1[2] == true then SB2() end
    if menu1[3] == true then SB3() end
    if menu1[4] == true then SB4() end
    if menu1[5] == true then SB5() end
    if menu1[6] == true then SB6() end
    if menu1[7] == true then SB7() end
    if menu1[8] == true then SB8() end
    if menu1[9] == true then SB9() end
    if menu1[10] == true then SB10() end

    
    if menu1[21] == true then HOME() end
  end
  GLWW=-1
end

function SB1()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1；70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1；70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function SB2()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function SB3()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2;70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2;70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 2}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function SB4()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function SB5()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function SB6()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function SB7()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("4;140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4;140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 4}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function SB8()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777427}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function SB9()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;180", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5;180", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 5}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function SB10()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 25}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function F()
  menu1 = gg.multiChoice({
    '踢房猪2.0',
    '踢房员',
    '踢房主1.0',
    '等等',
    '等待',
    '等待',
    '等待',
    '等待',
    '等待',
    '等待',
    '返回上一页'},
  nil,'恶心踢人区')
  if menu1 == nil then else
    if menu1[1] == true then F1() end
    if menu1[2] == true then F2() end
    if menu1[3] == true then F3() end
    if menu1[4] == true then F4() end
    if menu1[5] == true then F5() end
    if menu1[6] == true then F6() end
    if menu1[7] == true then F7() end
    if menu1[8] == true then F8() end
    if menu1[9] == true then F9() end
    if menu1[10] == true then F10() end
    if menu1[11] == true then HOME() end
  end
  GLWW=-1
end



function LXDJ()
SN = gg.choice({
	 "💎XE6.1💎",
	 "💎天晴2.4💎",
	 "💎凉情💎",
}, nil, "🌸可以连线对接到这些脚本。🌸")
if SN==1 then
     XENB()
end
if SN==2 then
	 TQNB()
end
	 
if SN==3 then
	 LQNB()	 	 
end
FX=0
end

function XENB()
 pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1627196226.lua").content))
 end
 function TQNB()
 pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1627912438.lua").content))
end
function LQNB()
 pcall(load(gg.makeRequest("http://zl.lnlcup.cn/a/1627441225.lua").content))
end




function a1()
qmnb = {
{["memory"] = 4},
{["name"] = "人物加速开启"},
{["value"] = 16777473, ["type"] = 4},
{["lv"] = 10.0, ["offset"] = 28, ["type"] = 16},
}
qmxg = {
{["value"] = 20, ["offset"] = 28, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end



function a2()
qmnb = {
{["memory"] = 16384},
{["name"] = "人物高跳开启"},
{["value"] = 0.01745329238474369, ["type"] = 16},
{["lv"] = 20.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 40.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 80, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end



function a3()
qmnb = {
{["memory"] = 16384},
{["name"] = "人物高跳关闭"},
{["value"] = 0.01745329238474369, ["type"] = 16},
{["lv"] = 20.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 80.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 40, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end



function a4()
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
os.exit()
end



function a5()
qmnb = {
{["memory"] = 16384},
{["name"] = "天空黑色开启"},
{["value"] = 280.0, ["type"] = 16},
{["lv"] = 0.4000000059604645, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = -999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end



function a6()
qmnb = {
{["memory"] = 16384},
{["name"] = "天空黑色关闭"},
{["value"] = 280.0, ["type"] = 16},
{["lv"] = -999.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0.4000000059604645, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end



function a7()
qmnb = {
{["memory"] = 4},
{["name"] = "方块透视开启"},
{["value"] = 75.0, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 12, ["type"] = 16},
{["lv"] = 30000.0, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end



function a8()
qmnb = {
{["memory"] = 4},
{["name"] = "方块透视关闭"},
{["value"] = 75.0, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 30000, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end



function a9()
qmnb = {
{["memory"] = 16384},
{["name"] = "无限距离开启"},
{["value"] = 9.999999747378752E-5, ["type"] = 16},
{["lv"] = 500.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 400.0, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = -4, ["type"] = 16},
{["value"] = 9999, ["offset"] = -16, ["type"] = 16},
}
xqmnb(qmnb)
end



function a10()
qmnb = {
{["memory"] = 16384},
{["name"] = "无限距离关闭"},
{["value"] = 9.999999747378752E-5, ["type"] = 16},
{["lv"] = 9999.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 9999.0, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 500, ["offset"] = -4, ["type"] = 16},
{["value"] = 400, ["offset"] = -16, ["type"] = 16},
}
xqmnb(qmnb)
end



function a11()
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



function a12()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10500", gg.TYPE_DWORD)
  gg.toast("能量剑改地形编辑器开启成功")
  gg.clearResults()
end



function a13()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10500", gg.TYPE_DWORD)
  gg.toast("喷射钩爪改地形编辑器开启成功")
  gg.clearResults()
end


function a14()
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



function a15()
qmnb = {
{["memory"] = 4},
{["name"] = "人物穿墙开启"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -80000, ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end



function a16()
qmnb = {
{["memory"] = 4},
{["name"] = "人物穿墙关闭"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = -80000, ["offset"] = -12, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 180, ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end



function a17()
qmnb = {
{["memory"] = 4},
{["name"] = "强制打字开启"},
{["value"] = 2042, ["type"] = 4},
{["lv"] = 2042, ["offset"] = 4, ["type"] = 4},
{["lv"] = 2043, ["offset"] = 8, ["type"] = 4},
{["lv"] = 4, ["offset"] = 20, ["type"] = 4},
{["lv"] = 4, ["offset"] = 36, ["type"] = 4},
{["lv"] = 3, ["offset"] = 52, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 44, ["type"] = 64},
}
xqmnb(qmnb)
end



function b1()
qmnb = {
{["memory"] = 4},
{["name"] = "近战秒杀开启"},
{["value"] = 0.20000000298023224, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -12, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 999999, ["offset"] = 52, ["type"] = 16},
}
xqmnb(qmnb)
end



function b2()
qmnb = {
{["memory"] = 4},
{["name"] = "远程秒杀开启"},
{["value"] = 0.20000000298023224, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -12, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 999999, ["offset"] = 56, ["type"] = 16},
}
xqmnb(qmnb)
end



function b3()
qmnb = {
{["memory"] = 4},
{["name"] = "无限血量开启"},
{["value"] = 0.20000000298023224, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -12, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 100, ["offset"] = -20, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end



function b4()
qmnb = {
{["memory"] = 4},
{["name"] = "无限饥饿开启"},
{["value"] = 0.20000000298023224, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -12, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 100, ["offset"] = 200, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end



function b5()
qmnb = {
{["memory"] = 4},
{["name"] = "无限氧气开启"},
{["value"] = 0.20000000298023224, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -12, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 10, ["offset"] = 48, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end



function b6()
qmnb = {
{["memory"] = 4},
{["name"] = "无限星星开启"},
{["value"] = 0.20000000298023224, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -12, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 999, ["offset"] = 252, ["type"] = 16},
}
xqmnb(qmnb)
end



function b7()
qmnb = {
{["memory"] = 4},
{["name"] = "无限物品开启"},
{["value"] = 1001, ["type"] = 4},
{["lv"] = 1, ["offset"] = -16, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -148, ["type"] = 4},
}
qmxg = {
{["value"] = 945804388, ["offset"] = -144, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end



function b8()
qmnb = {
{["memory"] = 4},
{["name"] = "秒拆方块开启"},
{["value"] = 10000, ["type"] = 4},
{["lv"] = 15, ["offset"] = -28, ["type"] = 4},
{["lv"] = 1.0, ["offset"] = -48, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -52, ["type"] = 16},
}
xqmnb(qmnb)
end



function b9()

end



function b10()

end



function c1()
qmnb = {
{["memory"] = 4},
{["name"] = "解除防沉迷开启"},
{["value"] = 9000, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 65536, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 24, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 28, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end



function c2()
qmnb = {
{["memory"] = 4},
{["name"] = "强制修改密码开启"},
{["value"] = 6005, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 24, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end



function c3()
qmnb = {
{["memory"] = 4},
{["name"] = "强制修改密码关闭"},
{["value"] = 6005, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 24, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end



function c4()

  gg.toast("开启失败")
end



function c5()

  gg.toast("开启失败")
end



function c6()

  gg.toast("开启失败")
end



function c7()

  gg.toast("开启失败")
end



function c8()

  gg.toast("开启失败")
end



function c9()

  gg.toast("开启失败")
end



function c10()

  gg.toast("开启失败")
end

function D1()
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

function D2()
gg.toast("正在调用数据请稍后")
gg.clearResults()
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
{["value"] = 835, ["offset"] = 260, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end

function D3()
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

function D4()
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

function D5()
SN = gg.choice({
     "自动",
     "打开",
     "关闭",
     "返回主页",
}, nil, "开启前须先创建一个开发者模式的地图，然后进入该地图点一下左上角的开发者菜单按钮激活此功能")
if SN==1 then
     C7a1()
end
if SN==2 then
     C7a2()
end
if SN==3 then
     C7a3()
end
if SN==4 then
     C7a4()
end
FX1=0
end

function C7a1()
     C7a2()
     gg.sleep(3000)
     C7a3()
end

function C7a2()
function jiuyan(qmnb,qmxg)
gg.setVisible(false)
gg.clearResults()
qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])
gg.searchNumber(qmnbv,qmnbt)
gg.refineNumber(qmnbv,qmnbt)
sz=gg.getResultCount()
if sz==0 then
gg.toast(qmnbn.."开启失败，请确认是否打开过开发者菜单")
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
gg.toast(qmnbn.."\n          共注入 1 条数据")
else 
gg.toast(qmnbn.."开启失败，请确认是否打开过开发者菜单")
end
end
end
jiuyan(
{
{4},
{"成功创建界面"}, 
{196673536, gg.TYPE_DWORD},
{16777216, 4, gg.TYPE_DWORD}, 
},
{
{16777472, 4, gg.TYPE_DWORD, false},
}
)
Main0()
end

function D6()
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
gg.toast("保持第8格没有物品️")
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"]=10500,["type"]=4},
{["lv"]=2,["offset"]=56,["type"]=4},
{["lv"]=3,["offset"]=60,["type"]=4},
{["lv"]=2,["offset"]=64,["type"]=4},
}
qmxg={
{["value"]=10500,["offset"]=0,["type"]=4,["freeze"] = true}
} xqmnb(qmnb)
gg.clearResults()local tt
for i,v in ipairs(gg.getListItems())do
if v.value==10500 then tt=ss(v)break end end if tt then
qmnb = {
{["memory"] = 4},
{["name"] = "添加编辑器"},
{["value"] = 4062199224110941167, ["type"] = 32},
{["lv"] = -3349162836, ["offset"] = 4, ["type"] = 32},
{["lv"] = 1006, ["offset"] = -0x94, ["type"] = 4},
{["lv"] = 1005, ["offset"] = -0x128, ["type"] = 4},
{["lv"] = 1004, ["offset"] = -0x1BC, ["type"] = 4},
{["lv"] = 1003, ["offset"] = -0x250, ["type"] = 4},
{["lv"] = 1002, ["offset"] = -0x2E4, ["type"] = 4},
{["lv"] = 1001, ["offset"] = -0x378, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -0x40C, ["type"] = 4},
}
qmxg = {
{["value"] = tt, ["offset"] = 120, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()end
end

function D7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15008}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function D8()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12051", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12051", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 12205}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function D9()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 12285}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function D10()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15008}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function D11()
mnh = gg.prompt({"请输入你的迷你号"}
,{[1]=259537497},{[1]="number"})[1]
--








mnmz = ":w"
mnmc = gg.prompt({"请输入名字记得前面加个:"}
,{[1]=":"},{[1]="text"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "."},
{["value"] = mnh, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -8, ["type"] = 4},
{["lv"] = 0, ["offset"] = -12, ["type"] = 4},
{["lv"] = 0, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
{["lv"] = 0, ["offset"] = -28, ["type"] = 4},
{["lv"] = 0, ["offset"] = -32, ["type"] = 4},
{["lv"] = 0, ["offset"] = -36, ["type"] = 4},
{["lv"] = 0, ["offset"] = -40, ["type"] = 4},
{["lv"] = 0, ["offset"] = -44, ["type"] = 4},
{["lv"] = 0, ["offset"] = -48, ["type"] = 4},
{["lv"] = 0, ["offset"] = -52, ["type"] = 4},
{["lv"] = 0, ["offset"] = -56, ["type"] = 4},
{["lv"] = 0, ["offset"] = -60, ["type"] = 4},
{["lv"] = 0, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 0, ["offset"] = 16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 4},
{["lv"] = 0, ["offset"] = 24, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 0, ["offset"] = 32, ["type"] = 4},
{["lv"] = 0, ["offset"] = 36, ["type"] = 4},
{["lv"] = 0, ["offset"] = 40, ["type"] = 4},
{["lv"] = 0, ["offset"] = 44, ["type"] = 4},
{["lv"] = 0, ["offset"] = 48, ["type"] = 4},
{["lv"] = 0, ["offset"] = 52, ["type"] = 4},
{["lv"] = 0, ["offset"] = 56, ["type"] = 4},
{["lv"] = 0, ["offset"] = -64, ["type"] = 4},
}
qmxg = {










{["value"] = mnmz, ["offset"] = 65, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 66, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 67, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 68, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 69, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 70, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 71, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 72, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 73, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 74, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 75, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 76, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 77, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 78, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 79, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 80, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 81, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 82, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 83, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 84, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 85, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 86, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 87, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 88, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 89, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 90, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 91, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 92, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 93, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 94, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 95, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 96, ["type"] = 1},
{["value"] = 245838898, ["offset"] = 60, ["type"] = 4,["freeze"] = true},

}
xqmnb(qmnb)





gg.clearResults()
gg.searchNumber(":wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmc, gg.TYPE_BYTE)
gg.toast("临时改名开启成功")
if gg.getResultCount() == 0 then
gg.toast("临时改名开启失败")
else
end
end

function D12()
qmnb={
{["memory"]=16384},
{["name"]="解除禁用危险品"},
{["value"]=1762840583,["type"]=4},
{["lv"]=265295819,["offset"]=4,["type"]=4},
{["lv"]=1096303249,["offset"]=8,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=8,["type"]=16}
}
xqmnb(qmnb)
end

function D13()
qmnb = {
{["memory"] = 4},
{["name"] = "强制打字开启"},
{["value"] = 2042, ["type"] = 4},
{["lv"] = 2042, ["offset"] = 4, ["type"] = 4},
{["lv"] = 2043, ["offset"] = 8, ["type"] = 4},
{["lv"] = 4, ["offset"] = 20, ["type"] = 4},
{["lv"] = 4, ["offset"] = 36, ["type"] = 4},
{["lv"] = 3, ["offset"] = 52, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 44, ["type"] = 64},
}
xqmnb(qmnb)
end

function D14()
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

function D15()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12284D;62D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("火箭筒解锁成功")
	 gg.clearResults()
end

function D16()
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

function D17()
F = gg.alert("🌸请选择｛开 关｝🌸","🌸开🌸","🌸关🌸️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("🌸你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="创造"},
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
 elseif  F== 2 then
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

function D18()
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
 elseif  F== 2 then
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

function H1()
gg.toast("请选择手撸基石开关。")
F = gg.alert("请选择手撸基岩[开 关]","开","关")
 if  F~=1 and F~=2 then
   gg.toast("你未选择开关默认取消")
    gg.toast("你未选择[开 关]")
  else 
  end
if  F== 1 then
local FKC_a1 = os.clock()
gg.toast("正在开启手撸基石请稍等")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1~1000;-1;-1F;15;10000::88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("开启失败..功能是否已开启")gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启") else if gg.isVisible(true) then gg.alert('违规操作制作不易且行且珍惜\n请勿在执行时打开','强制结束') gg.clearResults() gg.toast("开启失败")   os.exit()  end
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("开启失败..功能是否已开启") gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启")else if gg.isVisible(true) then gg.alert('违规操作制作不易且行且珍惜\n请勿在执行时打开','强制结束') gg.clearResults() gg.toast("开启失败")   os.exit()  end
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("5", gg.TYPE_FLOAT)
gg.toast('ID:手撸基岩开启成功\n共修改' .. a1 .. '条数据'..string.format('\n耗时: %.2f', os.clock() - FKC_a1))
gg.toast("手撸基石开启成功，共修改"..a1.."条数据"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))
end  end 
elseif F == 2 then
local FKC_a1 = os.clock()
gg.toast("正在关闭手撸基石请稍等")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1~1000;-1;5F;15;10000::88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("恢复失败..功能是否已开启") gg.toast("此功能是否已开启？检测到特征码无效已自动停止恢复")else if gg.isVisible(true) then gg.alert('违规操作制作不易且行且珍惜\n请勿在执行时打开','强制结束') gg.clearResults() gg.toast("开启失败")   os.exit()  end
gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("恢复失败..功能是否已开启")gg.toast("此功能是否已开启？检测到特征码无效已自动停止恢复")  else if gg.isVisible(true) then gg.alert('违规操作制作不易且行且珍惜\n请勿在执行时打开','强制结束') gg.clearResults() gg.toast("开启失败")   os.exit()  end
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("-1", gg.TYPE_FLOAT)
gg.toast('ID:手撸基岩恢复成功\n共修改' .. a1 .. '条数据'..string.format('\n耗时: %.2f', os.clock() - FKC_a1))
gg.toast("手撸基石恢复成功，共修改"..a1.."条数据"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))
gg.clearResults()
end end end end 

function H2()
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

function H3()
gg.clearResults()
gg.toast("开启中可能有点慢请稍等.......")
gg.toast("开启中可能有点慢请稍等.......")
qmnb = {
{["memory"] = 4},
{["name"] = "秒杀"},
{["value"] = -840053267, ["type"] = 4},
{["lv"] = 136, ["offset"] = -4256, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4248, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4184, ["type"] = 4},
{["lv"] = 0, ["offset"] = -404, ["type"] = 4},
{["lv"] = -697184787, ["offset"] = -12, ["type"] = 4},
{["lv"] = -840051153, ["offset"] = -8, ["type"] = 4},
{["lv"] = -840053267, ["offset"] = 8, ["type"] = 4},
{["lv"] = -840053267, ["offset"] = 12, ["type"] = 4},
{["lv"] = -840053267, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 9999, ["offset"] = -404, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
end

function H4()
b99 = gg.prompt({"[输入不同队的人的迷你号]开启成功后打队友，伤害会到你输入迷你号的那个人身上"}
,{[1]=0},{[1]="number"})[1]
gg.clearList()
qmnb = {
{["memory"] = 4},
{["name"] = "攻击转移"},
{["value"] = 999, ["type"] = 4},
{["lv"] = 180, ["offset"] = 20, ["type"] = 4},
{["lv"] = 60, ["offset"] = 24, ["type"] = 4},
{["lv"] = 220, ["offset"] = 28, ["type"] = 4},
{["lv"] = 120, ["offset"] = 32, ["type"] = 4},
{["lv"] = 120, ["offset"] = 36, ["type"] = 4},
{["lv"] = -1, ["offset"] = 208, ["type"] = 4},
{["lv"] = -1, ["offset"] = 212, ["type"] = 4},
{["lv"] = -1, ["offset"] = 216, ["type"] = 4},
}
qmxg = {
{["value"] = b99, ["offset"] = 340, ["type"] = 4,["freeze"] = true},
{["value"] = 999, ["offset"] = 0, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 208, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 212, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 216, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)

end

function H5()
gg.alert("🧊先点击动态发布按钮🧊","🍁️开启🍁️️")
qmnb = {
{["memory"] = 4},
{["name"] = "动态发图片"},
{["value"] = 812, ["type"] = 32},
{["lv"] = 632, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 36, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -16, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function H6()
qmnb = {
{["memory"] = 4},
{["name"] = "能量剑无冷却"},
{["value"] = 12005, ["type"] = 4},
{["lv"] = 1084227584, ["offset"] = 76, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 76, ["type"] = 4},
}
xqmnb(qmnb)
end

function H7()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777427}})
	 end
	 gg.toast("过检测成功，十年老兵申请出站")
	 gg.clearResults()
end

function H8()
qmnb = {
{["memory"] = 4},
{["name"] = "隔空打人"},
{["value"] = -1778398720, ["type"] = 4},
{["lv"] = -1, ["offset"] = 4, ["type"] = 4},
{["lv"] = -1660954112, ["offset"] = 12, ["type"] = 4},
{["lv"] = 1895812768, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 17, ["offset"] = 8, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function H9()
qmnb = {
{["memory"] = 4},
{["name"] = "开启成功"},
{["value"] = 6200, ["type"] = 4},
{["lv"] = 524296, ["offset"] = 0x58, ["type"] = 4},
}
qmxg = {{["value"] = 16777472, ["offset"] =0x1C, ["type"] = 4},}

xqmnb(qmnb)
end

function H10()
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
	 gg.toast("联机聊天-修改完成")
	 gg.clearResults()
end

function H11()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;1;1073741824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("开启OK，开启你的骚操作")
	 gg.clearResults()
end

function H12()
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



 function F1()
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

function F2()
a = gg.prompt({"请输入你的迷你号"}
,{[1]=922640235},{[1]="number"})[1]
  gg.toast("请在10秒内复制你想踢的人迷你号")
  gg.sleep(10000)
b = gg.prompt({"请输入你想踢的人迷你号"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "踢成员"},
{["value"] = a, ["type"] = 4},
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
{["value"] = a, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.clearResults()
end end end end end

function F3()
F = gg.alert("请提前复制你的迷你号，开启成功后你说的话就等于房主说的","🌞确认开启🌞")
if  F~=1 then
gg.toast("你未选择确认开启")
else 
end
if  F== 1 then
a = gg.prompt({"请输入你的迷你号"}
,{[1]=0},{[1]="number"})[1]
gg.alert("现在去复制房主的迷你号 10秒后会自动弹出窗口","🌞去复制🌞")
gg.sleep(10000)
b = gg.prompt({"请输入房主迷你号"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "踢房主"},
{["value"] = a, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 24, ["type"] = 4},}
qmxg = {
{["value"] = b, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end
end

function E()
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
	 gg.toast("时间已过，自动开始崩服")
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

function G()
menu1 = gg.choice({
'联机改皮肤(别人房间可以)',
'返回上一页'},
nil,'改皮肤')
if menu1 == 1 then aaa10() end
if menu2 == 2 then aaa10() end

GLWW=-1
end

function aaa10()
gg.clearList()
F = gg.alert("改皮肤开启后召唤商人打一下","🌌联机️改皮肤🌌","🌝宠物改商人🌚️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择默认取消")
  else 
  end
if  F== 1 then
b99 = gg.prompt({"🍡代码在名字的右侧🍡德古拉六世2304叮叮当2560羽姬3072小龙6144二郎神6400幻零式7424柳仙儿7680帕普奇7936嘟嘟啵啵8704斩浪9728喵小糖10752星翼11264离11520黯11776大毛12544乔克12800小艾13056擎天柱13312威震天13568慕斯13824金柚柚14080喜团团14336大黄蜂14848花幽幽15104爱丽丝15872红蜘蛛16384热破16640惊破天16896劳尔17152青弦17664紫悦女孩17920宇宙公主女孩18176柔柔女孩18432月亮公主女孩18688钢锁18944飞标19200嚎叫19456塔莉娅19968碧琪女孩20736白夜女巫卡洛儿20992余小欢21248章小鱼21504熊小吉21760星光熠熠女孩22016云宝女孩22272音韵公主女孩22528初暮22784冲云宵23040利爪23296铁头23552大鹏23808猛虎24064野牛24320大无畏24576银剑24832俯冲25088飞火25344弹弓25600空袭25856圣婴26112魔炎26368灵瑶26624小红帽阿夏尔26880迷小酷27136狼少年沃尔夫27392仙杜瑞拉28160橘子28416查理斯28672泡泡28928朝露繁花29184冰公主29440罗丽29696"},
{[1]=""},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "联机皮肤"},
{["value"] = 117901056, ["type"] = 4},
{["lv"] = -1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 151587072, ["offset"] = -512, ["type"] = 4},
{["lv"] = 16, ["offset"] = -508, ["type"] = 4},
{["lv"] = 117901056, ["offset"] = 12, ["type"] = 4}
}
qmxg = {
{["value"] = b99, ["offset"] = -292, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
  elseif F == 2 then
 o=3017 o1()
end
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

function Main6()  SN = gg.choice({
   "💎搜索歌曲💎",
   "💎搜索列表💎",
   "💎播放热歌💎",
   "💎️停止播放💎",
   "💎️清除冻结💎",
   "🌸返回主页️🌸",
},2018,os.date("🌸搜索和播放歌曲。🌸"))
if SN==1 then s1() end
if SN==2 then Play(gqlb,idb) end
if SN==3 then YY998() end
if SN==4 then stop() end
if SN==5 then Main11() end
if SN==6 then Main() end
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

function GY()
SN = gg.choice({
     "功能详解",
	 "游戏崩溃",
	 "清理冻结数据",
     "流量管理",
	 "更新检测",
}, nil, "本功能可以给您提供一些帮助\n此为离线功能若无法解决问题\n请前往官网发帖求助\n官网链接:\nhttps://1764875582.github.io/QCNB")
if SN==1 then F1() end
if SN==2 then F2() end
if SN==3 then F3() end
if SN==4 then F4() end
if SN==5 then F7() end
FX1=0 end

function F1()
SN = gg.choice({
     "隐藏辅助",
     "冻结数据",
     "没有我要了解的问题",
},nil,"请选择需要了解的内容")
if SN==1 then
     F1a1()
end
if SN==2 then
     F1a2()
end
if SN==3 then
     F1a3()
end
FX1=0
end

function F1a1()
     gg.alert("隐藏辅助可有效增加稳定性，相应的每开启一项就会降低辅助的性能\n1、2、3、4项详解:\n1 此选项会使快速失效不建议开启\n2 此选项对辅助的影响不大\n3 此选项对辅助影响不大\n4 此选项会使变速失效\n推荐开启2、3项即可\n更多问题请到官网发帖")
     gg.copyText("https://tq.zhatu.xyz)")
     gg.toast("已为您复制官网链接")
end

function F1a2()
     gg.alert("冻结数据是永久保留的数据\n冻结数据是指让数据锁定例如:无限连跳、无敌锁血等\n这些功能每次开启都会产生冻结数据当您进入第二场游戏时他们依然存在但您仍需要重新开启功能\n当这些数据过多是就会导致游戏检测出现崩溃等问题\n所以您每隔一段时间都需要清理冻结数据\n更多问题请到官网发帖")
     gg.copyText("https://1764875582.github.io/QCNB")
     gg.toast("已为您复制官网链接")
end

function F1a3()
     gg.alert("请到官网发帖提出问题")
     gg.copyText("https://tq.zhatu.xyz")
     gg.toast("已为您复制官网链接")
end

function F2()
SN = gg.choice({
     "开启某个功能后闪退",
     "进入游戏几秒后闪退",
     "以上均不是",
},nil,"请选择问题类型")
if SN==1 then
     F2a1()
end
if SN==2 then
     F2a2()
end
if SN==3 then
     F2a3()
end
FX1=0
end

function F2a1()
     gg.alert("1.可能是您开启的功能过多导致\n2.也可能是某个功能开启后导致\n解决方法:请退出辅助在修改器的设置中选择隐藏辅助之后勾选2、3项保存即可\n若仍然无法解决请在官网发帖求助\n温馨提示:如果不懂此选项🉑在设置讲解中查看")
     gg.copyText("https://1764875582.github.io/QCNB")
     gg.toast("已为您复制官网链接请使用浏览器搜索")
end

function F2a2()
	 gg.alert("1.一般为框架问题建议更换框架\n2.也可能是游戏问题可多试几次确认\n若仍然无法解决请在官网发帖求助")
     gg.copyText("https://1764875582.github.io/QCNB")
     gg.toast("已为您复制官网链接请使用浏览器搜索")
end

function F2a3()
     gg.alert("您的问题较为特殊无法直接为您解决\n请前往官网发帖求助")
     gg.copyText("https://tq.zhatu.xyz")
     gg.toast("已为您复制官网链接请使用浏览器搜索")
end

function F3()
     gg.toast("开启清理")
     gg.sleep(500)
     gg.toast("正在分析数据")
     gg.sleep(1300)
     gg.toast("清理中")
     gg.sleep(1000)
     gg.clearList()
     gg.toast("清理完成")
end

function F4()
SN = gg.choice({
     "流量查询(非个人)",
     "捐赠(支持作者)",
     "返回主页",
},nil,"请选择需要了解的内容")
if SN==1 then
     F4a1()
end
if SN==2 then
     F4a2()
end
if SN==3 then
     F4a3()
end
FX1=0
end

function F4a1()
     gg.alert("剩余流量80.00/GB\n每日8:00~12:刷新\n流量不足时将暂时停用")
end

function F4a2()
     gg.alert("已为您复制链接打开浏览器进入链接即可")
     gg.copyText("https://tq.zhatu.xyz/Money.html")
     gg.alert("感谢支持，已为您复制网址")
end




function F7()
     gg.alert("当前版本V2.5")
     gg.copyText("https://tq.zhatu.xyz")
     gg.toast("已为您复制官网链接请使用浏览器搜索")
end


function Exit()
print("愿夜里能有人为你点亮你的心，然后再漂亮的United States San Francisco 看看，欢迎下次使用天跑迷你辅助🥰") 
os.exit() end 
while true do if gg.isVisible(true) then   FX1 = nil  gg.setVisible(false) end  if FX1 == nil then  Main()  end  end



function HOME()
  lw=1
  Main()
end



cs = ''
while(true)do
  if gg.isVisible(true) then
    XGCK=1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK==1 then
    Main()
  end
end

















--[[Welcome to Dluae]]