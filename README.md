# sbox-macos
```
Mac OS下一键使用的sing-box脚本
目前仅支持outbounds：
VLESS-XTLS-uTLS-REALITY
VLESS-XTLS-uTLS-Vision
socks
有时间会慢慢增加对接方式。
```
# 使用方法：
## 初次使用：
```
chmod 755 sboxctl
./sboxctl update	#将自动下载sing-box以及所需的IP地址库等文件。
```
## 开始使用：
```
% ./sboxctl {start|stop|restart|config|subscribe|update} [tun|fwd|proxy|URL]
start           Start sing-box.
stop            Stop sing-box
restart         Restart Sing-box
config          设置使用的节点，如果没有也可以在这里添加，可以设置多个节点，这样将自动从你选择的节点里自动连接，并冗余切换。
subscribe      从订阅URL里获取节点资源
update          升级sing-box以及所需要的geoip、geosite文件。
print           [ios] 输出iOS使用的完整配置文件。
Optional:
        tun      使用路由模式(警告：将破坏主动访问你的路由)
        fwd      使用PF防火墙转发，如果你已经启用了防火墙建议你不要使用，优点是不破坏路由。
        proxy    系统代理模式，这个没什么可说的。
		URL      一个订阅URL，如果URL含有“?,&”等特殊符号，请使用“'”单引号括起来。	
```
## 使用范例：
```
订阅节点：
% ./sboxctl subscribe 'https://www.xxx.com/xxx?xxxxxx'
Skip certificate validation:false,true[false]
Get https://www.xxx.com/xxx?xxxxxx data...done.
Convert subscribe to sing-box:
Create x.x.x.1_VLESS_VS.sbox...done.
Create x.x.x.2_VLESS_VS.sbox...done.
Create x.x.x.3_VLESS_VS.sbox...done.
```
```
手动新建节点：
% ./sboxctl config
     0  new
     1  x.x.x.1-VLESS_VS
     2  x.x.x.2_IPv6-VLESS_VS
     3  x.x.x.3-VLESS_VS
Please select configuration file,Multiple separated by spaces,99 is all,DEL for delete node.
Example_1:1      -> select 1.
Example_2:1,3,5  -> select 1,3,5.
Example_3:99     -> select all.
Please input:[0]0
     1  vless.xtls-rprx-vision.reality
     2  vless.xtls-rprx-vision.tls
Please select the type of connection you want to create:2
Please enter a node name:23.23.23.23-KR
address:23.23.23.23
port:7003
id:952hff7-3c82-4ec4-458b-b0dfgh59cf2
security:[tls,reality]tls
sni:vr.xxx.com
fingerprint:[chrome,firefox,edge,safari,360,qq,ios,android,random,randomized]random
Skip certificate validation:[false,true]
#### Creating Connection Nodes 23.23.23.23-KR ####
protocol=vless
address=23.23.23.23
port=7003
flow=xtls-rprx-vision
id=952hff7-3c82-4ec4-458b-b0dfgh59cf2
security=tls
sni=vr.xxx.com
serverName=vr.xxx.com
fp=random
allowInsecure=false
```
```
    选择节点：
% ./sboxctl config    
     0  new
     1  x.x.x.1-VLESS_VS
     2  xxx::2_IPv6-VLESS_VS
     3  x.x.x.3-VLESS_VS
Please select configuration file,Multiple separated by spaces,99 is all,DEL for delete node.
Example_1:1      -> select 1.
Example_2:1,3,5  -> select 1,3,5.
Example_3:99     -> select all.
Please input:[0]1 3    <--这里选择了1和3两个节点
```
```
    启动服务：
% ./sboxctl start fwd    <---这里以PF防火墙转发模式启动
Please input sudo password:
Connect x.x.x.1-VLESS_VS.
Connect x.x.x.3-VLESS_VS.
Check www.google.com...OK.
Check twitter.com...OK.
Check www.facebook.com...OK.
Check www.baidu.com...OK.
Check www.sohu.com...OK.
Internal IP: yy.yy.yy.14 from:https://cip.cc/
GFW outside: zz.zz.zz.18 from:https://api.ipify.org/
```
到此你就可以开始愉快的上网了。
