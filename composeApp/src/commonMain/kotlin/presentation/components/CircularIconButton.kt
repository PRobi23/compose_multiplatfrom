package presentation.components

import androidx.compose.foundation.layout.size
import androidx.compose.material.Icon
import androidx.compose.material.IconButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.painter.Painter
import androidx.compose.ui.unit.dp

@Composable
internal fun CircularIconButton(
    icon: Painter,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    
    IconButton(
        onClick = onClick,
        modifier = modifier
            .size(50.dp),
        content = {
            Icon(
                painter = icon,
                contentDescription = null,
            )
        },
    )
}b