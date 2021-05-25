# oh my posh
$global:DefaultUser = [System.Environment]::UserName
Import-Module posh-git
Import-Module oh-my-posh
# Set-Theme Powerlevel10k-Classic
Set-Theme paradox
# Set-PSReadlineKeyHandler -Key Tab -Function Complete

Import-Module PSReadLine

# Shows navigable menu of all options when hitting Tab
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Autocompleteion for Arrow keys
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History


# Add terminal icons
Import-Module -Name Terminal-Icons

