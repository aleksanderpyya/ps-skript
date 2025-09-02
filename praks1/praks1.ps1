## Alustame array 1 ja array 2 loomisest
$array1 = @(1,2,3)
$array2 = @(4,5,6)

## Jätame array 3 tühjana, et sinna liita array 1 ja array 2 väärtused.
$array3 = @()

## Teeme valemi, mis liidab array 1 ja array 2 esimese väärtuse.
$array3 += $array1[0] + $array2[0]
$array3 += $array1[1] + $array2[1]
$array3 += $array1[2] + $array2[2]


## Näeme lõpu vastust.
Write-Host "Array1: $array1"
Write-Host "Array2: $array2"
Write-Host "Array3: $array3"