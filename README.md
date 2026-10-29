# Reels App

Vertical Shorts-style feed powered by YouTube embeds (Flutter).

## Android APK

### Debug APK (quick test)

```bash
flutter build apk --debug
```

Output: `build/app/outputs/flutter-apk/app-debug.apk`

### Release APK

Uses debug signing by default so `flutter build apk --release` works without a keystore. For distribution, create a release keystore:

```bash
keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
cp android/key.properties.example android/key.properties
# Edit android/key.properties with your paths and passwords.
```

Then wire `key.properties` into `android/app/build.gradle.kts` (see [Flutter Android deployment](https://docs.flutter.dev/deployment/android)).

```bash
flutter build apk --release
```

Output: `build/app/outputs/flutter-apk/app-release.apk`

### Split per ABI (smaller downloads)

```bash
flutter build apk --release --split-per-abi
```

## Android permissions

Configured in `android/app/src/main/AndroidManifest.xml`:

| Permission | Purpose |
|------------|---------|
| `INTERNET` | Stream YouTube Shorts |
| `ACCESS_NETWORK_STATE` | Network availability (WebView / plugins) |

HTTPS-only traffic is enforced via `network_security_config.xml`. Package visibility queries allow opening links in the browser and YouTube app.

## Run on device

```bash
flutter run
```
