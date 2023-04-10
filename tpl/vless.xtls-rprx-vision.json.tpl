{
    "outbounds": [
        {
            "tag": "UP_LINK_TAG_",
            "protocol": "_protocol_",
            "settings": {
                "vnext": [
                    {
                        "address": "_address_",
                        "port": _port_,
                        "users": [
                            {
                                "id": "_id_",
                                "flow": "_flow_",
                                "encryption": "none"
                            }
                        ]
                    }
                ]
            },
            "streamSettings": {
                "network": "tcp",
                "security": "tls",
                "tlsSettings": {
                    "serverName": "_serverName_",
                    "allowInsecure": _allowInsecure_,
                    "fingerprint": "random",
                    "alpn": [
                        "h2"
                    ]
                }
            },
            "mux": {
                "enabled": false,
                "concurrency": 8 
            }
        }
    ]
}
