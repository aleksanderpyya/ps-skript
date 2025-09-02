## Teeme erinevad grupid.
$groups = @("Red","Green","Yellow","Blue")

## Teeme sellise võrrandi, et iga number/õpilane saab suvalise värvi.
$result = @()
for($i = 1 ; $i-le 20 ; $i++)
  {
    $g = Get-Random $groups
    $temp = [PSCustomObject]@{
      RollNumber = $i
      Group = $g
       }
    $result += $temp
  }
$result