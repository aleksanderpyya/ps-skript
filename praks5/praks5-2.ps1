## Saame teada, mis failid asuvad asukohas "C:\temp\test"
Get-ChildItem -Path "C:\temp\test"

## Teeme variable-d faili, suuruse KB ja suuruse MB kohta.
$file = Get-ChildItem -Path "C:\temp\test" | where {$_.Name -like "*.csv"} | Select Name,Length
$sizeinKB = $file.Length/1KB
$sizeinMB = $file.Length/1MB

## Kuvame need andmed kasutajale. `n on vaja panna FileName ette, et tekitada space Get-ChildItemi ja Write-Hosti vahel.
Write-Host "`nFileName : "$file.Name
Write-Host "Size in KB : "$sizeinKB
Write-Host "Size in MB : "$sizeinMB