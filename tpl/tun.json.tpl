{
    "inbounds": [
        {
            "type": "tun",
            "stack": "system",    //可选：system,gvisor，如果当前不可用可换另外一个
            "inet4_address": "_tun_ip_/30",
            "inet6_address": "_tun_ip6_/126",
            "mtu": 9000,
            "auto_route": true,
            "strict_route": true,
            "inet4_route_address": [_GDNS_],
            "inet6_route_address": [_GDNS6_],
            "domain_strategy": "prefer_ipv6",
            "sniff": true,
            "sniff_override_destination": true
        }
    ]
}