package data.model.remote

import kotlinx.serialization.Serializable


@Serializable
data class VerifyUserIdRequestDto(
    val deviceCode: String
)