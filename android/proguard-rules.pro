# Twilio Programmable Voice
-keep class tvo.webrtc.** { *; }
-dontwarn tvo.webrtc.**
-keep class com.twilio.voice.** { *; }
-keepattributes InnerClasses



# Mantém classes do Twilio
-keep class com.twilio.** { *; }
-dontwarn com.twilio.**

# Mantém classes do WebRTC usadas internamente pelo Twilio
-keep class tvi.webrtc.** { *; }
-dontwarn tvi.webrtc.**

# Firebase (mensageria push)
-keep class com.google.firebase.** { *; }
-dontwarn com.google.firebase.**

# AndroidX (boas práticas gerais)
-keep class androidx.** { *; }
-dontwarn androidx.**

# Corrige erros comuns de serialização/deserialização
-keepattributes Signature,RuntimeVisibleAnnotations,AnnotationDefault

# Mantém referências usadas por reflexão
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
-keepclassmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

# Remove logs (opcional)
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
    public static *** i(...);
    public static *** w(...);
    public static *** e(...);
}
