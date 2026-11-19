$CsvPath = ".\new_employees.csv"
$LogPath = ".\onboarding.log"

if (-not (Test-Path $CsvPath)) {
    Write-Host "Error: new_employees.csv not found" -ForegroundColor Red
    exit
}

$Users = Import-Csv -Path $CsvPath

foreach ($User in $Users) {
    $FullName = "$($User.FirstName) $($User.LastName)"
    $Line = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') | Created: $FullName | Dept: $($User.Department) | Email: $($User.Email) | Role: $($User.JobTitle)"
    
    Write-Host $Line -ForegroundColor Green
    Add-Content -Path $LogPath -Value $Line
}

Write-Host "Done! Log saved to onboarding.log" -ForegroundColor Cyan