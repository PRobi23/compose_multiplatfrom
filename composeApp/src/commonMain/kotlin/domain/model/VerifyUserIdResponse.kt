package domain.model

import data.model.remote.VerifyUserIdResponseDto

data class VerifyUserIdResponse(
    var token: String = "",
)

fun VerifyUserIdResponseDto.toVerifyUserIdResponse(): VerifyUserIdResponse {
    return VerifyUserIdResponse(
        token = this.accessToken,
    )
}