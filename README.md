# Vecna / AIC26

Vecna is a multimodal video retrieval system developed for the 2026 AI Challenge. It combines visual search, OCR, speech recognition, temporal event search, traffic-scene filters, and an interface for competition workflows.

**Python package:** `aic26` · **CLI:** `aic26-cli` · **Web UI:** React and Vite · **Vector database:** Milvus

## Requirements

- Python 3.11 or later
- Node.js 18 or later and npm
- Docker Desktop, running for Milvus
- FFmpeg and Tesseract available on `PATH`
- A compatible GPU and model environment for the extractors you enable

## Installation

From the repository root, create a Python environment and install the project dependencies:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
```

The editable install points to `aic26-src`. The frontend dependencies are installed automatically the first time the CLI starts the frontend. To install them separately, run `npm ci` in `aic26-src/aic26/packages/webui/frontend`.

## Prepare a workspace and run

Review `config.yaml` and configure the models, data paths, and service settings for your machine. Create a separate workspace with `aic26-cli init`, then run the commands below from that workspace. You can also pass `-w <workspace>` to a CLI command.

```powershell
aic26-cli add "D:/Videos" -d -kc
aic26-cli analyse
aic26-cli index
aic26-cli --dev serve
```

The development Web UI defaults to `http://localhost:5173`; the core service defaults to `http://localhost:6900`. Use `aic26-cli serve` to build the frontend and serve it through the backend. Actual ports depend on your configuration.

## Optional API key

Keep `api_key: ""` in any configuration shared with others. Provide your own Groq key locally through an environment variable:

```powershell
$env:GROQ_API_KEY = "YOUR_GROQ_API_KEY"
```

Alternatively, copy `.env.example` to `.env` and enter your local settings there. Git ignores `.env` files.

Optional environment variables:

- `AIC26_CAMERA_METADATA_PATH` sets the camera metadata file path.
- `AIC26_TRANSLATION_CACHE_DIR` sets the translation cache directory.

## Repository layout

```text
Vecna-AIC26/
├── aic26-src/                 # Python package, backend, frontend, and tests
├── tools/dres/                # Standalone DRES submission portal
├── docs/                      # Guides and technical notes
├── report/                    # Technical report source
├── config.yaml                # Local project configuration
├── camera_info_workspace2_road_classification.json
├── segment_map.json
└── requirements.txt
```

The JSON files stay at the repository root because the current application reads them from there.

## Documentation

- [Documentation index](docs/README.md)
- [Frontend keyboard shortcuts](docs/frontend-shortcuts.md)
- [Video analysis](docs/cli-analyse.md) and [search](docs/searcher.md)
- [DRES integration overview](docs/integrations/dres.md)
- [Standalone DRES portal](tools/dres/README.md)
- [Repository setup and validation](docs/development/repository-preparation.md)

The DRES documentation describes the integration at a high level. Submission service details are intentionally left out because they may change; use the current competition instructions when configuring submissions.

## License

See the license file included with the project. Retain applicable third-party copyright notices when redistributing inherited components.
