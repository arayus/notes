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
'Microsoft.XboxIdentityProvider'
'Microsoft.XboxSpeechToTextOverlay'
'Microsoft.XboxGamingOverlay'
'Microsoft.XboxGameOverlay'
'Microsoft.XboxApp'
'Microsoft.Xbox.TCUI'
'Microsoft.YourPhone'
)

foreach ($app in $apps)
{
    Get-AppxPackage | Where-Object {$_.name -match $app} | Select-Object -Expand 'Name'
    Get-AppxPackage | Where-Object {$_.name -match $app} | Remove-AppxPackage
}

