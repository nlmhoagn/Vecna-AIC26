# DRES Integration

Vecna includes two ways to work with DRES: the competition submission panel in the Web UI and a standalone local portal in `tools/dres/`.

## Web UI

The integration is implemented in:

- `aic26-src/aic26/packages/webui/frontend/src/services/dres.js`
- `aic26-src/aic26/packages/webui/frontend/src/components/DresSubmitPanel.jsx`
- `aic26-src/aic26/packages/webui/frontend/src/components/VideoPlayer.jsx`

The panel handles competition sign-in, evaluation selection, answer preparation, and submission from the search interface. It shares the selected evaluation with the video player and provides a preview before a submission is sent.

The timer uses the service's returned time values to show the current evaluation's remaining time. The display adapts to the value's format and uses hours when needed.

The panel and video player can be opened and dismissed independently. Keyboard and backdrop interactions close the active panel without closing the video player.

## Standalone portal

The separate portal provides a local browser interface and proxy. See [the portal guide](../../tools/dres/README.md) for how to start it.

## Service configuration

DRES service addresses, API routes, and evaluation details are intentionally omitted from these public docs because competition settings can change. Use the current official competition instructions for the correct service and account settings. Do not publish credentials, session tokens, or private competition URLs.
