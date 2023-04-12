{
    "log": {
        "level": "info",
        "timestamp": true
    },
    "inbounds": [
        {
            "type": "mixed",	//socks4,socks4a,socks5,http多功能服务
            "listen": "::",
            "listen_port": 65080, // 本地http和socks5监听端口
            "domain_strategy": "ipv4_only",
            "set_system_proxy": true
        }
    ]
}
