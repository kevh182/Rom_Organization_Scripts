function FoldersFromFiles {

    $ErrorActionPreference = "SilentlyContinue"

    Write-Host "==========================================================" -ForegroundColor DarkYellow
    Write-Host " Create Folders from Filenames " -ForegroundColor DarkYellow
    Write-Host "==========================================================" -ForegroundColor DarkYellow

    # Set the path to the directory containing your files
    $sourcePath = Read-Host "Enter ROM Path"

    # Get a list of files in the directory
    $fileList = Get-ChildItem -Path $sourcePath -Recurse
        
    # Iterate through each file
    foreach ($file in $fileList) {

        # Create a folder with the file name (without extension)
        $folderName = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
        $folderPath = Join-Path -Path $sourcePath -ChildPath $folderName

        New-Item -ItemType Directory -Path $folderPath -Force

        Start-Sleep 1

        # Move the file into the corresponding folder
        Move-Item -Path $file.FullName -Destination $folderPath

      }
}