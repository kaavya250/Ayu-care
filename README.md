# AyuCare website

This project contains a refreshed, responsive AyuCare website and a browser-side assistant connected to the supplied `data.json` file.

## Files

- `index.html` — full website, searchable health library, yoga list, topic detail modal, and data-backed chat interface.
- `data.json` — the disease/topic data supplied for the project. The website reads this file at runtime.
- `run-local.bat` — starts a local server on Windows when Python is installed.

## Run locally on Windows

1. Keep `index.html` and `data.json` in the same folder.
2. Double-click `run-local.bat`, or open Command Prompt in this folder and run:

   ```bash
   python -m http.server 8000
   ```

3. Open `http://localhost:8000` in your browser.

Do not double-click `index.html` to open it as a `file://` URL. Browsers commonly block the page's `fetch('./data.json')` request in that mode. A local web server or web hosting is required for data syncing.

## Deploy

Upload both `index.html` and `data.json` to the same public folder on your hosting provider. The chatbot and topic library request `./data.json`, so keep the filename and folder relationship unchanged. If you put the data file in another folder, update `DATA_URL` near the beginning of the JavaScript in `index.html`.

## What the assistant does

- Loads the JSON file with `fetch()` at page startup.
- Groups duplicate records by exact normalized topic title, combining distinct source summaries, remedy notes and yoga entries for display.
- Uses searchable text matching and a small alias list to find topic entries.
- Runs entirely in the browser. It does not call an AI model, send chats to a third-party service, store chat messages, or provide diagnoses.

For a genuinely generative AI assistant, connect a trusted AI provider through a server-side backend. Do not put a private API key in browser JavaScript.

## Medical content note

The imported dataset has not been clinically validated as part of this website build. Remedy notes are displayed as unverified source-file content, not as treatment recommendations. The site warns users to consult a qualified clinician and not to replace prescribed care. Have an appropriately qualified medical reviewer audit and approve the content before publishing it as health guidance.

## Reviews

The review cards are explicitly marked as demo content. Replace them with real, permission-based feedback before presenting them as testimonials. The static site does not collect or persist reviews; production review collection requires a secure backend and an appropriate privacy/consent process.

## Images

The page uses remote Unsplash image URLs for scenic backgrounds and feature photography. An internet connection is required to load those photographs. The page has CSS fallback colours if an image is unavailable.
