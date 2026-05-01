/ip firewall raw
rem [find address-list=Mikrotik-Amazon]
add action=add-dst-to-address-list address-list=Mikrotik-Amazon address-list-timeout=1d chain=prerouting content=amazon.com dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP comment="Amazon"
add action=add-dst-to-address-list address-list=Mikrotik-Amazon address-list-timeout=1d chain=prerouting content=.amazon. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Amazon"]
add address=3.0.0.0/10 list=Mikrotik-Amazon
add address=3.128.0.0/10 list=Mikrotik-Amazon
add address=34.192.0.0/10 list=Mikrotik-Amazon
add address=52.0.0.0/11 list=Mikrotik-Amazon
add address=54.192.0.0/12 list=Mikrotik-Amazon
add address=35.112.0.0/12 list=Mikrotik-Amazon
