{
    // 1_日志设置
    "log": {
        "dnsLog": true,        //必须debug级别日志才显示
        //"access": "/var/log/xray/access.log",        // 访问记录
        //"error": "/var/log/xray/error.log",        // 错误记录
        "loglevel": "warning" // 内容从少到多: "none", "error", "warning", "info", "debug"
    },
    "observatory": {
        "probeInterval": "_probeInterval_",	//检测间隔单位有 ns，us，ms，s，m，h，分别对应纳秒、微秒、毫秒、秒、分、时。
        "enableConcurrency": true,	//并发检测，否则根据间隔每次检测一个
        "subjectSelector": [ "UP_LINK" ],	//匹配tag标签前缀
        "probeUrl": "https:\/\/www.google.com\/generate_204"	//检测URL
    },
    "inbounds": [
        // 建立一个dns监听服务，如果定义了路由为dns-out类型，则优先使用内部DNS解析，否则直接转发到address
        {
            "tag": "dns-in",
            "listen": "127.0.0.1",
            "port": 65053,
            "protocol": "dokodemo-door",
            "settings": {
                "network": "tcp,udp",
                "address": "8.8.4.4",
                "port": 53
            }
        },
        {
            "tag": "dns6-in",
            "listen": "::1",
            "port": 65053,
            "protocol": "dokodemo-door",
            "settings": {
                "network": "tcp,udp",
                "address": "8.8.4.4",
                "port": 53
            }
        },
        // dokodemo-door监听
        {
            "tag": "tcp-in",
            "listen": "127.0.0.1",
            "port": 65041,
            "protocol": "dokodemo-door",
            "sniffing": {
                "enabled": true,
                "destOverride": [
                    "http",
                    "tls",
                    "quic",
                    "fakedns"
                ],
                "metadataOnly": false
            },
            "settings": {
                "network": "tcp",
                "followRedirect": true
            },
            "streamSettings": {
                "sockopt": {
                    "acceptProxyProtocol": false,
                    "tproxy": "redirect"
                }
            }
        },
        {
            "tag": "tcp6-in",
            "listen": "_TUN_IP6_",
            "port": 65041,
            "protocol": "dokodemo-door",
            "sniffing": {
                "enabled": true,
                "destOverride": [
                    "http",
                    "tls",
                    "quic",
                    "fakedns"
                ],
                "metadataOnly": false
            },
            "settings": {
                "network": "tcp",
                "followRedirect": true
            },
            "streamSettings": {
                "sockopt": {
                    "acceptProxyProtocol": false,
                    "tproxy": "redirect"
                }
            }
        },
        {
            "tag": "udp-in",
            "listen": "127.0.0.1",
            "port": 65041,
            "protocol": "dokodemo-door",
            "sniffing": {
                "enabled": true,
                "destOverride": [
                    "http",
                    "tls",
                    "quic",
                    "fakedns"
                ],
                "metadataOnly": false
            },
            "settings": {
                "network": "udp",
                "followRedirect": true
            },
            "streamSettings": {
                "sockopt": {
                    "acceptProxyProtocol": false,
                    "tproxy": "tproxy"
                }
            }
        },
        {
            "tag": "udp6-in",
            "listen": "_TUN_IP6_",
            "port": 65041,
            "protocol": "dokodemo-door",
            "sniffing": {
                "enabled": true,
                "destOverride": [
                    "http",
                    "tls",
                    "quic",
                    "fakedns"
                ],
                "metadataOnly": false
            },
            "settings": {
                "network": "udp",
                "followRedirect": true
            },
            "streamSettings": {
                "sockopt": {
                    "acceptProxyProtocol": false,
                    "tproxy": "tproxy"
                }
            }
        },
        // socks5监听
        {
            "tag": "socks5",
            "listen": "127.0.0.1",
            "port": 65080,
            "protocol": "socks",
            "sniffing": {
                "enabled": true,
                "destOverride": [
                    "http",
                    "tls",
                    "quic",
                    "fakedns"
                ]
            },
            "settings": {
                "udp": true,
                "auth": "noauth"
            }
        }
    ]
}
