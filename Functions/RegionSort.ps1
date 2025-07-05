function RegionSort {

        Write-Host "==========================================================" -ForegroundColor DarkYellow
        Write-Host " Region Sort " -ForegroundColor DarkYellow
        Write-Host "==========================================================" -ForegroundColor DarkYellow

        # Enter ROM Path
        $path = Read-Host "Enter ROM Path"

        # Change directory to path
        pushd $path

    # BIOS Rom Folder

        $biosFolder = "$path\BIOS"

        # Expected tags for BIOS
        $biosRoms = dir $path | Where-Object { $_.Name -match "\S(?i)\bBIOS\b\S"}

            if($biosRoms.exists){


                if(!(Test-Path $biosFolder)){

                    Write-Host "BIOS Roms Found" -ForegroundColor DarkGreen

                    # Create BIOS folder
                    Write-Host "Creating BIOS Directory" -ForegroundColor DarkGreen

                    New-Item -Path $path -Name "BIOS" -ItemType "directory"

                }

                # Move BIOS Roms to BIOS folder
                Write-Host "Moving BIOS Roms to BIOS folder" -ForegroundColor DarkGreen
                $biosRoms | Move-Item -Destination $biosFolder -Force

            }

    # Beta Rom Folder

        $betaFolder = "$path\Beta"

        # Expected tags for Beta
        $betaRoms = dir $path | Where-Object { $_.Name -match "\(Beta\)" -or $_.Name -match "\(Beta \S\)" }

            if($betaRoms.exists){


                if(!(Test-Path $betaFolder)){

                    Write-Host "Beta Roms Found" -ForegroundColor DarkGreen

                    # Create Beta folder
                    Write-Host "Creating Beta Directory" -ForegroundColor DarkGreen
                    New-Item -Path $path -Name "Beta" -ItemType "directory"

                }

                # Move Beta Roms to Beta folder
                Write-Host "Moving Beta Roms to Beta folder" -ForegroundColor DarkGreen

                $betaRoms | Move-Item -Destination $betaFolder -Force

        }

    # Program Rom Folder

        $programFolder = "$path\Program"

        # Expected tags for Program
        $programRoms = dir $path -file | Where-Object { $_.Name -match "\(Program\)" }

        if($programRoms.exists){

            if(!(Test-Path $programFolder)){

                Write-Host "Program Roms Found" -ForegroundColor DarkGreen

                # Create Program folder
                Write-Host "Creating Program Rom Directory" -ForegroundColor DarkGreen

                New-Item -Path $path -Name "Program" -ItemType "directory"

            }
        
            # Move Program Roms to Program folder
            Write-Host "Moving Program Roms to Program folder" -ForegroundColor DarkGreen

            $programRoms | Move-Item -Destination $programFolder -Force


            }

    # Aftermarket Rom Folder

        $AftermarketFolder = "$path\Aftermarket"

        # Expected tags for Aftermarket
        $AftermarketRoms = dir $path | Where-Object { $_.Name -match "\(Aftermarket\)" }

            if($AftermarketRoms.exists){


                if(!(Test-Path $AftermarketFolder)){

                    Write-Host "Aftermarket Roms Found" -ForegroundColor DarkGreen

                    # Create Aftermarket folder
                    Write-Host "Creating Aftermarket Directory" -ForegroundColor DarkGreen

                    New-Item -Path $path -Name "Aftermarket" -ItemType "directory"

                }

                # Move Aftermarket Roms to Aftermarket folder
                Write-Host "Moving Aftermarket Roms to Aftermarket folder" -ForegroundColor DarkGreen

                $AftermarketRoms | Move-Item -Destination $AftermarketFolder -Force

        }

    # Prototype Rom Folder

        $PrototypeFolder = "$path\Prototype"

        # Expected tags for Prototype
        $PrototypeRoms = dir $path | Where-Object { $_.Name -match "\(Prototype\)" -or $_.Name -match "\(Proto\)" -or $_.Name -match "\(Proto \S\)"}

            if($PrototypeRoms.exists){


                if(!(Test-Path $PrototypeFolder)){

                    Write-Host "Prototype Roms Found" -ForegroundColor DarkGreen

                    # Create Prototype folder
                    Write-Host "Creating Prototype Directory" -ForegroundColor DarkGreen

                    New-Item -Path $path -Name "Prototype" -ItemType "directory"

                }

                # Move Prototype Roms to Prototype folder
                Write-Host "Moving Prototype Roms to Prototype folder" -ForegroundColor DarkGreen

                $PrototypeRoms | Move-Item -Destination $PrototypeFolder -Force

        }

    # Unlicensed Rom Folder

        $UnlicensedFolder = "$path\Unlicensed"

        # Expected tags for Unlicensed
        $UnlicensedRoms = dir $path | Where-Object { $_.Name -match "\(Unlicensed\)" -or $_.Name -match "\(Unl\)"}

            if($UnlicensedRoms.exists){


                if(!(Test-Path $UnlicensedFolder)){

                    Write-Host "Unlicensed Roms Found" -ForegroundColor DarkGreen

                    # Create Unlicensed folder
                    Write-Host "Creating Unlicensed Directory" -ForegroundColor DarkGreen

                    New-Item -Path $path -Name "Unlicensed" -ItemType "directory"

                }

                # Move Unlicensed Roms to Unlicensed folder
                Write-Host "Moving Unlicensed Roms to Unlicensed folder" -ForegroundColor DarkGreen

                $UnlicensedRoms | Move-Item -Destination $UnlicensedFolder -Force

        }

    # Pirate Rom Folder

        $PirateFolder = "$path\Pirate"

        # Expected tags for Pirate
        $PirateRoms = dir $path | Where-Object { $_.Name -match "\(Pirate\)"}

            if($PirateRoms.exists){


                if(!(Test-Path $PirateFolder)){

                    Write-Host "Pirate Roms Found" -ForegroundColor DarkGreen

                    # Create Pirate folder
                    Write-Host "Creating Pirate Directory" -ForegroundColor DarkGreen

                    New-Item -Path $path -Name "Pirate" -ItemType "directory"

                }

                # Move Pirate Roms to Pirate folder
                Write-Host "Moving Pirate Roms to Pirate folder" -ForegroundColor DarkGreen
                $PirateRoms | Move-Item -Destination $PirateFolder -Force

        }
    # Sample Rom Folder

        $SampleFolder = "$path\Sample"

        # Expected tags for Sample
        $SampleRoms = dir $path | Where-Object { $_.Name -match "\(Sample\)"}

            if($SampleRoms.exists){


                if(!(Test-Path $SampleFolder)){

                    Write-Host "Sample Roms Found" -ForegroundColor DarkGreen

                    # Create Sample folder
                    Write-Host "Creating Sample Directory" -ForegroundColor DarkGreen
                    New-Item -Path $path -Name "Sample" -ItemType "directory"

                }

                # Move Sample Roms to Sample folder
                Write-Host "Moving Sample Roms to Sample folder" -ForegroundColor DarkGreen

                $SampleRoms | Move-Item -Destination $SampleFolder -Force

        }

    # Demo Rom Folder

        $demoFolder = "$path\Demo"

        # Expected tags for Demo
        $demoRoms = dir $path -file | Where-Object { $_.Name -match "\(Demo\)" -or $_.Name -match "\(Demo \S\)"}

        if($demoRoms.exists){


            if(!(Test-Path $demoFolder)){

                Write-Host "Demo Roms Found" -ForegroundColor DarkGreen

                # Create Demo folder
                Write-Host "Creating Demo Directory" -ForegroundColor DarkGreen

                New-Item -Path $path -Name "Demo" -ItemType "directory"

            }

                
            # Move Demo Roms to Demo folder
            Write-Host "Moving Demo Roms to Demo folder"
            $demoRoms | Move-Item -Destination $demoFolder -Force

        }

    # NTSC-U Rom Folder

        $NAFolder = "$path\NTSC-U"

        # Expected tags for NTSC-U
        $NARoms = dir $path | Where-Object { $_.Name -match "\(USA\)" -or $_.Name -match "\(USA, Europe, Brazil\)" -or $_.Name -match "\(USA, Asia\)" -or $_.Name -match "\(USA, Europe\)" -or` 
        $_.Name -match "\(USA, Korea\)" -or $_.Name -match "\(Japan, USA, Korea\)" -or $_.Name -match "\(USA, Europe, Korea\)" -or $_.Name -match "\(USA, Australia\)" -or $_.Name -match "\(USA, Brazil\)" -or` 
        $_.Name -match "\(Japan, USA\)" -or $_.Name -match "\(World\)" -or $_.Name -match "\(Canada\)" -or $_.Name -match "\(Mexico\)" -or $_.Name -match "\(Unknown\)" -or $_.Name -match "\(USA, Japan\)" -or`
        $_.Name -match "\(USA, Canada\)" -or $_.Name -match "\(USA, Germany\)"}

        if($NARoms.exists){

            if(!(Test-Path $NAFolder)){

                Write-Host "NTSC-U Roms Found" -ForegroundColor DarkGreen

                # Create NTSC-U folder
                Write-Host "Creating NTSC-U Rom Directory" -ForegroundColor DarkGreen

                New-Item -Path $path -Name "NTSC-U" -ItemType "directory"

            }

                # Move NTSC-U Roms to NTSC-U folder
                Write-Host "Moving NTSC-U Roms to NTSC-U folder" -ForegroundColor DarkGreen
                $NARoms | Move-Item -Destination $NAFolder -Force

        }

    # NTSC-J Rom Folder

        $NTSCJFolder = "$path\NTSC-J"

        # Expected tags for NTSC-J
        $NTSCJRoms = dir $path | Where-Object { $_.Name -match "\(Japan\)" -or $_.Name -match "\(Japan, Brazil\)" -or $_.Name -match "\(Japan, Hong Kong\)" -or` 
        $_.Name -match "\(Japan, Europe, Brazil\)" -or $_.Name -match "\(Japan, USA, Brazil\)" -or $_.Name -match "\(Japan, Europe\)" -or $_.Name -match "\(Japan, Europe, Korea\)" -or` 
        $_.Name -match "\(Japan, Korea\)" -or $_.Name -match "\(Asia\)" -or $_.Name -match "\(Korea\)" -or $_.Name -match "\(Hong Kong\)" -or $_.Name -match "\(China\)" -or $_.Name -match "\(Taiwan\)" -or`
        $_.Name -match "\((Japan, Asia)\)" }

        if($NTSCJRoms.exists){

            if(!(Test-Path $NTSCJFolder)){

                Write-Host "Japan Roms Found" -ForegroundColor DarkGreen

                # Create NTSC-J folder
                Write-Host "Creating NTSC-J Rom Directory" -ForegroundColor DarkGreen
                New-Item -Path $path -Name "NTSC-J" -ItemType "directory"

            }

            # Move NTSC-J Roms to NTSC-J folder
            Write-Host "Moving NTSC-J Roms to NTSC-J folder" -ForegroundColor DarkGreen
            $NTSCJRoms | Move-Item -Destination $NTSCJFolder -Force

        }

    # PAL Rom Folder

        $PALFolder = "$path\PAL"

        # Expected tags for PAL
        $PALRoms = dir $path | Where-Object { $_.Name -match "\(Europe\)" -or $_.Name -match "\(Brazil, Portugal\)" -or $_.Name -match "\(Brazil, Spain\)" -or $_.Name -match "\(Europe, Korea\)" -or` 
        $_.Name -match "\(Europe, Brazil\)" -or $_.Name -match "\(Brazil, Mexico\)" -or $_.Name -match "\(Australia, Greece\)" -or $_.Name -match "\(Europe, Asia\)" -or $_.Name -match "\(Europe, Australia\)" -or`
        $_.Name -match "\(Germany\)" -or $_.Name -match "\(Poland\)" -or $_.Name -match "\(Belgium\)" -or $_.Name -match "\(United Kingdom\)" -or $_.Name -match "\(UK\)" -or $_.Name -match "\(Italy\)" -or`
        $_.Name -match "\(France\)" -or $_.Name -match "\(Spain\)" -or $_.Name -match "\(Sweden\)" -or $_.Name -match "\(Scandinavia\)" -or $_.Name -match "\(Netherlands\)" -or $_.Name -match "\(Russia\)" -or`
        $_.Name -match "\(Denmark\)" -or $_.Name -match "\(Greece\)" -or $_.Name -match "\(Australia\)" -or $_.Name -match "\(Brazil\)" -or $_.Name -match "\(Argentina\)" -or $_.Name -match "\(Portugal\)" -or`
        $_.Name -match "\(Latin America\)" -or $_.Name -match "\(India\)" -or $_.Name -match "\(Switzerland\)" -or $_.Name -match "\(Austria\)" -or $_.Name -match "\(Turkey\)" -or $_.Name -match "\(Belgium, Netherlands\)" -or`
        $_.Name -match "\(Austria, Switzerland\)" -or $_.Name -match "\(Finland\)" -or $_.Name -match "\(Norway\)" -or $_.Name -match "\(UK, Australia\)" -or $_.Name -match "\(South Africa\)" -or $_.Name -match "\(Europe, Germany\)" -or`
        $_.Name -match "\(Export\)"}

            if($PALRoms.exists){

                if(!(Test-Path $PALFolder)){

                    Write-Host "PAL Roms Found" -ForegroundColor DarkGreen

                    # Create PAL folder
                    Write-Host "Creating PAL Rom Directory" -ForegroundColor DarkGreen
                    New-Item -Path $path -Name "PAL" -ItemType "directory"

                }

        
            # Move PAL Roms to PAL folder
            Write-Host "Moving PAL Roms to PAL folder" -ForegroundColor DarkGreen
            $PALRoms | Move-Item -Destination $PALFolder -Force


        }
}