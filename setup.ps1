$FileNameArray = "gitconfig"

$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path



foreach($FileName in $FileNameArray) {
    
    $fileDest = $env:userprofile+"\."+$FileName
    $fileSrc = $ScriptDIR+"\"+$FileName

    if (Test-Path $fileDest) {
        Remove-Item $fileDest
        echo "Aweseome"
    }

    # new-item -itemtype SymbolicLink or mklink would be nice buuut we need to be admin I guess
    Copy-Item $fileSrc $fileDest

}


