package data.model.remote

import kotlinx.serialization.Serializable

@Serializable
data class LoginResponseDto(
    val sessionId: String,
    val openId: String,
    val registered: Boolean,
    val newUser: Boolean,
    val userId: String,
    val name: String,
    val token: String
)