<#
Archivo de Configuracion Personal para PowerShell en Windows 10/11

.SYNOPSIS
    Este es el archivo de configuracion de PowerShell de Quetzal Nocturno

.DESCRIPTION
    Este es un archivo de configuracion en donde se especifica toda la
    configuración de PowerShell para el Sistema Operativo Windows 10/11.
    Aquí se detallan algunas rutas donde se encuentran la configuracion 
    de algunos programas que uso al momento de desarrollar, ya se de
    consola/terminal o de algun editor de estos (Estas rutas pueden ser
    de tipo relativo, dependera mucho de tu sistema operativo y version
    del mismo)

.LINK
    Starship Prompt: https://starship.rs/
    PSReadLine [Texto Predictivo]: https://learn.microsoft.com/es-es/powershell/module/psreadline/about/about_psreadline?view=powershell-7.3
    PSReadLine [Texto Predictivo: Repositorio de Github]: https://github.com/PowerShell/PSReadLine
    Terminal-Icons: https://github.com/devblackops/Terminal-Icons

.NOTES
    Author: Víctor Jesús Torres Ferreyra
    Alias: Quetzal Nocturno
    Github: https://github.com/vjesus-ferreyra
#>

# Alias
Set-Alias -Name chrome -Value 'C:\Program Files\Google\Chrome\Application\chrome.exe'

# Load Configuration of Starship Prompt
$env:STARSHIP_CONFIG = "$env:USERPROFILE\.config\Prompt\Starship\config.toml" # Path of the config file

# Load PSReadLine Configuration
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Chord Ctrl+Alt+d -Function ClearHistory
Set-PSReadLineKeyHandler -Chord Ctrl+d -Function DeleteChar

# Invoke Starship Prompt Configuration
Invoke-Expression (&starship init powershell)

# Import PowerShell Modules
# Terminal-Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Import-Module -Name PSReadLine