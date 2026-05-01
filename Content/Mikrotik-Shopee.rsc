/ip firewall raw
rem [find address-list=Mikrotik-Shopee]
add action=add-dst-to-address-list address-list=Mikrotik-Shopee address-list-timeout=1d chain=prerouting content=shopee.co.id dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP comment="Shopee" 
add action=add-dst-to-address-list address-list=Mikrotik-Shopee address-list-timeout=1d chain=prerouting content=.shopee. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Shopee address-list-timeout=1d chain=prerouting content=.shopeemobile. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Shopee"]
add address=103.70.16.0/22 list=Mikrotik-Shopee
add address=103.70.16.0/24 list=Mikrotik-Shopee
add address=103.70.17.0/24 list=Mikrotik-Shopee
add address=103.70.18.0/24 list=Mikrotik-Shopee
add address=103.70.19.0/24 list=Mikrotik-Shopee
