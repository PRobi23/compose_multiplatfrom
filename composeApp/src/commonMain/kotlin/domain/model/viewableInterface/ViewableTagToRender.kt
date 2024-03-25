package domain.model.viewableInterface

import kotlinx.serialization.Serializable

@Serializable
data class ViewableTagToRender(
    var title: String? = null,
    var translationKey: String? = null,
    var searchable: Boolean? = null,
    var values: List<String>? = null,
) 