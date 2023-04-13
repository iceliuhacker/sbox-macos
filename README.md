# Xray-macos
```
Mac OS下一键使用的sing-box脚本
目前仅支持：
VLESS-XTLS-uTLS-REALITY
VLESS-XTLS-uTLS-Vision
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
./sboxctl {start|stop|restart|config|subscribe|update} [tun|fwd|proxy|URL]
start           Start sing-box.
stop            Stop sing-box
restart         Restart Sing-box
config          设置使用的节点，如果没有也可以在这里添加，可以设置多个节点，这样将自动从你选择的节点里自动连接，并冗余切换。
subscribe      从订阅URL里获取节点资源
update          升级sing-box以及所需要的geoip、geosite文件。
Optional:
        tun        使用路由模式(警告：将破坏主动访问你的路由)
        fwd       使用PF防火墙转发，如果你已经启用了防火墙建议你不要使用，优点是不破坏路由。
        proxy    系统代理模式，这个没什么可说的。
		URL       一个订阅URL，如果URL含有“?,&”等特殊符号，请使用“'”单引号括起来。	
```
