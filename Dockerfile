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

# Install system dependencies: Git and FFmpeg
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    git \
    ffmpeg \
    ca-certificates \
 && rm -rf /var/lib/apt/lists/*

# Copy package.json first for better Docker layer caching
COPY package.json ./

# Install production dependencies
RUN npm install --omit=dev --no-audit --no-fund

# Copy application files
COPY . .

# Application port
ENV PORT=8000
EXPOSE 8000

# Start SAHAN-MD
CMD ["npm", "start"]
