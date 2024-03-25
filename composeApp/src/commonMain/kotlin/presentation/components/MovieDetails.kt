package presentation.components

import androidx.compose.foundation.layout.*
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import domain.model.viewableInterface.ViewableInterface
import multiplatform.composeapp.generated.resources.Res
import multiplatform.composeapp.generated.resources.ic_play
import multiplatform.composeapp.generated.resources.ic_trailer
import multiplatform.composeapp.generated.resources.ic_watchlist_add
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.painterResource
import presentation.helpers.extensions.getSubtitle
import presentation.util.md_theme_dark_onPrimary
import presentation.util.md_theme_light_onPrimary
import presentation.viewModels.tv.ViewableViewState

@Composable
fun MovieDetails(state: ViewableViewState.Ready) {
    state.viewable?.let { viewable ->
        Content(viewable)
    }
}

@Composable
private fun Content(
    viewable: ViewableInterface,
) {
    Box(
        modifier = Modifier
            .fillMaxSize(),
    ) {
        Column(modifier = Modifier.fillMaxWidth()) {
            Spacer(modifier = Modifier.height(16.dp))

            Column(
                modifier = Modifier.padding(start = 16.dp),
            ) {
                MovieLargeTitle(title = viewable.title ?: "")
                Spacer(modifier = Modifier.height(16.dp))
                MovieSubtitle(subtitle = viewable.getSubtitle())
                Spacer(modifier = Modifier.height(16.dp))
                MovieDescription(description = viewable.description ?: "")
                Spacer(modifier = Modifier.height(32.dp))
                MovieExtraInfo(viewable = viewable)
                ButtonSection()
            }
        }
    }
}

@Composable
private fun MovieLargeTitle(title: String) {

    Text(
        text = title,
        style = MaterialTheme.typography.h3.copy(
            fontSize = 66.sp,
            fontWeight = FontWeight.Bold,
            color = md_theme_dark_onPrimary,
        ),
        maxLines = 1,
    )
}

@Composable
private fun MovieSubtitle(subtitle: String) {
    Text(
        text = subtitle,
        style = MaterialTheme.typography.h3.copy(
            fontSize = 26.sp,
            fontWeight = FontWeight.Bold,
            color = md_theme_light_onPrimary,
        ),
        modifier = Modifier.padding(top = 8.dp),
        maxLines = 2,
    )
}

@Composable
private fun MovieDescription(description: String) {
    Text(
        text = description,
        style = MaterialTheme.typography.h3.copy(
            color = md_theme_light_onPrimary
        ),
        maxLines = 3,
        overflow = TextOverflow.Ellipsis,
    )
}

@OptIn(ExperimentalResourceApi::class)
@Composable
private fun ButtonSection() {
    Row {
        CircularIconButton(
            modifier = Modifier.padding(end = 8.dp, top = 24.dp),
            onClick = { /*TODO*/ },
            icon = painterResource(Res.drawable.ic_play),
        )
        CircularIconButton(
            modifier = Modifier.padding(end = 8.dp, top = 24.dp),
            onClick = { /*TODO*/ },
            icon = painterResource(Res.drawable.ic_trailer),
        )
        CircularIconButton(
            modifier = Modifier.padding(end = 8.dp, top = 24.dp),
            onClick = {},
            icon = painterResource(Res.drawable.ic_watchlist_add),
        )
    }
}
