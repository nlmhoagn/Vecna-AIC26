# Vecna / AIC26 — Standalone DRES Portal

This folder contains the standalone submission portal and its local proxy. Keep `dres_submitter.html` and `submitter_server.py` together.

On Windows, open `open_submitter.bat`. The launcher switches to its own folder, so it can be started from File Explorer or another working directory.

To start it from the repository root instead, run:

```powershell
python tools/dres/submitter_server.py 8080
```

Open the local portal at `http://localhost:8080/dres_submitter.html`. Stop the local server with `Ctrl+C`.

The remote submission service and its API settings are intentionally not documented here because they may change. Follow the current competition instructions when configuring or using the portal. See the [DRES integration overview](../../docs/integrations/dres.md) for information about the main Web UI integration.
