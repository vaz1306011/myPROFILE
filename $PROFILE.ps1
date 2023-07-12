Import-Module PoShFuck
Import-Module ZLocation
Import-Module posh-git
oh-my-posh init pwsh --config "M:\程式\Oh-My-Posh主題\amro.omp.json" | Invoke-Expression

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
