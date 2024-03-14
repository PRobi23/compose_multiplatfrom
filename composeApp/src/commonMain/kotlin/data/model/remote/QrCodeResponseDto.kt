package data.model.remote

import kotlinx.serialization.Serializable

@Serializable
data class QrCodeResponseDto(
    
    var deviceCode: String,
    var userCode: String,
    var verificationUri: String,
    var verificationUriComplete: String,
    var expiresIn: Int,
    var interval: Int
)