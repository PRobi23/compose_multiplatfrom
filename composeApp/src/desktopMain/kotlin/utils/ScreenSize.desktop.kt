package utils

import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.platform.LocalDensity

@Composable
actual fun getScreenSizeInfo(): ScreenSizeInfo {
    val density = LocalDensity.current

    val screenSizeInfo = java.awt.Toolkit.getDefaultToolkit().screenSize
    return remember {

        ScreenSizeInfo(
            hPX = screenSizeInfo.height,
            wPX = screenSizeInfo.width,
            hDP = with(density) { screenSizeInfo.height.toDp() },
            wDP = with(density) { screenSizeInfo.width.toDp() }
        )
    }
}