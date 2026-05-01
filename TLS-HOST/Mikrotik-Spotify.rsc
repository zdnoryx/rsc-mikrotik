/ip firewall raw
rem [find address-list=Mikrotik-Spotify]
add action=add-dst-to-address-list address-list=Mikrotik-Spotify address-list-timeout=1d chain=prerouting content=spotify.com dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP comment="Spotify"
add action=add-dst-to-address-list address-list=Mikrotik-Spotify address-list-timeout=1d chain=prerouting content=.spotify. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Spotify"]
add address=35.186.224.19 list=Mikrotik-Spotify
add address=193.182.8.0/21 list=Mikrotik-Spotify
