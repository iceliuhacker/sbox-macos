{
    "log": {
        "level": "debug",	//日志等级，可选值：trace debug info warn error fatal panic
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
