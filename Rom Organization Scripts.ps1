Import-Module ".\Functions\Show-Menu.ps1"
Import-Module ".\Functions\RegionSort.ps1"
Import-Module ".\Functions\SortFilesIntoFolders.ps1"
Import-Module ".\Functions\Create_Folders_From_Filenames.ps1"

do {
     Show-Menu
     
     Write-Host ""

     $input = Read-Host “Make a Selection”

     switch ($input)
     
     {
           ‘1’ {

                RegionSort

           } ‘2’ {

                SortFilesIntoFolders
                
           }‘3’ {

                FoldersFromFiles
           } ‘q’ {

                return
           }
     }

} until ($input -eq ‘q’)