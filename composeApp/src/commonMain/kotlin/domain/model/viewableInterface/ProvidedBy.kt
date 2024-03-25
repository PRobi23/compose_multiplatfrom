package domain.model.viewableInterface

import kotlinx.serialization.Serializable

@Serializable
data class ProvidedBy(
    val brand: String,
    val logo: String? = null,
)