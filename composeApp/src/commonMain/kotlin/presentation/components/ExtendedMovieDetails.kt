package presentation.components

import androidx.compose.animation.core.Spring
import androidx.compose.animation.core.spring
import androidx.compose.foundation.layout.*
import androidx.compose.material.MaterialTheme
import androidx.compose.material.MaterialTheme.typography
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.platform.LocalFocusManager
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import domain.model.viewableInterface.ViewableInterface
import multiplatform.composeapp.generated.resources.*
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.painterResource
import org.jetbrains.compose.resources.stringResource
import presentation.helpers.compose.animateTextStyleAsState
import presentation.helpers.extensions.checkWatchList
import presentation.helpers.extensions.hasWatchOffset
import presentation.helpers.extensions.resolveSubtitle
import presentation.util.MagineBodyText
import presentation.util.MagineDisplayText
import presentation.util.MagineSmallText
import presentation.util.themePrimaryTint0
import presentation.viewModels.tv.TvViewableViewModel
import presentation.viewModels.tv.ViewableViewState

@Composable
fun ExtendedMovieDetails(
    modifier: Modifier = Modifier,
    state: ViewableViewState.Ready,
    collapseMovieDetails: Boolean,
    viewModel: TvViewableViewModel,
) {
    state.viewable?.let { viewable ->
        Content(
            modifier = modifier,
            viewable = viewable,
            isTrailerButtonVisible = state.trailerButtonIsVisible,
            viewModel = viewModel,
            collapseMovieDetails = collapseMovieDetails,
        )
    }
}

@Composable
private fun Content(
    modifier: Modifier,
    viewable: ViewableInterface,
    isTrailerButtonVisible: Boolean,
    collapseMovieDetails: Boolean,
    viewModel: TvViewableViewModel,
) {

    Box(
        modifier = modifier
            .fillMaxWidth(0.8f)
            .wrapContentHeight(),
    ) {
        Column(
            modifier = Modifier
                .padding(start = 16.dp),
        ) {
            MovieLargeTitle(
                title = viewable.title ?: "",
                collapseMovieDetails = collapseMovieDetails,
            )
            if (!collapseMovieDetails) {
                MovieSubtitle(subtitle = viewable.resolveSubtitle())
                MovieDescription(description = viewable.description ?: "")
                MovieExtraInfo(viewable = viewable)
                ButtonSection(
                    viewable = viewable,
                    isTrailerButtonVisible = isTrailerButtonVisible,
                )
            }
        }
    }
}

@Composable
private fun MovieLargeTitle(collapseMovieDetails: Boolean, title: String) {

    val smallerText = MaterialTheme.typography.body1.copy(
        fontWeight = FontWeight.Bold,
        fontSize = 20.sp,
        color = themePrimaryTint0
    )
    val largerText = typography.MagineDisplayText.copy(
        color = themePrimaryTint0,
    )
    var textStyle by remember { mutableStateOf(largerText) }
    val animatedTextStyle by animateTextStyleAsState(
        targetValue = textStyle,
        spring(stiffness = Spring.StiffnessLow),
    )
    LaunchedEffect(collapseMovieDetails) {
        textStyle = if (collapseMovieDetails) {
            smallerText
        } else {
            largerText
        }
    }

    Text(
        text = title,
        style = animatedTextStyle,
        modifier = Modifier
            .fillMaxWidth()
            .padding(start = 20.dp, top = 20.dp, end = 60.dp, bottom = 0.dp),
        maxLines = 1,
    )
}

@Composable
private fun MovieSubtitle(subtitle: String) {
    if (subtitle.isNotEmpty()) {
        Text(
            text = subtitle,
            style = typography.MagineSmallText.copy(
                color = themePrimaryTint0,
            ),
            modifier = Modifier
                .fillMaxWidth()
                .padding(start = 20.dp, top = 12.dp, end = 60.dp, bottom = 0.dp),
            maxLines = 2,
        )
    }
}

@Composable
private fun MovieDescription(description: String) {

    if (description.isNotEmpty()) {
        Text(
            text = description,
            style = typography.MagineBodyText.copy(
                color = themePrimaryTint0
            ),
            modifier = Modifier
                .fillMaxWidth()
                .padding(start = 20.dp, top = 18.dp, end = 190.dp, bottom = 0.dp),
            maxLines = 3,
            overflow = TextOverflow.Ellipsis,
        )
    }
}

@OptIn(ExperimentalResourceApi::class)
@Composable
private fun ButtonSection(
    viewable: ViewableInterface,
    isTrailerButtonVisible: Boolean,
) {
    val iconState = remember {
        mutableStateOf(
            if (viewable.checkWatchList() == true) {
                Res.drawable.ic_watchlist_check
            } else {
                Res.drawable.ic_watchlist_add
            },
        )
    }
    val focusRequester = FocusRequester()
    val focusManager = LocalFocusManager.current

    LaunchedEffect(key1 = true) {
        focusRequester.requestFocus()
    }
    Row {
        // If IAP purchase buttons are empty we can show play button
        IconTextButton(
            modifier = Modifier
                .padding(
                    start = 20.dp,
                    end = 12.dp,
                    top = 28.dp,
                    bottom = 6.dp,
                )
                .focusRequester(focusRequester),
            text = getPlayText(viewable = viewable),
            icon = painterResource(Res.drawable.ic_play),
            onClick = { },
        )
        if (viewable.hasWatchOffset()) {
            IconTextButton(
                modifier = Modifier
                    .padding(
                        start = 20.dp,
                        end = 12.dp,
                        top = 28.dp,
                        bottom = 6.dp,
                    ),
                text = stringResource(Res.string.viewable_tv_view_action_restart),
                icon = painterResource(Res.drawable.ic_restart),
                onClick = {}
            )
        }
        if (viewable is ViewableInterface.Channel) {
            IconTextButton(
                modifier = Modifier
                    .padding(end = 12.dp, top = 27.dp),
                text = stringResource(Res.string.tv_viewable_view_action_schedule),
                onClick = {}
            )
        }

        if (isTrailerButtonVisible) {
            CircularIconButton(
                modifier = Modifier
                    .padding(end = 12.dp, top = 32.dp),
                icon = painterResource(Res.drawable.ic_trailer),
                onClick = {}
            )
        }

        CircularIconButton(
            modifier = Modifier
                .padding(end = 12.dp, top = 32.dp),
            onClick = {
                viewable.checkWatchList()?.let {
                    if (it) {
                        iconState.value = Res.drawable.ic_watchlist_add
                    } else {
                        iconState.value = Res.drawable.ic_watchlist_check
                    }
                }
            },
            icon = painterResource(iconState.value),
        )
    }
}

@OptIn(ExperimentalResourceApi::class)
@Composable
private fun getPlayText(viewable: ViewableInterface): String {
    return if (viewable.hasWatchOffset()) {
        stringResource(Res.string.tv_viewable_view_action_continue_watching)
    } else if (viewable is ViewableInterface.Show) {
        stringResource(Res.string.tv_viewable_view_action_play)
    } else {
        stringResource(Res.string.tv_viewable_view_action_play)
    }
}
