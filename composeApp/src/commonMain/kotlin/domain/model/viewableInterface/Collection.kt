package domain.model.viewableInterface

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.Transient

@Serializable
data class Collection(
    @Transient
    @SerialName("__typename")
    var typeName: String = "",
    @Transient
    var magineId: String = "",
    @Transient
    var title: String? = null,
    var viewables: Viewables,
)
