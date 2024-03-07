import androidx.compose.desktop.ui.tooling.preview.Preview
import androidx.compose.runtime.Composable
import androidx.compose.ui.window.Window
import androidx.compose.ui.window.application
import di.appModule
import org.koin.core.context.loadKoinModules
import org.koin.core.context.startKoin
import cafe.adriel.voyager.navigator.Navigator
import cafe.adriel.voyager.transitions.SlideTransition
import presentation.screens.tv.TvRegisterScreen

fun main() = application {
    Window(onCloseRequest = ::exitApplication, title = "Multiplatform") {
        val screen = TvSplashScreen()
        Navigator(screen)
        startKoin {
            loadKoinModules(appModule)
        }

        Navigator(screen) { navigator ->
            SlideTransition(navigator)
        }
    }
}

@Preview
@Composable
fun AppDesktopPreview() {
    TvRegisterScreen()
}