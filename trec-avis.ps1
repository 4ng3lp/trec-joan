Add-Type -AssemblyName PresentationCore,PresentationFramework;
Add-Type -AssemblyName System.Speech
$synth = New-Object -TypeName System.Speech.Synthesis.SpeechSynthesizer
$synth.Speak("Hoooolaaaa $env:USERNAME, ¿Eres abogado? El que tengo aquí colgado!")

#[System.Windows.MessageBox]::Show("Hola, aquest missatge $([char]0x00E9)s part del treball de recerca de Joan. Si us plau, torna l'USB a consergeria. Gr$([char]0x00E0)cies per participar-hi!!!","Trec J04n");
