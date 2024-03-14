package data.model.remote

import kotlinx.serialization.Serializable

@Serializable
data class VerifyUserIdResponseDto(
    
    var accessToken: String
)