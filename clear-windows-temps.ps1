# Clearing Windows Temp Folders including users %LOCALAPPDATA% Local temp folders
# Make sure to run with ISE | Ignores errors with files already in use **
$tmpDirs = @(“C:\Windows\Temp\*”, “C:\Windows\Prefetch\*”, “C:\Documents and Settings\*\Local Settings\temp\*”, “C:\Users\*\Appdata\Local\Temp\*”)
Remove-Item $tmpDirs -Force -Recurse -ErrorAction SilentlyContinue
