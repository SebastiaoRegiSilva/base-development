#Refinar esse código depois de testado no meu windows.
#Ver possibilidade de setar o sistema operacional para poder ser útil.
winget install JanDeDobbeleer.OhMyPosh -s winget
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
oh-my-posh get shell
oh-my-posh init pwsh | Invoke-Expression
Get-PoshThemes
Install-Module -Name Terminal-Icons -Repository PSGallery