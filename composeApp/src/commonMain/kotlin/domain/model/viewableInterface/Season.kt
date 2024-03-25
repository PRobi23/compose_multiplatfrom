package domain.model.viewableInterface

import kotlinx.serialization.Serializable
import kotlinx.serialization.Transient

@Serializable
data class Season(
    @Transient
    var seasonNumber: Int? = null,
    @Transient
    var episodes: List<ViewableInterface.VideoViewable.Episode>? = listOf(),
) 

