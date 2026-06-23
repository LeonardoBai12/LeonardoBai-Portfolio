---
title: Project Middleware
slug: project-middleware
order: 2
description: >-
  API transformation service that lets you define mapping rules to convert any
  public API's response into a custom format. Supports field renaming, nesting,
  concatenation, and empty-field exclusion — with a preview endpoint for safe
  testing before committing a route.
stack:
  - Kotlin
  - Ktor Server
  - Ktor Client
  - MongoDB
  - Docker
  - Fly.io
  - GitHub Actions
stack_logos:
  - kotlin
repo_url: https://github.com/LeonardoBai12/ProjectMiddleware
demo_url: https://leonardobai12.github.io/ProjectMiddleware/
demo_label: Documentation
image: /assets/images/middleware-icon.jpg
image_alt: Project Middleware
card_bg: "#0e191f"
card_img_fit: cover
card_img_scale: 2
---

Project Middleware is a backend API transformation service. You point it at any public API and define mapping rules (rename, nest, concatenate, exclude empty fields) — the service returns your custom shape. A `/preview` endpoint lets you test rules before persisting them as permanent mapped routes.

## Architecture

The project is structured as a clean, multi-module Ktor server:

- **`middleware/domain`** – use cases and repository interfaces
- **`middleware/data`** – repository implementations and data models
- **`middleware/mapper`** – field mapping engine
- **`impl/ktor-server`** – HTTP routing and request handling
- **`impl/ktor-client`** – outbound HTTP client
- **`impl/mongo-database`** – MongoDB driver integration
- **`common/shared`** & **`common/data`** – shared models and utilities
- **`build-logic/`** – custom convention plugins keeping build files lean

## CI/CD

Three GitHub Actions workflows run on every PR:
- **Detekt** – code style enforcement
- **JaCoCo** – test coverage verification
- **Dokka** – KDoc documentation generation on merge to main

Deployed on **Fly.io** (São Paulo region) via Docker.

## Tech Stack

| Layer | Technology |
|---|---|
| Language | Kotlin 1.9 |
| Framework | Ktor Server 2.3 |
| HTTP Client | Ktor Client |
| Database | MongoDB (kotlinx coroutine driver) |
| Serialization | kotlinx-serialization, Gson |
| Build | Gradle 7.5+, Shadow JAR |
| Quality | Detekt, JaCoCo, Dokka |
| Runtime | Docker (OpenJDK 17 Alpine) |
| Hosting | Fly.io |
