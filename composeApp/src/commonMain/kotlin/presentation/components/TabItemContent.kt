package presentation.components

import androidx.compose.animation.animateContentSize
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.material.MaterialTheme.typography
import androidx.compose.material.Tab
import androidx.compose.material.TabRow
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.focusRestorer
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextDecoration
import androidx.compose.ui.unit.dp
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.stringResource
import presentation.model.MoviesTabItem
import presentation.model.ReadMoreTabItem
import presentation.model.SeasonTabItem
import presentation.model.getTabItems
import presentation.util.MagineBodyText
import presentation.util.themePrimary
import presentation.util.themePrimaryTint0
import presentation.viewModels.tv.ViewableViewState
import kotlin.time.Duration

@OptIn(
    ExperimentalComposeUiApi::class, ExperimentalResourceApi::class,
)
@Composable
fun TabItemsContent(
    modifier: Modifier = Modifier,
    viewableViewState: ViewableViewState.Ready,
    resetFocus: Boolean,
) {
    var selectedTabIndex by remember { mutableIntStateOf(0) }
    var focusedTabIndex by remember { mutableIntStateOf(0) }

    val tabItems = viewableViewState.viewable?.let {
        getTabItems(it)
    } ?: emptyList()
    val primaryColor = themePrimary

    LaunchedEffect(key1 = resetFocus) {
        selectedTabIndex = 0
        focusedTabIndex = 0
    }

    Column(
        modifier = modifier
            .animateContentSize()
            .fillMaxHeight(),
    ) {
        TabRow(
            selectedTabIndex = selectedTabIndex,
            backgroundColor = Color.Transparent,
            modifier = Modifier
                .padding(start = 36.dp, end = 16.dp)
                .focusRestorer(),
            contentColor = primaryColor,
            divider = { Spacer(modifier = Modifier.width(24.dp)) },
            indicator = { _ ->
                // set indicator if needed
            },
        ) {
            tabItems.forEachIndexed { index, item ->
                Tab(
                    selected = selectedTabIndex == index,
                    onClick = { selectedTabIndex = index },
                    content = {
                        (
                                item.textResourceId?.let { stringResource(it) }
                                    ?: item.title
                                )?.let {
                                Text(
                                    text = it,
                                    maxLines = 2,
                                    style = typography.MagineBodyText.copy(
                                        fontWeight = if (selectedTabIndex == index) FontWeight.Bold else FontWeight.Normal,
                                        textDecoration = if (focusedTabIndex == index) TextDecoration.Underline else TextDecoration.None,
                                        color = themePrimaryTint0,
                                    ),
                                )
                            }
                    },
                )
            }
        }
        Spacer(modifier = Modifier.height(16.dp))
        if (tabItems.isNotEmpty()) {
            when (val item = tabItems[selectedTabIndex]) {
                is MoviesTabItem -> MoviesItemContent(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(start = 30.dp, end = 30.dp),
                    relatedContents = item.relatedContents,
                    curatedContents = item.curatedContents,
                )

                is ReadMoreTabItem -> ReadMoreTabItemContent(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(start = 16.dp, end = 16.dp),
                    data = item.data,
                )

                is SeasonTabItem -> SeasonTabItemContent(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(start = 36.dp),
                    seasons = item.seasons
                )
            }
        }
    }
}