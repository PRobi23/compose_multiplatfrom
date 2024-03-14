package domain.model

import data.model.remote.QrCodeResponseDto

data class QrCodeResponse(
    var deviceCode: String = "",
    var userCode: String = "",
    var verificationUri: String = "",
    var verificationUriComplete: String = "",
    var expiresIn: Int = 1,
    var interval: Int = 1
)

fun QrCodeResponseDto.toQrCodeResponse(): QrCodeResponse {
    return QrCodeResponse(
        deviceCode = this.deviceCode,
        userCode = this.userCode,
        verificationUri = this.verificationUri,
        verificationUriComplete = this.verificationUriComplete,
        expiresIn = this.expiresIn,
        interval = this.interval
    )
}