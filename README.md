# Mosquitto Iscalar Backend

A Docker-based solution to quickly set up and configure a Mosquitto MQTT broker without repeating manual configurations.

## 🚀 Overview

This project was created to simplify and standardize the setup of Mosquitto brokers for IoT environments. Instead of configuring the broker from scratch every time, this repository provides a ready-to-use image and structure that accelerates deployment and ensures consistency across environments.

It is especially useful for IoT platforms, automation systems, and scalable backend architectures where MQTT is a core component.

## 🧠 Key Features

- Pre-configured Mosquitto setup (no repetitive manual configuration)
- Docker-based deployment for fast and consistent environments
- Easy customization for different IoT use cases
- Suitable for development, testing, and production environments
- Lightweight and scalable solution

## 🛠️ Tech Stack

- Docker
- Mosquitto (MQTT Broker)
- IoT / Messaging Architecture

## ⚙️ How It Works

This repository provides a pre-configured Mosquitto environment packaged as a Docker image.  
You can quickly spin up a broker with predefined settings, avoiding repetitive setup steps.

You can also customize additional broker settings and variables directly in the `configurations/mosquitto.conf` file according to your environment needs.

## ▶️ Getting Started

### Prerequisites

- Docker installed

### Clone the repository

```bash
git clone https://github.com/britobrunodev/mosquitto-iscalar-backend.git
cd mosquitto-iscalar-backend
```

### How to use it

```bash
docker build -t mosquitto-iscalar:1.0.0 .
```
### Environment variables

This project uses environment variables to configure settings such as authentication and other runtime options.

1. Create .env file from .env.example:

#### Portainer:

```bash
version: '3.8'
mosquitto:
    container_name: mosquitto
    image: mosquitto-iscalar:1.0.0
    restart: always
    volumes:
      - mosquitto-config:/mosquitto/config
      - mosquitto-data:/mosquitto/data
      - mosquitto-log:/mosquitto/log
    ports:
      - "1883:1883"
      - "9001:9001"
volumes:
  mosquitto-config:
  mosquitto-data:
  mosquitto-log:
```

#### Docker command:

```bash
docker run -d \
  --name mosquitto-iscalar \
  -p 1883:1883 \
  -p 9001:9001 \
  mosquitto-iscalar:1.0.0
```

