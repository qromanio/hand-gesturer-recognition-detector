# Enable Windows Long Path Support
# This script must be run as Administrator

Write-Host "Enabling Windows Long Path Support..." -ForegroundColor Yellow

try {
    New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem" -Name "LongPathsEnabled" -Value 1 -PropertyType DWORD -Force | Out-Null
    
    Write-Host "SUCCESS: Long Path Support has been enabled!" -ForegroundColor Green
    Write-Host ""
    Write-Host "IMPORTANT: You may need to restart your computer for changes to take effect." -ForegroundColor Cyan
    Write-Host ""
    Write-Host "After restart, run: pip install tensorflow==2.16.1 --user" -ForegroundColor Yellow
    Write-Host "Then run: python app.py" -ForegroundColor Yellow
}
catch {
    Write-Host "ERROR: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host ""
    Write-Host "Make sure you run this script as Administrator:" -ForegroundColor Yellow
    Write-Host "Right-click PowerShell and select Run as Administrator" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Script execution completed."
