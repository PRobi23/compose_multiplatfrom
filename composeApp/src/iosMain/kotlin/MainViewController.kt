import androidx.compose.ui.window.ComposeUIViewController
import platform.UIKit.UIDevice

fun MainViewController() = ComposeUIViewController {

    //HACK!! https://developer.apple.com/documentation/uikit/uiuserinterfaceidiom/phone
    if (UIDevice.currentDevice.userInterfaceIdiom == 0L) {
        MobileRegisterScreen()
    } else {
        TvRegisterScreen()
    }
}

