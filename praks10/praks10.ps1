## Teeme sarnase skripti nagu praks 9s, ainult et kasutame käsku "until".

## Teeme sarnase skripti nagu eelmises praksis, kuid seekord näitame ka ära mitu korda tuli teavitus "Notepad is running".
$ct1 = 0

## Alustame tsüklit, mis kestab seni, kuni Notepad ei tööta.
do
{
$ch = $null
$ch = Get-Process | ?{$_.name -like "note*"}
if($ch -ne $null)
{$ct2 = 2
Write-Host "Notepad is running"
Start-Sleep -Seconds 1
$ct1++
}
else
{$ct2 = 1}
}
## Tsükkel kestab seni, kuni $ct2 saab väärtuseks 1.
until($ct2 -eq 1)

## Näeme, mitu korda Notepad töötas järjest.
$ct1