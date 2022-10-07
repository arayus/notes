## Run powershelle script in powershell
```powershell
Set-ExecutionPolicy RemoteSigned
```

## Get windows feature list
```powershell
Dism /online /Get-Features
```

## Grep app by key
```powershell
Get-AppxPackage | Where-Object {$_.name -match "Microsoft"} | Select-Object -ExpandProperty Name
```

## Get command from
```powershell
Get-Command echo
```
