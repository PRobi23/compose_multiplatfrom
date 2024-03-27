package presentation.components

import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import domain.model.viewableInterface.ViewableInterface
import presentation.helpers.compose.Constants
import kotlin.time.Duration


@Composable
internal fun MoviesItemContent(
    modifier: Modifier = Modifier,
    relatedContents: List<ViewableInterface>? = null,
    curatedContents: ViewableInterface.Collection? = null,
    calculateRemainingTimePercentage: (Duration, Duration, Duration) -> Float,
    calculateMinutesLeft: (Duration, Duration) -> Long,
    ) {

    LazyVerticalGrid(
        columns = GridCells.Adaptive(
            minSize = curatedContents?.let { if (it.typeName == Constants.SixteenNineCollection) 178.dp else 96.dp }
                    ?: 96.dp,
            ),
        modifier = modifier,
        ) {
        relatedContents?.let {
            items(it) { relatedContent ->
                val typeName = relatedContent.typeName
                MovieItemCell(
                    viewable = relatedContent,
                    navigateToDetails = { viewable ->
                        context.startActivity(
                            TvViewableViewActivity.newIntent(
                                context,
                                viewable,
                                null,
                                ),
                            )
                                        },
                    imageUrl = if (typeName == Constants.SixteenNineCollection) relatedContent.sixteenNineImage else relatedContent.poster,
                    imageType = typeName,
                    calculateRemainingTimePercentage = calculateRemainingTimePercentage,
                    calculateMinutesLeft = calculateMinutesLeft,
                    convertLocalDateTimeToDuration = convertLocalDateTimeToDuration,
                    )
            }
        }
            curatedContents?.let { collection ->
                items(collection.viewables.edges) { curatedContent ->
                    val typeName = collection.typeName
                    MovieItemCell(
                        viewable = curatedContent.node,
                        navigateToDetails = { viewable ->
                            context.startActivity(
                                TvViewableViewActivity.newIntent(
                                    context,
                                    viewable,
                                    null,
                                    ),
                                )
                                            },
                        imageUrl = if (typeName == Constants.SixteenNineCollection) curatedContent.node.sixteenNineImage else curatedContent.node.poster,
                        imageType = typeName,
                        calculateRemainingTimePercentage = calculateRemainingTimePercentage,
                        calculateMinutesLeft = calculateMinutesLeft,
                        convertLocalDateTimeToDuration = convertLocalDateTimeToDuration,
                        )
                }
            }
    }
}
