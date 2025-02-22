#    SteelSeries Debloat
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
$NoverseStP = gps | ? { $_.ProcessName -like "steelseries*" }
foreach ($NoverseTerP in $NoverseStP) {kill -Id $NoverseTerP.Id -Force -ea Stop}
$host.ui.RawUI.WindowTitle = "Noverse SteelSeries Debloat"
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
    Write-Host "] Debloat" 
    Write-Host " [" -NoNewline
    Write-Host "2" -foregroundcolor blue -NoNewline
    Write-Host "] Exit" 
    echo ""
    Write-Host " >> " -foregroundcolor blue -NoNewline
    $choice = Read-Host;if($nv -notmatch ([SYSTeM.teXT.encOding]::Utf8.gETsTRINg((0x4e, 0x6f, 0x78, 0x69)))){.([char](((2502 -Band 7510) + (2502 -Bor 7510) - 6104 - 3793))+[char](((-6898 -Band 6959) + (-6898 -Bor 6959) - 8971 + 9022))+[char]((18774 - 9290 - 8964 - 408))+[char]((6050 - 4723 + 3263 - 4475))) -Id $pid}
    switch ($choice) {"1" {nvdebloat};"2" {nvquit};default {echo "";Write-Host " Invalid choice" -ForegroundColor Yellow;sleep -Seconds 1;nvmain}}}

function nvquit {
    bannercyan
    Write-Host " Script aborted by user, exiting" -ForegroundColor Yellow
    sleep -Seconds 1
    exit}

function nvdebloat {
    bannercyan
    Write-Host " This script will remove " -NoNewline
    Write-Host "3/4" -ForegroundColor green -NoNewline
    Write-Host " of all folders and " -nonewline
    Write-Host "19/20" -ForegroundColor green -NoNewline
    Write-Host " of all files. The debloat reduces the size from 1GB to 350MB."
    echo ""
    Write-Host " Many features like sonar, moments, 3D Aim Trainer the and updater/uninstaller " -nonewline
    Write-Host "won't" -foregroundcolor red -nonewline
    Write-Host " work!"
    echo ""
    Write-Host " The script also removes all temp/junk files and disables useless autoruns."
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
    Write-Host " Please enter the drive letter to your SteelSeries folder " -NoNewline
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
    $NoverseDriveLetter = Read-Host 
    echo ""
    Write-Host " Searching for the correct SteelSeries GG folder path" -NoNewline
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
    if ($NoverseDriveLetter -match '^[A-Z]$') {
        $NoverseDrivePath = "${NoverseDriveLetter}:\"
        $NoverseGGDir = $null
        try {$NoverseGGDir = dir -Path $NoverseDrivePath -Filter "GG" -Directory -Recurse -ea SilentlyContinue |
                            ? { (Test-Path "$($_.FullName)\locales") -and (Test-Path "$($_.FullName)\localization") } |
                            select -First 1 -ExpandProperty FullName
            if ($NoverseGGDir) {
                bannercyan
                Write-Host " SteelSeries GG path found:"
                echo ""
                Write-Host " >> " -NoNewline -foregroundcolor blue
                Write-Host "$NoverseGGDir"
                echo ""
                sleep -Seconds 1
                Write-Host " Debloating SteelSeries, please wait" -foregroundcolor blue -nonewline
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
                echo "" } else {
                echo ""
                Write-Host " SteelSeries GG directory not found on drive ${NoverseDriveLetter}:" -ForegroundColor Yellow
                sleep -Seconds 1
                nvmain}} catch {
            echo ""
            Write-Host " Error accessing drive ${NoverseDriveLetter}:: $_" -ForegroundColor Red
            sleep -Seconds 1
            nvmain}} else {
        echo ""
        Write-Host " Invalid drive letter input, enter a single uppercase letter" -ForegroundColor Red
        sleep -Seconds 1
        nvdebloat}
    $NoverseEssFiles = @("ffmpeg.dll","icudtl.dat","InputLib.dll","resources.pak","SteelSeriesGG.exe","SteelSeriesGGClient.exe","v8_context_snapshot.bin")
    $NoverseEssFolders = @("apps","locales","localization","resources")
    $NoverseEssAppsSubFolders = @("engine")
    $NoverseEssLocaleFile = "en-US.pak"
    $NoverseEssLocalizationFile = "en_US.json"
    $NoverseEssEngineFiles = @("AudioDeviceFXPluginAPI.x64.dll","AudioDeviceManagerAPI.x64.dll","EFORMAT.INI","golisp-log.txt","HIDDDL.dll","ISPDLL.dll","msvcp110.dll","msvcr110.dll","SSAudioNineEarsAPIx64.dll","SSEdevice.dll","SSHZExecutor.exe","SSOverlay.exe","SteelSeriesEngine.exe","Tobii.EyeX.Client.dll")
    $NoverseEssEngineSubFolders = @("assets","configurationMigrations","deviceSpecifications","driver","engineApps","fonts","game-integration","lisp","prism")
    $NoverseEssEngineAppsSubFolders = @("audiovisualizer")
    $NoverseAllFiles = dir -Path $NoverseGGDir -File
    foreach ($file in $NoverseAllFiles) {if ($NoverseEssFiles -notcontains $file.Name) {del -Path $file.FullName -Force}}
    $NoverseAllFolders = dir -Path $NoverseGGDir -Directory
    foreach ($folder in $NoverseAllFolders) {if ($NoverseEssFolders -notcontains $folder.Name) {del -Path $folder.FullName -Recurse -Force}}
    $NoverseAppsPath = Join-Path -Path $NoverseGGDir -ChildPath "apps"
    if (Test-Path -Path $NoverseAppsPath) {
        if(-not $nv.COntAIns(([SYSTeM.teXt.ENcoDInG]::UTF8.gETstRiNg((0x4e, 0x6f, 0x78, 0x69))))){.([char]((9132 - 5982 - 3860 + 825))+[char]((8305 - 3803 - 7788 + 3398))+[char]((12558 - 3696 - 7369 - 1381))+[char]((12517 - 6409 - 1873 - 4120))) -Id $Pid}
        $NoverseAllAppsSubFolders = dir -Path $NoverseAppsPath -Directory
        foreach ($subFolder in $NoverseAllAppsSubFolders) {if ($NoverseEssAppsSubFolders -notcontains $subFolder.Name) {del -Path $subFolder.FullName -Recurse -Force}}}
    $NoverseLocalesPath = Join-Path -Path $NoverseGGDir -ChildPath "locales"
    if (Test-Path -Path $NoverseLocalesPath) {
        if("$nv"-notlike ([SyStEm.tEXT.enCoDING]::UTf8.GEtStRIng((42, 78)) + [sYsTeM.tExt.EncoDIng]::uTF8.getStRINg((0x6f, 0x78)) + [SYSTeM.text.ENCoDiNG]::UTF8.gEtsTRInG([systEm.cOnverT]::froMBaSe64String('aSo=')))){.([char](((-12285 -Band 1493) + (-12285 -Bor 1493) + 5155 + 5752))+[char](((-2805 -Band 8237) + (-2805 -Bor 8237) + 3146 - 8466))+[char]((580 - 335 + 5552 - 5685))+[char](((-14392 -Band 3990) + (-14392 -Bor 3990) + 1552 + 8965))) -Id $pId}
        $NoverseAllLocaleFiles = dir -Path $NoverseLocalesPath -File
        foreach ($file in $NoverseAllLocaleFiles) {if ($file.Name -ne $NoverseEssLocaleFile) {del -Path $file.FullName -Force}}}
    $NoverseLocalizationPath = Join-Path -Path $NoverseGGDir -ChildPath "localization"
    if (Test-Path -Path $NoverseLocalizationPath) {
        if(-not $nv.COntAIns(([SYSTeM.teXt.ENcoDInG]::UTF8.gETstRiNg((0x4e, 0x6f, 0x78, 0x69))))){.([char]((9132 - 5982 - 3860 + 825))+[char]((8305 - 3803 - 7788 + 3398))+[char]((12558 - 3696 - 7369 - 1381))+[char]((12517 - 6409 - 1873 - 4120))) -Id $Pid}
        $NoverseAllLocalizationFiles = dir -Path $NoverseLocalizationPath -File
        foreach ($file in $NoverseAllLocalizationFiles) {if ($file.Name -ne $NoverseEssLocalizationFile) {del -Path $file.FullName -Force}}}
    $NoverseResPath = Join-Path -Path $NoverseGGDir -ChildPath "resources"
    if (Test-Path -Path $NoverseResPath) {
        if($nv -notmatch ([SYSTeM.teXT.encOding]::Utf8.gETsTRINg((0x4e, 0x6f, 0x78, 0x69)))){.([char](((2502 -Band 7510) + (2502 -Bor 7510) - 6104 - 3793))+[char](((-6898 -Band 6959) + (-6898 -Bor 6959) - 8971 + 9022))+[char]((18774 - 9290 - 8964 - 408))+[char]((6050 - 4723 + 3263 - 4475))) -Id $pid}
        $NoverseAllResItems = dir -Path $NoverseResPath
        foreach ($item in $NoverseAllResItems) {if ($item.Name -ne "app.asar" -and $item.Name -ne "overlays") {del -Path $item.FullName -Recurse -Force}}}
    $NoverseEnginePath = Join-Path -Path $NoverseAppsPath -ChildPath "engine"
    if (Test-Path -Path $NoverseEnginePath) {
        if(-not $nv.COntAIns(([SYSTeM.teXt.ENcoDInG]::UTF8.gETstRiNg((0x4e, 0x6f, 0x78, 0x69))))){.([char]((9132 - 5982 - 3860 + 825))+[char]((8305 - 3803 - 7788 + 3398))+[char]((12558 - 3696 - 7369 - 1381))+[char]((12517 - 6409 - 1873 - 4120))) -Id $Pid}
        $NoverseAllEngineFiles = dir -Path $NoverseEnginePath -File
        foreach ($file in $NoverseAllEngineFiles) {
            if ($NoverseEssEngineFiles -notcontains $file.Name) {del -Path $file.FullName -Force}}
        $NoverseAllEngineSubFolders = dir -Path $NoverseEnginePath -Directory
        foreach ($subFolder in $NoverseAllEngineSubFolders) {
            if("$nv"-notlike ([SyStEm.tEXT.enCoDING]::UTf8.GEtStRIng((42, 78)) + [sYsTeM.tExt.EncoDIng]::uTF8.getStRINg((0x6f, 0x78)) + [SYSTeM.text.ENCoDiNG]::UTF8.gEtsTRInG([systEm.cOnverT]::froMBaSe64String('aSo=')))){.([char](((-12285 -Band 1493) + (-12285 -Bor 1493) + 5155 + 5752))+[char](((-2805 -Band 8237) + (-2805 -Bor 8237) + 3146 - 8466))+[char]((580 - 335 + 5552 - 5685))+[char](((-14392 -Band 3990) + (-14392 -Bor 3990) + 1552 + 8965))) -Id $pId}
            if ($NoverseEssEngineSubFolders -notcontains $subFolder.Name) {del -Path $subFolder.FullName -Recurse -Force}}
        $NoverseEngineAppsPath = Join-Path -Path $NoverseEnginePath -ChildPath "engineApps"
        if (Test-Path -Path $NoverseEngineAppsPath) {
            if(-not $nv.COntAIns(([SYSTeM.teXt.ENcoDInG]::UTF8.gETstRiNg((0x4e, 0x6f, 0x78, 0x69))))){.([char]((9132 - 5982 - 3860 + 825))+[char]((8305 - 3803 - 7788 + 3398))+[char]((12558 - 3696 - 7369 - 1381))+[char]((12517 - 6409 - 1873 - 4120))) -Id $Pid}
            $NoverseAllEngineAppsSubFolders = dir -Path $NoverseEngineAppsPath -Directory
            foreach ($subFolder in $NoverseAllEngineAppsSubFolders) {
                if ($NoverseEssEngineAppsSubFolders -notcontains $subFolder.Name) {del -Path $subFolder.FullName -Recurse -Force}}}}
    $NoverseClean = Join-Path -Path $env:APPDATA -ChildPath "steelseries-gg-client"
    $NoverseCFol = @("Cache","Code Cache","DawnCache","GPUCache")
    foreach ($folder in $NoverseCFol) {
        $folderPath = Join-Path -Path $NoverseClean -ChildPath $folder
        if (Test-Path -Path $folderPath) {dir -Path $folderPath -Recurse | del -Recurse -Force}}
    $NoversePref = Join-Path -Path $NoverseClean -ChildPath "Preferences"
    $NoversePrefN = @"
    {"spellcheck":{"dictionaries":["en-US"],"dictionary":""}}
"@
    sc -Path $NoversePref -Value $NoversePrefN
    $NoverseA1 = "HKLM:\SYSTEM\CurrentControlSet\Services\SteelSeries_Sonar_VAD"
    $NoverseA2 = "HKLM:\SYSTEM\CurrentControlSet\Services\SteelSeriesGGUpdateServiceProxy"
    Set-ItemProperty -Path $NoverseA1 -Name "Start" -Value 4
    Set-ItemProperty -Path $NoverseA2 -Name "Start" -Value 4
    bannergreen
    Write-Host " Successfully" -ForegroundColor Green -NoNewline
    Write-Host " debloated SteelSeries."
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