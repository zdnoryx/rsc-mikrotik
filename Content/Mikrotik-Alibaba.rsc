/ip firewall raw
rem [find address-list=Mikrotik-Alibaba]
add action=add-dst-to-address-list address-list=Mikrotik-Alibaba address-list-timeout=1d chain=prerouting content=alibaba.com dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP comment="Alibaba"
add action=add-dst-to-address-list address-list=Mikrotik-Alibaba address-list-timeout=1d chain=prerouting content=.alibaba. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Alibaba"]
add address=3.0.0.0/10 list=Mikrotik-Alibaba
add address=3.128.0.0/10 list=Mikrotik-Alibaba
add address=34.192.0.0/10 list=Mikrotik-Alibaba
add address=52.0.0.0/11 list=Mikrotik-Alibaba
add address=54.192.0.0/12 list=Mikrotik-Alibaba
add address=35.112.0.0/12 list=Mikrotik-Alibaba
add address=47.74.0.0/17 list=Mikrotik-Alibaba
add address=47.236.0.0/16 list=Mikrotik-Alibaba
add address=47.240.0.0/16 list=Mikrotik-Alibaba
add address=47.242.0.0/16 list=Mikrotik-Alibaba
add address=59.82.0.0/16 list=Mikrotik-Alibaba
add address=39.96.0.0/14 list=Mikrotik-Alibaba
