{
    "outbounds": [
        {
            "tag": "UP_LINK_TAG_",
            "type": "_protocol_",
            "server": "_address_", // 服务端的 IP
            "server_port": _port_,
            "up_mbps": _up_mbps_,
            "down_mbps": _down_mbps_,
            "password": "_id_", // 与服务端一致
            "tls": {
                "enabled": true,
                "server_name": "_serverName_",
                "alpn": [
                    "h3"
                ]
            }
        }
    ]
}