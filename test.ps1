### Skript zur automatischen Kopierung der Signatur von Laufwerk K:\signatur zu  Laufwerk C:\Users\{username}\AppData\Roaming\Microsoft\ 
### Deployment:
###     Button im Aurum, welcher Skript über CMD startet. Hierzu muss das Skript auf einem erreichbaren Speicherplatz liegen. Es wird das Everyone (I) Laufwerk gewählt.
###
###
###


### Username wird gebraucht für Zielpfad.
$username = $env:USERPROFILE.Split("\")[2]
$signature_path = "G:\signatur\test.html"
$destination_path = "C:\Users\" + $username + "\AppData\Roaming\Microsoft\test.html"

### es muss die Email-Adresse hinzugefügt werden zum File-Name, damit Outlook die Signatur der Email zuweisen kann.


### kopieren:
Copy-Item -Path $signature_path -Destination $destination_path -Recurse -Force -ErrorAction Continue
###
