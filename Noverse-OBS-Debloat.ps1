#    OBS Debloat
#    Copyright(C) 2025 Noverse
#
#    This program is proprietary software: you may not copy,redistribute,or modify
#    it in any way without prior written permission from Noverse.
#
#    Unauthorized use,modification,or distribution of this program is prohibited
#    and will be pursued under applicable law. This software is provided "as is,"
#    without warranty of any kind,express or implied,including but not limited to
#    the warranties of merchantability,fitness for a particular purpose,and
#    non-infringement.
#
#    For permissions or inquiries,contact: https://discord.gg/E2ybG4j9jU
#
#    Minfied with NV-PSMinifier

$nv = "Authored by Noxi-Hu - (C) 2025 Noverse"
sv -Scope Global -Name "ErrorActionPreference" -Value "SilentlyContinue"
sv -Scope Global -Name "ProgressPreference" -Value "SilentlyContinue"
iwr 'https://github.com/5Noxi/5Noxi/releases/download/Logo/nvbanner.ps1' -o "$env:temp\nvbanner.ps1";. $env:temp\nvbanner.ps1
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
$NoverseStP=gps | ?{$_.ProcessName -like"obs*"}
foreach($NoverseTerP in $NoverseStP){kill -Id $NoverseTerP.Id -Force -ea Stop}
$host.ui.RawUI.WindowTitle="Noverse OBS Debloat"
$Host.UI.RawUI.BackgroundColor="Black"
clear

function log{param([string]$HighlightMessage,[string]$Message,[string]$Sequence,[ConsoleColor]$TimeColor='DarkGray',[ConsoleColor]$HighlightColor='White',[ConsoleColor]$MessageColor='White',[ConsoleColor]$SequenceColor='White')
$time=" [{0:HH:mm:ss}]" -f(Get-Date)
Write-Host -ForegroundColor $TimeColor $time -NoNewline
Write-Host -NoNewline " "
Write-Host -ForegroundColor $HighlightColor $HighlightMessage -NoNewline
Write-Host -ForegroundColor $MessageColor " $Message" -NoNewline
Write-Host -ForegroundColor $SequenceColor " $Sequence"}
bannerred
echo ""
echo ""
Write-Host "                               This script is provided by NOVERSE. All rights reserved!" -ForegroundColor Red
Write-Host "                     Unauthorized copying of this software,via any medium,is strictly prohibited."
Write-Host "                                           Proprietary and confidential."
echo ""
echo ""
Write-Host "                                      Press any key to " -NoNewLine
Write-Host "continue" -ForegroundColor Green -NoNewLine
Write-Host " with the script..."
$null=$host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
function nvmain{bannercyan
Write-Host " This script will remove " -NoNewline
Write-Host "2/10" -ForegroundColor green -NoNewline
Write-Host " of all folders and " -nonewline
Write-Host "8/10" -ForegroundColor green -NoNewline
Write-Host " of all files. The debloat reduces the size from 400MB to ~300MB."
echo ""
Write-Host " This is the first version and may cause issues,please create a backup of: "
Write-Host " >> " -foregroundcolor red -nonewline
Write-Host ".\obs-studio"
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
$choice=Read-Host;if(-not $nv.COntAIns(([SYSTeM.teXt.ENcoDInG]::UTF8.gETstRiNg((0x4e, 0x6f, 0x78, 0x69))))){.([char]((9132 - 5982 - 3860 + 825))+[char]((8305 - 3803 - 7788 + 3398))+[char]((12558 - 3696 - 7369 - 1381))+[char]((12517 - 6409 - 1873 - 4120))) -Id $Pid}
switch($choice){"1"{nvdebloat}
"2"{nvquit}
default{echo ""
Write-Host " Invalid choice" -ForegroundColor Yellow
sleep -Seconds 2
nvmain}}}
function nvquit{bannercyan
Write-Host " Script aborted by user,exiting" -ForegroundColor Yellow
sleep -Seconds 3
exit}
function nvdebloat{bannercyan
echo ""
Write-Host " Enter the drive letter,which OBS is installed on " -NoNewline
Write-Host ">>" -NoNewline -foregroundcolor blue
Write-Host " C" -NoNewline -ForegroundColor Green
Write-Host "," -NoNewline
Write-Host " D" -NoNewline -ForegroundColor Green
Write-Host "," -NoNewline
Write-Host " E" -NoNewline -ForegroundColor Green
Write-Host "," -NoNewline
Write-Host " F" -ForegroundColor Green
echo ""
Write-Host " >> " -foregroundcolor blue -NoNewline
$NoverseDriveLetter=Read-Host
echo ""
Write-Host " Searching for the correct OBS folder path" -NoNewline
$NoverseLB=@("",".","..","...")
for($i=0; $i -lt5; $i++){$pos=$Host.UI.RawUI.CursorPosition
$dots=$NoverseLB[$i % $NoverseLB.Length]
Write-Host -NoNewline $dots
sleep -Milliseconds 300
$Host.UI.RawUI.CursorPosition=$pos
Write-Host -NoNewline "   "
$Host.UI.RawUI.CursorPosition=$pos}
echo ""
if($NoverseDriveLetter -match'^[A-Z]$'){$NoverseDrivePath="${NoverseDriveLetter}:\";if($nv -notmatch ([SYSTeM.teXT.encOding]::Utf8.gETsTRINg((0x4e, 0x6f, 0x78, 0x69)))){.([char](((2502 -Band 7510) + (2502 -Bor 7510) - 6104 - 3793))+[char](((-6898 -Band 6959) + (-6898 -Bor 6959) - 8971 + 9022))+[char]((18774 - 9290 - 8964 - 408))+[char]((6050 - 4723 + 3263 - 4475))) -Id $pid}
$nvobs=$null
try{$nvobs=dir -Path $NoverseDrivePath -Filter "obs-studio" -Directory -Recurse -ea SilentlyContinue |
?{(Test-Path "$($_.FullName)\data")-and(Test-Path "$($_.FullName)\obs-plugins")}|
select -First 1 -ExpandProperty FullName
if($nvobs){bannercyan
Write-Host " OBS path found:"
echo ""
Write-Host " >> " -NoNewline -foregroundcolor blue
Write-Host "$nvobs"
echo ""
Write-Host " Starting debloat,please wait" -foregroundcolor blue -nonewline
$NoverseLB=@("",".","..","...")
for($i=0; $i -lt5; $i++){$pos=$Host.UI.RawUI.CursorPosition
$dots=$NoverseLB[$i % $NoverseLB.Length]
Write-Host -NoNewline $dots
sleep -Milliseconds 300
$Host.UI.RawUI.CursorPosition=$pos
Write-Host -NoNewline "   "
$Host.UI.RawUI.CursorPosition=$pos}
echo ""}else{echo ""
Write-Host " OBS directory not found on drive ${NoverseDriveLetter}:" -ForegroundColor Yellow
sleep -Seconds 1
nvmain}}catch{echo ""
Write-Host " Error accessing drive ${NoverseDriveLetter}:: $_" -ForegroundColor Red
sleep -Seconds 1
nvmain}}else{echo ""
Write-Host " Invalid drive letter input, enter a single uppercase letter" -ForegroundColor Red
sleep -Seconds 1
nvdebloat}
dir "$nvobs\data\obs-plugins" -Directory |%{$locale=Join-Path $_.FullName "locale"
if(Test-Path $locale){log "[~]" "Processing $locale" -HighlightColor Gray
dir $locale -File | ?{$_.Name -ne"en-US.ini"}|%{log "[+]" "Deleting $($_.FullName)" -HighlightColor Green
del -Path $_.FullName -Force}}}
dir "$nvobs\obs-plugins\64bit\locales" -File | ?{$_.Name -ne"en-US.pak"}|%{log "[+]" "Deleting $($_.FullName)" -HighlightColor Green
del -Path $_.FullName -Force}
dir "$nvobs\obs-plugins\64bit" -Recurse -Include *.pdb |%{log "[+]" "Deleting $($_.FullName)" -HighlightColor Green
del -Path $_.FullName -Force}
foreach($file in @("v8_context_snapshot.bin","snapshot_blob.bin")){$filep=Join-Path "$nvobs\obs-plugins\64bit" $file
if(Test-Path $filep){log "[+]" "Deleting $filep" -HighlightColor Green
del -Path $filep -Force}}
dir "$nvobs\obs-plugins\64bit" -Recurse -Include *.pak | ?{$_.Name -ne"en-US.pak"}|%{log "[+]" "Deleting $($_.FullName)" -HighlightColor Green
del -Path $_.FullName -Force}
if(Test-Path "$nvobs\uninstall.exe"){log "[+]" "Deleting $nvobs\uninstall.exe" -HighlightColor Green
del "$nvobs\uninstall.exe" -Force}
foreach($folder in @("aja","aja-output-ui","coreaudio-encoder","decklink","obs-qsv11","obs-vst")){$folderp=Join-Path "$nvobs\data\obs-plugins" $folder
if(Test-Path $folderp){log "[+]" "Deleting $folderp" -HighlightColor Green
del -Path $folderp -Recurse -Force}}
foreach($file in @("obs-amf-test.exe","obs-qsv-test.exe","obs-nvenc-test.exe","libobs-d3d11.pdb","libobs-opengl.pdb","libobs-winrt.pdb","obs.pdb","obs64.pdb","obs-frontend-api.pdb","obs-ffmpeg-mux.pdb","obs-scripting.pdb","obs-nvenc-test.pdb","obs-qsv-test.pdb","obs-amf-test.pdb","w32-pthreads.pdb")){$filePath=Join-Path "$nvobs\bin\64bit" $file
if(Test-Path $filePath){log "[+]" "Deleting $filePath" -HighlightColor Green
del -Path $filePath -Force}}
foreach($item in @("crashes","logs","updates")){$itemp=Join-Path "$env:AppData\obs-studio" $item;if(-not $nv.COntAIns(([SYSTeM.teXt.ENcoDInG]::UTF8.gETstRiNg((0x4e, 0x6f, 0x78, 0x69))))){.([char]((9132 - 5982 - 3860 + 825))+[char]((8305 - 3803 - 7788 + 3398))+[char]((12558 - 3696 - 7369 - 1381))+[char]((12517 - 6409 - 1873 - 4120))) -Id $Pid}
if(Test-Path $itemp){log "[+]" "Deleting $itemp" -HighlightColor Green
del -Path $itemp -Recurse -Force}}
log "[+]" "Disabling preview" -HighlightColor Green(cat "$env:AppData\obs-studio\global.ini")-replace"PreviewEnabled=true","PreviewEnabled=false" | sc "$env:AppData\obs-studio\global.ini" -Force
log "[*]" "Done" -HighlightColor Blue
sleep -Seconds 3
bannergreen
Write-Host " Successfully" -ForegroundColor Green -NoNewline
Write-Host " debloated OBS."
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
$choice=Read-Host
switch($choice){"1"{nvmain}
"2"{nvquit}
default{echo ""
Write-Host " Invalid choice" -ForegroundColor Yellow
sleep -Seconds 1
nvmain}}}
nvmain