function Show-QuickManual {
    Write-Host "
    
    Quick Aliases:
        
        eth
            - Gets network adapter information
        
        rr
            - Restarts/re-runs the current PowerShell session
        
        zd
            - Quickly jumps to directories using Zoxide
        
        c
            - Clears the console screen
        
        e/nv
            - Opens the Neovim text editor
        
        k
            - Opens Visual Studio Code
        
        np
            - Opens Notepad
        
        sd
            - Shuts down the computer
        
        rb
            - Restarts the computer
        
        lnx
            - Opens the Windows Subsystem for Linux
        
        lD
            - Gets information about drives/volumes
    "
}


function Show-NavigationManual {
    Write-Host "
    Navigation:

        ~
            - Changes directory to the user's home directory
        
        q
            - Closes the PowerShell session
        
        to <location>
            - Changes directory to the specified location
        
        ex <location>
            - Opens Windows Explorer at the specified path, or current directory if no path is given
        
        dk
            - Changes directory to the Desktop
        
        pc
            - Changes directory to the Pictures folder
        
        dn
            - Changes directory to the Downloads folder
        
        dc
            - Changes directory to the Documents folder
    
    "
}


function Show-WingetManual {
    Write-Host "
    Winget (Package Management):
        
        w-s <name>
            - Searches for packages using Winget
        
        w-i <name>
            - Installs a package using Winget
        
        w-u <name>
            - Upgrades a package using Winget
        
        w-l <name>
            - Lists installed packages using Winget
        
        w-r <name>
            - Uninstalls a package using Winget
        
        w-u-a
            - Upgrades all packages using Winget

    "
}


function Show-EditingManual {
    Write-Host "
    Editing & Module Management:
        
        e-al
            - Opens the PowerShell profile file in Neovim
        
        e-nv
            - Opens the Neovim configuration file
        
        e-ml <module>
            - Opens the specified PowerShell module file in Neovim
        
        i-ml <module>
            - Imports the specified PowerShell module
        
        c-ml <module>
            - Displays the contents of the specified PowerShell module file

    "
}


function Show-FileHandlingManual {
    Write-Host "

    File Handling:
                
        touch <file>
            - Creates an empty file
        
        df
            - Gets information about drives/volumes
        
        ll
            - Lists files in the current directory
        
        la
            - Lists hidden files in the current directory

    "
}


function Show-TextSearchManual {
    Write-Host "

    Text & File Search:
        
        grep <regex> [<directory>]
            - Searches for a regex in files (recursive, in the specified directory or current directory)
        
        ff <name>
            - Finds files containing <name> (recursive)

    "
}


function Show-UtilitiesManual {
    Write-Host "

    Utilities:
            
        unzip [<file> <destination>]
            - Extracts zip files (defaults to *.zip and current directory)
        
        which <name>
            - Shows the path to a command
        
        unalias
            - Removes all aliases for the current session


    "
}



# Exported function to display manual
function Show-AdbManual {
    Write-Host '

    ADB Functions
    
        adb <command> 
            - Runs ADB without needing the full path

        gdb 
            - Runs the `uad_gui-windows` executable

        adb-r <package_name> 
            - Removes an installed package for user 0

        doit 
            - Hides the gesture navigation bar on the device

        adb-r-a 
            - Removes multiple pre-installed apps (bloatware) for user 0

'
}




# Wi-Fi and Network Utilities Manual
function Show-NetworkManual {
    Write-Host '

    Network Utilities
            
        nw-l
            - Lists all saved Wi-Fi networks

        nw-pw <name>
            - Displays the password of a saved Wi-Fi network

        ipv4-s
            - Shows basic network configuration (IPv4 address)

        flush-dns
            - Clears the DNS cache

        nw-connect <name>
            - Connects to a specific Wi-Fi network

        nw-forget <name>
            - Removes a saved Wi-Fi network

        ipv6-s
            - Shows IPv6 network configuration

        mac-s
            - Displays the MAC address of your network adapter

        ping-test <host>
            - Tests connectivity to a specific host (e.g., google.com)

        traceroute <host>
            - Traces the route to a specific host

        netstat-a
            - Displays all active network connections


    '
}


function Show-CondaManual {
    Write-Host '

    Conda Management:

        ca <name>
            - Activates a Conda environment

        cd
            - Deactivates the current Conda environment

        cl
            - Lists all installed packages in the current Conda environment

        cel
            - Lists all available Conda environments

        ci <name>
            - Installs a package using Conda

        cu <name>
            - Updates specific Conda package

        cua
            - Updates all Conda packages

        cr <name>
            - Removes a package using Conda

        cs <name>
            - Searches for a package in Conda repositories

        cc
            - Cleans all Conda caches and temporary files

    '
}


function Show-PipManual {
    Write-Host '

    Pip Management:

        pi <name>
            - Installs a package using Pip

        pu <name>
            - Uninstalls a package using Pip

        pl
            - Lists all installed packages using Pip

        ps <name>
            - Searches for a package in the Pip repository

        pfr
            - Freezes the current environment’s installed packages into `requirements.txt`

        pir
            - Installs packages from `requirements.txt`

    '
}


function Show-PythonManual {
    Write-Host '

    Python Commands:

        py-v
            - Displays the Python version

        py-V
            - Displays the Python version (alternative command)

        py-c-env <name>
            - Creates a new virtual environment using Python’s built-in venv module
    '
}

function Show-JupyterManual {
    Write-Host '

    Jupyter Notebook & Lab:

        nb
            - Launches Jupyter Notebook

        lb
            - Launches Jupyter Lab

    '
}

Set-Alias sm-quick Show-QuickManual
Set-Alias sm-nav Show-NavigationManual      
Set-Alias sm-winget Show-WingetManual
Set-Alias sm-edit Show-EditingManual
Set-Alias sm-file Show-FileHandlingManual
Set-Alias sm-text Show-TextSearchManual
Set-Alias sm-util Show-UtilitiesManual

Set-Alias sm-conda Show-CondaManual
Set-Alias sm-pip Show-PipManual
Set-Alias sm-py Show-PythonManual
Set-Alias sm-jup Show-JupyterManual

Set-Alias sm-adb Show-AdbManual
Set-Alias sm-nw Show-NetworkManual

function l-sm {
    Write-Host "
    Main Modules:
        sm-quick   -   Quick Aliases
        sm-nav     -   Navigation
        sm-winget  -   Winget
        sm-edit    -   Editing & Module Management
        sm-file    -   File Handling
        sm-text    -   Text & File Search
        sm-util    -   Utilities

    Python Modules:
        sm-conda  -   Conda Management
        sm-pip    -   Pip Management
        sm-py     -   Python Commands
        sm-jup    -   Jupyter Notebook & Lab

    Additional Modules:
        sm-adb     -   ADB Functions
        sm-nw      -   Network Utilities
    "
}

