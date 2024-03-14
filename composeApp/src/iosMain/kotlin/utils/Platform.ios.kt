package utils

import platform.UIKit.UIDevice
import di.appModule
import org.koin.core.context.startKoin

actual fun getPlatform(): String = "ios"
actual fun getDeviceModel(): String = UIDevice.currentDevice.model
actual fun getDeviceVendor(): String = "Apple"

fun initKoin() {
    startKoin {
        modules(appModule)
    }
}