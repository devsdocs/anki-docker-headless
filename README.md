# 🐳 Anki Docker Server (Web GUI + AnkiConnect)

This repository provides a complete, Dockerized environment for running the Anki desktop application alongside the AnkiConnect API. It features a fully accessible Web GUI (so you can manage syncs, decks, and settings in your browser) while silently exposing the AnkiConnect API for integrations.

## ❓ Why build this? (AnkiConnect vs Native Sync)
Anki already synchronizes your cards across your phone and PC via AnkiWeb. So why go through the trouble of hosting a Dockerized Anki server with AnkiConnect?

The short answer: **AnkiWeb is for humans; AnkiConnect is for machines.** 

1. **No Public API:** AnkiWeb explicitly restricts third-party applications from interacting with it directly to prevent server overload. By hosting this Docker setup, you are essentially building your own **private Anki API Server**. Your external scripts send a REST API request to this container, the container adds the card to its local database, and then uses native Anki sync to push that card up to AnkiWeb so it appears on your phone.
2. **24/7 Automation:** AnkiConnect normally runs on your local laptop, meaning your laptop must be on and Anki must be open for your scripts (like automated vocabulary scrapers, Telegram bots, or LLM agents) to work. Hosting this on a server ensures your API is always online.
3. **Cross-Device API:** You can trigger card creation from an iPad, a mobile browser, or a Chromebook, none of which can run AnkiConnect natively.

## ✨ Features
- **Web-based GUI**: Access the full Anki desktop application directly from your web browser. No VNC client needed.
- **Auto-Updating**: Automatically fetches and installs the latest stable Qt6 release of Anki on build.
- **Environment Variable Security**: Strictly protects the UI with the required `VNC_PASSWORD` token.

---

## 🚀 Deployment (via Coolify v4)

This image is heavily optimized for deployment on [Coolify](https://coolify.io/). Follow these steps to get your server running perfectly:

### 1️⃣ Create the Resource
1. In your Coolify dashboard, create a new resource and select **Public Repository**.
2. **Repository URL:** `https://github.com/devsdocs/anki-docker-server.git`
3. **Branch:** `master`
4. Leave the Build Pack as `Nixpacks` or `Dockerfile` (Coolify will automatically detect the Dockerfile).

### 2️⃣ Configure Networking (Domains & Ports)
Because this container serves both a Web GUI and an API, it exposes two separate ports. You need to map two different subdomains to them.
1. Scroll down to the **Ports Exposes** field and make sure it is exactly: `5800,8765`
2. In the **Domains** field, input both of your subdomains with their respective container ports appended to them, separated by a comma. 
   - **Syntax:** `https://ui-domain.com:5800,https://api-domain.com:8765`
   - **Example:** `https://anki-ui.yourdomain.com:5800,https://anki-api.yourdomain.com:8765`
   
*(Coolify's Traefik proxy will automatically read this and route traffic securely to the correct internal ports!)*

### 3️⃣ Environment Variables
You must provide a password to securely lock down your Anki Web GUI. 
1. Go to the **Environment Variables** tab.
2. Add a new variable:
   - **Name:** `VNC_PASSWORD`
   - **Value:** `my_super_secret_password` (Choose your own password)
*(Optional: You can also set `ANKI_VERSION=24.06.3` if you want to pin a specific Anki release instead of pulling the latest).*

### 4️⃣ Persistent Storage (CRITICAL)
If you do not map a volume, you will lose your entire Anki collection when the container restarts!
1. Go to the **Storage** tab in Coolify.
2. Add a new volume mapping:
   - **Source:** (Leave blank or name it `anki-data`)
   - **Destination:** `/config`
3. Click Save.

### 5️⃣ Deploy!
Click **Deploy** at the top right of the screen. Wait for the build to finish, and your server is online!

---

#### 📂 Bring Your Own Data (Optional)
If you already use Anki on your desktop and want to skip the massive initial download, you can upload your existing local Anki folder directly into your server's `/config/.local/share/Anki2` directory via SFTP before starting the container:
- **Windows:** `%APPDATA%\Anki2`
- **Mac:** `~/Library/Application Support/Anki2`
- **Linux:** `~/.local/share/Anki2`

---

## 💻 Usage & Access

### 1️⃣ The Web GUI (Port 5800)
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

### 2️⃣ The AnkiConnect API (Port 8765)
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

## 📦 Client API Wrappers

This repository also includes client libraries inside the `client/` folder to make it easy to interact with the AnkiConnect API from your own scripts. These wrappers use custom, generated models for both request parameters and responses, providing a clean developer experience over the raw JSON-RPC interface.

Inside the `client/` directory, you will find:
- **`openapi.json`**: An OpenAPI 3.0 specification mapping all actions, parameters, and return types for AnkiConnect.
- **`ts/`**: TypeScript wrapper.
- **`python/`**: Python wrapper (with `@dataclass` typing).
- **`dart/`**: Dart wrapper.

Each language subdirectory contains its own `README.md` with specific usage instructions and code examples. If you want to update or regenerate these wrappers from the latest AnkiConnect documentation, simply run `python generate_clients.py` inside the `client/` directory!

---

## 🛠️ Customizing AnkiConnect
If you need to change advanced AnkiConnect settings (like `webCorsOriginList`), you can find the generated `meta.json` inside your mapped volume at:
`/config/.local/share/Anki2/addons21/2055492159/meta.json`

---

## ❤️ Support
If this project has saved you some time or helped your workflow, and you're in a position to do so, consider buying me a coffee. There is absolutely no obligation, but any support is deeply appreciated! ☕

- [Sponsor on GitHub](https://github.com/sponsors/devsdocs)
- [Support on Ko-fi](https://ko-fi.com/devsdocs)
