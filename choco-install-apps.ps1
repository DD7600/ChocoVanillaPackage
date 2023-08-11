# ------------- App hashtables ("dictionaries") -----------------

# Modify this to you linking. Just un-comment or comment (#) software you want to have / don't want to have.
# For further instructions see:  https://github.com/Var7600/Your-Windows-dev-Tools

$packagesDev = @{
# --- Toys ---
    powertoys='';
    autohotkey='';
# --- Editor , IDE , reader ---
    '7zip'='';
    notepadplusplus=''; 
    notepadplusplus.install=''; 
    bluefish=''; 
    vim='--params="/NoDesktopShortcut"'; 
    codeblocks=''; 
    eclipse=''; 
    apache-netbeans.portable='';
   # vlc=''; 
   # irfanview='';
   # irfanviewplugins='';
    adobereader='--params="/UpdateMode:4"';
    okular='';
    #foxitreader='--ia="/MERGETASKS=!desktopicon,!displayinbrowser /COMPONENTS=*pdfviewer,*ffse,*installprint,!ffaddin,*ffspellcheck,!connectedpdf.!installprint\wordaddin,!installprint\pptaddin,!installprint\exceladdin /DIR=D:\Programme\choco\foxitreader"';

# --- Browsers ---
    googlechrome='--params="/NoDesktopShortcut /NoTaskbarShortcut"';
    #firefox='--params="/l:de /NoDesktopShortcut /RemoveDistributionDir"';
    opera='--params="/NoDesktopShortcut /NoTaskbarShortcut"';
    brave='--params="/NoDesktopShortcut /NoTaskbarShortcut"';
    Waterfox='--params="/NoDesktopShortcut /NoTaskbarShortcut"' ;
    vivaldi='--params="/NoDesktopShortcut /NoTaskbarShortcut"' ;
    min.portable='--params="/NoDesktopShortcut /NoTaskbarShortcut"' ;

# --- File Sync Tools  ---
    #dropbox='';
    #googledrive='';

# --- Collaboration Tools ---
    zoom='';    
    #'microsoft-teams'='';
    discord='';

# --- System administration ---
    chocolateygui='';    
    #windirstat='';
    #teamviewer='';
    #'cpu-z.install'='';
    #'freecommander-xe.install'='';

# --- Crypto & PassWord ---
    #keepass='';
    veracrypt='';
    
    # --- Tools ---
    git='';
    Wget='';
    curl='';
    make='';
    maven='';
    nsis='';
    checksum='';
    md5='';
    OpenSSL.Light='';
    cppcheck='';
    doxygen.install.server='';
    filezilla='--params="/NoDesktopIcon /NoQuicklaunchIcon"';
    filezilla.server='--params="/NoDesktopIcon /NoQuicklaunchIcon"';
    tor='';
    umbrello.install='';
    modelio='--params="/NoDesktopIcon"';
    zeal='--params="/NoDesktopIcon /NoQuicklaunchIcon"';
    logisim-evolution='';
    javadecompiler-gui='';
    ditto='';
    
    #'github-desktop'='';
    #sourcetree='';

# --- API Clients ---
    #postman='';
    #'insomnia-rest-api-client'='';

# --- Cloud & Server ---
    #'azure-cli'='';
    #'aws-vault'='';
    XAMPP='';

# --- programming Languages ---
    miniconda3='--params="/InstallationType:JustMe /AddToPath:1 /RegisterPython:1"'; 
    openjdk='';
    mingw='';
    make='';
    php='';
    R.project='';
    python3='';    
    nodejs.install='';
    dotnetcore-sdk='';
    golang='';
    
# --- DataBase --
    mysql='';
# --- Recovery Tools --
    testdisk-photorec='';
# --- Code metrics --
    sourcemonitor='';
# --- Math & plot & calculator
    qalculate='';
    gnuplot.portable='';
        
} 

# --------------------- Script start ---------------------------
Write-Host "`n --- The CHOCO  PACKAGE --- " -ForegroundColor black -BackgroundColor white
Write-Host "https://github.com/Var7600/Your-Windows-dev-Tools `n" -ForegroundColor green

$Break = $False
Do{
    switch (Read-Host "install Dev packages ? press v to install or press e to exit"){
    
    # b { $packToInstall = $packagesBasic; $Break = $True}
    v { $packToInstall = $packagesDev; $Break = $True}
    e { exit }

    default {  Write-Host "Wrong input. Plase provide the character 'b' or 'v'. Select 'e' for exit." -ForegroundColor red  }
    }
} While ($Break -eq $False)


ForEach($key in $packToInstall.Keys){
    if ($packToInstall[$key]) {
        choco install $key -y $packToInstall[$key]   
    } 
    else {
        # Default installer
        choco install $key -y  
    }
}