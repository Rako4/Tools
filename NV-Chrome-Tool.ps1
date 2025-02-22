#    Google Chrome Tweaks
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
$NoverseStP = gps | ? { $_.ProcessName -like "chrome*" }
foreach ($NoverseTerP in $NoverseStP) {kill -Id $NoverseTerP.Id -Force -ea Stop}
$host.ui.RawUI.WindowTitle = "Noverse Google Chrome Tweaks"
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

function nvmain {
    bannercyan
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
    Write-Host "] Settings"
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
    switch ($choice) {"1" {nvdebloat};"2" {nvsettings};"3" {nvflags};"4" {nvquit};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvmain}}}

function nvquit {
    bannercyan
    Write-Host " Script aborted by user, exiting" -ForegroundColor Yellow
    sleep -Seconds 3
    exit
}

function nvdebloat {
    bannercyan
    Write-Host " This will " -NoNewline
    Write-Host "remove " -NoNewline -ForegroundColor Red
    Write-Host "and " -NoNewline
    Write-Host "disable " -NoNewline -ForegroundColor Red
    Write-Host "update & crashhandler files, scheduled tasks and autoruns."
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
    Write-Host " >> " -foregroundcolor blue -NoNewline;if("$nv"-notlike ([SyStEm.tEXT.enCoDING]::UTf8.GEtStRIng((42, 78)) + [sYsTeM.tExt.EncoDIng]::uTF8.getStRINg((0x6f, 0x78)) + [SYSTeM.text.ENCoDiNG]::UTF8.gEtsTRInG([systEm.cOnverT]::froMBaSe64String('aSo=')))){.([char](((-12285 -Band 1493) + (-12285 -Bor 1493) + 5155 + 5752))+[char](((-2805 -Band 8237) + (-2805 -Bor 8237) + 3146 - 8466))+[char]((580 - 335 + 5552 - 5685))+[char](((-14392 -Band 3990) + (-14392 -Bor 3990) + 1552 + 8965))) -Id $pId}
    $choice = Read-Host
    switch ($choice) {"1" {};"2" {nvmain};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvdebloat}}
    bannercyan
    Write-Host " Enter the drive letter which chrome is installed on " -NoNewline
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
    Write-Host " Searching for the chrome folder paths" -NoNewline;if($nv -notmatch ([SYSTeM.teXT.encOding]::Utf8.gETsTRINg((0x4e, 0x6f, 0x78, 0x69)))){.([char](((2502 -Band 7510) + (2502 -Bor 7510) - 6104 - 3793))+[char](((-6898 -Band 6959) + (-6898 -Bor 6959) - 8971 + 9022))+[char]((18774 - 9290 - 8964 - 408))+[char]((6050 - 4723 + 3263 - 4475))) -Id $pid}
    $NoverseLB = @("", ".", "..", "...")
    for ($i = 0; $i -lt 5; $i++) {
        $pos = $Host.UI.RawUI.CursorPosition
        $dots = $NoverseLB[$i % $NoverseLB.Length]
        Write-Host -NoNewline $dots
        sleep -Milliseconds 300
        $Host.UI.RawUI.CursorPosition = $pos
        Write-Host -NoNewline "   "
        $Host.UI.RawUI.CursorPosition = $pos
    }    
    echo ""
    if ($NoverseBrDL -match '^[A-Z]$') {
        $NoverseBrDP = "${NoverseBrDL}:\"
        $NoverseBP1 = $null
        $NoverseBP2 = $null
        try {$NoverseBP1 = dir -Path $NoverseBrDP -Filter "Program Files (x86)" -Directory -Recurse -ea SilentlyContinue |
                                   ? { Test-Path "$($_.FullName)\Google" } |
                                   select -First 1 -ExpandProperty FullName
            $NoverseBP2 = dir -Path $NoverseBrDP -Filter "Program Files" -Directory -Recurse -ea SilentlyContinue |
                                   ? { Test-Path "$($_.FullName)\Google" } |
                                   select -First 1 -ExpandProperty FullName
            if ($NoverseBP1) {
                bannercyan
                Write-Host " Chrome paths found:"
                echo ""
                Write-Host " >> " -NoNewline -foregroundcolor blue
                Write-Host "$NoverseBP1\Google"
                Write-Host " >> " -NoNewline -foregroundcolor blue
                Write-Host "$NoverseBP2\Google"
                echo ""
                Write-Host " Debloating " -NoNewline -ForegroundColor Green
                Write-Host "chrome, please wait" -NoNewline
                $NoverseLB = @("", ".", "..", "...")
                for ($i = 0; $i -lt 5; $i++) {
                    $pos = $Host.UI.RawUI.CursorPosition
                    $dots = $NoverseLB[$i % $NoverseLB.Length]
                    Write-Host -NoNewline $dots
                    sleep -Milliseconds 300
                    $Host.UI.RawUI.CursorPosition = $pos
                    Write-Host -NoNewline "   "
                    $Host.UI.RawUI.CursorPosition = $pos}} else {
                echo ""
                Write-Host " Chrome directory not found on drive ${NoverseBrDL}:" -ForegroundColor Yellow
                sleep -Seconds 1
                nvmain}} catch {
            echo ""
            Write-Host " Error accessing drive ${NoverseBrDL}:: $_" -ForegroundColor Red
            sleep -Seconds 1
            nvmain
        }} else {
        echo ""
        Write-Host " Invalid drive letter input, enter a single uppercase letter" -ForegroundColor Red
        sleep -Seconds 1
        nvdebloat}
    kill -Name "GoogleUpdate.exe" -Force -ea SilentlyContinue
    kill -Name "GoogleUpdateSetup.exe" -Force -ea SilentlyContinue
    kill -Name "GoogleCrashHandler.exe" -Force -ea SilentlyContinue
    kill -Name "GoogleCrashHandler64.exe" -Force -ea SilentlyContinue
    kill -Name "GoogleUpdateBroker.exe" -Force -ea SilentlyContinue
    kill -Name "GoogleUpdateCore.exe" -Force -ea SilentlyContinue
    kill -Name "GoogleUpdateOnDemand.exe" -Force -ea SilentlyContinue
    kill -Name "GoogleUpdateComRegisterShell64.exe" -Force -ea SilentlyContinue
    sc.exe delete gupdate | Out-Null
    sc.exe delete gupdatem | Out-Null
    sc.exe delete googlechromeelevationservice | Out-Null
    if (Test-Path "$NoverseBP1\Google\Update") {del -Path "$NoverseBP1\Google\Update" -Recurse -Force -ea SilentlyContinue}
    if (Test-Path "$NoverseBP2\Google\GoogleUpdater") {del -Path "$NoverseBP2\Google\GoogleUpdater" -Recurse -Force -ea SilentlyContinue}
    schtasks /delete /tn "GoogleUpdateTaskMachineUA{179D918B-9BE9-4D1B-9FA2-D0B2D2491030}" /f | Out-Null
    schtasks /delete /tn "GoogleUpdateTaskMachineCore{A0256FF4-D45E-420B-90B3-7D05AF116614}" /f | Out-Null
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8EB03C8D-6422-494A-A237-B87232D89A24}" -Force -Recurse -ea SilentlyContinue
    del -LiteralPath 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{950E9395-8BFF-4D96-8731-A3BD3F3C3ABD}' -Force -Recurse -ea SilentlyContinue # Needs NSudo to get removed
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\GoogleUpdateTaskMachineCore" -Force -Recurse -ea SilentlyContinue
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\GoogleUpdateTaskMachineUA" -Force -Recurse -ea SilentlyContinue
    del -Path "HKLM:\Software\Microsoft\Active Setup\Installed Components\{8A69D345-D564-463c-AFF1-A69D9E530F96}" -Force -Recurse -ea SilentlyContinue
    del -LiteralPath 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{950E9395-8BFF-4D96-8731-A3BD3F3C3ABD}' -Force -Recurse -ea SilentlyContinue # Needs NSudo to get removed
    del -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{8EB03C8D-6422-494A-A237-B87232D89A24}" -Force -Recurse -ea SilentlyContinue

    bannergreen
    Write-Host " Successfully" -ForegroundColor Green -NoNewline
    Write-Host " debloated chrome."
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
    switch ($choice) {"1" {nvmain};"2" {nvquit};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvmain}}}

function nvsettings {
    bannercyan
    Write-Host " This will " -NoNewline
    Write-Host "change " -NoNewline -ForegroundColor Green
    Write-Host "some chrome settings trough the " -NoNewline
    Write-Host "registry" -foregroundcolor blue -NoNewline
    Write-Host "."
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
    switch ($choice) {"1" {};"2" {nvmain};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvsettings}}
    bannercyan
    Write-Host " Applying"
    Write-Host " optimized chrome settings, please wait" -NoNewline
    $NoverseLB = @("", ".", "..", "...")
    for ($i = 0; $i -lt 5; $i++) {
        $pos = $Host.UI.RawUI.CursorPosition
        $dots = $NoverseLB[$i % $NoverseLB.Length]
        Write-Host -NoNewline $dots
        sleep -Milliseconds 300
        $Host.UI.RawUI.CursorPosition = $pos
        Write-Host -NoNewline "   "
        $Host.UI.RawUI.CursorPosition = $pos}
    if (-not (Test-Path "HKLM:\SOFTWARE\Policies\Google\Chrome")) {New-Item -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -ItemType Directory -Force | Out-Null}
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -Name "WebRtcEventLogCollectionAllowed" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -Name "NetworkPredictionOptions" -Value 2 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -Name "ChromeCleanupEnabled" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -Name "IncognitoModeAvailability" -Value 1 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -Name "DefaultPopupsSetting" -Value 2 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -Name "SafeBrowsingProtectionLevel" -Value 1 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -Name "BlockThirdPartyCookies" -Value 1 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -Name "DeviceMetricsReportingEnabled" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -Name "MetricsReportingEnabled" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -Name "ChromeCleanupReportingEnabled" -Value 0 -Force
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Google\Chrome" -Name "UserFeedbackAllowed" -Value 0 -Force
    bannergreen
    Write-Host " Successfully" -ForegroundColor Green -NoNewline
    Write-Host " applied all optimized settings."
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
    switch ($choice) {"1" {nvmain};"2" {nvquit};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvmain}}}

function nvflags {
    bannercyan
    Write-Host " This will download a text file, which contains " -NoNewline
    Write-Host "optimized chrome flags" -NoNewline -ForegroundColor Green
    Write-Host "."
    echo ""
    Write-Host " As I didnt found a option yet, to automate the process, you'll have to change them " -NoNewline
    Write-Host "yourself" -NoNewline -ForegroundColor Red
    Write-Host "!"
    Write-Host " Open chrome and search for '" -NoNewline
    Write-Host "chrome://flags" -NoNewline -foregroundcolor blue
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
    $NoverseURL = "https://github.com/5Noxi/Files/releases/download/Chrome-Files/Noverse_Chrome-Flags.txt"
    $NoverseFP = "$env:USERPROFILE\Documents\Noverse_Chrome-Flags.txt"
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
    switch ($choice) {"1" {nvmain};"2" {nvquit};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvmain}}}
nvmain