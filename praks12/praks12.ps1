## Teenuste oleku jälgimise skript.


## Teeme funktsiooni, mille kaudu näeme, mitu teenust on töötavas olekus.
function countstart
  {
    $start = Get-Service | ?{$_.Status -eq "Running"}
    Write-Host "Total services in running state = "$start.count
  }


## Funktsioon, mille kaudu näeme, mitu teenust on peatunud olekus.
function countstop
  {
    $stop = Get-Service | ?{$_.Status -eq "Stopped"}
    Write-Host "Total services in stopped state = "$stop.count
  }

countstart

countstop