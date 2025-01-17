@file:OptIn(ExperimentalResourceApi::class)

package presentation.model

import domain.model.viewableInterface.*
import multiplatform.composeapp.generated.resources.Res
import multiplatform.composeapp.generated.resources.details_page_seasons
import multiplatform.composeapp.generated.resources.tv_viewable_view_action_read_more
import multiplatform.composeapp.generated.resources.tv_viewable_view_action_related_contents
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.StringResource

sealed interface TabItem {
    val textResourceId: StringResource?
    val title: String?
}

data class SeasonTabItem(
    override val textResourceId: StringResource? = null,
    override val title: String? = null,
    val seasons: List<Season>,
) : TabItem

data class MoviesTabItem(
    override val textResourceId: StringResource? = null,
    override val title: String? = null,
    val relatedContents: List<ViewableInterface>? = null,
    val curatedContents: ViewableInterface.Collection? = null,
) : TabItem

data class ReadMoreTabItem(
    override val textResourceId: StringResource? = null,
    override val title: String? = null,
    val data: ReadMoreTabItemData,
) : TabItem

@OptIn(ExperimentalResourceApi::class)
fun getTabItems(viewable: ViewableInterface): List<TabItem> {
    return mutableListOf<TabItem>().apply {
        if (viewable is ViewableInterface.Show && viewable.seasons?.map { !it.episodes.isNullOrEmpty() }
                ?.contains(true) == true
        ) {
            this.add(
                SeasonTabItem(
                    textResourceId = Res.string.details_page_seasons,
                    seasons = viewable.seasons ?: emptyList(),
                ),
            )
        }
        viewable.relatedContent?.let { relatedContent ->
            if (relatedContent.isNotEmpty()) {
                this.add(
                    MoviesTabItem(
                        textResourceId = Res.string.tv_viewable_view_action_related_contents,
                        relatedContents = relatedContent,
                    ),
                )
            }
        }

        viewable.curatedContent?.let {
            for (collection in it) {
                collection.title?.let { title ->
                    this.add(
                        MoviesTabItem(
                            title = title,
                            curatedContents = collection,
                        ),
                    )
                }
            }
        }

        this.add(
            ReadMoreTabItem(
                textResourceId = Res.string.tv_viewable_view_action_read_more,
                data = ReadMoreTabItemData(
                    moreInformationText = viewable.description,
                    year = viewable.resolveYear(),
                    tagsToRender = viewable.tagsToRender,
                    subtitles = listOf(),
                    duration = viewable.resolveDuration(),
                ),
            ),
        )
    }
}
