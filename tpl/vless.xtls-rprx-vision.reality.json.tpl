{
    "outbounds": [
        {
            "tag": "UP_LINK_TAG_",
            "protocol": "_protocol_",
            "settings": {
                "vnext": [
                    {
                        "address": "_address_", // 服务端的域名或 IP
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
                "security": "_security_",
                "realitySettings": {
                    "show": false,
                    "fingerprint": "random",
                    "serverName": "_serverName_",
                    "publicKey": "_publicKey_",
                    "shortId": "_shortId_",
                    "spiderX": "/"
                }
            }
        }
    ]
}