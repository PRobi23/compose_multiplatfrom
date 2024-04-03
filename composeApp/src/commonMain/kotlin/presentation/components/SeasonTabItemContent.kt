package presentation.components


import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.focusRestorer
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import domain.model.viewableInterface.Season
import multiplatform.composeapp.generated.resources.Res
import multiplatform.composeapp.generated.resources.details_page_season_row
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.stringResource
import presentation.components.cells.SeasonItemCell
import presentation.util.themePrimaryTint0

@OptIn(ExperimentalComposeUiApi::class, ExperimentalResourceApi::class)
@Composable
fun SeasonTabItemContent(
    modifier: Modifier = Modifier,
    seasons: List<Season>,
) {
    var focusedSeasonIndex by remember { mutableIntStateOf(0) }

    Row(
        horizontalArrangement = Arrangement.spacedBy(16.dp),
        modifier = modifier,
    ) {
        if (seasons.isNotEmpty()) {
            Row(
                modifier = Modifier
                    .wrapContentWidth(),
            ) {
                LazyColumn(
                    modifier = Modifier
                        .fillMaxHeight()
                        .focusRestorer(),
                ) {
                    itemsIndexed(seasons) { index, _ ->
                        Text(
                            stringResource(Res.string.details_page_season_row),
                            style = MaterialTheme.typography.body1.copy(
                                color = themePrimaryTint0,
                                fontWeight = if (focusedSeasonIndex == index) FontWeight.Bold else FontWeight.Normal,
                            ),
                            modifier = Modifier
                                .padding(bottom = 16.dp, end = 16.dp)
                                .onFocusChanged {
                                    if (it.hasFocus) {
                                        focusedSeasonIndex = index
                                    }
                                }
                                .focusable(),
                        )
                    }
                }
            }
            Row(
                modifier = modifier
                    .weight(1f)
                    .fillMaxHeight(),
            ) {
                LazyColumn(
                    modifier = Modifier.fillMaxHeight(),
                ) {
                    seasons[focusedSeasonIndex].episodes?.let { episodes ->
                        items(episodes) { episode ->
                            SeasonItemCell(
                                episode = episode,
                                modifier = Modifier
                                    .padding(
                                        bottom = 16.dp,
                                    )
                            )
                        }
                    }
                }
            }
        }
    }
}
