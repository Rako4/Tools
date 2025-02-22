# Ensure script runs with administrative privileges
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Warning "This script requires administrative privileges. Please run as Administrator."
    exit
}

# Log file for tracking changes
$logFile = "$env:TEMP\WindowsTweaks.log"
Start-Transcript -Path $logFile -Append

Write-Output "Starting Windows Tweaks and Debloat Script..."

# ----------------------------
# Menu Options
# ----------------------------
function Show-Menu {
    Clear-Host
    Write-Output @"
=== Windows Tweaks and Debloat Menu ===
1. DISM "Reset Base"
2. Remove Product Key
3. Disable App Launch Tracking
4. Disable Automatic Map Downloads
5. Disable Typing Feedback
6. Disable Ads and Marketing
7. Disable Handwriting Data Collection
8. Disable PowerShell Telemetry
9. Disable Edge Tracking
10. Disable .NET Core CLI Telemetry
11. Remove Old Windows Versions
12. Disable Cloud Sync
13. Disable LAN Hash Storage
14. Disable Backtracking
15. Disable Access to Personal Info
16. Privacy Tab Optimization
17. Clear SRUM Data
18. Disable Activity Feed
19. Disable Device Sensors
20. Disable Game Screen Recording
21. Disable WMDRM Functionality
22. Disable Location Access
23. Disable Website Access (Language)
24. Disable Telemetry & Data Collection
25. Disable Biometrics
26. Disable Windows Insider Program
27. Disable VS Code Data Collection
28. Block Tracking Hosts
29. Remove Bloatware
30. Disable VS Data Collection
31. Disable Reversed Storage
32. Network Security Tweaks
33. Lightshot Debloat
34. BCUninstaller Debloat
35. 7-Zip Debloat
36. L-Connect Debloat
37. Disable Game Screen Recording (Duplicate)
Type 'exit' to quit.
"@
}

# ----------------------------
# Apply Selected Tweaks
# ----------------------------
function Apply-Tweak($option) {
    switch ($option) {
        1 {
            # DISM "Reset Base"
            try {
                Write-Output "Running DISM Reset Base..."
                dism /online /cleanup-image /startcomponentcleanup
                dism /online /cleanup-image /restorehealth
                Write-Output "DISM Reset Base completed."
            } catch {
                Write-Warning "Failed to run DISM Reset Base: $_"
            }
        }
        2 {
            # Remove Product Key
            try {
                Write-Output "Removing Product Key..."
                cscript.exe C:\Windows\System32\slmgr.vbs /upk
                Write-Output "Product Key removed."
            } catch {
                Write-Warning "Failed to remove Product Key: $_"
            }
        }
        3 {
            # Disable App Launch Tracking
            try {
                Write-Output "Disabling App Launch Tracking..."
                Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_TrackProgs" -Value 0
                Write-Output "App Launch Tracking disabled."
            } catch {
                Write-Warning "Failed to disable App Launch Tracking: $_"
            }
        }
        4 {
            # Disable Automatic Map Downloads
            try {
                Write-Output "Disabling Automatic Map Downloads..."
                Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Maps" -Name "AutoDownloadAndUpdateMapData" -Value 0
                Write-Output "Automatic Map Downloads disabled."
            } catch {
                Write-Warning "Failed to disable Automatic Map Downloads: $_"
            }
        }
        5 {
            # Disable Typing Feedback
            try {
                Write-Output "Disabling Typing Feedback..."
                Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Input\TIPC" -Name "Enabled" -Value 0
                Write-Output "Typing Feedback disabled."
            } catch {
                Write-Warning "Failed to disable Typing Feedback: $_"
            }
        }
        6 {
            # Disable Ads and Marketing
            try {
                Write-Output "Disabling Ads and Marketing..."
                Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" -Name "Enabled" -Value 0
                Write-Output "Ads and Marketing disabled."
            } catch {
                Write-Warning "Failed to disable Ads and Marketing: $_"
            }
        }
        7 {
            # Disable Handwriting Data Collection
            try {
                Write-Output "Disabling Handwriting Data Collection..."
                Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Name "HarvestContacts" -Value 0
                Write-Output "Handwriting Data Collection disabled."
            } catch {
                Write-Warning "Failed to disable Handwriting Data Collection: $_"
            }
        }
        8 {
            # Disable PowerShell Telemetry
            try {
                Write-Output "Disabling PowerShell Telemetry..."
                Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell" -Name "EnableScriptBlockLogging" -Value 0
                Write-Output "PowerShell Telemetry disabled."
            } catch {
                Write-Warning "Failed to disable PowerShell Telemetry: $_"
            }
        }
        9 {
            # Disable Edge Tracking
            try {
                Write-Output "Disabling Edge Tracking..."
                Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Edge" -Name "TrackingPrevention" -Value 1
                Write-Output "Edge Tracking disabled."
            } catch {
                Write-Warning "Failed to disable Edge Tracking: $_"
            }
        }
        10 {
            # Disable .NET Core CLI Telemetry
            try {
                Write-Output "Disabling .NET Core CLI Telemetry..."
                [Environment]::SetEnvironmentVariable("DOTNET_CLI_TELEMETRY_OPTOUT", "1", "Machine")
                Write-Output ".NET Core CLI Telemetry disabled."
            } catch {
                Write-Warning "Failed to disable .NET Core CLI Telemetry: $_"
            }
        }
        11 {
            # Remove Old Windows Versions
            try {
                Write-Output "Removing Old Windows Versions..."
                dism /online /cleanup-image /StartComponentCleanup /ResetBase
                Write-Output "Old Windows Versions removed."
            } catch {
                Write-Warning "Failed to remove Old Windows Versions: $_"
            }
        }
        12 {
            # Disable Cloud Sync
            try {
                Write-Output "Disabling Cloud Sync..."
                Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" -Name "SyncPolicy" -Value 0
                Write-Output "Cloud Sync disabled."
            } catch {
                Write-Warning "Failed to disable Cloud Sync: $_"
            }
        }
        13 {
            # Disable LAN Hash Storage
            try {
                Write-Output "Disabling LAN Hash Storage..."
                Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" -Name "DisableDomainCreds" -Value 1
                Write-Output "LAN Hash Storage disabled."
            } catch {
                Write-Warning "Failed to disable LAN Hash Storage: $_"
            }
        }
        14 {
            # Disable Backtracking
            try {
                Write-Output "Disabling Backtracking..."
                Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Group Policy\{35378EAC-683F-11D2-A89A-00C04FBBCFA2}" -Name "NoBackgroundPolicy" -Value 1
                Write-Output "Backtracking disabled."
            } catch {
                Write-Warning "Failed to disable Backtracking: $_"
            }
        }
        15 {
            # Disable Access to Personal Info
            try {
                Write-Output "Disabling Access to Personal Info..."
                Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Value "Deny"
                Write-Output "Access to Personal Info disabled."
            } catch {
                Write-Warning "Failed to disable Access to Personal Info: $_"
            }
        }
        16 {
            # Privacy Tab Optimization
            try {
                Write-Output "Optimizing Privacy Tab..."
                Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" -Name "TailoredExperiencesWithDiagnosticDataEnabled" -Value 0
                Write-Output "Privacy Tab optimized."
            } catch {
                Write-Warning "Failed to optimize Privacy Tab: $_"
            }
        }
        17 {
            # Clear SRUM Data
            try {
                Write-Output "Clearing SRUM Data..."
                Remove-Item -Path "C:\Windows\System32\sru\*" -Recurse -Force
                Write-Output "SRUM Data cleared."
            } catch {
                Write-Warning "Failed to clear SRUM Data: $_"
            }
        }
        18 {
            # Disable Activity Feed
            try {
                Write-Output "Disabling Activity Feed..."
                Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ActivityFeed" -Name "EnableActivityFeed" -Value 0
                Write-Output "Activity Feed disabled."
            } catch {
                Write-Warning "Failed to disable Activity Feed: $_"
            }
        }
        19 {
            # Disable Device Sensors
            try {
                Write-Output "Disabling Device Sensors..."
                $sensors = Get-PnpDevice -Class Sensor | Where-Object { $_.Status -eq "OK" }
                foreach ($sensor in $sensors) {
                    Disable-PnpDevice -InstanceId $sensor.InstanceId -Confirm:$false
                }
                Write-Output "Device Sensors disabled."
            } catch {
                Write-Warning "Failed to disable Device Sensors: $_"
            }
        }
        20 {
            # Disable Game Screen Recording
            try {
                Write-Output "Disabling Game Screen Recording..."
                Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" -Name "AppCaptureEnabled" -Value 0
                Write-Output "Game Screen Recording disabled."
            } catch {
                Write-Warning "Failed to disable Game Screen Recording: $_"
            }
        }
        21 {
            # Disable WMDRM Functionality
            try {
                Write-Output "Disabling WMDRM Functionality..."
                Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WMDRM" -Name "DisableWMDRM" -Value 1
                Write-Output "WMDRM Functionality disabled."
            } catch {
                Write-Warning "Failed to disable WMDRM Functionality: $_"
            }
        }
        22 {
            # Disable Location Access
            try {
                Write-Output "Disabling Location Access..."
                Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Value "Deny"
                Write-Output "Location Access disabled."
            } catch {
                Write-Warning "Failed to disable Location Access: $_"
            }
        }
        23 {
            # Disable Website Access (Language)
            try {
                Write-Output "Disabling Website Access (Language)..."
                Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" -Name "Value" -Value "Deny"
                Write-Output "Website Access (Language) disabled."
            } catch {
                Write-Warning "Failed to disable Website Access (Language): $_"
            }
        }
        24 {
            # Disable Telemetry & Data Collection
            try {
                Write-Output "Disabling Telemetry & Data Collection..."
                Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Value 0
                Write-Output "Telemetry & Data Collection disabled."
            } catch {
                Write-Warning "Failed to disable Telemetry & Data Collection: $_"
            }
        }
        25 {
            # Disable Biometrics
            try {
                Write-Output "Disabling Biometrics..."
                Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Biometrics" -Name "Enabled" -Value 0
                Write-Output "Biometrics disabled."
            } catch {
                Write-Warning "Failed to disable Biometrics: $_"
            }
        }
        26 {
            # Disable Windows Insider Program
            try {
                Write-Output "Disabling Windows Insider Program..."
                Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" -Name "HideInsiderPage" -Value 1
                Write-Output "Windows Insider Program disabled."
            } catch {
                Write-Warning "Failed to disable Windows Insider Program: $_"
            }
        }
        27 {
            # Disable VS Code Data Collection
            try {
                Write-Output "Disabling VS Code Data Collection..."
                Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\VS Code" -Name "TelemetryEnabled" -Value 0
                Write-Output "VS Code Data Collection disabled."
            } catch {
                Write-Warning "Failed to disable VS Code Data Collection: $_"
            }
        }
        28 {
            # Block Tracking Hosts
            try {
                Write-Output "Blocking Tracking Hosts..."
                $hostsFile = "C:\Windows\System32\drivers\etc\hosts"
                $trackingHosts = @(
                    "0.0.0.0 tracking.example.com",
                    "0.0.0.0 ads.example.com",
                    "0.0.0.0 telemetry.example.com"
                )
                Add-Content -Path $hostsFile -Value ($trackingHosts -join "`n")
                Write-Output "Tracking Hosts blocked."
            } catch {
                Write-Warning "Failed to block Tracking Hosts: $_"
            }
        }
        29 {
            # Remove Bloatware
            try {
                Write-Output "Removing Bloatware..."
                $bloatware = @(
                    "Microsoft.3DBuilder",
                    "Microsoft.BingWeather",
                    "Microsoft.GetHelp",
                    "Microsoft.Messaging",
                    "Microsoft.MicrosoftOfficeHub",
                    "Microsoft.MicrosoftSolitaireCollection",
                    "Microsoft.Office.OneNote",
                    "Microsoft.People",
                    "Microsoft.SkypeApp",
                    "Microsoft.WindowsAlarms",
                    "Microsoft.WindowsCamera",
                    "Microsoft.WindowsMaps",
                    "Microsoft.WindowsSoundRecorder",
                    "Microsoft.XboxApp",
                    "Microsoft.ZuneMusic",
                    "Microsoft.ZuneVideo"
                )
                foreach ($app in $bloatware) {
                    Get-AppxPackage -Name $app | Remove-AppxPackage -ErrorAction SilentlyContinue
                }
                Write-Output "Bloatware removed."
            } catch {
                Write-Warning "Failed to remove Bloatware: $_"
            }
        }
        30 {
            # Disable VS Data Collection
            try {
                Write-Output "Disabling VS Data Collection..."
                Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\VisualStudio\Telemetry" -Name "DisableTelemetry" -Value 1
                Write-Output "VS Data Collection disabled."
            } catch {
                Write-Warning "Failed to disable VS Data Collection: $_"
            }
        }
        31 {
            # Disable Reversed Storage
            try {
                Write-Output "Disabling Reversed Storage..."
                Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Storage" -Name "ReversedStorage" -Value 0
                Write-Output "Reversed Storage disabled."
            } catch {
                Write-Warning "Failed to disable Reversed Storage: $_"
            }
        }
        32 {
            # Network Security Tweaks
            try {
                Write-Output "Applying Network Security Tweaks..."
                Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" -Name "DisableIPSourceRouting" -Value 1
                Write-Output "Network Security Tweaks applied."
            } catch {
                Write-Warning "Failed to apply Network Security Tweaks: $_"
            }
        }
        33 {
            # Lightshot Debloat
            try {
                Write-Output "Debloating Lightshot..."
                Remove-Item -Path "C:\Program Files (x86)\Lightshot" -Recurse -Force -ErrorAction SilentlyContinue
                Write-Output "Lightshot Debloated."
            } catch {
                Write-Warning "Failed to debloat Lightshot: $_"
            }
        }
        34 {
            # BCUninstaller Debloat
            try {
                Write-Output "Debloating BCUninstaller..."
                Remove-Item -Path "C:\Program Files\BCUninstaller" -Recurse -Force -ErrorAction SilentlyContinue
                Write-Output "BCUninstaller Debloated."
            } catch {
                Write-Warning "Failed to debloat BCUninstaller: $_"
            }
        }
        35 {
            # 7-Zip Debloat
            try {
                Write-Output "Debloating 7-Zip..."
                Remove-Item -Path "C:\Program Files\7-Zip" -Recurse -Force -ErrorAction SilentlyContinue
                Write-Output "7-Zip Debloated."
            } catch {
                Write-Warning "Failed to debloat 7-Zip: $_"
            }
        }
        36 {
            # L-Connect Debloat
            try {
                Write-Output "Debloating L-Connect..."
                Remove-Item -Path "C:\Program Files (x86)\L-Connect" -Recurse -Force -ErrorAction SilentlyContinue
                Write-Output "L-Connect Debloated."
            } catch {
                Write-Warning "Failed to debloat L-Connect: $_"
            }
        }
        37 {
            # Disable Game Screen Recording (Duplicate)
            try {
                Write-Output "Disabling Game Screen Recording..."
                Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" -Name "AppCaptureEnabled" -Value 0
                Write-Output "Game Screen Recording disabled."
            } catch {
                Write-Warning "Failed to disable Game Screen Recording: $_"
            }
        }
        default {
            Write-Warning "Invalid option: $option"
        }
    }
}

# ----------------------------
# Main Loop
# ----------------------------
while ($true) {
    Show-Menu
    $selection = Read-Host "Enter the number of the tweak you want to apply (or type 'exit' to quit)"
    if ($selection -eq "exit") {
        Write-Output "Exiting script..."
        break
    }
    if ($selection -match "^\d+$" -and [int]$selection -ge 1 -and [int]$selection -le 37) {
        Apply-Tweak $selection
    } else {
        Write-Warning "Invalid input. Please enter a number between 1 and 37 or type 'exit' to quit."
    }
    Read-Host "Press Enter to continue..."
}

# ----------------------------
# Script Completion
# ----------------------------
Write-Output "`nWindows Tweaks and Debloat Script completed."
Stop-Transcript