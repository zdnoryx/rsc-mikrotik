/ip firewall raw
rem [find address-list=Mikrotik-Etsy]
add action=add-dst-to-address-list address-list=Mikrotik-Etsy address-list-timeout=1d chain=prerouting content=etsy.com dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP comment="Etsy"
add action=add-dst-to-address-list address-list=Mikrotik-Etsy address-list-timeout=1d chain=prerouting content=.etsy. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Etsy"]
add address=192.147.0.0/23 list=Mikrotik-Etsy
add address=35.190.25.237 list=Mikrotik-Etsy
add address=151.101.128.0/22 list=Mikrotik-Etsy
