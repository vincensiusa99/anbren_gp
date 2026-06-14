# anbren_gp

AnbrenGP is a Flutter application built as a MotoGP media companion. It delivers a polished branded experience with a splash transition, login screen, custom fonts, and rich background assets.

Figma design: https://www.figma.com/design/5bVSbLRmmwkQAaq3neCWBi/anbrengp?node-id=14-43&t=iD5zfUlSd1L3zGPR-1

## Overview

This project includes:
- A blurred splash screen with a custom glass-style logo
- A styled login page with background imagery and modern card UI
- Dark-theme Material 3 styling for a premium MotoGP experience
- Custom fonts and asset-driven branding

## Features

- Branded splash screen using `assets/jorge-martin-unsplash.jpg`
- Login UI with glassmorphism styling and overlay effects
- Custom logo asset at `assets/disco-ball.png`
- Multiple custom fonts under `assets/fonts/`
- Cross-platform Flutter support for Android, iOS, Linux, macOS, Windows, and web

## Project structure

- `lib/main.dart` — app entrypoint and splash navigation
- `lib/login_page.dart` — login screen UI and form container
- `lib/welcome_screen.dart` — splash background and logo presentation
- `pubspec.yaml` — app metadata, dependencies, assets, and fonts
- `assets/` — image and font assets used by the UI
- `android/`, `ios/`, `linux/`, `macos/`, `windows/`, `web/` — platform-specific runner and configuration files

## Assets and fonts

This app includes:
- `assets/jorge-martin-unsplash.jpg` as the splash background
- `assets/pecco-unsplash.jpg` as the login page background
- `assets/disco-ball.png` as the branded logo image
- Custom font families:
  - `MGPDisplay`
  - `MGPInline`
  - `SFPRODISPLAYREGULAR`
  - `SFPRODISPLAYMEDIUM`
  - `SFPRODISPLAYBOLD`

## Requirements

- Flutter SDK `^3.12.0`
- Dart SDK included with Flutter

## Run locally

From the project root:

```bash
flutter pub get
flutter run
```

To target a specific platform:

```bash
flutter run -d android
flutter run -d ios
flutter run -d chrome
flutter run -d windows
flutter run -d linux
flutter run -d macos
```

## Notes

- This package is marked as `publish_to: 'none'` in `pubspec.yaml`, so it is not intended for pub.dev publishing.
- The app uses Material 3 styling and is configured for dark mode.
- Local and generated files such as `.metadata`, `.vscode/`, `android/local.properties`, and `**/Flutter/ephemeral/` should remain excluded from version control.

## Next updates

Planned improvements for future releases include:
- Minor UI polish and styling refinements across splash, login, and content screens
- A dedicated homepage/dashboard for MotoGP news, rider stats, and trending updates
- Better navigation flow after login, including bottom navigation or tabbed sections
- Data-driven content sources and live news integration
- Additional mobile platform-specific enhancements and responsive layout adjustments
