# Alias
Set-Alias -Name chrome -Value 'C:\Program Files\Google\Chrome\Application\chrome.exe'
Set-Alias -Name xampp -Value 'C:\xampp\xampp-control.exe'

# Prompt
Invoke-Expression (&starship init powershell)
$env:STARSHIP_CONFIG = "$env:USERPROFILE\.config\Prompt\Starship\config.toml"