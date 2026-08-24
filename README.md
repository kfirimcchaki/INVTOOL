# INVTOOL

A dark, creator-focused UEFN persistence studio UI for browsing islands, searching the asset catalog by full `/Game/` paths, and staging inventory edits.

## Run locally

```bash
npm start
```

Then open `http://localhost:4173`.

## Notes

The app includes a same-origin Node proxy at `/api/request`: it validates the configured host, forwards the token as an Authorization header, and returns upstream status/data without logging credentials. The UI ships with safe mock catalog/island data so the workflow can be explored immediately. The connection dialog intentionally keeps a pasted session token in memory only; it does not log or persist credentials. A production service adapter should be added behind a same-origin backend proxy, with explicit CORS, CSRF protection, short-lived tokens, and server-side validation before wiring the Connect action to a real account.
