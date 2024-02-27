import androidx.compose.ui.window.ComposeUIViewController
import platform.UIKit.UIDevice
import cafe.adriel.voyager.navigator.Navigator

fun MainViewController() = ComposeUIViewController {

    //HACK!! https://developer.apple.com/documentation/uikit/uiuserinterfaceidiom/phone
    val screen = if (UIDevice.currentDevice.userInterfaceIdiom == 0L) {
        MobileRegisterScreen()
    } else {
        TvRegisterScreen()
    }
    Navigator(screen)
}

