## Kalkulaatori skript

## Laseme kasutajal valida kaks numbrit.
[int]$n1 = Read-Host "Enter first number"
[int]$n2 = Read-Host "Enter second number"

## Seame kalkulaatorile nime "Calculator".
Write-Host "Calculator" -ForegroundColor Green

## Paneme paika valikud tehte lahenduseks.
Write-Host "1: Addition" -ForegroundColor Yellow
Write-Host "2: Subtraction" -ForegroundColor Yellow
Write-Host "3: Division" -ForegroundColor Yellow
Write-Host "4: Multiplication" -ForegroundColor Yellow

## Teeme valikukasti, kus kasutaja saab kirjutada numbri, millist valikut ta soovib.
$ch = Read-Host "Enter your choice"

## Koostame erinevad võrrandid, mis rakenduvad valiku tegemisel.
switch($ch)
  {
  ## Liitmistehe
    1
      {
        $s = $n1+$n2
        Write-Host "Sum is : "$s
      }
  ## Lahutustehe
    2
      {
        $s = $n1-$n2
        Write-Host "Difference is : "$s
      }
  ## Jagamine
    3
      {
        $s = $n1/$n2
        Write-Host "Quotient is : "$s
      }
  ## Korrutamine
    4
      {
        $s = $n1*$n2
        Write-Host "Product is : "$s
      }
}
