# Vecna / AIC26 — Python Package

The `aic26` package provides the video ingestion, feature extraction, Milvus indexing, retrieval, and Web UI services used by Vecna.

From this directory, install the package in editable mode and inspect the available commands:

```powershell
python -m pip install -e .
aic26-cli --help
```

The CLI commands are `init`, `add`, `analyse`, `index`, `validate`, and `serve`. Run them from a workspace containing `config.yaml`, or pass `-w <workspace>`.

See the [repository README](../README.md) for full setup instructions. The backend, frontend, and runtime resources stay within this package so the CLI can locate them after installation.

See the license distributed with this package for its terms and applicable copyright notices.
