# Flutter
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# WebView / YouTube iframe player
-keepattributes JavascriptInterface
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
-keep class android.webkit.** { *; }
