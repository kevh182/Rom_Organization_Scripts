** Backup your data before use **

You will have to change the PowerShell execution policy on your machine for these scripts to work.

More info on changing your PowerShell execution policy:

https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-5.1

https://ss64.com/ps/set-executionpolicy.html

Alternatively, you could just copy the text of these scripts and paste it into Windows PowerShell ISE (or any text editor) and save it with a .ps1 extension.

"RegionSort.ps1" - Sort files based on region tag in the "Redump" or "No-Intro" filename.
  - (BIOS) --> BIOS
  - (Demo) --> Demo
  - (Program) --> Program
  - (USA),(World),(Canada),(Mexico) --> NTSC-U
  - (Japan),(Asia), (Korea), (Hong Kong), (China), (Taiwan) --> NTSC-J
  - (Europe), (Germany), (Poland), (Belgium), (United Kingdom), (UK), (Italy), (France), (Spain), (Sweden), (Scandinavia), (Netherlands), (Russia), (Denmark), (Greece), (Australia), (Brazil), (Argentina), (Portugal), (Latin America), (India)--> PAL

"SortFilesIntoFolders.ps1" - Moves files into folders --> #, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X. Y, Z
