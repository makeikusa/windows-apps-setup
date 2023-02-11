
# --- winget ---

$apps = Get-Content .\apps_winget.txt

foreach ($app in $apps) {
    Write-Host "Installing $app..." -ForegroundColor Green
    winget install $app
}


# --- scoop ---

$apps = Get-Content .\apps_scoop.txt

if (!(Test-Path -Path "$env:USERPROFILE\scoop")) {
    # Download the Scoop installer script
    Invoke-WebRequest -Uri 'https://get.scoop.sh' -OutFile "$env:TEMP\scoop_installer.ps1"
    
    # Run the Scoop installer script
    Set-ExecutionPolicy RemoteSigned -Scope Process -Force
    & "$env:TEMP\scoop_installer.ps1"
}

scoop bucket add extras
scoop update

foreach ($app in $apps) {
    Write-Host "Installing $app..." -ForegroundColor Green
    scoop install $app
}