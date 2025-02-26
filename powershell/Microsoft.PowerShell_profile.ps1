# Initialize Oh My Posh and Zoxide
#(@(& '~/AppData/Local/Programs/oh-my-posh/bin/oh-my-posh.exe' init pwsh --config='~\AppData\Local\Programs\oh-my-posh\themes\amro.omp.json' --print) -join "`n") | Invoke-Expression
Invoke-Expression (& { (zoxide init powershell | Out-String) })


# Aliases
Set-Alias eth get-netadapter
Set-Alias rr powershell
Set-Alias zd z
Set-Alias c clear
Set-Alias e nvim
Set-Alias k code
Set-Alias nm nvim
Set-Alias np notepad
Set-Alias sd stop-computer
Set-Alias rb restart-computer
Set-Alias lnx wsl
Set-Alias lD get-volume
function q { exit }




# Navigation Functions
function ~ { Set-Location ~ }
function to ($loc) { Set-Location $loc }
function ex { param([string]$Path = "./") explorer $Path }
function dk { Set-Location ~\Desktop }
function pc { Set-Location ~\Pictures }
function dn { Set-Location ~\Downloads }
function dc { Set-Location ~\Documents }


# Winget Package Management
function ws ($name) { winget search $name }
function wi ($name) { winget install $name }
function wii ($name) { winget install $name.$name }
function wu ($name) { winget upgrade $name }
function wuu ($name) { winget upgrade $name.$name }
function wl ($name) { winget list $name }
function wr ($name) { winget remove $name }
function wua { winget upgrade --all }


# Editing & Module Management
function e-al { nvim $PROFILE }
function e-nv { nvim $HOME\AppData\Local\nvim\init.vim }
function e-ml { param($m) nvim "$HOME\Documents\WindowsPowershell\$m.psm1" }
function i-ml { 
    param($m) import-module -DisableNameChecking "$HOME\Documents\WindowsPowershell\$m.psm1" }
function c-ml { param($m) cat "$HOME\Documents\WindowsPowershell\$m.psm1" }


# File Handling
function touch { param($f) "" | Out-File $f -Encoding ASCII }
function df { get-volume }
function ll { Get-ChildItem -Path $pwd -File }
function la { Get-ChildItem -attributes Hidden }


# Text Search & File Search
function grep($regex, $dir) {
    if ( $dir ) {
        Get-ChildItem $dir | select-string $regex
        return
    }
    $input | select-string $regex
}
function ff {
    param($name)
    Get-ChildItem -Recurse -Filter "*${name}*" -ErrorAction SilentlyContinue | ForEach-Object {
        Write-Output "$($_.directory)\$($_.Name)"
    }
}


# Utilities
function unzip {
    param($file = "*.zip", $dest = $pwd)
    Write-Output "Extracting $file to $dest"
    Expand-Archive -Path (Get-Item $file).FullName -DestinationPath $dest -Force
}

function which { param($name) (Get-Command $name).Source }

function unalias {
    Get-Alias | ForEach-Object { Remove-Item -Path Alias:\$_ -ErrorAction SilentlyContinue }
    Write-Host "All aliases have been removed for this session." -ForegroundColor Green
}

function ps2 {
    function global:Prompt {
    $cwd = Split-Path -Leaf (Get-Location)
    "$cwd> "
    }
}

Clear-Host
i-ml man

