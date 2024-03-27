package presentation.components

import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.material.MaterialTheme.typography
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import domain.model.viewableInterface.ViewableInterface
import io.kamel.image.KamelImage
import multiplatform.composeapp.generated.resources.Res
import multiplatform.composeapp.generated.resources.ic_play
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.painterResource
import presentation.helpers.compose.loadImage
import presentation.util.MagineBodyText
import presentation.util.md_theme_dark_primary
import presentation.util.themePrimaryTint0

@OptIn(ExperimentalResourceApi::class)
@Composable
internal fun SeasonItemCell(
    episode: ViewableInterface.VideoViewable.Episode,
    modifier: Modifier = Modifier,
) {
    val imageHeight = 150.dp
    val imageWidth = 266.66.dp
    var hasFocus by remember {
        mutableStateOf(
            false,
        )
    }
    var border by remember {
        mutableStateOf(BorderStroke(width = 0.dp, color = Color.Transparent))
    }

    Box(
        modifier = modifier
            .wrapContentHeight()
            .fillMaxWidth()
            .onFocusChanged { focus ->
                border =
                    if (focus.isFocused) {
                        BorderStroke(width = 4.dp, color = Color.White)
                    } else {
                        BorderStroke(width = 0.dp, color = Color.Transparent)
                    }
                hasFocus = focus.isFocused
            }
            .focusable()
            .clickable {
            },
    ) {
        Row(
            modifier = Modifier
                .fillMaxHeight()
                .wrapContentWidth(),
        ) {
            val (skeletonImageShown, imagePainter) = loadImage(
                url = episode.headerImage,
                widthPx = with(LocalDensity.current) { imageWidth.toPx().toInt() },
                heightPx = with(LocalDensity.current) { imageHeight.toPx().toInt() },
            )

            Box {
                KamelImage(
                    resource = imagePainter,
                    contentDescription = "Description",
                    modifier = Modifier
                        .size(height = imageHeight, width = imageWidth)
                        .border(border)
                        .onFocusChanged {
                            hasFocus = it.isFocused
                            if (it.isFocused) {
                                BorderStroke(width = 4.dp, color = Color.White)
                            } else {
                                BorderStroke(width = 0.dp, color = Color.Transparent)
                            }
                        }
                        .background(color = if (skeletonImageShown) md_theme_dark_primary else Color.Transparent),
                    contentScale = ContentScale.Crop
                )
                // Play overlay, if has focus
                if (hasFocus) {
                    Image(
                        painter = painterResource(Res.drawable.ic_play),
                        contentDescription = "Play",
                        modifier = Modifier
                            .align(Alignment.Center)
                            .size(48.dp),
                    )
                }
            }
            Column(
                modifier = Modifier
                    .fillMaxHeight()
                    .fillMaxWidth(),
            ) {
                episode.title?.let { title ->
                    Text(
                        modifier = Modifier.padding(start = 16.dp),
                        text = title,
                        style = typography.MagineBodyText.copy(
                            fontWeight = FontWeight.Bold,
                            color = themePrimaryTint0,
                        ),
                    )
                }
                episode.durationHuman?.let { duration ->
                    Text(
                        modifier = Modifier.padding(start = 16.dp),
                        style = typography.MagineBodyText.copy(
                            color = themePrimaryTint0,
                        ),
                        text = duration,
                    )
                }
                episode.description?.let { description ->
                    Text(
                        modifier = Modifier.padding(start = 16.dp, top = 16.dp),
                        style = typography.MagineBodyText.copy(
                            color = themePrimaryTint0,
                        ),
                        text = description,
                    )
                }
            }
        }
    }
}
