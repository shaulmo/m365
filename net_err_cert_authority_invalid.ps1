# Make sure to run with ISE 
cd C:\
certutil.exe -generateSSTFromWU roots.sst
$sstWU = ( Get-ChildItem -Path C:\roots.sst )
$sstWU | Import-Certificate -CertStoreLocation Cert:\LocalMachine\Root
