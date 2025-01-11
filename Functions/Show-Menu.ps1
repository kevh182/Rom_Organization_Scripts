function Show-Menu

    {
        param (

            [string]$Title = ‘Rom Organization Scripts’
     
        )
     
    
    Write-Host "=========================================================="
    Write-Host “================ $Title ================”
    Write-Host "=========================================================="
    Write-Host ""
    Write-Host “[1] - Region Sort Into Folders (NTSC-U, NTSC-J, PAL, etc)”
    Write-Host “[2] - Sort Files into Folders (0-9, A-Z)”
    Write-Host ""
    Write-Host "=========================================================="
    Write-Host "=========================================================="
    Write-Host “[Q] - Press ‘Q’ to quit.”
    Write-Host "=========================================================="
    Write-Host "=========================================================="
}