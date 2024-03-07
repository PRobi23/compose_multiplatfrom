import androidx.compose.ui.window.ComposeUIViewController
import platform.UIKit.UIDevice
import cafe.adriel.voyager.navigator.Navigator
import cafe.adriel.voyager.transitions.SlideTransition
import presentation.screens.mobile.MobileFillInEmailScreen
import presentation.screens.tv.TvLoginScreen

fun MainViewController() = ComposeUIViewController {

    //HACK!! https://developer.apple.com/documentation/uikit/uiuserinterfaceidiom/phone
    val screen = if (UIDevice.currentDevice.userInterfaceIdiom == 0L) {
        MobileFillInEmailScreen()
    } else {
        TvLoginScreen()
    }
    Navigator(screen) { navigator ->
        SlideTransition(navigator)
    }
}

