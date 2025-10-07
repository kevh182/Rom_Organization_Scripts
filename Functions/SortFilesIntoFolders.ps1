function SortFilesIntoFolders {

    $ErrorActionPreference = "SilentlyContinue"

            Write-Host "==========================================================" -ForegroundColor DarkYellow
            Write-Host " Sort Files Into Folders (# - Z) " -ForegroundColor DarkYellow
            Write-Host "==========================================================" -ForegroundColor DarkYellow

            # Set the source folder path
            $sourceFolder = Read-Host "Enter ROM Path"

            # Get all folders in the source folder
            $folders = Get-ChildItem -Path $sourceFolder

                # Loop through each folder and move it to the appropriate folder

                foreach ($folder in $folders) {

                    # Get the first character of the folder name
                    $firstCharacter = $folder.Name.Substring(0, 1)

                        # Determine the destination folder based on the first character
                        if ($firstCharacter -match "[0-9]") {

                            $destinationPath = Join-Path $sourceFolder "#"

                        } else {

                            $destinationPath = Join-Path $sourceFolder $firstCharacter.ToUpper()
                        }

                    # Create the destination folder if it doesn't exist
                    if (!(Test-Path $destinationPath)) {

                        New-Item -ItemType Directory -Path $destinationPath
                    }

                    # Move the folders to the destination folder
                    Move-Item -Path $folder.FullName -Destination $destinationPath
                }
}