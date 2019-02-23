netsh advfirewall export "C:\originalFirewall.wfw"
netsh advfirewall set allprofiles state off
netsh advfirewall set currentprofile firewallpolicy blockinbound,blockoutbound
netsh advfirewall firewall add rule name="Web" protocol=TCP dir=in localport=80 action=allow
netsh advfirewall firewall add rule name="BlockOut" dir=out action=block
netsh advfirewall set currentprofile firewallpolicy allowinbound,allowoutbound
netsh advfirewall set allprofiles state on
netsh advfirewall firewall add rule name="All ICMP V4" dir=in action=block protocol=icmpv4
netsh advfirewall export "C:\goodFirewallRules.wfw"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f
powershell
Disable-WindowsOptionalFeature -Online -FeatureName smb1protocol
exit
shutdown /r
