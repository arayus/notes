$apps = @(
'sky'
'Office'
'zun'
'SolitaireCollection'
'StickyNotes'
'Maps'
'Microsoft.Microsoft3DViewer'
'Microsoft.HEIFImageExtension'
'Get'
'Microsoft.MSPaint'
'549981C3F5F10' ## Cortana
'Microsoft.WindowsFeedbackHub'
'Microsoft.BingWeather'
'Microsoft.ScreenSketch'
'Microsoft.WindowsSoundRecorder'
'Microsoft.MixedReality.Portal'
'Microsoft.WindowsCamera'
)

foreach ($app in $apps)
{
    Get-AppxPackage | Where-Object {$_.name -match $app} | Select-Object -Expand 'Name'
    Get-AppxPackage | Where-Object {$_.name -match $app} | Remove-AppxPackage
}

<#
Sample Data:
"scenario=install scenariosubtype=ARP sourcetype=None productstoremove=O365HomePremRetail.16_fr-fr_x-none culture=fr-fr DisplayLevel=False"
#>

$AllLanguages =  "en-us",
                 "zh-cn"

$ClickToRunPath = "C:\Program Files\Common Files\Microsoft Shared\ClickToRun\OfficeClickToRun.exe"
foreach($Language in $AllLanguages)
{
    Start-Process $ClickToRunPath -ArgumentList "scenario=install scenariosubtype=ARP sourcetype=None productstoremove=O365HomePremRetail.16_$($Language)_x-none culture=$($Language) DisplayLevel=False" -Wait
    Start-Sleep -Seconds 5
}