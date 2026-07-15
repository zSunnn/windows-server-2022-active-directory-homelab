# Client-side DNS, connectivity, and DHCP validation commands.

ipconfig.exe /all
ping.exe dc01
ping.exe 192.168.10.10
nslookup.exe dc01
nslookup.exe client01

# Run these only when actively testing DHCP lease renewal.
# ipconfig.exe /release
# ipconfig.exe /renew

