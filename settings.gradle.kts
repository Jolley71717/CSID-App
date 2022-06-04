pluginManagement {
    repositories {
        google()
        gradlePluginPortal()
        mavenCentral()
    }
    val androidPluginVersion: String by settings
    val kotlinJvmVersion: String by settings
    val multiplatformResourcesPlugin: String by settings

    plugins {
        kotlin("android") version kotlinJvmVersion
        kotlin("multiplatform") version kotlinJvmVersion
        id("com.android.application") version androidPluginVersion
        id("com.android.library") version androidPluginVersion
//        id("dev.icerock.mobile.multiplatform-resources") version multiplatformResourcesPlugin
    }
}

rootProject.name = "CSID_Handbook"
include(":CSID_Handbook_android")
include(":shared_handbook")
