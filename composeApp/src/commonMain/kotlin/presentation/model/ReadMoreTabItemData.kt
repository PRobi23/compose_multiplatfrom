package presentation.model

import domain.model.viewableInterface.ViewableTagToRender

data class ReadMoreTabItemData(
    val tagsToRender: List<ViewableTagToRender>?,
    val moreInformationText: String?,
    val duration: String?,
    val year: String?,
    val subtitles: List<String>,
)