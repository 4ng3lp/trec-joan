Add-Type -AssemblyName PresentationCore,PresentationFramework;
#[System.Windows.MessageBox]::Show("Hola, aquest missatge $([char]0x00E9)s part del treball de recerca de Joan. Si us plau, torna l'USB a consergeria. Gr$([char]0x00E0)cies per participar-hi!!!","Trec J04n");
while ($true) {
    $vol = Get-Random -Minimum 0 -Maximum 100
    Set-Volume -Volume $vol
    Start-Sleep -Seconds 5
}
