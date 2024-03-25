package domain.model.viewableInterface

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.Transient

@Serializable
data class Viewables(
    @Transient
    @SerialName("__typename")
    var typeName: String = "",
    val edges: List<Edge>,
)