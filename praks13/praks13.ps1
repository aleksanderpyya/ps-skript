## Teeme funktsiooni, mis kuvab põhimenüü ja tagastab kasutaja valiku.
function mainmenu
  {
    ## Kuvame programmi nime ja menüü
    Write-Host "`t`t`tArea Calculator" -ForegroundColor Green
    Write-Host "`n`t`t`tMain Menu" -ForegroundColor Yellow
    Write-Host "`nPlease select the option to perform the respective task`n" -ForegroundColor Yellow

    ## Kuvame valikud
    Write-Host "1: Area of Square" -ForegroundColor Green
    Write-Host "2: Area of Rectangle" -ForegroundColor Green
    Write-Host "3: Area of Circle" -ForegroundColor Green
    Write-Host "4: Area of Triangle" -ForegroundColor Green
    Write-Host "5: Exit`n" -ForegroundColor Green

    ## Küsime kasutajalt valikut
    $choice = Read-Host "Enter your choice"
    return $choice
  }


## Funktsioon, mis küsib pärast arvutust, mida kasutaja tahab edasi teha.
function checkmenu
  {
    ## Kuvame valikud pärast arvutust
    Write-Host "`n`nPlease select the next option" -ForegroundColor Yellow
    Write-Host "`n1: Return to Main Menu" -ForegroundColor Green
    Write-Host "2: Exit`n" -ForegroundColor Green

    ## Küsime kasutajalt valikut
    $ch2 = Read-Host "Enter your choice"
    if($ch2 -eq "1")
      {
        continue ## Tagasi põhimenüüsse
      }
    if($ch2 -eq "2")
      {
        exit  ## Programmi lõpetamine
      }
    else
      {
        # Vigane sisend, küsime uuesti valikut
        Write-Host "`nEnter correct option" -ForegroundColor Red
        checkmenu
      }
  }


## Funktsioon: ruudu pindala arvutamine
function square
  {
    cls ## Puhastame ekraani
    Write-Host "`t`t`tArea of Square`n" -ForegroundColor Green
    [int]$side = Read-Host "Enter the side of the square" ## Külje pikkus
    $area = $side * $side  ## Pindala arvutus
    Write-Host "`nArea of the square : "$area -ForegroundColor Green  ## Tulemuse kuvamine

    checkmenu ## Pärast arvutust küsib, mida edasi teha
  }

## Funktsioon: ristküliku pindala arvutamine
function rectangle
  {
    cls
    Write-Host "`t`tArea of Rectangle`n" -ForegroundColor Green
    [int]$length = Read-Host "Enter length of the rectangle" ## Küsi pikkus
    [int]$breadth = Read-Host "Enter breadth of the rectangle" ## Küsi laius
    $area = $length * $breadth  ## Arvuta pindala
    Write-Host "`nArea of the rectangle : "$area -ForegroundColor Green  ## Kuvame tulemuse

    checkmenu
  }


## Funktsioon: ringi pindala arvutamine
function circle
  {
    cls
    Write-Host "`t`tArea of Circle`n" -ForegroundColor Green
    [int]$radius = Read-Host "Enter the radius of the circle"  ## Küsi raadius
    $area = 3.14*$radius*$radius  ## Arvuta pindala (3.14 = pi)
    Write-Host "`nArea of the circle : "$area -ForegroundColor Green  ## Kuvame tulemuse

    checkmenu
  }


## Funktsioon: kolmnurga pindala arvutamine
function triangle
  {
    cls
    Write-Host "`t`tArea of Triangle`n" -ForegroundColor Green
    [int]$height = Read-Host "Enter height of triangle"  ## Küsi kõrgus
    [int]$base = Read-Host "Enter base of triangle"  ## Küsi alus
    $area = 0.5*$height*$base  ## Arvuta pindala
    Write-Host "`nArea of Triangle : "$area -ForegroundColor Green  ## Kuvame tulemuse

    checkmenu
  }


## Kuvab menüü, käivitab valiku ja töötab seni kuni kasutaja valib "Exit"
do
  {
    cls
    $ch1 = mainmenu  ## Kuvame põhimenüü ja loeme valiku


    ## Valiku põhjal käivitame vastava funktsiooni
    switch($ch1)
     {
      1
        {
          cls
          square
          checkmenu
        }
      2
        {
          cls
          rectangle
          checkmenu
        }
     3
       {
         cls
         circle
         checkmenu
       }
     4
       {
         cls
         triangle
         checkmenu
       }
    }
}while($ch1 -ne "5")  ## Tsükkel kestab, kuni valitakse "Exit"