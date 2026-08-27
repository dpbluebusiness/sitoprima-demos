# sitoprima-demos

Anteprime siti web per clienti su **sitoprima.online**.

## Link cliente (Marco — dentista)

Dopo la configurazione Cloudflare:

**https://marco.sitoprima.online**

## Configurazione Cloudflare per Marco (importante)

Il progetto principale `sitoprima-demos` serve la homepage. Per far funzionare
`marco.sitoprima.online` in modo affidabile, crea un **secondo progetto** Cloudflare:

1. Cloudflare → **Workers & Pages** → **Create** → **Connect to Git**
2. Repo: **dpbluebusiness/sitoprima-demos**
3. Nome progetto: **marco-sitoprima**
4. **Root directory / Percorso:** `marco`
5. Build command: *(vuoto)*
6. Deploy
7. **Custom domains** → aggiungi **marco.sitoprima.online**
8. Nel progetto **sitoprima-demos** → rimuovi **marco.sitoprima.online** se presente (evita conflitti)

Il sito Marco è nella cartella `marco/` — nessun routing speciale necessario.

Nabdplus (`frontend` / `backend`) non va toccato.
