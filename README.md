# Anki Docker Server (Web GUI + AnkiConnect)

This repository provides a complete, Dockerized environment for running the Anki desktop application alongside the AnkiConnect API. It features a fully accessible Web GUI (so you can manage syncs, decks, and settings in your browser) while silently exposing the AnkiConnect API for integrations.

## Features
- **Web-based GUI**: Access the full Anki desktop application directly from your web browser. No VNC client needed.
- **Auto-Updating**: Automatically fetches and installs the latest stable Qt6 release of Anki on build.
- **AnkiConnect Pre-installed**: Exposes the AnkiConnect API (`:8765`) to the internet securely.
- **Environment Variable Security**: Strictly protects both the UI and the API with required tokens/passwords.

---

## Deployment (via Coolify or Docker)

This image is optimized for deployment platforms like [Coolify](https://coolify.io/), but it can be run using standard Docker or Docker Compose.

### 1. Environment Variables
You **must** provide the following environment variables to start the container securely:

| Variable | Description | Example |
| :--- | :--- | :--- |
| `ANKI_API_TOKEN` | **Required.** The token used to authenticate requests to the AnkiConnect API. | `my_super_secret_api_token` |
| `VNC_PASSWORD` | **Required.** The password required to access the Anki Web GUI in your browser. | `my_secure_vnc_password` |

### 2. Volumes (Persistent Data)
You must mount a persistent volume to store your Anki profile, downloaded media, and sync sessions. If you don't do this, you will lose your decks when the container restarts.

- **Container Path:** `/config`
- **Coolify Setup:** In your Coolify application settings, go to Storage and map a persistent volume to `/config`.

#### For Existing Anki Users (Bring Your Own Data)
If you already use Anki on your desktop and want to skip the massive initial download, you can mount your existing local Anki folder to `/config/.local/share/Anki2` inside the container:
- **Windows:** `%APPDATA%\Anki2`
- **Mac:** `~/Library/Application Support/Anki2`
- **Linux:** `~/.local/share/Anki2`

*(Upload these files via SFTP to your server's mapped volume location).*

---

## Usage & Access

### 1. The Web GUI (Port 5800)
Once deployed, navigate to the domain/port mapped to `5800` (e.g., `https://anki-ui.yourdomain.com`).
1. You will be prompted for the `VNC_PASSWORD`.
2. Once authenticated, you will see the full Anki Desktop app.
3. Click **Sync** at the top right, log into your AnkiWeb account, and click **Download from AnkiWeb** to pull your decks for the first time.
4. You can safely close the browser tab. The Anki process will continue running in the background.

### 2. The AnkiConnect API (Port 8765)
You can send HTTP requests to the AnkiConnect API by targeting the domain/port mapped to `8765`. 

Because we secured it, you must include your `"key"` in the JSON payload of every request.

**Example Request:**
```bash
curl https://anki-api.yourdomain.com -X POST -d '{
    "action": "deckNames",
    "version": 6,
    "key": "my_super_secret_api_token"
}'
```

---

## Customizing AnkiConnect
If you need to change advanced AnkiConnect settings (like `webCorsOriginList`), you can find the generated `config.json` inside your mapped volume at:
`/config/.local/share/Anki2/addons21/2055492159/config.json`
