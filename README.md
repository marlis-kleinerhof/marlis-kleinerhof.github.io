# MarLis Website

Statische Website fuer den kleinen Hof **MarLis** (Deutschkreutz, Burgenland).

## Projektziel

Einfache, schnelle Website ohne Backend:

- kein Login
- keine User-Datenbank
- kein Onlineshop

## Aktueller Inhalt

- Hofvorstellung (Martin & Lisa)
- Tierwohl und Haltung
- Wachtelarten:
	- Japanische Legewachteln (Wachtel WG)
	- Celadon Wachteln (Celadonis)
	- Chinesische Zwergwachteln (Zwergenstube)
	- Virginia Wachteln
- Produkte:
	- Wachteleier: 6 Stueck fuer 2,00 EUR
	- Wachteleier: 12 Stueck fuer 3,50 EUR
	- Bruteier (auf Anfrage)
	- Wachteln (auf Anfrage)
	- Zwergwachtel-Eier (auf Anfrage)
- Stammkunden-Stempelpass
- Hoffuehrungen (auf Anfrage)
- Kontakt (Telefon, Instagram, Standort)

## Dateistruktur

```text
marlis/
	index.html
	style.css
	README.md
	img/
		logo.jpg
		*.svg
		galerie/
			foto1.jpg ...
```

## Lokal testen

Nicht direkt per `file://` oeffnen, da Browser lokale `fetch()`-Aufrufe blocken.

## Medienbibliothek pflegen

Die Inhalte bitte in `media-library.json` bearbeiten.

Danach die Laufzeit-Datei mit einem Befehl neu erzeugen:

```bat
sync-media.cmd
```

Das schreibt `media-library.js` neu aus der JSON-Datei.

Am einfachsten mit einem kleinen lokalen Webserver starten:

```bash
python -m http.server 5500
```

Dann im Browser aufrufen:

```text
http://localhost:5500
```

## GitHub Setup (nach Repo-Erstellung)

Wenn dein Remote-Repo schon existiert, verbindest du es so:

```bash
git remote add origin <DEIN_GITHUB_REPO_URL>
git branch -M main
git push -u origin main
```

## Kontakt

- Telefon: 0664 / 42 555 12
- Instagram: @marlis_kleinerhof
- Standort: Deutschkreutz, Burgenland

