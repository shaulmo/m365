# Sometimes updates and cache files causes issues with the Teams apps in an enterprise environment.

# Stopping Teams Process, Doesn't show Error if Teams is already not running.
Stop-Process -Name Teams -ErrorAction SilentlyContinue
# Clearing Known Cache folders for all users in the Windows PC Host.
Get-ChildItem "C:\Users\*\AppData\Roaming\Microsoft\Teams\*" -directory | Where name -in ('application cache','blob_storage','cache', 'databases','GPUcache','IndexedDB','Local Storage','tmp') | ForEach{Remove-Item $_.FullName -Recurse -Force}
