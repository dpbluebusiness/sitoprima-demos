# sitoprima-demos

Anteprime siti web per clienti.

## Link demo clienti

| Cliente | Link (funziona ora) |
|---|---|
| Marco (dentista) | https://marco.sitoprima.online/marco/ |
| Ahmed (barbiere) | https://ahmed.sitoprima.online/ahmed/ |

⚠️ `sitoprima.online` dà errore 522 — va collegato in Cloudflare (vedi NUOVO-CLIENTE.md).

## Nuovo cliente in 5 minuti

Leggi **[NUOVO-CLIENTE.md](./NUOVO-CLIENTE.md)** oppure:

```powershell
.\new-client.ps1 -Nome "luigi" -BusinessName "Trattoria Luigi" -Tipo "Ristorante" -Citta "Roma"
git add luigi && git commit -m "Add demo: Trattoria Luigi" && git push
```

**Niente redirect. Niente nuovo dominio.** Solo cartella + push.

Nabdplus (`nabdplus.shop`) non si tocca.
