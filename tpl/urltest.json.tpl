{
    "outbounds": [
        {
            "tag": "AutoSelect",
            "type": "urltest",
            "outbounds": ["_TAG_LIST_"],
            "url": "http://cp.cloudflare.com/generate_204",
            "interval": "60s",
            "tolerance": 50
        }
    ]
}