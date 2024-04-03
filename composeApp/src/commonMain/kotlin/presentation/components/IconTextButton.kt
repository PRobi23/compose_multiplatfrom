package presentation.components

import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.material.Button
import androidx.compose.material.Icon
import androidx.compose.material.IconButton
import androidx.compose.material.MaterialTheme.typography
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.painter.Painter
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import presentation.util.MagineBodyText

@Composable
internal fun IconTextButton(
    modifier: Modifier = Modifier,
    text: String,
    icon: Painter? = null,
    onClick: () -> Unit,
) {
    if (text.count() > 8) {
        Button(
            onClick = onClick,
            modifier = modifier
                .width(130.dp)
                .height(60.dp)
        ) {
            icon?.let {
                Icon(modifier = Modifier.padding(top = 5.dp), painter = it, contentDescription = null)
            }
            Text(
                modifier = Modifier.padding(top = 3.dp),
                text = text,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
                style = typography.MagineBodyText.copy(
                    fontWeight = FontWeight.Bold,
                    textAlign = TextAlign.Center,
                ),
            )
        }
    } else {
        IconButton(
            onClick = onClick,
            modifier = modifier
                .width(130.dp)
                .height(60.dp),
            content = {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    icon?.let {
                        Icon(
                            painter = it,
                            contentDescription = null,
                        )
                    }
                    Text(
                        text = text,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis,
                        style = typography.MagineBodyText.copy(
                            fontWeight = FontWeight.Bold,
                            textAlign = TextAlign.Center,
                        ),
                    )
                }
            },
        )
    }
}
