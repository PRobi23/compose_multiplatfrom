package utils

actual fun getPlatform(): String = "android"
actual fun getDeviceModel(): String = "Desktop"
actual fun getDeviceVendor(): String = System.getProperty("os.name")