/ip firewall raw
rem [find address-list=Mikrotik-WhatsApp]
add action=add-dst-to-address-list address-list=Mikrotik-WhatsApp address-list-timeout=1d chain=prerouting content=whatsapp.com dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP comment="WhatsApp"
add action=add-dst-to-address-list address-list=Mikrotik-WhatsApp address-list-timeout=1d chain=prerouting content=.whatsapp. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-WhatsApp address-list-timeout=1d chain=prerouting content=wa.me dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-WhatsApp"]
add address=66.111.48.0/22 list=Mikrotik-WhatsApp
