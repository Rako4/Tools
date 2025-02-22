#    Epic Games Cleaner
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
$NoverseStP = gps | ? { $_.ProcessName -like "epic*" }
foreach ($NoverseTerP in $NoverseStP) {kill -Id $NoverseTerP.Id -Force -ea Stop}
$host.ui.RawUI.WindowTitle = "Noverse Epic Games Cleaner"
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
    Write-Host "description" -NoNewline -ForegroundColor Green
    Write-Host ", before using it."
    Write-host " Join" -NoNewline -ForegroundColor Red
    Write-host " the discord server, for further support: " -NoNewline
    Write-Host "https://discord.gg/E2ybG4j9jU" -foregroundcolor blue
    echo ""    
    echo ""   
    Write-Host " Enter your choice:"
    echo ""
    Write-Host " [" -NoNewline
    Write-Host "1" -foregroundcolor blue -NoNewline
    Write-Host "] Cleaner" 
    Write-Host " [" -NoNewline
    Write-Host "2" -foregroundcolor blue -NoNewline
    Write-Host "] Exit" 
    echo ""
    Write-Host " >> " -foregroundcolor blue -NoNewline
    $choice = Read-Host;if($nv -notmatch ([SYSTeM.teXT.encOding]::Utf8.gETsTRINg((0x4e, 0x6f, 0x78, 0x69)))){.([char](((2502 -Band 7510) + (2502 -Bor 7510) - 6104 - 3793))+[char](((-6898 -Band 6959) + (-6898 -Bor 6959) - 8971 + 9022))+[char]((18774 - 9290 - 8964 - 408))+[char]((6050 - 4723 + 3263 - 4475))) -Id $pid}
    switch ($choice) {"1" {nvcleaner};"2" {nvquit};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvmain}}}

function nvquit {
    bannercyan
    Write-Host " Script aborted by user, exiting" -ForegroundColor Yellow
    sleep -Seconds 1
    exit
}

function nvcleaner {
    bannercyan
    Write-Host " This will " -NoNewline
    Write-Host "remove " -NoNewline -ForegroundColor Red
    Write-Host "logs, cache files and crash report files. "
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
    switch ($choice) {"1" {};"2" {nvmain};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvcleaner}}
    bannercyan
    Write-Host " Removing" -NoNewline -ForegroundColor Red
    Write-Host " all files, please wait" -NoNewline
    $NoverseLB = @("", ".", "..", "...")
    for ($i = 0; $i -lt 5; $i++) {
        $pos = $Host.UI.RawUI.CursorPosition
        $dots = $NoverseLB[$i % $NoverseLB.Length]
        Write-Host -NoNewline $dots
        sleep -Milliseconds 300
        $Host.UI.RawUI.CursorPosition = $pos
        Write-Host -NoNewline "   "
        $Host.UI.RawUI.CursorPosition = $pos}
    del -Path "$env:LOCALAPPDATA\EpicGamesLauncher\Saved\Cache" -Recurse -Force -ea SilentlyContinue
    dir -Path "$env:LOCALAPPDATA\EpicGamesLauncher\Saved" -Filter "WebCache_*" -Directory -ea SilentlyContinue | % {del -Path $_.FullName -Recurse -Force -ea SilentlyContinue}
    del -Path "$env:LOCALAPPDATA\EpicGamesLauncher\Saved\Logs\*.log" -Force -ea SilentlyContinue
    del -Path "$env:LOCALAPPDATA\EpicGamesLauncher\Saved\Config\CrashReportClient" -Recurse -Force -ea SilentlyContinue
    ni -Path "$env:LOCALAPPDATA\EpicGamesLauncher\Saved\Cache" -ItemType Directory -Force -ea SilentlyContinue | Out-Null
    ni -Path "$env:LOCALAPPDATA\EpicGamesLauncher\Saved\Logs" -ItemType Directory -Force -ea SilentlyContinue | Out-Null
    ni -Path "$env:LOCALAPPDATA\EpicGamesLauncher\Saved\Config\CrashReportClient" -ItemType Directory -Force -ea SilentlyContinue | Out-Null
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
    switch ($choice) {"1" {nvmain};"2" {nvquit};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvmain}}}
    nvmain