package presentation.components

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import domain.model.viewableInterface.ViewableInterface
import presentation.components.cells.MovieItemCell
import presentation.helpers.compose.Constants
import presentation.helpers.extensions.sixteenNineImage


@Composable
internal fun MoviesItemContent(
    modifier: Modifier = Modifier,
    relatedContents: List<ViewableInterface>? = null,
    curatedContents: ViewableInterface.Collection? = null,
) {

    LazyVerticalGrid(
        columns = GridCells.Adaptive(
            minSize = curatedContents?.let { if (it.typeName == Constants.SixteenNineCollection) 178.dp else 96.dp }
                ?: 96.dp,
        ),
        contentPadding = PaddingValues(16.dp),
        modifier = modifier,
        verticalArrangement = Arrangement.spacedBy(10.dp),
        horizontalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        relatedContents?.let {
            items(it) { relatedContent ->
                val typeName = relatedContent.typeName
                MovieItemCell(
                    viewable = relatedContent,
                    imageUrl = if (typeName == Constants.SixteenNineCollection) relatedContent.sixteenNineImage else relatedContent.poster,
                    imageType = typeName
                )
            }
        }
        curatedContents?.let { collection ->
            items(collection.viewables.edges) { curatedContent ->
                val typeName = collection.typeName
                MovieItemCell(
                    viewable = curatedContent.node,
                    imageUrl = if (typeName == Constants.SixteenNineCollection) curatedContent.node.sixteenNineImage else curatedContent.node.poster,
                    imageType = typeName,
                )
            }
        }
    }
}
