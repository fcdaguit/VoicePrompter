# Vosk uses JNA, which resolves native bindings reflectively.
-keep class com.sun.jna.** { *; }
-keepclassmembers class * extends com.sun.jna.** { public *; }
-dontwarn java.awt.**

# Vosk JNI surface
-keep class org.vosk.** { *; }

# Apache POI / PDFBox pull in a lot of optional desktop classes that are not
# present on Android. Silence them rather than letting R8 fail the build.
-dontwarn org.apache.poi.**
-dontwarn org.apache.xmlbeans.**
-dontwarn com.tom_roush.pdfbox.**
-dontwarn javax.xml.stream.**
-dontwarn org.w3c.dom.**
