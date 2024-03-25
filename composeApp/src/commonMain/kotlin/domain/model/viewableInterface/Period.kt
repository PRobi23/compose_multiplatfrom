package domain.model.viewableInterface

import kotlinx.serialization.Serializable

@Serializable
data class Period(
    val length: Long,
    val unit: String,
) 