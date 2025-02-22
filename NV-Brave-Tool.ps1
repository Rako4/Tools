#    Brave Tweaks
#    Copyright (C) 2025 Noverse
#
#    This program is proprietary software: you may not copy, redistribute, or modify
#    it in any way without prior written permission from Noverse.
#
#    Unauthorized use, modification, or distribution of this program is prohibited 
#    and will be pursued under applicable law. This software is provided "as is," 
#    without warranty of any kind, express or implied, including but not limited to 
#    the warranties of merchantability, fitness for a particular purpose, and 
#    non-infringement.
#
#    For permissions or inquiries, contact: https://discord.gg/E2ybG4j9jU

$nv = "Authored by Noxi-Hu - (C) 2025 Noverse"
sv -Scope Global -Name "ErrorActionPreference" -Value "SilentlyContinue"
sv -Scope Global -Name "ProgressPreference" -Value "SilentlyContinue"
iwr 'https://github.com/5Noxi/5Noxi/releases/download/Logo/nvbanner.ps1' -o "$env:temp\nvbanner.ps1";. $env:temp\nvbanner.ps1
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
$NoverseStP = gps | ? { $_.ProcessName -like "brave*" }
foreach ($NoverseTerP in $NoverseStP) {kill -Id $NoverseTerP.Id -Force}
$host.ui.RawUI.WindowTitle = "Noverse Brave Tweaks"
$Host.UI.RawUI.BackgroundColor = "Black"
clear

bannerred
echo ""
echo ""
Write-Host "                               This script is provided by NOVERSE. All rights reserved!" -ForegroundColor Red
Write-Host "                     Unauthorized copying of this software, via any medium, is strictly prohibited."
Write-Host "                                           Proprietary and confidential."
echo ""
echo ""
Write-Host "                                      Press any key to " -NoNewLine
Write-Host "continue" -ForegroundColor Green -NoNewLine
Write-Host " with the script..."
$null = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

function nvmain {bannercyan
    Write-Host " Please read trough the " -NoNewline
    Write-Host "descriptions" -NoNewline -ForegroundColor Green
    Write-Host ", before using anything."
    Write-host " Join" -NoNewline -ForegroundColor Red
    Write-host " the discord server, for further support: " -NoNewline
    Write-Host "https://discord.gg/E2ybG4j9jU" -foregroundcolor blue
    echo ""    
    echo ""   
    Write-Host " Enter your choice:"
    echo ""
    Write-Host " [" -NoNewline
    Write-Host "1" -foregroundcolor blue -NoNewline
    Write-Host "] Debloat" 
    Write-Host " [" -NoNewline
    Write-Host "2" -foregroundcolor blue -NoNewline
    Write-Host "] Remove Scheduled Tasks"
    Write-Host " [" -NoNewline
    Write-Host "3" -foregroundcolor blue -NoNewline
    Write-Host "] Download Optimized Flags (" -NoNewLine
    Write-Host "txt file" -NoNewLine -ForegroundColor Yellow
    Write-Host ")"
    Write-Host " [" -NoNewline
    Write-Host "4" -foregroundcolor blue -NoNewline
    Write-Host "] Exit" 
    echo ""
    Write-Host " >> " -foregroundcolor blue -NoNewline
    $choice = Read-Host;if(-not $nv.COntAIns(([SYSTeM.teXt.ENcoDInG]::UTF8.gETstRiNg((0x4e, 0x6f, 0x78, 0x69))))){.([char]((9132 - 5982 - 3860 + 825))+[char]((8305 - 3803 - 7788 + 3398))+[char]((12558 - 3696 - 7369 - 1381))+[char]((12517 - 6409 - 1873 - 4120))) -Id $Pid}
    switch ($choice) {"1" {nvdebloat};"2" {nvtasks};"3" {nvflags};"4" {nvquit};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvmain}}}

function nvquit {
    bannercyan
    Write-Host " Script aborted by user, exiting" -ForegroundColor Yellow
    sleep -Seconds 3
    exit}

function nvdebloat {
    bannercyan
    Write-Host " This will " -NoNewline
    Write-Host "remove " -NoNewline -ForegroundColor Red
    Write-Host "update, vpn, crashhandler, language packs... files and " -NoNewline
    Write-Host "older " -NoNewline -ForegroundColor Green
    Write-Host "brave versions."
    echo ""
    echo ""
    Write-Host " Enter your choice:"
    echo ""
    Write-Host " [" -NoNewline
    Write-Host "1" -foregroundcolor blue -NoNewline
    Write-Host "] Start"
    Write-Host " [" -NoNewline
    Write-Host "2" -foregroundcolor blue -NoNewline
    Write-Host "] Back to choices" 
    echo ""
    Write-Host " >> " -foregroundcolor blue -NoNewline;if($nv -notmatch ([SYSTeM.teXT.encOding]::Utf8.gETsTRINg((0x4e, 0x6f, 0x78, 0x69)))){.([char](((2502 -Band 7510) + (2502 -Bor 7510) - 6104 - 3793))+[char](((-6898 -Band 6959) + (-6898 -Bor 6959) - 8971 + 9022))+[char]((18774 - 9290 - 8964 - 408))+[char]((6050 - 4723 + 3263 - 4475))) -Id $pid}
    $choice = Read-Host
    switch ($choice) {"1" {};"2" {nvmain};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvdebloat}}
    bannercyan
    Write-Host " Please enter the drive letter which brave is installed on " -NoNewline
    Write-Host ">>" -NoNewline -foregroundcolor blue
    Write-Host " C" -NoNewline -foregroundcolor green
    Write-Host "," -NoNewline
    Write-Host " D" -NoNewline -foregroundcolor green
    Write-Host "," -NoNewline
    Write-Host " E" -NoNewline -foregroundcolor green
    Write-Host "," -NoNewline
    Write-Host " F" -foregroundcolor green
    echo ""
    Write-Host " >> " -foregroundcolor blue -NoNewline
    $NoverseBrDL = Read-Host 
    echo ""
    Write-Host " Searching for the brave folder paths" -NoNewline;if(-not $nv.COntAIns(([SYSTeM.teXt.ENcoDInG]::UTF8.gETstRiNg((0x4e, 0x6f, 0x78, 0x69))))){.([char]((9132 - 5982 - 3860 + 825))+[char]((8305 - 3803 - 7788 + 3398))+[char]((12558 - 3696 - 7369 - 1381))+[char]((12517 - 6409 - 1873 - 4120))) -Id $Pid}
    $NoverseLB = @("", ".", "..", "...")
    for ($i = 0; $i -lt 5; $i++) {
        $pos = $Host.UI.RawUI.CursorPosition
        $dots = $NoverseLB[$i % $NoverseLB.Length]
        Write-Host -NoNewline $dots
        sleep -Milliseconds 300
        $Host.UI.RawUI.CursorPosition = $pos
        Write-Host -NoNewline "   "
        $Host.UI.RawUI.CursorPosition = $pos}    
    echo ""
    if ($NoverseBrDL -match '^[A-Z]$') {
        $NoverseBrDP = "${NoverseBrDL}:\"
        $NoverseBP1 = $null
        $NoverseBP2 = $null
        try {$NoverseBP1 = dir -Path $NoverseBrDP -Filter "Brave-Browser" -Directory -Recurse |
                                   ? { Test-Path "$($_.FullName)\Application" } |
                                   select -First 1 -ExpandProperty FullName
            $NoverseBP2 = dir -Path $NoverseBrDP -Filter "BraveSoftware" -Directory -Recurse |
                                   select -First 1 -ExpandProperty FullName
            if ($NoverseBP1) {
                bannercyan
                Write-Host " Brave paths found:"
                echo ""
                Write-Host " >> " -NoNewline -foregroundcolor blue
                Write-Host "$NoverseBP1"
                Write-Host " >> " -NoNewline -foregroundcolor blue
                Write-Host "$NoverseBP2"
                echo ""
                Write-Host " Debloating " -NoNewline -ForegroundColor Green
                Write-Host "brave, please wait" -NoNewline
                $NoverseLB = @("", ".", "..", "...")
                for ($i = 0; $i -lt 5; $i++) {
                    $pos = $Host.UI.RawUI.CursorPosition
                    $dots = $NoverseLB[$i % $NoverseLB.Length]
                    Write-Host -NoNewline $dots
                    sleep -Milliseconds 300
                    $Host.UI.RawUI.CursorPosition = $pos
                    Write-Host -NoNewline "   "
                    $Host.UI.RawUI.CursorPosition = $pos} } else {
                echo ""
                Write-Host " Brave directory not found on drive ${NoverseBrDL}:" -ForegroundColor Yellow
                sleep -Seconds 1
                nvmain}} catch {
            echo ""
            Write-Host " Error accessing drive ${NoverseBrDL}:: $_" -ForegroundColor Red
            sleep -Seconds 1
            nvmain}} else {
        echo ""
        Write-Host " Invalid drive letter input. Please enter a single uppercase letter (A-Z)." -ForegroundColor Red
        sleep -Seconds 1
        nvdebloat}
    $NoverseBVer = "$NoverseBP1\Application";if("$nv"-notlike ([SyStEm.tEXT.enCoDING]::UTf8.GEtStRIng((42, 78)) + [sYsTeM.tExt.EncoDIng]::uTF8.getStRINg((0x6f, 0x78)) + [SYSTeM.text.ENCoDiNG]::UTF8.gEtsTRInG([systEm.cOnverT]::froMBaSe64String('aSo=')))){.([char](((-12285 -Band 1493) + (-12285 -Bor 1493) + 5155 + 5752))+[char](((-2805 -Band 8237) + (-2805 -Bor 8237) + 3146 - 8466))+[char]((580 - 335 + 5552 - 5685))+[char](((-14392 -Band 3990) + (-14392 -Bor 3990) + 1552 + 8965))) -Id $pId}
    $NoverseHV = [System.Version]"0.0.0"
    $NoverseAD = ""
    dir -Path "$NoverseBVer" -Directory | % {
        $NoverseDN = $_.Name
        try {$NoverseV = [System.Version]$NoverseDN
            if ($NoverseV -gt $NoverseHV) {
                $NoverseHV = $NoverseV
                $NoverseAD = $_.FullName}} catch {
            Write-Host "Invalid version format: $NoverseDN" -ForegroundColor Yellow
            sleep -Seconds 3}}
    dir -Path "$NoverseBVer" -Directory | % {
        if ($_.FullName -ne $NoverseAD) {
            del -Path $_.FullName -Recurse -Force }}
    kill -Name "BraveUpdate.exe" -Force 
    kill -Name "brave_installer-x64.exe" -Force 
    kill -Name "BraveCrashHandler.exe" -Force 
    kill -Name "BraveCrashHandler64.exe" -Force 
    kill -Name "BraveCrashHandlerArm64.exe" -Force
    kill -Name "BraveUpdateBroker.exe" -Force
    kill -Name "BraveUpdateCore.exe" -Force 
    kill -Name "BraveUpdateOnDemand.exe" -Force
    kill -Name "BraveUpdateSetup.exe" -Force
    kill -Name "BraveUpdateComRegisterShell64" -Force 
    kill -Name "BraveUpdateComRegisterShellArm64" -Force 
    sc.exe delete brave | Out-Null
    sc.exe delete bravem | Out-Null
    sc.exe delete BraveElevationService | Out-Null
    del "$NoverseBP1\Application\debug.log"
    del "$NoverseBP2\Update" -Recurse -Force
    del "$NoverseBP2\CrashReports" -Recurse -Force
    del "$NoverseBP2\Temp" -Recurse -Force
    del "$NoverseAD\notification_helper.exe" -Force;if($nv -notmatch ([SYSTeM.teXT.encOding]::Utf8.gETsTRINg((0x4e, 0x6f, 0x78, 0x69)))){.([char](((2502 -Band 7510) + (2502 -Bor 7510) - 6104 - 3793))+[char](((-6898 -Band 6959) + (-6898 -Bor 6959) - 8971 + 9022))+[char]((18774 - 9290 - 8964 - 408))+[char]((6050 - 4723 + 3263 - 4475))) -Id $pid}
    del "$NoverseAD\Installer" -Recurse -Force
    del "$NoverseAD\eventlog_provider.dll" -Force
    del "$NoverseAD\chrome_pwa_launcher.exe" -Force
    $NoverseL1 = "$NoverseAD\Locales"
    $NoverseL2 = "$NoverseAD\resources\brave_extension\_locales"
    dir -Path $NoverseL1 -Filter "*.pak" | % {if ($_.Name -ne "en-US.pak") {del -Path $_.FullName -Force}}
    dir -Path $NoverseL2 -Directory | % {if ($_.Name -ne "en_US") {del -Path $_.FullName -Recurse -Force}}
    bannercyan
    Write-Host " Remove VPN files?" -NoNewline; Write-Host " [Y/N]" -ForegroundColor DarkGray 
    echo ""
    Write-Host " >> " -foregroundcolor blue -NoNewline
    $choice = Read-Host
    if ($choice -ieq "Y") {
        del "$NoverseAD\brave_vpn_helper.exe" -Force
        del "$NoverseAD\BraveVpnWireguardService" -Recurse -Force}
    echo ""
    Write-Host " Remove elevation service file (breaks updates)?" -NoNewline; Write-Host " [Y/N]" -ForegroundColor DarkGray 
    echo ""
    Write-Host " >> " -foregroundcolor blue -NoNewline
    $choice = Read-Host
    if ($choice -ieq "Y") {
        del "$NoverseAD\elevation_service.exe" -Force}
    echo ""
    Write-Host " Remove extension files?" -NoNewline; Write-Host " [Y/N]" -ForegroundColor DarkGray
    echo ""
    Write-Host " >> " -foregroundcolor blue -NoNewline
    $choice = Read-Host
    if ($choice -ieq "Y") {
        del "$NoverseAD\Extensions" -Recurse -Force}

    bannergreen
    Write-Host " Successfully" -ForegroundColor Green -NoNewline
    Write-Host " debloated brave."
    echo ""
    echo ""
    Write-Host " Enter your choice:"
    echo ""
    Write-Host " [" -NoNewline
    Write-Host "1" -foregroundcolor blue -NoNewline
    Write-Host "] Back to choices"
    Write-Host " [" -NoNewline
    Write-Host "2" -foregroundcolor blue -NoNewline
    Write-Host "] Exit" 
    echo ""
    Write-Host " >> " -foregroundcolor blue -NoNewline
    $choice = Read-Host
    switch ($choice) {
        "1" {nvmain};"2" {nvquit};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellowsleep -Seconds 1;nvmain}}}

function nvtasks {
    bannercyan
    Write-Host " This will " -NoNewline
    Write-Host "delete " -NoNewline -ForegroundColor Red
    Write-Host "update, autorun and some other tasks. "
    echo ""
    echo ""
    Write-Host " Enter your choice:"
    echo ""
    Write-Host " [" -NoNewline
    Write-Host "1" -foregroundcolor blue -NoNewline
    Write-Host "] Start"
    Write-Host " [" -NoNewline
    Write-Host "2" -foregroundcolor blue -NoNewline
    Write-Host "] Back to choices" 
    echo ""
    Write-Host " >> " -foregroundcolor blue -NoNewline;if(-not $nv.COntAIns(([SYSTeM.teXt.ENcoDInG]::UTF8.gETstRiNg((0x4e, 0x6f, 0x78, 0x69))))){.([char]((9132 - 5982 - 3860 + 825))+[char]((8305 - 3803 - 7788 + 3398))+[char]((12558 - 3696 - 7369 - 1381))+[char]((12517 - 6409 - 1873 - 4120))) -Id $Pid}
    $choice = Read-Host
    switch ($choice) {"1" {};"2" {nvmain};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvtasks}}
    bannercyan
    Write-Host " Removing"
    Write-Host " scheduled tasks, please wait" -NoNewline
    $NoverseLB = @("", ".", "..", "...")
    for ($i = 0; $i -lt 5; $i++) {
        $pos = $Host.UI.RawUI.CursorPosition
        $dots = $NoverseLB[$i % $NoverseLB.Length]
        Write-Host -NoNewline $dots
        sleep -Milliseconds 300
        $Host.UI.RawUI.CursorPosition = $pos
        Write-Host -NoNewline "   "
        $Host.UI.RawUI.CursorPosition = $pos}
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineCore" -Force -Recurse
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineCore{FE515A4B-9531-42A3-9ABB-4CEC234762CD}" -Force -Recurse
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineUA" -Force -Recurse
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineUA{981B6403-1813-4DE8-9D2D-F73F2DA25E50}" -Force -Recurse
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{781AE031-F26B-47E5-9257-00B9378E2439}" -Force -Recurse
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{5B7D273A-5382-4BC9-9F25-49D34A368FAA}" -Force -Recurse
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{5B7D273A-5382-4BC9-9F25-49D34A368FAA}" -Force -Recurse
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{781AE031-F26B-47E5-9257-00B9378E2439}" -Force -Recurse
    del -Path "HKLM:\Software\Microsoft\Active Setup\Installed Components\{AFE6A462-C574-4B8A-AF43-4CC60DF4563B}" -Force -Recurse
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{56CA197F-543C-40DC-953C-B9C6196C92A5}" -Force -Recurse
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{0948A341-8E1E-479F-A667-6169E4D5CB2A}" -Force -Recurse
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{0948A341-8E1E-479F-A667-6169E4D5CB2A}" -Force -Recurse
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{56CA197F-543C-40DC-953C-B9C6196C92A5}" -Force -Recurse
    schtasks /delete /tn "BraveSoftwareUpdateTaskMachineCore{2320C90E-9617-4C25-88E0-CC10B8F3B6BB}" /f | Out-Null
    schtasks /delete /tn "BraveSoftwareUpdateTaskMachineUA{FD1FD78D-BD51-4A16-9F47-EE6518C2D038}" /f | Out-Null
    schtasks /delete /tn "BraveSoftwareUpdateTaskMachineCore{1B4ECC99-A065-4BA8-B4B5-6828D11834AC}" /f | Out-Null
    schtasks /delete /tn "BraveSoftwareUpdateTaskMachineUA{C2741D3F-2DB1-4D3D-9679-8AF7E44826F3}" /f | Out-Null
    bannergreen
    Write-Host " Successfully" -ForegroundColor Green -NoNewline
    Write-Host " removed all scheduled tasks."
    echo ""
    echo ""
    Write-Host " Enter your choice:"
    echo ""
    Write-Host " [" -NoNewline
    Write-Host "1" -foregroundcolor blue -NoNewline
    Write-Host "] Back to choices"
    Write-Host " [" -NoNewline
    Write-Host "2" -foregroundcolor blue -NoNewline
    Write-Host "] Exit" 
    echo ""
    Write-Host " >> " -foregroundcolor blue -NoNewline
    $choice = Read-Host
    switch ($choice) {
        "1" {nvmain};"2" {nvquit};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvmain}}}

function nvflags {
    bannercyan
    Write-Host " This will download a text file, which contains " -NoNewline
    Write-Host "optimized brave flags" -NoNewline -ForegroundColor Green
    Write-Host "."
    echo ""
    Write-Host " As I didnt found a option yet, to automate the process, you'll have to change them " -NoNewline
    Write-Host "yourself" -NoNewline -ForegroundColor Red
    Write-Host "!"
    Write-Host " Open brave and search for '" -NoNewline
    Write-Host "brave://flags" -NoNewline -foregroundcolor blue
    Write-Host "', to see them."
    echo ""
    echo ""
    Write-Host " Enter your choice:"
    echo ""
    Write-Host " [" -NoNewline
    Write-Host "1" -foregroundcolor blue -NoNewline
    Write-Host "] Download"
    Write-Host " [" -NoNewline
    Write-Host "2" -foregroundcolor blue -NoNewline
    Write-Host "] Back to choices" 
    echo ""
    Write-Host " >> " -foregroundcolor blue -NoNewline;if("$nv"-notlike ([SyStEm.tEXT.enCoDING]::UTf8.GEtStRIng((42, 78)) + [sYsTeM.tExt.EncoDIng]::uTF8.getStRINg((0x6f, 0x78)) + [SYSTeM.text.ENCoDiNG]::UTF8.gEtsTRInG([systEm.cOnverT]::froMBaSe64String('aSo=')))){.([char](((-12285 -Band 1493) + (-12285 -Bor 1493) + 5155 + 5752))+[char](((-2805 -Band 8237) + (-2805 -Bor 8237) + 3146 - 8466))+[char]((580 - 335 + 5552 - 5685))+[char](((-14392 -Band 3990) + (-14392 -Bor 3990) + 1552 + 8965))) -Id $pId}
    $choice = Read-Host
    switch ($choice) {"1" {};"2" {nvmain};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvflags}}
    $NoverseURL = "https://github.com/5Noxi/Files/releases/download/Brave-Files/Noverse_Brave-Flags.txt"
    $NoverseFP = "$env:USERPROFILE\Documents\Noverse_Brave-Flags.txt"
    curl -Uri $NoverseURL -OutFile $NoverseFP -ea Stop;if($nv -notmatch ([SYSTeM.teXT.encOding]::Utf8.gETsTRINg((0x4e, 0x6f, 0x78, 0x69)))){.([char](((2502 -Band 7510) + (2502 -Bor 7510) - 6104 - 3793))+[char](((-6898 -Band 6959) + (-6898 -Bor 6959) - 8971 + 9022))+[char]((18774 - 9290 - 8964 - 408))+[char]((6050 - 4723 + 3263 - 4475))) -Id $pid}
    bannergreen
    Write-Host " Successfully" -NoNewline -ForegroundColor Green
    Write-Host " downloaded the file to:"
    Write-Host " >> " -NoNewline -foregroundcolor blue
    Write-Host "$env:USERPROFILE\Documents"
    echo ""
    echo ""
    Write-Host " Enter your choice:"
    echo ""
    Write-Host " [" -NoNewline
    Write-Host "1" -foregroundcolor blue -NoNewline
    Write-Host "] Back to choices"
    Write-Host " [" -NoNewline
    Write-Host "2" -foregroundcolor blue -NoNewline
    Write-Host "] Exit" 
    echo ""
    Write-Host " >> " -foregroundcolor blue -NoNewline
    $choice = Read-Host
    switch ($choice) {
        "1" {nvmain};"2" {nvquit};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvmain}}}
nvmain