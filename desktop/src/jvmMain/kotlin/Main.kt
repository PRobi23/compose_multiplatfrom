import androidx.compose.ui.window.Window
import androidx.compose.ui.window.application
import com.magine.multiplatform.common.Application


fun main() = application {
    Window(onCloseRequest = ::exitApplication) {
       Application()
    }
}
