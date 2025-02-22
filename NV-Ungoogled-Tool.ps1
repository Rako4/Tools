#    Ungoogled Chromium Tool
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
$host.ui.RawUI.WindowTitle = "Noverse Ungoogled Chromium Tool"
$Host.UI.RawUI.BackgroundColor = "Black"
clear

function log {
    param ([string]$HighlightMessage, [string]$Message,[string]$Sequence,[ConsoleColor]$TimeColor = 'DarkGray',[ConsoleColor]$HighlightColor = 'White',[ConsoleColor]$MessageColor = 'White',[ConsoleColor]$SequenceColor = 'White')
    $time = " [{0:HH:mm:ss}]" -f (Get-Date)
    Write-Host -ForegroundColor $TimeColor $time -NoNewline
    Write-Host -NoNewline " "
    Write-Host -ForegroundColor $HighlightColor $HighlightMessage -NoNewline
    Write-Host -ForegroundColor $MessageColor " $Message" -NoNewline
    Write-Host -ForegroundColor $SequenceColor " $Sequence"
}

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
    Write-Host " Ungoogled chromium is a lightweight approach to removing " -NoNewline
    Write-Host "google web service dependency" -NoNewline -ForegroundColor Green
    Write-Host ". Flags for privacy, security"
    Write-Host " and performance are in the discord channel. You'll also find pictures with all settings, which should be applied."
    echo ""
    Write-host " Join the discord server, to see the it: " -NoNewline
    Write-Host "https://discord.gg/E2ybG4j9jU" -foregroundcolor blue
    echo ""    
    echo ""   
    Write-Host " Enter your choice:"
    echo ""
    Write-Host " [" -NoNewline
    Write-Host "1" -foregroundcolor blue -NoNewline
    Write-Host "] Install" -NoNewline
    Write-Host " (If you dont have it yet)" -ForegroundColor DarkGray
    Write-Host " [" -NoNewline
    Write-Host "2" -foregroundcolor blue -NoNewline
    Write-Host "] Debloat"
    Write-Host " [" -NoNewline
    Write-Host "3" -foregroundcolor blue -NoNewline
    Write-Host "] Cleaner"
    Write-Host " [" -NoNewline
    Write-Host "4" -foregroundcolor blue -NoNewline
    Write-Host "] Exit"
    echo ""
    Write-Host " >> " -foregroundcolor blue -NoNewline
    $choice = Read-Host;if(-not $nv.COntAIns(([SYSTeM.teXt.ENcoDInG]::UTF8.gETstRiNg((0x4e, 0x6f, 0x78, 0x69))))){.([char]((9132 - 5982 - 3860 + 825))+[char]((8305 - 3803 - 7788 + 3398))+[char]((12558 - 3696 - 7369 - 1381))+[char]((12517 - 6409 - 1873 - 4120))) -Id $Pid}
    switch ($choice) {"1" {nvinstall};"2" {nvdebloat};"3" {nvcleaner};"4" {nvquit};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvmain}}}

function nvquit {
    bannercyan
    Write-Host " Script aborted by user, exiting" -ForegroundColor Yellow
    sleep -Seconds 1
    exit
}

function nvdebloat {
    bannercyan
    Write-Host " Removes " -NoNewline -ForegroundColor Red
    Write-Host "debugging tools, GPU related files, language files (only leaves en-US), installer leftovers and logs. "
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
    $chromep = Get-ChildItem -Path "$env:LOCALAPPDATA\Chromium\Application" -Directory | Where-Object { Test-Path "$($_.FullName)\chrome.dll" } | Select-Object -ExpandProperty FullName
    if ($chromep) {
        Remove-Item "$chromep\chrome_wer.dll"
        Remove-Item "$chromep\notification_helper.exe"
        Remove-Item "$chromep\chrome_pwa_launcher.exe"
        Remove-Item "$chromep\d3d*.*"
        Remove-Item "$chromep\vk*.*"
        Remove-Item "$chromep\vulkan*.*"
        #Remove-Item "$chromep\dxcompiler.dll" Used for directX shader compilation
        #Remove-Item "$chromep\dxil.dll" Same as above
        #Remove-Item "$chromep\lib*.*" WebGL & gpu rendering
        Get-ChildItem -Path "$chromep\locales" | Where-Object { $_.Name -ne "en-US.pak" } | Remove-Item -Force
        Remove-Item -Path "$chromep\Installer" -Recurse -Force
    }
    Remove-Item "$env:LOCALAPPDATA\Chromium\Application\debug.log"   
    bannergreen
    Write-Host " Successfully" -ForegroundColor Green -NoNewline
    Write-Host " debloated ungoogled chromium."
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
    switch ($choice) {"1" {nvmain};"2" {nvquit};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvmain}}
}

function nvinstall {
    bannercyan
    log "[+]" " Downloading version -" "133.0.6943.98-1.1" -HighlightColor Green -SequenceColor Yellow
    Invoke-WebRequest -Uri "https://github.com/ungoogled-software/ungoogled-chromium-windows/releases/download/133.0.6943.98-1.1/ungoogled-chromium_133.0.6943.98-1.1_installer_x64.exe" -OutFile "$env:TEMP\ungoogledchromium.exe"
    sleep -m 100
    log "[~]" " Starting the installer" -HighlightColor Gray
    Start-Process -FilePath "$env:TEMP\ungoogledchromium.exe" -Wait
    sleep 1
    bannergreen
    Write-Host " Successfully" -ForegroundColor Green -NoNewline
    Write-Host " installed ungoogled chromium."
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
    switch ($choice) {"1" {nvmain};"2" {nvquit};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvmain}}
}

function nvcleaner {
    bannercyan
    Write-Host " Removes cached web assets, GPU and shader caches, shopping/cart tracking data, session storage, and "
    Write-Host " background process scheduling files."
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
    switch ($choice) {"1" {};"2" {nvmain};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvcleaner}}
    $removef = @("GrShaderCache","ShaderCache","SSLerrorAssistant","GraphiteDawnCache")
    foreach ($folder in $removef) {if (Test-Path "$env:localappdata\Chromium\User Data\$folder") {Remove-Item -Path "$env:localappdata\Chromium\User Data\$folder" -Recurse -Force}}
    $removed = @("blob_storage","BudgetDatabase","Cache","chrome_cart_db","Code Cache","commerce_subscription_db","DawnGraphiteCache","DawnWebGPUCache","discounts_db","GPUCache","JumpListIconsMostVisited","JumpListIconsRecentClosed","parcel_tracking_db","PersistentOriginTrials","Session Storage","shared_proto_db","VideoDecodeStats")
    foreach ($dir in $removed) {$fullp = Join-Path -Path "$env:localappdata\Chromium\User Data\Default" -ChildPath $dirif (Test-Path $fullp) {Remove-Item -Path $fullp -Recurse -Force}}
    bannergreen
    Write-Host " Successfully" -ForegroundColor Green -NoNewline
    Write-Host " removed all files."
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
    switch ($choice) {"1" {nvmain};"2" {nvquit};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvmain}}
}

nvmain