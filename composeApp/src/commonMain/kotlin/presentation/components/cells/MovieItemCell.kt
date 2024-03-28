package presentation.components

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.*
import androidx.compose.material.Card
import androidx.compose.material.LinearProgressIndicator
import androidx.compose.material.MaterialTheme.typography
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.RectangleShape
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import domain.model.viewableInterface.ViewableInterface
import domain.model.viewableInterface.getWatchedPercentage
import io.kamel.image.KamelImage
import multiplatform.composeapp.generated.resources.Res
import multiplatform.composeapp.generated.resources.viewable_live_event_airing_at
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.stringResource
import presentation.helpers.compose.Constants
import presentation.helpers.compose.loadImage
import presentation.helpers.extensions.getTitle
import presentation.util.MagineSmallText
import presentation.util.themePrimary
import presentation.util.themePrimaryTint0

@OptIn(ExperimentalResourceApi::class)
@Composable
internal fun MovieItemCell(
    modifier: Modifier = Modifier,
    imageUrl: String?,
    imageType: String,
    viewable: ViewableInterface,
) {

    val height = if (imageType == Constants.SixteenNineCollection) 100.dp else 144.dp
    val width = if (imageType == Constants.SixteenNineCollection) 178.dp else 96.dp

    val (skeletonImageShown, imagePainter) =
        loadImage(
            url = imageUrl,
            widthPx = with(LocalDensity.current) { width.toPx().toInt() },
            heightPx = with(LocalDensity.current) { height.toPx().toInt() },
        )

    var border by remember { mutableStateOf(BorderStroke(width = 0.dp, color = Color.Transparent)) }

    Column(
        modifier = modifier
            .onFocusChanged {
                border =
                    if (it.isFocused) {
                        BorderStroke(
                            width = 4.dp,
                            color = themePrimaryTint0
                        )
                    } else {
                        BorderStroke(width = 0.dp, color = Color.Transparent)
                    }
            }
            .focusable()
    ) {
        Card(
            Modifier
                .padding(8.dp)
                .size(
                    height = height,
                    width = width,
                ),
            shape = RectangleShape,
        ) {
            Box {
                KamelImage(
                    resource = imagePainter,
                    contentDescription = "Description",
                    modifier = Modifier
                        .fillMaxSize()
                        .background(color = if (skeletonImageShown) themePrimary else Color.Transparent)
                        .border(border),
                    contentScale = ContentScale.None,
                )
                when (viewable) {
                    is ViewableInterface.VideoViewable -> {
                        viewable.apply {
                            this.defaultPlayable?.channel?.apply {
                                Box(
                                    modifier = Modifier
                                        .padding(10.dp)

                                ) {

                                    /*  Image(
                                          painter = painterResource(Res.drawable.shape_channel_logo_bg),
                                          contentDescription = null,
                                          modifier = Modifier.size(32.dp),
                                      )*/
                                    KamelImage(
                                        resource = loadImage(
                                            url = this@apply.logoDark,
                                            widthPx = with(LocalDensity.current) {
                                                24.dp.toPx().toInt()
                                            },
                                            heightPx = with(LocalDensity.current) {
                                                24.dp.toPx().toInt()
                                            },
                                        ).second,
                                        contentDescription = "",
                                        modifier = Modifier.align(Alignment.Center),
                                    )
                                }
                            }
                        }
                    }

                    else -> {}
                }
            }
        }

        when (viewable) {
            is ViewableInterface.VideoViewable -> {
                viewable.apply {
                    if (imageType == Constants.SixteenNineCollection) {
                        Text(
                            text = viewable.getTitle(),
                            modifier = Modifier
                                .align(Alignment.Start)
                                .padding(8.dp, 4.dp, 8.dp, 0.dp),
                            style = typography.MagineSmallText.copy(
                                color = themePrimaryTint0,
                            ),
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                    }

                    getWatchedPercentage()?.let {
                        if (it > 0) {
                            LinearProgressBar(it.toFloat())
                        }
                    }
                }
            }

            else -> {}
        }
    }
}

@Composable
private fun LinearProgressBar(progress: Float) {
    Column(modifier = Modifier.fillMaxWidth()) {
        LinearProgressIndicator(
            progress = progress,
            modifier = Modifier
                .fillMaxWidth(),
            color = Color.LightGray,
            backgroundColor = themePrimary,
        )
    }
}

@Composable
private fun LiveEventProgress(progress: Float, remainingTime: String) {
    Column(
        modifier = Modifier
            .padding(16.dp)
            .background(Color.LightGray),
    ) {
        Card(
            modifier = Modifier
                .fillMaxWidth(),
        ) {
            Column(
                modifier = Modifier
                    .padding(16.dp),
            ) {
                LinearProgressIndicator(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(8.dp),
                    progress = progress,
                    color = Color.Blue, // Replace with desired progress bar color
                )
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = remainingTime,
                    style = typography.MagineSmallText.copy(
                        color = themePrimaryTint0,
                    ),
                    modifier = Modifier,
                )
            }
        }
    }
}

@OptIn(ExperimentalResourceApi::class)
@Composable
private fun AiringTimeContainer() {
    Column(
        modifier = Modifier
            .background(Color.LightGray)
            .padding(16.dp)
            .fillMaxWidth(),
    ) {
        Text(
            text = stringResource(Res.string.viewable_live_event_airing_at),
            style = typography.MagineSmallText.copy(
                color = themePrimaryTint0
            ),
            modifier = Modifier.padding(bottom = 8.dp),
        )
    }
}
