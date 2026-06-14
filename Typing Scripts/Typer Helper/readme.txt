Typer Helper;
A revolutionary program for typing letter variations in various languages and alphabets.

This program was made to address the problem of not being able to type
various markings that go on top of and under letters (diacritics) in different languages and alphabets.

Copy and paste the ".json" files inside the "languages" folder to the main program directory.
For example, "C:\Typer Helper", then launch the program "Typer Helper" by picking the 250ms, or 333ms versions.
Press the F12 key and it will give you a menu from where you can select the language or the alphabet you are interested in typing.

The different versions of the program are that one of them requires a fifth of a second to trigger, the other, a quarter of a second.
And the last one requires a third of a second to trigger.

This program, however, does not give you an original way of typing letters.

For example, in the Turkish alphabet, there are the letters (ş) and (ç).
To type these, you would copy the file "Typer-Turkish-Azerbaijani.json" into the program folder.
Then launch the program, press F12 and select "Turkish / Azerbaijani" from the dropdown menu.
Then, hold down the (c) key for a quarter second and you will get the (ç) key.
The program relies on other keys such as (c) on the keyboard to give us these extra keys.

It is also possible to get a second, a third, a fourth or more letters.
For example, in Hungarian, there are o, ó, ö, and ő. They can be typed in this order.

To get the first variation, we hold the (o) key for a quarter second.
The program will delete the (o) letter and give us the (ó) letter.
To get the second one (ö), we tap the (o) key (press it twice), in quick succession and hold it down for a quarter second.
The program will delete the (oo) letters that were typed and type (ö).
To get (ő), we do the same thing but tap once more before holding the key, the program deletes (ooo) and gives us (ő).

This system is revolutionary because the typer will never type the wrong, unwanted key.
Holding the key prevents accidental typing of unwanted letters.
Furthermore, typing different variations simply by changing the number of times the key is tapped makes typing efficient and fast.
There doesn't seem to be a limitation to the taps, however, they become too much after about three.

To disable the program from the dropdown menu, you can select the "-Disable-.json" file.
Selecting "Typer-HoldCapitals.json" makes it so that capital letters are typed by holding them.

NOTES REGARDING THE TYPING OF THE TITTLE
(the dot above the letters i and j):
This can fail dictionary searches and searches for words typed in this way.

VIETNAMESE:
By default, when a diacritic is placed over the letters (i) and (j), the dot that is on top of these letters (tittle) is replaced by the diacritic.
For example, when we add the diacritic, combining tilde on the letter (i), it becomes(ĩ).
However, it may be that the language requires keeping the tittle or the typer may desire to type it that way, such as ( i̇̃ ).
For example, in Vietnamese, we want to write "bi̇̀nh" instead of "bình".
In that case, first, we add the tittle, combining dot above (U+0307), on the letter "dotless i" (ı).
This makes the character look like the letter (i) graphically. Programmatically, it is different.
As I mentioned earlier, using combining diacritics with the letters (i) and (j) removes the tittle.
But we can preserve it by adding it ourselves using this method.
