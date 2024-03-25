package domain.model.viewableInterface

import kotlinx.serialization.Serializable

@Serializable
data class Catchup(
    var from: Int = 0,
    var to: Int = 0,
)