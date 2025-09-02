## Koostame value1 ja value2 jaoks küsimuse.
$value1 = Read-Host "Enter the first value"
$value2 = Read-host "Enter the second value"

## Teeme tingimuse, kus kui esimene value on väiksem, kui teine, siis kuvame teise numbri.

if($value1 -gt $value2)
  {
    Write-Host "The higher number is : "$value1
  }
else
  {
    Write-Host "The higher number is: "$value2
  }