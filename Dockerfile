#=============================================================================
#
#   ███████╗  █████╗  ██╗  ██╗  █████╗  ███╗   ██╗         ███╗   ███╗ ██████╗
#   ██╔════╝ ██╔══██╗ ██║  ██║ ██╔══██╗ ████╗  ██║         ████╗ ████║ ██╔══██╗
#   ███████╗ ███████║ ███████║ ███████║ ██╔██╗ ██║         ██╔████╔██║ ██║  ██║
#   ╚════██║ ██╔══██║ ██╔══██║ ██╔══██║ ██║╚██╗██║         ██║╚██╔╝██║ ██║  ██║
#   ███████║ ██║  ██║ ██║  ██║ ██║  ██║ ██║ ╚████║         ██║ ╚═╝ ██║ ██████╔╝
#   ╚══════╝ ╚═╝  ╚═╝ ╚═╝  ╚═╝ ╚═╝  ╚═╝ ╚═╝  ╚═══╝         ╚═╝     ╚═╝ ╚═════╝
#                      ──
#   © SAHAN-MD OFC 2026 | MADE BY SAHAN DISSANAYAKA ❤️‍🔥 | ALL RIGHTS RESERVED!
#
#=============================================================================

FROM node:20-slim

WORKDIR /app

RUN apt-get update \
 && apt-get install -y --no-install-recommends ffmpeg \
 && rm -rf /var/lib/apt/lists/*

# Install dependencies first (better layer caching)
COPY package.json ./
RUN npm install --omit=dev --no-audit --no-fund

# Copy the app
COPY . .

# Hugging Face Spaces expects the app on port 7860
ENV PORT=8000
EXPOSE 8000

CMD ["npm", "start"]
