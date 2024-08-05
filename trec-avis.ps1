Add-Type -AssemblyName PresentationCore,PresentationFramework;
Add-Type -AssemblyName System.Speech
$synth = New-Object -TypeName System.Speech.Synthesis.SpeechSynthesizer
$synth.Speak("Hey $env:USERNAME, estas jaqueado!")

#[System.Windows.MessageBox]::Show("Hola, aquest missatge $([char]0x00E9)s part del treball de recerca de Joan. Si us plau, torna l'USB a consergeria. Gr$([char]0x00E0)cies per participar-hi!!!","Trec J04n");
