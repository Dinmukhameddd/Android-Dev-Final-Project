

-dontwarn org.bouncycastle.jsse.BCSSLParameters
-dontwarn org.bouncycastle.jsse.BCSSLSocket
-dontwarn org.bouncycastle.jsse.provider.BouncyCastleJsseProvider
-dontwarn org.conscrypt.Conscrypt$Version
-dontwarn org.conscrypt.Conscrypt
-dontwarn org.conscrypt.ConscryptHostnameVerifier
-dontwarn org.openjsse.javax.net.ssl.SSLParameters
-dontwarn org.openjsse.javax.net.ssl.SSLSocket
-dontwarn org.openjsse.net.ssl.OpenJSSE
-dontwarn org.slf4j.impl.StaticLoggerBinder



-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public class * extends com.bumptech.glide.module.AppGlideModule
-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}



-keepattributes Signature

-keepattributes *Annotation*

-dontwarn sun.misc.**

-keep class com.google.gson.examples.android.model.** { <fields>; }

-keep class * extends com.google.gson.TypeAdapter
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer

-keepclassmembers,allowobfuscation class * {
  @com.google.gson.annotations.SerializedName <fields>;
}

-keepclassmembers class com.juanantbuit.domain.models.* {
    public <init>();
}

### Retrofit 2

-dontwarn com.squareup.okhttp.**
-dontwarn okio.**
-dontwarn retrofit2.**
-keep class retrofit2.** { *; }
-keepattributes Signature
-keepattributes Exceptions

-keep class com.juanantbuit.weatherproject.domain.models.** { *; }

-keep class com.juanantbuit.weatherproject.domain.models.common.** { *; }

 -keep,allowobfuscation,allowshrinking interface retrofit2.Call
 -keep,allowobfuscation,allowshrinking class retrofit2.Response

 -keep,allowobfuscation,allowshrinking class kotlin.coroutines.Continuation


# In order to provide the most meaningful crash reports
-keepattributes SourceFile,LineNumberTable
# If you're using custom Eception
-keep public class * extends java.lang.Exception
-keep class com.crashlytics.** { *; }
-dontwarn com.crashlytics.**
-keep class com.google.firebase.crashlytics.** { *; }
-dontwarn com.google.firebase.crashlytics.**

### Android Architecture Components

-keep class * implements android.arch.lifecycle.LifecycleObserver {
    <init>(...);
}

-keepclassmembers class * extends android.arch.lifecycle.ViewModel {
    <init>(...);
}

-keepclassmembers class android.arch.lifecycle.Lifecycle$State { *; }
-keepclassmembers class android.arch.lifecycle.Lifecycle$Event { *; }

-keepclassmembers class * {
    @android.arch.lifecycle.OnLifecycleEvent *;
}

### Kotlin Coroutine

-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}
-keepnames class kotlinx.coroutines.android.AndroidExceptionPreHandler {}
-keepnames class kotlinx.coroutines.android.AndroidDispatcherFactory {}

-keepclassmembernames class kotlinx.** {
    volatile <fields>;
}

-keepclassmembernames class kotlin.coroutines.SafeContinuation {
    volatile <fields>;
}

-dontwarn kotlinx.atomicfu.**

-dontwarn kotlinx.coroutines.flow.**

### Kotlin

-keepclassmembers class **$WhenMappings {
    <fields>;
}
-keep class kotlin.Metadata { *; }
-keepclassmembers class kotlin.Metadata {
    public <methods>;
}