package presentation.components

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.padding
import androidx.compose.material.MaterialTheme.typography
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import domain.model.viewableInterface.Playable
import domain.model.viewableInterface.PlayableKind
import domain.util.DateTimeProvider
import domain.util.DateTimeUtils
import kotlinx.datetime.TimeZone
import multiplatform.composeapp.generated.resources.Res
import multiplatform.composeapp.generated.resources.Res.drawable
import org.jetbrains.compose.resources.DrawableResource
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.painterResource
import org.jetbrains.compose.resources.stringResource
import org.koin.compose.koinInject
import presentation.util.MagineSmallText
import presentation.util.themePrimaryTint0
import kotlin.time.Duration.Companion.days

@Composable
fun RenderLiveEvent(
    playable: Playable?,
) {
    playable?.apply {
        if (kind == PlayableKind.LIVE_EVENT) {
            startTimeUtc?.let { start ->
                val dateTimeUtils = koinInject<DateTimeUtils>()
                val dateTimeProvider = koinInject<DateTimeProvider>()

                val startTime = dateTimeUtils.epochMilliToLocalDateTime(start.toLong(), TimeZone.UTC)
                val currentTime = remember { dateTimeProvider.now }
                val nextDay = remember { currentTime.plus(1.days) }

                when {
                    currentTime.timeInMillis > startTime -> {
                        HandlePastLiveEvent(context, catchupStop, startTime, currentTime)
                    }

                    startTime < nextDay && startTime > currentTime.timeInMillis -> {
                        HandleCurrentLiveEvent(context, startTime)
                    }

                    else -> {
                        HandleUpcomingLiveEvent(context, startTime)
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalResourceApi::class)
@Composable
private fun HandlePastLiveEvent(
    catchupStop: Long?,
    currentTime: Calendar,
) {
    catchupStop?.let { end ->
        val endTime = TimeUnit.SECONDS.toMillis(end)
        if (currentTime.timeInMillis > endTime) {
            LiveEventIcon(
                backgroundResource = Res.drawable.ic_live_event_upcoming.drawable.ic_live_event_upcoming,
                text = context.getLocalizedString(com.magine.android.mamo.common.R.string.viewable_live_event_live_ended),
            )
        } else {
            LiveEventIcon(
                backgroundResource = Res.drawable.ic_live_event_upcoming,
                text = Res.string.viewable_live_event_live
            )
        }
    } ?: run {
        LiveEventIcon(
            backgroundResource = drawable.ic_live_event,
            text = Res.string.viewable_live_event_live
        )
    }
}

@OptIn(ExperimentalResourceApi::class)
@Composable
private fun HandleCurrentLiveEvent(startTime: Long) {
    LiveEventIcon(
        backgroundResource = Res.drawable.ic_live_event_upcoming,
        text = stringResource(Res.string.viewable_live_event_today),
    )
}

@OptIn(ExperimentalResourceApi::class)
@Composable
private fun HandleUpcomingLiveEvent(
    startTime: Long,
) {
    LiveEventIcon(
        backgroundResource = Res.drawable.ic_live_event_upcoming,
        text = startTime.toString()
    )
}

@OptIn(ExperimentalResourceApi::class)
@Composable
private fun LiveEventIcon(
    backgroundResource: DrawableResource,
    text: String,
) {
    Box(
        modifier = Modifier.padding(4.dp),
        contentAlignment = Alignment.TopEnd,
    ) {
        Image(
            painter = painterResource(backgroundResource),
            contentDescription = null,
            modifier = Modifier.align(Alignment.TopEnd),
        )
        Text(
            text = text,
            style = typography.MagineSmallText.copy(
                color = themePrimaryTint0,
                fontSize = 10.sp,
            ),
            textAlign = TextAlign.Center,
            modifier = Modifier.padding(0.dp, 2.dp, 8.dp, 0.dp)
                .align(Alignment.TopEnd),
        )
    }
}
