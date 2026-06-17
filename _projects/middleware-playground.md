---
title: Middleware Playground
slug: middleware-playground
order: 3
description: >-
  Kotlin Multiplatform client for Project Middleware. Android (Jetpack Compose)
  and iOS (SwiftUI) apps share business logic via KMM, with a SQLDelight local
  cache and Ktor networking. Create, preview, and manage API route mappings from
  your phone.
stack:
  - KMP
  - Jetpack Compose
  - SwiftUI
  - SQLDelight
  - Ktor
  - Hilt
  - Coroutines
stack_logos:
  - kotlin
repo_url: https://github.com/LeonardoBai12/MiddlewarePlayground
image: /assets/images/middleware-playground-icon.png
image_alt: Middleware Playground app icon
---

Middleware Playground is the mobile client for [Project Middleware](/projects/project-middleware/). It lets developers create API route mappings, configure headers and query parameters, preview transformations, and manage a history of mapped routes — all from a native Android or iOS app.

> **Note:** No README was found in this repository. The description above is inferred from the source code. [DESCRIPTION TO REVIEW]

## Architecture

The app is a full Kotlin Multiplatform project with 37 modules:

- **Shared KMM module** – ViewModels, use cases, and data models shared across platforms
- **`androidApp/`** – Jetpack Compose UI, Hilt dependency injection
- **`iosApp/`** – SwiftUI consuming the shared KMM module via CocoaPods
- **`impl/client`** – Ktor HTTP client implementation
- **`impl/database`** – SQLDelight local cache
- **Feature modules**: `middleware`, `history`, `sign_up`, `user`, `splash`
- **`build-logic/`** – convention Gradle plugins

## Tech Stack

| Layer | Technology |
|---|---|
| Language | Kotlin Multiplatform, Swift |
| Android UI | Jetpack Compose |
| iOS UI | SwiftUI |
| DI (Android) | Hilt |
| HTTP Client | Ktor 3.3 |
| Database | SQLDelight 2.2 |
| Async | Kotlinx Coroutines, Flow |
| Serialization | kotlinx-serialization |
| Testing | AssertK, Turbine, MockK |
