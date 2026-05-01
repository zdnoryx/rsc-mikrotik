/ip firewall raw
rem [find address-list=Mikrotik-Tokopedia]
add action=add-dst-to-address-list address-list=Mikrotik-Tokopedia address-list-timeout=1d chain=prerouting content=tokopedia.com dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP comment="Tokopedia" 
add action=add-dst-to-address-list address-list=Mikrotik-Tokopedia address-list-timeout=1d chain=prerouting content=.tokopedia. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Tokopedia"]
add address=47.74.0.0/15 list=Mikrotik-Tokopedia
add address=47.76.0.0/14 list=Mikrotik-Tokopedia
add address=47.80.0.0/13 list=Mikrotik-Tokopedia
add address=47.74.244.18 list=Mikrotik-Tokopedia
add address=47.74.234.244 list=Mikrotik-Tokopedia
add address=47.88.140.65 list=Mikrotik-Tokopedia
add address=47.241.108.2 list=Mikrotik-Tokopedia
add address=205.201.128.0/20 list=Mikrotik-Tokopedia
add address=198.2.128.0/18 list=Mikrotik-Tokopedia
add address=54.240.0.0/18 list=Mikrotik-Tokopedia
