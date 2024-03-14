package utils

import android.os.Build

actual fun getPlatform(): String = "android"
actual fun getDeviceModel(): String = Build.MODEL
actual fun getDeviceVendor(): String = Build.BRAND