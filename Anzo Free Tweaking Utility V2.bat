@echo  off
title Anzo Free Tweaking Utility V2
chcp 65001 >nu1
color 9
:: Check for Admin Privileges.
fltmc >nul 2>&1
if not %errorlevel% == 0 (
    powershell -Command "Write-Host 'Anzo Utility is required to be run as *Administrator.*' -ForegroundColor White" 
echo.
    powershell -Command "Write-Host 'Please Click *Yes* to the following prompt!' -ForegroundColor White" 
    timeout 3 > nul
    PowerShell Start -Verb RunAs '%0'
    exit /b 0
)
echo. 
echo. 
echo.                                   
echo.                                   %p%░██╗░░░░░░░██╗███████╗██╗░░░░░░█████╗░░█████╗░███╗░░░███╗███████╗░
echo.                                   %p%░██║░░██╗░░██║██╔════╝██║░░░░░██╔══██╗██╔══██╗████╗░████║██╔════╝░
echo.                                   %p%░╚██╗████╗██╔╝█████╗░░██║░░░░░██║░░╚═╝██║░░██║██╔████╔██║█████╗░░░
echo.                                   %p%░░████╔═████║░██╔══╝░░██║░░░░░██║░░██╗██║░░██║██║╚██╔╝██║██╔══╝░░░
echo.                                   %p%░░╚██╔╝░╚██╔╝░███████╗███████╗╚█████╔╝╚█████╔╝██║░╚═╝░██║███████╗░
echo.                                   %p%░░░╚═╝░░░╚═╝░░╚══════╝╚══════╝░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚══════╝░
echo.                 %b%"══════════════════════════════════════════════════════════════════════════════════════════════════"%w%                                                                                                  
echo.                                                  %w%  Made by Anzo Tweaks® 2025         
echo.                                                                                                   
echo.
echo.                      I am not responsible for any problems/Damages with your pc this may cause (this barely happens)
echo.
echo.                         Its prohibited to resell any of my free tools, in doing so will result in consequences.
echo.
echo.                         Press a Number on your keyboard followed by clicking you enter key to select an option
echo.
echo.                         Please Read All warnings, popups etc... dont just blindly press buttons without reading.
echo.
echo.                 %b%"═══════════════════════════════════════════════════════════════════════════════════════════════════"
echo.
echo.
echo.                                                %w%    Press any key to continue...
pause >nul                                                           
:: Execute the VBScript to show the pop-up from C:\temp
cscript //nologo "C:\temp\popup.vbs"

:: Delete the temporary VBScript from C:\temp
del "C:\temp\popup.vbs"

::Disable UAC
Reg.exe ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f > nul

:: Enable ANSI Escape Sequences
Reg.exe add "HKCU\CONSOLE" /v "VirtualTerminalLevel" /t REG_DWORD /d "1" /f  > nul

::Enable Delayed Expansion
setlocal EnableDelayedExpansion > nul
cls 
goto main

:main
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.       %p%                █████╗ ███╗   ██╗███████╗ ██████╗     ███████╗██████╗ ███████╗███████╗    ██╗   ██╗████████╗██╗██╗     ██╗████████╗██╗   ██╗
echo.       %p%               ██╔══██╗████╗  ██║╚══███╔╝██╔═══██╗    ██╔════╝██╔══██╗██╔════╝██╔════╝    ██║   ██║╚══██╔══╝██║██║     ██║╚══██╔══╝╚██╗ ██╔╝                  
echo.       %p%               ███████║██╔██╗ ██║  ███╔╝ ██║   ██║    █████╗  ██████╔╝█████╗  █████╗      ██║   ██║   ██║   ██║██║     ██║   ██║    ╚████╔╝ 
echo.       %p%               ██╔══██║██║╚██╗██║ ███╔╝  ██║   ██║    ██╔══╝  ██╔══██╗██╔══╝  ██╔══╝      ██║   ██║   ██║   ██║██║     ██║   ██║     ╚██╔╝  
echo.       %p%               ██║  ██║██║ ╚████║███████╗╚██████╔╝    ██║     ██║  ██║███████╗███████╗    ╚██████╔╝   ██║   ██║███████╗██║   ██║      ██║   
echo.       %p%               ╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝ ╚═════╝     ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝     ╚═════╝    ╚═╝   ╚═╝╚══════╝╚═╝   ╚═╝      ╚═╝ 
echo.       %b%═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════                                                                         
echo.
echo.
echo. %w%                                                  [1] Create Restore Point  [2] Windows Tweaks   
echo. %w%
echo. %w%                                                  [3] Startup App           [4] Cleaner
echo. %w%   
echo. %w%                                                  [5] Debloat               [6] CPU Tweaks
echo. %w%                                                         
echo. %w%                                                  [7] Menu Kill Time        [8] Power Plan
echo. %w%
echo. %w%
echo. %w%
echo. %w%                                                   [D] Discord   [X] Exit   [T] Tutorial
    

echo.
echo.
echo.
echo.
set /p choice="Choose an option:"

if "%choice%"=="1" goto restore
if "%choice%"=="2" goto windows
if "%choice%"=="3" goto startup
if "%choice%"=="4" goto cleanup
if "%choice%"=="5" goto debloat
if "%choice%"=="6" goto cpu
if "%choice%"=="7" goto menuk
if "%choice%"=="8" goto power
if "%choice%"=="x" goto exit
if "%choice%"=="d" goto discord1
if "%choice%"=="t" goto tutorial1
goto main


:menuk
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "2000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" /f

echo.
echo.
pause 
cls
goto main

:restore
cls
echo Creating a restore point...
powershell.exe -Command "Checkpoint-Computer -Description 'Anzo Free V2' -RestorePointType 'MODIFY_SETTINGS'"
echo Restore point created.
pause
goto main

:windows
cls
echo.
echo               ██╗    ██╗██╗███╗   ██╗██████╗  ██████╗ ██╗    ██╗███████╗
echo               ██║    ██║██║████╗  ██║██╔══██╗██╔═══██╗██║    ██║██╔════╝
echo               ██║ █╗ ██║██║██╔██╗ ██║██║  ██║██║   ██║██║ █╗ ██║███████╗
echo               ██║███╗██║██║██║╚██╗██║██║  ██║██║   ██║██║███╗██║╚════██║
echo               ╚███╔███╔╝██║██║ ╚████║██████╔╝╚██████╔╝╚███╔███╔╝███████║
echo                ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚══════╝                                                       
echo          -------------------------------------------------------------------
echo.
echo      		    [1] Apply           [2] What does this do?
echo.
echo                              [x] Menu
echo.
echo.
set /p choice="Choose an option (1, 2, x): "

if "%choice%"=="1" goto apply
if "%choice%"=="2" goto windowswhat
if "%choice%"=="x" goto main
goto tweaks




:windowswhat
echo This changes windows telemtry, data collection settings, notifications, user experience bloatware, and changes windows visual performance settings.
pause
goto windows

:apply
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DoReport" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Microsoft\FTH" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MicrosoftEdgeElevationService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdatem" /v "Start" /t REG_DWORD /d "4" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\MicrosoftEdgeUpdateTaskMachineCore" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\MicrosoftEdgeUpdateTaskMachineUA" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "StartupBoostEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "BackgroundModeEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\gupdate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\gupdatem" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v "UseDpiScaling" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Multimedia\Audio" /v "User DuckingPreference" /t REG_DWORD /d "3" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\BootAnimation" /v "DisableStartupSound" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "ctfmon" /t REG_SZ /d "C:\Windows\System32\ctfmon.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\VideoSettings" /v "VideoQualityOnBattery" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f
reg add "HKCU\Control Panel\Desktop" /v "User PreferencesMask" /t REG_EXPAND_SZ /d "ነ考" /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "AlwaysHibernateThumbnails" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "IconsOnly" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f 
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\safer\codeidentifiers" /v "authenticodeenabled" /t REG_DWORD /d "0" /f 
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d "1" /f 
reg add "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /v "HasAccepted" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
reg add "HKU\S-1-5-20\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings" /v "DownloadMode" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUser Activities" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUser Activities" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUser Disabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DownloadMode" /t REG_DWORD /d "0" /f
echo.
echo.
echo.
echo.
echo Windows Settings Fully Optimized
pause
goto main




:power
cls
echo.
echo           ██████╗ ██╗      █████╗ ███╗   ██╗
echo           ██╔══██╗██║     ██╔══██╗████╗  ██║
echo           ██████╔╝██║     ███████║██╔██╗ ██║
echo           ██╔═══╝ ██║     ██╔══██║██║╚██╗██║
echo           ██║     ███████╗██║  ██║██║ ╚████║
echo           ╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝
echo     ---------------------------------------------
echo.
echo                   [1] Power Plan
echo.
echo                     [x] Menu
echo.
set /p choice="Choose an option:"
if "%choice%"=="1" goto plan
if "%choice%"=="X" goto main
if "%choice%"=="x" goto main


:plan
:: Create a VBScript to show a pop-up window in C:\temp
echo MsgBox "SELECT ULTIMATE PERFORMANCE POWER PLAN CHECK UNDER ADDITIONAL PLANS IF IT DOESN'T SHOW UP", 0, "READ" > "C:\temp\popup.vbs"

:: Execute the VBScript to show the pop-up from C:\temp
cscript //nologo "C:\temp\popup.vbs"

echo.
echo [-] Applying ultimate power plan 
echo.

powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
echo.
echo.  Power Plan Made Succesfully     
pause
cls
goto main

:debloat
cls
echo.
echo.
echo.
echo            ██████╗ ███████╗██████╗ ██╗      ██████╗  █████╗ ████████╗
echo            ██╔══██╗██╔════╝██╔══██╗██║     ██╔═══██╗██╔══██╗╚══██╔══╝
echo            ██║  ██║█████╗  ██████╔╝██║     ██║   ██║███████║   ██║   
echo            ██║  ██║██╔══╝  ██╔══██╗██║     ██║   ██║██╔══██║   ██║   
echo            ██████╔╝███████╗██████╔╝███████╗╚██████╔╝██║  ██║   ██║   
echo            ╚═════╝ ╚══════╝╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝                                                            
echo.         ----------------------------------------------------------------                                                                                                                                                    
echo.                                    
echo.                    [0] What Does This Uninstall?
echo.                                                         
echo.                  [1] Debloat        [2] Reinstall
echo.
echo.                                                           
echo.                  Type "X" to go back to the menu
echo.

set /p input=: 
if /i %input% == 0 goto deb0
if /i %input% == 1 goto deb1
if /i %input% == 2 goto deb2
if /i %input% == x goto main

:deb0
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Uninstalls 3D Builder, Alarms and Clock, Calendar and Mail, Camera, Groove Music, Movies & TV, OneNote, People, Photos, Solitaire Collection, Sticky Notes, Xbox app, Xbox Game Bar, Xbox Console Companion, Paint 3D, Your Phone, Mixed Reality Portal.', 'Anzo Free Tweaking Panel', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
goto debloat

:deb2
cls
:: Reinstall 3D Builder
powershell -Command "Get-AppxPackage -AllUsers *3dbuilder* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Alarms and Clock
powershell -Command "Get-AppxPackage -AllUsers *windowsalarms* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Calendar and Mail
powershell -Command "Get-AppxPackage -AllUsers *windowscommunicationsapps* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Camera
powershell -Command "Get-AppxPackage -AllUsers *windowscamera* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Groove Music
powershell -Command "Get-AppxPackage -AllUsers *zunemusic* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Movies & TV
powershell -Command "Get-AppxPackage -AllUsers *zunevideo* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall OneNote
powershell -Command "Get-AppxPackage -AllUsers *onenote* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall People
powershell -Command "Get-AppxPackage -AllUsers *people* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Photos
powershell -Command "Get-AppxPackage -AllUsers *photos* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Solitaire Collection
powershell -Command "Get-AppxPackage -AllUsers *solitairecollection* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Sticky Notes
powershell -Command "Get-AppxPackage -AllUsers *stickynotes* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Xbox app
powershell -Command "Get-AppxPackage -AllUsers *xboxapp* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Xbox Game Bar
powershell -Command "Get-AppxPackage -AllUsers *gamingoverlay* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Xbox Console Companion
powershell -Command "Get-AppxPackage -AllUsers *xbox* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Paint 3D
powershell -Command "Get-AppxPackage -AllUsers *paint3d* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Your Phone
powershell -Command "Get-AppxPackage -AllUsers *yourphone* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Mixed Reality Portal
powershell -Command "Get-AppxPackage -AllUsers *holographic* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

echo Reinstalled Apps Click Any Key to Continue...
pause

:deb1
cls
:: Uninstall 3D Builder
powershell -Command "Get-AppxPackage *3dbuilder* | Remove-AppxPackage"
:: Uninstall Alarms and Clock
powershell -Command "Get-AppxPackage *windowsalarms* | Remove-AppxPackage"
:: Uninstall Calendar and Mail
powershell -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage"
:: Uninstall Camera
powershell -Command "Get-AppxPackage *windowscamera* | Remove-AppxPackage"
:: Uninstall Groove Music
powershell -Command "Get-AppxPackage *zunemusic* | Remove-AppxPackage"
:: Uninstall Movies & TV
powershell -Command "Get-AppxPackage *zunevideo* | Remove-AppxPackage"
:: Uninstall OneNote
powershell -Command "Get-AppxPackage *onenote* | Remove-AppxPackage"
:: Uninstall People
powershell -Command "Get-AppxPackage *people* | Remove-AppxPackage"
:: Uninstall Photos
powershell -Command "Get-AppxPackage *photos* | Remove-AppxPackage"
:: Uninstall Solitaire Collection
powershell -Command "Get-AppxPackage *solitairecollection* | Remove-AppxPackage"
:: Uninstall Sticky Notes
powershell -Command "Get-AppxPackage *stickynotes* | Remove-AppxPackage"
:: Uninstall Xbox app
powershell -Command "Get-AppxPackage *xboxapp* | Remove-AppxPackage"
:: Uninstall Xbox Game Bar
powershell -Command "Get-AppxPackage *gamingoverlay* | Remove-AppxPackage"
:: Uninstall Xbox Console Companion
powershell -Command "Get-AppxPackage *xbox* | Remove-AppxPackage"
:: Uninstall Paint 3D
powershell -Command "Get-AppxPackage *paint3d* | Remove-AppxPackage"
:: Uninstall Your Phone
powershell -Command "Get-AppxPackage *yourphone* | Remove-AppxPackage"
:: Uninstall Mixed Reality Portal
powershell -Command "Get-AppxPackage *holographic* | Remove-AppxPackage"

echo.
echo.
echo.
echo.
echo.
echo.
echo Successfully uninstalled press any key to continue!
pause
goto main

cls

     

:startup
@echo off
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Go to startup and disable everything', 'Anzo Free Tweaking Panel', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
start taskmgr

goto main          


:tutorial1
start https://www.youtube.com/watch?v=qwUG-RtFdh8
cls
goto :main


:discord1
start https://dsc.gg/anzotweaks
cls
goto :main

:cleanup
@echo on
:: Delete all log files in the current directory and its subdirectories
del /a /s /q *.log

:: Remove all files from the Windows temp directory
del /s /f /q C:\Windows\Temp\*.*

:: Clear the Prefetch folder
del /s /f /q C:\Windows\Prefetch\*

:: Clear the temporary files in the user's temp directory
del /s /f /q %temp%\*.*

:: Flush the DNS cache
ipconfig /flushdns

:: Stop Windows Update services
net stop wuauserv
net stop UsoSvc

:: Remove the SoftwareDistribution folder and recreate it
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution

:: Remove all files from the user's temp directory and recreate it
rd /s /q %temp%
mkdir %temp%

:: Take ownership of the temp directories
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y

:: Remove the Windows Temp directory and recreate it
rd /s /q C:\Windows\Temp
mkdir C:\Windows\Temp

:: Take ownership of the Windows Temp directory again
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y

:: Delete temporary files and folders using the deltree command
deltree /y C:\Windows\Temp\*
deltree /y C:\Windows\Temp
deltree /y C:\Windows\Tmp
deltree /y C:\Windows\FF*.tmp
deltree /y C:\Windows\History
deltree /y C:\Windows\Cookies
deltree /y C:\Windows\Recent
deltree /y C:\Windows\Spool\Printers
@echo off
cls
echo.
echo Cleaned All Temp Files
echo.  
pause
cls
goto main

:cpu
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\943c8cb6-6f93-4227-ad87-e9a3feec08d1" /v "Attributes" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\2a737441-1930-4402-8d77-b2bebba308a3\d4e98f31-5ffe-4ce1-be31-1b38b384c009\DefaultPowerSchemeValues\381b4222-f694-41f0-9685-ff5bb260df2e" /v "ACSettingIndex" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\2a737441-1930-4402-8d77-b2bebba308a3\d4e98f31-5ffe-4ce1-be31-1b38b384c009\DefaultPowerSchemeValues\381b4222-f694-41f0-9685-ff5bb260df2e" /v "DCSettingIndex" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\2a737441-1930-4402-8d77-b2bebba308a3\d4e98f31-5ffe-4ce1-be31-1b38b384c009\DefaultPowerSchemeValues\8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" /v "ACSettingIndex" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb\DefaultPowerSchemeValues\381b4222-f694-41f0-9685-ff5bb260df2e" /v "ACSettingIndex" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb\DefaultPowerSchemeValues\381b4222-f694-41f0-9685-ff5bb260df2e" /v "DCSettingIndex" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb\DefaultPowerSchemeValues\8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" /v "ACSettingIndex" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "AllowPepPerfStates" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Cstates" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Capabilities" /t REG_DWORD /d "516198" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Class1InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy" /v "fDisablePowerManagement" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PDC\Activators\Default\VetoPolicy" /v "EA:EnergySaverEngaged" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PDC\Activators\28\VetoPolicy" /v "EA:PowerStateDischarging" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Misc" /v "DeviceIdlePolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "PerfEnergyPreference" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "PerfEnergyPreference" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMinCores" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMaxCores" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMinCores1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMaxCores1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CpLatencyHintUnpark1" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPDistribution" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CpLatencyHintUnpark" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "MaxPerformance1" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "MaxPerformance" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPDistribution1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPHEADROOM" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\PowerCfg\GlobalPowerPolicy" /v "Policies" /t REG_BINARY /d "01000000020000000100000000000000020000000000000000000000000000002c0100003232030304000000040000000000000000000000840300002c01000000000000840300000001646464640000" /f
Reg.exe add "HKCU\Control Panel\PowerCfg\GlobalPowerPolicy" /v "Policies" /t REG_BINARY /d "01000000020000000100000000000000020000000000000000000000000000002c0100003232030304000000040000000000000000000000840300002c01000000000000840300000001646464640000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Cstates" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Capabilities" /t REG_DWORD /d "516198" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Class1InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
@echo off
cls
echo.
echo   CPU Tweaks Applied
echo.  
pause
cls
goto main


