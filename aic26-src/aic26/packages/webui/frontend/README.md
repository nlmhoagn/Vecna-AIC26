# Vecna / AIC26 — Web UI

The React interface lets users search and review video frames, manage answers, and move through results with keyboard shortcuts.

## Features

- Text-based video frame search
- Similar-frame search and video playback
- Search filters for models, OCR, temporal clustering, and result limits
- Answer creation, editing, and management
- Keyboard navigation and paginated results

## Development

Requirements: Node.js 18 or later and npm.

```bash
npm ci
npm run dev
```

Create a production build or run the linter with:

```bash
npm run build
npm run lint
```

The CLI starts the development server when run with `aic26-cli --dev serve`. The frontend connects to the Vecna backend using the configured local service settings.

## Project structure

```text
src/
├── components/  # Shared interface components
├── routes/      # Search and answer pages
├── services/    # Frontend service calls
├── utils/       # Shared utilities
└── assets/      # Icons and other static assets
```

Competition submission service settings are intentionally not listed here because they can change. Follow the current competition instructions. See the repository's `aic26-src/LICENSE` for license terms and copyright notices.
