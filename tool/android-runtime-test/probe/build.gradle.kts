plugins { id("com.android.application") }
android {
    namespace = "org.freevia.runtimeprobe"
    compileSdk = 36
    defaultConfig {
        applicationId = "org.freevia.runtimeprobe"
        minSdk = 28
        targetSdk = 36
        versionCode = 1
        versionName = "1"
    }
}
dependencies {
    implementation("androidx.test:runner:1.7.0")
    implementation("androidx.test.ext:junit:1.3.0")
    implementation("androidx.test.uiautomator:uiautomator:2.3.0")
}
