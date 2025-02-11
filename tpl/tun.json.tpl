{
    "inbounds": [
        {
            "type": "tun",
            "stack": "_TUN_STACK_",
            "address": [
                "_tun_ip_/29",
                "_tun_ip6_/126"
            ],
            "mtu": 9000,
            "auto_route": true,
            "strict_route": true,
            "route_address": [
                _GDNS_,
                _GDNS6_
            ],
            "domain_strategy": "prefer_ipv6",
            "sniff": true,
            "sniff_override_destination": true
        }
    ]
}