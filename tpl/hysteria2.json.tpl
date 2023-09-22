{
    "outbounds": [
        {
            "tag": "UP_LINK_TAG_",
            "type": "_protocol_",
            "server": "_address_", // 服务端的 IP
            "server_port": _port_,
            "up_mbps": _up_mbps_,
            "down_mbps": _down_mbps_,
            "password": "_id_",
            "tls": {
                "enabled": true,
                "insecure": _allowInsecure_,
                "server_name": "_serverName_",
                "alpn": [
                    "h3"
                ]
            }
        }
    ]
}