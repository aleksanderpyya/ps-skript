## Saame praegu käiva programmi kohta infot - nimi ja id.
Get-Process | ?{$_.ProcessName -eq "notepad"} | Select ProcessName,Id

## Lihtsam võimalus, kuidas seda teha.
Get-Process Notepad | Select ProcessName,Id