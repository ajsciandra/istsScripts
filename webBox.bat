netsh advfirewall export "C:\originalFirewall.wfw"
netsh advfirewall set allprofiles state off
netsh advfirewall set currentprofile firewallpolicy blockinbound,blockoutbound
netsh advfirewall firewall add rule name="Web" protocol=TCP dir=in localport=80 action=allow
netsh advfirewall set currentprofile firewallpolicy allowinbound,blockoutbound
netsh advfirewall export "C:\goodFirewallRules.wfw"
powershell
wget https://www.7-zip.org/a/7z1900-x64.exe -UseBasicParsing -OutFile 7z1900-x64.exe
7z1900-x64.exe

