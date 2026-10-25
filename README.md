<div align="center">

  <img src="https://raw.githubusercontent.com/Shan-droid770/img-db/refs/heads/main/sahan-md-v3/file_000000001d6c81f9b39635a8c660c852.png" width="100%" alt="SAHAN-MD Official Banner" />

  <h1>🔥 SAHAN-MD — MAIN BOT</h1>
  <p><b>Powerful. Flexible. Yours to deploy.</b></p>
  <p>A WhatsApp multi-device bot project by <b>Sahan Dissanayaka</b>.</p>

  <p>
    <a href="https://github.com/Shan-droid770/SAHAN-MD"><img src="https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github" alt="GitHub Repository"></a>
    <a href="https://sahan-md.sahanhost.qzz.io/"><img src="https://img.shields.io/badge/Pair%20Website-Open-25D366?style=for-the-badge&logo=whatsapp&logoColor=white" alt="Pair Website"></a>
    <a href="https://github.com/Shan-droid770/SAHAN-MD/stargazers"><img src="https://img.shields.io/github/stars/Shan-droid770/SAHAN-MD?style=for-the-badge&color=yellow" alt="GitHub Stars"></a>
    <a href="https://github.com/Shan-droid770/SAHAN-MD/issues"><img src="https://img.shields.io/badge/Issues-Report%20a%20bug-orange?style=for-the-badge&logo=github" alt="Report an Issue"></a>
  </p>

  <p>
    <a href="#-features">Features</a> •
    <a href="#-pair-your-whatsapp">Pair WhatsApp</a> •
    <a href="#-deployment-options">Deploy</a> •
    <a href="#-panel-deployment">Panel Setup</a> •
    <a href="#-credits">Credits</a>
  </p>

</div>

---

## ⚡ About SAHAN-MD

**SAHAN-MD** is a WhatsApp bot project designed to be deployed on your own hosting account. Use the pairing website to link your WhatsApp account, copy the generated `SESSION_ID`, configure it in the project as required, and then deploy your own bot instance.

> [!IMPORTANT]
> **SAHAN-MD MAIN BOT is self-hosted.** Pairing your WhatsApp account does not host the bot for you. After pairing, you must configure and deploy the bot on a supported host.

## ✨ Features

> The final feature list depends on the commands and plugins included in the current repository version.

- 📱 WhatsApp Multi-Device session pairing
- 🔐 Session-based connection setup
- 🧩 Modular command/plugin support, if enabled in this build
- 🌐 Multiple deployment options
- ⚙️ Node.js-based project setup
- 🛠️ Customizable bot configuration
- 🚀 Deploy and manage your own instance

## 🔗 Quick Links

| Resource | Link |
|---|---|
| 📦 Source code | [SAHAN-MD Repository](https://github.com/Shan-droid770/SAHAN-MD) |
| 📲 Pair website | [SAHAN-MD Pair Site](https://sahan-md.sahanhost.qzz.io/) |
| 🐞 Report a bug | [Open an issue](https://github.com/Shan-droid770/SAHAN-MD/issues) |
| 🌟 Support the project | [Star the repository](https://github.com/Shan-droid770/SAHAN-MD/stargazers) |

## 📲 Pair Your WhatsApp

1. Open the [SAHAN-MD Pair Website](https://sahan-md.sahanhost.qzz.io/).
2. Enter your WhatsApp number in the format requested by the website.
3. Open WhatsApp and go to **Linked devices**.
4. Choose **Link a device** and follow the pairing instructions shown by the site.
5. Copy the generated `SESSION_ID` and keep it private.
6. Add the session value to the configuration method expected by this repository.
7. Deploy the project and check the host logs for a successful connection.

> [!WARNING]
> Never share your `SESSION_ID`, QR code, or pairing code with anyone. Anyone who obtains valid session credentials may be able to access your WhatsApp account. If a session is exposed, log out the linked device from WhatsApp and generate a new session.

## 🚀 Deployment Options

Choose a host, then follow its current deployment instructions. The buttons below open each platform; they do not automatically deploy the repository until you configure the required settings.

<div align="center">

| Platform | Deploy / Open |
|---|---|
| **Heroku** | [![Deploy to Heroku](https://img.shields.io/badge/Deploy-Heroku-7952B3?style=for-the-badge&logo=heroku&logoColor=white)](https://dashboard.heroku.com/new?template=https://github.com/Shan-droid770/SAHAN-MD) |
| **Koyeb** | [![Deploy to Koyeb](https://img.shields.io/badge/Deploy-Koyeb-121212?style=for-the-badge)](https://app.koyeb.com/) |
| **Render** | [![Deploy to Render](https://img.shields.io/badge/Deploy-Render-46E3B7?style=for-the-badge&logo=render&logoColor=black)](https://render.com/) |
| **Railway** | [![Deploy to Railway](https://img.shields.io/badge/Deploy-Railway-7B61FF?style=for-the-badge&logo=railway&logoColor=white)](https://railway.com/) |

</div>

### General deployment checklist

1. Fork or import this repository into your GitHub account.
2. Create a new app/service on your chosen hosting platform.
3. Connect your repository and select the correct branch.
4. Select the Node.js runtime if the host asks for a runtime.
5. Set the start command to the one specified by the project's `package.json` (commonly `npm start`).
6. Configure `SESSION_ID` and any other required values using the configuration method documented by the current source code.
7. Deploy, then inspect the logs for missing packages, configuration errors, or WhatsApp connection errors.

> [!NOTE]
> Hosting platforms change their dashboards and policies. Check the current platform documentation before deploying. Do not add environment variables unless the code actually reads them; some project versions may expect configuration in a file instead.

## 🖥️ Panel Deployment

For a VPS panel or a Pterodactyl-style Node.js panel:

1. Create a new application/server using a compatible Node.js version specified in `package.json`.
2. Upload the project files or connect the repository if the panel supports Git.
3. Make sure `package.json` and the lockfile are in the project root.
4. Install dependencies using the panel's install/startup setup, or run `npm install` if the panel provides a terminal.
5. Set the startup command to the command used by this repository (check `package.json`; often `npm start`).
6. Add the required session/configuration values using the method this version expects.
7. Start the server and inspect the console logs.

**If the panel fails to start:** check the Node.js version, the start script, missing native packages, and whether the host supports any required binaries.



## 🧰 Requirements

- A compatible Node.js version (check `package.json`)
- GitHub account for repository-based deployment
- Hosting account that supports the app's runtime and dependencies
- WhatsApp account for pairing
- Any additional runtime binaries required by the bot's actual commands

## 🛠️ Troubleshooting

| Problem | Things to check |
|---|---|
| Bot does not start | `package.json` start script, Node.js version, dependency installation |
| Pairing succeeds but bot stays offline | `SESSION_ID` configuration, host logs, session validity |
| Command replies do not arrive | WhatsApp connection logs, command loader, permissions, and errors |
| Media command fails | Required binaries/dependencies and whether the media has a supported audio/video stream |
| App repeatedly restarts | Host memory limits, crashes, missing configuration, or unsupported dependencies |

## 🔐 Security Notes

- Keep `SESSION_ID`, API keys, and tokens private.
- Never commit secrets into a public GitHub repository.
- Use GitHub Actions repository secrets for CI/CD credentials.
- Only deploy code you trust, and review changes before updating your bot.
- Follow WhatsApp's terms and your hosting provider's acceptable-use rules.

## 💖 Credits

<div align="center">

**Created and maintained by Sahan Dissanayaka**

[![GitHub](https://img.shields.io/badge/GitHub-Shan--droid770-181717?style=for-the-badge&logo=github)](https://github.com/Shan-droid770)
[![Repository](https://img.shields.io/badge/SAHAN--MD-MAIN%20BOT-red?style=for-the-badge&logo=github)](https://github.com/Shan-droid770/SAHAN-MD)

**If this project helps you, consider giving the repository a ⭐**

</div>

---

<div align="center">
  <sub>SAHAN-MD • MAIN BOT • Built with dedication by Sahan Dissanayaka</sub>
  <br>
  <a href="#-sahan-md--main-bot">⬆ Back to top</a>
</div>
