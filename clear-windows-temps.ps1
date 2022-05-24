# Clearing Windows Temp Folders including users %LOCALAPPDATA% Local temp folders
$tempDirs = @(“C:\Windows\Temp\*”, “C:\Windows\Prefetch\*”, “C:\Users\*\Appdata\Local\Temp\*”)
Remove-Item $tempDirs -Force -Recurse -ErrorAction SilentlyContinue
