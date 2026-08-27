# Nuovo cliente in 5 minuti

Zero redirect. Zero nuovo dominio. Zero EasyPanel.

## Link che mandi al cliente

```
https://sitoprima.online/NOME/
```

Esempio: `https://sitoprima.online/luigi/`

---

## Metodo veloce (script)

Apri PowerShell nella cartella del progetto:

```powershell
cd "C:\Users\Ilyas\Desktop\sitoprima-demos"

.\new-client.ps1 -Nome "luigi" -BusinessName "Trattoria Luigi" -Tipo "Ristorante" -Citta "Roma"
```

Poi pubblica:

```powershell
git add luigi
git commit -m "Add demo: Trattoria Luigi"
git push
```

Aspetta 2–3 minuti. Apri `https://sitoprima.online/luigi/`

---

## Metodo manuale (senza script)

1. Copia cartella `_template/` → rinomina in `luigi/`
2. Apri `luigi/index.html` e sostituisci i testi (cerca `{{` per i placeholder se usi template grezzo, oppure modifica direttamente)
3. Cambia foto: sostituisci i link Unsplash con altre immagini
4. Cambia numero WhatsApp nel link `wa.me/39...`
5. Push su GitHub (vedi comandi sopra)
6. Aggiungi link in `index.html` (homepage SitoPrima) se vuoi

---

## Cosa personalizzare per ogni cliente

| Campo | Esempio |
|---|---|
| Nome cartella | `luigi` (minuscolo, senza spazi) |
| Nome attività | Trattoria Luigi |
| Tipo | Ristorante, dentista, barbiere… |
| Città | Roma |
| Titolo hero | "Sapori autentici, ogni giorno." |
| WhatsApp | 393XXXXXXXXX |
| Colori | cambia `--brand` nel CSS |
| Foto | link Unsplash o foto del cliente |

---

## Demo già online

| Cliente | Link |
|---|---|
| Marco (dentista) | https://sitoprima.online/marco/ |
| Ahmed (barbiere) | https://sitoprima.online/ahmed/ |

---

## Messaggio WhatsApp da copiare al cliente

```
Buongiorno,
ecco l'anteprima del sito:
https://sitoprima.online/NOME/

Mi dica se le piace lo stile.
Se va bene, prepariamo la versione finale con il suo dominio.
```

---

## Dopo che il cliente accetta

Allora sì: dominio nuovo, EasyPanel, GitHub repo dedicato, sito vero.
La demo su sitoprima.online resta solo come anteprima.

Nabdplus (`nabdplus.shop`) non si tocca.
