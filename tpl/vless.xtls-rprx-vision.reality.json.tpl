{
    "outbounds": [
        {
            "tag": "UP_LINK_TAG_",
            "type": "_protocol_",
            "server": "_address_", // 服务端的 IP
            "server_port": _port_,
            "domain_strategy": "prefer_ipv6",
            "uuid": "_id_", // 与服务端一致
            "flow": "_flow_",
            "tls": {
                "enabled": true,
                "server_name": "_serverName_", // 与服务端一致
                "utls": {
                    "enabled": true,
                    "fingerprint": "_fingerprint_" // 使用 uTLS 库模拟客户端 TLS 指纹
                },
                "reality": {
                    "enabled": true,
                    "public_key": "_publicKey_", // 服务端执行 ./sing-box generate reality-keypair 生成，私钥对应的公钥，填 "PublicKey" 的值
                    "short_id": "_shortId_" // 与服务端一致
                }
            },
            "packet_encoding": "xudp"
        }
    ]
}