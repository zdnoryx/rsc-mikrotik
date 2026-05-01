/ip firewall raw
rem [find address-list=Mikrotik-Olx]
add action=add-dst-to-address-list address-list=Mikrotik-Olx address-list-timeout=1d chain=prerouting content=olx.com dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP comment="OLX"
add action=add-dst-to-address-list address-list=Mikrotik-Olx address-list-timeout=1d chain=prerouting content=.olx. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Olx"]
add address=3.208.97.147 list=Mikrotik-Olx
add address=52.5.40.136 list=Mikrotik-Olx
add address=23.32.0.0/11 list=Mikrotik-Olx
add address=23.64.0.0/14 list=Mikrotik-Olx
add address=23.58.157.137 list=Mikrotik-Olx
add address=23.58.157.145 list=Mikrotik-Olx
add address=104.16.51.111 list=Mikrotik-Olx
add address=34.192.181.218 list=Mikrotik-Olx
add address=54.145.132.167 list=Mikrotik-Olx
add address=23.54.118.36 list=Mikrotik-Olx
add address=23.54.118.38 list=Mikrotik-Olx
