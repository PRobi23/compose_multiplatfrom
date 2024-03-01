package data.model.remote

import kotlinx.serialization.Serializable

@Serializable
data class LoginRequestDto(
    val dynamic: Map<String, String> = emptyMap(),
    val identity: String,
    val accessKey: String,
    val name: String
)