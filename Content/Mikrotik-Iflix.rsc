/ip firewall raw
rem [find address-list=Mikrotik-Iflix]
add action=add-dst-to-address-list address-list=Mikrotik-Iflix address-list-timeout=1d chain=prerouting content=iflix.com dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP comment="Iflix"
add action=add-dst-to-address-list address-list=Mikrotik-Iflix address-list-timeout=1d chain=prerouting content=.iflix. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Iflix"]
add address=103.209.104.0/24 list=Mikrotik-Iflix
add address=18.164.0.0/15 list=Mikrotik-Iflix
add address=43.155.124.23 list=Mikrotik-Iflix
add address=43.154.240.111 list=Mikrotik-Iflix
add address=43.135.105.98 list=Mikrotik-Iflix
