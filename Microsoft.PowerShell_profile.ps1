$env:PSModulePath = $env:PSModulePath + ":/root/powershell-scripts/Modules/"

Get-ChildItem /root/*.psm1 -Recurse | ForEach-Object { Import-Module $_.FullName }