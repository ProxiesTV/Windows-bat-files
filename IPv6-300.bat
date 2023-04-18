@echo on
setlocal enabledelayedexpansion

set start_ipv6=2001:b600:300::
set index=2

for /L %%i in (1,1,300) do (
    set ipv6=!start_ipv6!!index!
    netsh interface ipv6 add address "Local Area Connection" !ipv6!
    set /a index+=1
)

echo Done.
