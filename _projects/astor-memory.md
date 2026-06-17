---
title: AstorMemory
slug: astor-memory
order: 1
description: >-
  Cross-platform memory matching game featuring fantasy creatures called Astors.
  Built with Kotlin Multiplatform and Compose Multiplatform for Android and iOS.
  Available on Google Play.
stack:
  - KMP
  - Compose Multiplatform
  - SQLDelight
  - Koin
  - Ktor
  - Coroutines
stack_logos:
  - kotlin
repo_url: https://github.com/LeonardoBai12/AstorMemory-CMP
demo_url: https://play.google.com/store/apps/details?id=io.lb.astormemory.app
demo_label: Google Play
image: /assets/images/astor-memory-icon.png
image_alt: AstorMemory app icon
card_bg: "#200367"
---

AstorMemory is a classic memory matching game where players flip cards to reveal and match fantasy creatures called "Astors". The project demonstrates modern Kotlin Multiplatform development with shared game logic across Android and iOS.

## Features

- Cross-platform game engine (Android & iOS) from a single Kotlin codebase
- AI-generated Astor creatures fetched dynamically
- Original background music and sound effects
- Multiple difficulty levels (1–30 pairs)
- Combo scoring system with miss penalties
- Dark mode support and configurable grid layouts
- Local high score persistence via SQLDelight
- No registration required

## Architecture

Shared business logic is written once in Kotlin and consumed by both the Android Compose UI and the iOS CocoaPods target. Platform-specific audio uses the `expect/actual` pattern: `SoundPool`/`MediaPlayer` on Android and `AVAudioPlayer` on iOS.

## Tech Stack

| Layer | Technology |
|---|---|
| Language | Kotlin (Multiplatform), Kotlin/Native (iOS) |
| UI | Compose Multiplatform |
| DI | Koin |
| Database | SQLDelight |
| Networking | Ktor |
| Async | Kotlinx Coroutines |
| Analytics | Firebase Analytics & Crashlytics (Android) |
| Image loading | Coil |
