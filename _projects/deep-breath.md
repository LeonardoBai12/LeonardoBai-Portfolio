---
title: DeepBreath
slug: deep-breath
order: 4
description: >-
  Flutter app that measures air quality by location. Browse countries, select
  a location, and view detailed air quality parameters. Uses device GPS for
  automatic location detection.
stack:
  - Flutter
  - Dart
  - GetX
stack_logos:
  - flutter
repo_url: https://github.com/LeonardoBai12/DeepBreath
image: /assets/images/images-7.png
image_alt: Flutter
card_bg: "#ffffff"
---

DeepBreath is a Flutter application that shows real-time air quality data for any location. Users can browse countries, drill into specific locations, and inspect detailed air quality parameters. Device GPS is used for automatic location detection.

## Features

- Browse countries and their available monitoring locations
- View detailed air quality parameters per location
- GPS-based automatic location detection
- Clean, animated UI with hero transitions
- Country flag display

## Tech Stack

| Layer | Technology |
|---|---|
| Framework | Flutter (SDK 3.2+) |
| Language | Dart |
| State / DI / Routing | GetX 4.6 |
| Networking | http 1.2 |
| Location | geolocator 11.0 |
| i18n | intl 0.19 |
| Animations | hero_animation |
| Flags | flag 7.0 |
| Font | Proxima Nova |

## Architecture

Feature modules (`countries/`, `location/`) with shared utilities in `utils/`. GetX handles dependency injection, state management, and named-route navigation.
