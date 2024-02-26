import androidx.compose.desktop.ui.tooling.preview.Preview
import androidx.compose.runtime.Composable
import androidx.compose.ui.window.Window
import androidx.compose.ui.window.application
import di.appModule
import org.koin.core.context.loadKoinModules
import org.koin.core.context.startKoin

fun main() = application {
    Window(onCloseRequest = ::exitApplication, title = "Multiplatform") {
        TvRegisterScreen()
        startKoin {
            loadKoinModules(appModule)
        }
    }
}

@Preview
@Composable
fun AppDesktopPreview() {
    TvRegisterScreen()
}