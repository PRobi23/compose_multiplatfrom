package data.model.remote

import kotlinx.serialization.Serializable


@Serializable
data class LoginRequestDto(
    val identity: String,
    val accessKey: String
)