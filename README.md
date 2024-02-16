
  

# Raspberry Pi 400 Media Server

## Current Stack

This project uses images and info from [LinuxServer.io](https://docs.linuxserver.io/)
- [Dockge](https://dockge.kuma.pet/) - A platform for hosting Docker containers with an emphasis on simplicity and ease of use.

- [Homarr](https://homarr.dev/) - A customizable dashboard for monitoring and managing your applications, services, and tools in one place.

- [Overseerr](https://overseerr.dev/) - A request management and media discovery tool for Plex, Emby, and Jellyfin, allowing users to request new content.

- [Plex](https://www.plex.tv/) - A media server software solution that allows users to stream their media collection across various devices.

- [Prowlarr](https://prowlarr.com/) - A tool for managing and searching for content on Usenet indexers and torrent trackers.

- [Radarr](https://radarr.video/) - A movie collection management tool that automatically downloads movies via Usenet and BitTorrent.

- [Sonarr](https://sonarr.tv/) - A TV series management tool that automatically downloads episodes via Usenet and BitTorrent.

- [SABnzbd](https://sabnzbd.org/) - A Usenet client for downloading files from Usenet newsgroups.

- [AdGuardHome](https://github.com/AdguardTeam/AdGuardHome) - AdGuard Home is a network-wide software for blocking ads, trackers, and malicious websites, offering DNS filtering capabilities to enhance privacy and security on local networks.


Instead of utilising torrents for downloads, this project make use of newsgroups (Usenet). Tested using [NZBGeek](https://nzbgeek.info/) and [Newshosting](https://www.newshosting.com/).

## OS, SSH and Static IP Setup (Local)

1. Install Ubuntu Server OS using [rpi-imager](https://formulae.brew.sh/cask/raspberry-pi-imager). **MAKE SURE YOU CHOOSE SERVER, NERD!**

2. Enable SSH (Don't be a dweeb, use SSH keys) [Guide here](https://ubuntu.com/server/docs/service-openssh).

3. Setup a static IP on the Pi. [Guide here](https://ubuntu.com/server/docs/network-configuration). Take note of the IP you choose, we'll use that to connect via SSH.

## Docker, Containers & Updates (Remote via SSH)

1. Using the keys you generated above SSH into the Pi, and clone this repo into your desired location

2. Navigate into the repo and use `chmod +x setup.sh`, then execute the script with`./setup.sh` this script will update and upgrade system packages, create the required directory structure along with installing the docker engine and additional required packages.

3. Navigate into `dockge` directory and start the container using `docker compose up -d`. You'll be able to find the dockge web panel at `http://PI_STATIC_IP:5501/`

4. Navigate out of `dockge` and into the `compose` directory and then into each of the subdirectories using `docker compose up -d`. This will start each of the required containers in deattached mode. If you check the dockge web panel you'll be able to see each container.

## Service Setup

### Homarr (port 7575)

### Prowlarr (port 9696)

### Radarr (port 7878)

### Sonarr (port 8989)

### SABnzbd (port 8080)

### Plex (port 32400)

### OverSeer (port 5055)

### AdGuardHome (port 80 for webpanel)
