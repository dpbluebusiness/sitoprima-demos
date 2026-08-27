# Nuovo cliente in 5 minuti

## ⚠️ IMPORTANTE — quale link funziona ORA

Ho verificato adesso (27 ago 2026):

| Link | Funziona? |
|---|---|
| `https://sitoprima.online/marco/` | ❌ **NO** — errore 522 (dominio non collegato) |
| `https://sitoprima.online/` | ❌ **NO** — stesso errore |
| **`https://marco.sitoprima.online/marco/`** | ✅ **SÌ** — sito Marco ok |
| `https://sitoprima-demos.dp-blue-business.workers.dev/marco/` | ✅ SÌ — ma brutto per il cliente |

### Link da mandare al cliente (finché non sistemi sitoprima.online):

```
https://marco.sitoprima.online/marco/
```

Sostituisci `marco` con il nome del cliente.

---

## Sistemare sitoprima.online (una volta sola)

Il dominio **sitoprima.online** non è collegato al progetto Cloudflare.

1. Cloudflare → **Workers & Pages** → **sitoprima-demos**
2. **Custom domains** → **Add**
3. Aggiungi: **`sitoprima.online`** e **`www.sitoprima.online`**
4. Aspetta 5–10 minuti
5. Prova: `https://sitoprima.online/marco/`

Dopo questo fix, il link pulito `sitoprima.online/nome/` funzionerà.

---

## Creare nuovo cliente

```powershell
cd "C:\Users\Ilyas\Desktop\sitoprima-demos"

.\new-client.ps1 -Nome "luigi" -BusinessName "Trattoria Luigi" -Tipo "Ristorante" -Citta "Roma"

git add luigi
git commit -m "Add demo: Trattoria Luigi"
git push
```

Link demo (dopo push):
- **Ora:** `https://luigi.sitoprima.online/luigi/` *(se aggiungi subdomain in Cloudflare)*
- **Dopo fix sitoprima.online:** `https://sitoprima.online/luigi/`

---

## Messaggio WhatsApp al cliente

```
Buongiorno,
ecco l'anteprima del sito:
https://marco.sitoprima.online/marco/

Mi dica se le piace lo stile.
```

---

## Dopo che il cliente accetta

Dominio suo + EasyPanel + sito vero. Nabdplus non si tocca.
