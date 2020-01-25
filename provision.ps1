Write-Host $args[0]

git clone $args[0]
mkdir -p /root/.config/powershell/
. $PROFILE

pwsh