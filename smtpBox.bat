netsh advfirewall export "C:\originalFirewall.wfw"
netsh advfirewall set allprofiles state off
netsh advfirewall set currentprofile firewallpolicy blockinbound,blockoutbound
netsh advfirewall firewall add rule name="SMTP" protocol=TCP dir=in localport=587 action=allow
netsh advfirewall firewall add rule name="SMTP Part2" protocol=TCP dir=in localport=25 action=allow
netsh advfirewall firewall add rule name="BlockOut" dir=out action=block
netsh advfirewall set currentprofile firewallpolicy allowinbound,allowoutbound
netsh advfirewall set allprofiles state on
netsh advfirewall firewall add rule name="All ICMP V4" dir=in action=block protocol=icmpv4
netsh advfirewall export "C:\goodFirewallRules.wfw"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WinLogon" /v SFCDisable /t REG_DWORD /d ffffff9d /f
