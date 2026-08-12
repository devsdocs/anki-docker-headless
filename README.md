# Anki Docker Server (Web GUI + AnkiConnect)

This repository provides a complete, Dockerized environment for running the Anki desktop application alongside the AnkiConnect API. It features a fully accessible Web GUI (so you can manage syncs, decks, and settings in your browser) while silently exposing the AnkiConnect API for integrations.

## Why build this? (AnkiConnect vs Native Sync)
Anki already synchronizes your cards across your phone and PC via AnkiWeb. So why go through the trouble of hosting a Dockerized Anki server with AnkiConnect?

The short answer: **AnkiWeb is for humans; AnkiConnect is for machines.** 

1. **No Public API:** AnkiWeb explicitly restricts third-party applications from interacting with it directly to prevent server overload. By hosting this Docker setup, you are essentially building your own **private Anki API Server**. Your external scripts send a REST API request to this container, the container adds the card to its local database, and then uses native Anki sync to push that card up to AnkiWeb so it appears on your phone.
2. **24/7 Automation:** AnkiConnect normally runs on your local laptop, meaning your laptop must be on and Anki must be open for your scripts (like automated vocabulary scrapers, Telegram bots, or LLM agents) to work. Hosting this on a server ensures your API is always online.
3. **Cross-Device API:** You can trigger card creation from an iPad, a mobile browser, or a Chromebook, none of which can run AnkiConnect natively.

## Features
- **Web-based GUI**: Access the full Anki desktop application directly from your web browser. No VNC client needed.
- **Auto-Updating**: Automatically fetches and installs the latest stable Qt6 release of Anki on build.
- **Environment Variable Security**: Strictly protects the UI with the required `VNC_PASSWORD` token.

---

## Deployment (via Coolify or Docker)

This image is optimized for deployment platforms like [Coolify](https://coolify.io/), but it can be run using standard Docker or Docker Compose.

### 1. Environment Variables / Build Arguments
You must provide the following environment variables to start the container securely. Coolify also allows you to override the Anki build version via Environment Variables.

| Variable | Description | Example |
| :--- | :--- | :--- |
| `VNC_PASSWORD` | **Required.** The password required to access the Anki Web GUI in your browser. | `my_secure_vnc_password` |
| `ANKI_VERSION` | *Optional.* Set this to a specific Anki release tag to build that version. | `24.06.3` |

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
4. **Install AnkiConnect:** Go to *Tools -> Add-ons -> Get Add-ons...* and type the code `2055492159`. Click OK to install.
5. **CRITICAL STEP - Configure AnkiConnect:** In the Add-ons window, select AnkiConnect and click **Config**. 

> [!IMPORTANT]
> If you do not perform this step, the API will be completely inaccessible from outside the container.

You must make two changes to the JSON configuration:
   - Change `"webBindAddress": "127.0.0.1"` to `"0.0.0.0"`
   - Change `"apiKey": null` to `"any_secure_password_you_want"` (you will use this password to authenticate your API requests).
6. Click OK, then restart Anki (*File -> Exit*). The container will instantly restart and your API will be online!

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
If you need to change advanced AnkiConnect settings (like `webCorsOriginList`), you can find the generated `meta.json` inside your mapped volume at:
`/config/.local/share/Anki2/addons21/2055492159/meta.json`
