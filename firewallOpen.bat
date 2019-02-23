@echo off
SET /A "index = 1"
SET /A "count = 5"
:while
if %index% leq %count% (
   netsh advfirewall set allprofiles state off
   netsh advfirewall firewall add rule name="Web Box" protocol=TCP dir=in localport=80 action=allow
   netsh advfirewall firewall add rule name="BlockOut" dir=out action=block   
   goto :while
)
