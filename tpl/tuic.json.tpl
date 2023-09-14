{
    "outbounds": [
        {
            "tag": "UP_LINK_TAG_",
            "type": "_protocol_",
            "server": "_address_", // 服务端的 IP
            "server_port": _port_,
            "uuid": "_id_", // 与服务端一致
            "password": "_password_",
            "congestion_control": "_congestion_control_",
            "udp_relay_mode": "_udp_relay_mode_",
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