{
    "outbounds": [
        {
            "tag": "UP_LINK_TAG_",
            "type": "_protocol_",
            "server": "_address_", // 服务端的域名或 IP
            "server_port": _port_,
            "domain_strategy": "_R_NODE_IPV_",
            "uuid": "_id_", // 与服务端一致
            "flow": "_flow_",
            "tls": {
                "enabled": true,
                "insecure": _allowInsecure_,
                "server_name": "_serverName_", // 如果"server"填的是服务端的域名，可留空，如果"server"填的是服务端的IP，此处填服务端的证书中包含的域名
                "utls": {
                    "enabled": true,
                    "fingerprint": "_fingerprint_"
                }
             },
            "multiplex": {
                "enabled": _multiplex_,
                "protocol": "smux",
                "max_connections": 8,
                "min_streams": 4,
                "padding": false
            },
            "packet_encoding": "xudp"
        }
    ]
}
