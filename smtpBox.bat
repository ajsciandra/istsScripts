netsh advfirewall export "C:\originalFirewall.wfw"
netsh advfirewall set allprofiles state off
netsh advfirewall set currentprofile firewallpolicy blockinbound,blockoutbound
netsh advfirewall firewall add rule name="SMTP Rule" protocol=TCP dir=in localport=587 action=allow
netsh advfirewall set currentprofile firewallpolicy allowinbound,blockoutbound
netsh advfirewall export "C:\goodFirewallRules.wfw"
