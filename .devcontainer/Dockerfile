FROM mcr.microsoft.com/devcontainers/base:bookworm

# Install LaTeX.
RUN apt-get --quiet update \
 && apt-get install --assume-yes texlive-latex-extra texlive-extra-utils latexmk \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Add some labels so it looks nice in Github packages.
LABEL org.opencontainers.image.source=https://github.com/joejcollins/doctor-venus
LABEL org.opencontainers.image.description="LaTeX image for doctor-venus"
LABEL org.opencontainers.image.version="0.0.1"
LABEL org.opencontainers.image.authors="Joe J Collins <joejcollins@gmail.com>"