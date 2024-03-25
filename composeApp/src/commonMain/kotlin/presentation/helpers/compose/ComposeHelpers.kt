package presentation.helpers.compose

import androidx.compose.runtime.Composable
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp

@Composable
fun calculateMaxHeight(textStyle: TextStyle, maxLines: Int): Dp {
    val lineHeight = with(LocalDensity.current) {
        (textStyle.fontSize * maxLines).toDp()
    }
    return lineHeight
}