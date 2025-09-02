## Teeme skripti, kui Notepad töötab ilmuvad teated "Notepad is running" seni kuni selle kinni panen .
while(Get-Process Notepad -ErrorAction SilentlyContinue)
  {
   Write-Host "Notepad is running"
  }