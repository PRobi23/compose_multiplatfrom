package presentation.helpers.compose

import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.painter.Painter
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import io.kamel.core.DataSource
import io.kamel.core.Resource
import io.kamel.image.KamelImage
import io.kamel.image.asyncPainterResource
import multiplatform.composeapp.generated.resources.Res
import multiplatform.composeapp.generated.resources.ic_default_poster
import org.jetbrains.compose.resources.ExperimentalResourceApi

@Composable
fun calculateMaxHeight(textStyle: TextStyle, maxLines: Int): Dp {
    val lineHeight = with(LocalDensity.current) {
        (textStyle.fontSize * maxLines).toDp()
    }
    return lineHeight
}

@OptIn(ExperimentalResourceApi::class)
private val DefaultImageResourceId = Res.drawable.ic_default_poster


@OptIn(ExperimentalResourceApi::class)
@Composable
fun loadImage(
    url: String?,
    crop: Boolean = true,
    widthPx: Int = 0,
    heightPx: Int = 0,
): Pair<Boolean, Resource<Painter>> {

    val imageUrl = if (!url.isNullOrEmpty() && widthPx > 0 && heightPx > 0) {
        "$url?width=$widthPx&height=$heightPx"
    } else {
        url ?: ""
    }

    val imagePainter = if (imageUrl.isNotEmpty()) {
        asyncPainterResource(data = imageUrl)
    } else {
        // Load default image as a fallback
        asyncPainterResource(data = DefaultImageResourceId)
    }

    return imageUrl.isNotEmpty() to imagePainter
}

