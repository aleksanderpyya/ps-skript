﻿## Koostame valiku erinevatest riikidest.
Write-Host "Select Country" -ForegroundColor Yellow
Write-Host "1 : India" -ForegroundColor Cyan
Write-Host "2 : Australia" -ForegroundColor Cyan
Write-Host "3 : China" -ForegroundColor Cyan

## Teeme kasutajale valikuvõimaluse lahtri.
$choice = Read-Host "Please select country"

## Teeme tingimuse, et erinevate riikide pealinnad kattuksid valitud riigiga.
if($choice -eq "1")
    {
      Write-Host "India's capital is New Delhi" -ForegroundColor Green
    }
elseif($choice -eq "2")
    {
      Write-Host "Australia's capital is Canberra" -ForegroundColor Green
    }
elseif($choice -eq "3")
    {
      Write-Host "China's capital is Beijing" -ForegroundColor Green
    }
## Teeme veel tingimuse lisaks, kui vale numbri paned, siis ütleb "wrong choice".
else
    {
      Write-Host "Wrong choice" -ForegroundColor Red
    }