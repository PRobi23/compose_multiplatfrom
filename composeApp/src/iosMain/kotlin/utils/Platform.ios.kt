import platform.UIKit.UIDevice
import di.appModule
import org.koin.core.context.startKoin
import util.Platform

class IOSPlatform : Platform {
    override val name: String = UIDevice.currentDevice.systemName() + " " + UIDevice.currentDevice.systemVersion
}

actual fun getPlatform(): Platform = IOSPlatform()

fun initKoin() {
    startKoin {
        modules(appModule)
    }
}