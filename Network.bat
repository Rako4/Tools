powershell -Command "Disable-NetAdapterBinding -Name "*""
powershell -Command "Disable-NetAdapterChecksumOffload -Name "*""
powershell -Command "Disable-NetAdapterEncapsulatedPacketTaskOffload -Name "*""
powershell -Command "Disable-NetAdapterIPsecOffload -Name "*""
powershell -Command "Disable-NetAdapterLso -Name "*"
powershell -Command "Disable-NetAdapterPowerManagement -Name "*""
powershell -Command "Disable-NetAdapterQos -Name "*""
powershell -Command "Disable-NetAdapterRdma -Name "*""
powershell -Command "Disable-NetAdapterRsc -Name "*""
powershell -Command "Set-NetAdapterRss -Name "*" -IncludeHidden -Enabled 1 -BaseProcessorGroup 0 -BaseProcessorNumber 0 -MaxProcessorGroup 0 -MaxProcessorNumber 5 -NumaNode 0 -NumberOfReceiveQueues 2 -MaxProcessors 6 -Profile Conservative"
powershell -Command "Disable-NetAdapterSriov -Name "*""
powershell -Command "Disable-NetAdapterUso -Name "*""
powershell -Command "Disable-NetAdapterVmq -Name "*""

powershell -Command "Set-NetAdapterAdvancedProperty -Name "*" -RegistryKeyword "*InterruptModeration" -RegistryValue 0"

netsh int tcp set global timestamps=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global initialrto=2000
netsh int tcp set global ecncapability=enabled
netsh int tcp set global autotuninglevel=highlyrestricted
netsh int tcp set global dca=enabled

netsh interface udp set global uro=disabled uso=disabled

netsh winsock set autotuning off

netsh interface ipv4 set global neighborcachelimit=4096
netsh interface ipv4 set global mldlevel=none
netsh interface ipv4 set global icmpredirects=disabled
netsh interface ipv4 set global dhcpmediasense=disabled

netsh interface teredo set state disabled
netsh interface isatap set state disabled
netsh interface 6to4 set state disabled

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastSendDatagramThreshold" /t REG_DWORD /d "16384" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DynamicSendBufferDisable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultSendWindow" /t REG_DWORD /d "16384" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultReceiveWindow" /t REG_DWORD /d "16384" /f

powershell -Command "Restart-NetAdapter -Name "*""

pause