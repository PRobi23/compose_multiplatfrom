package domain.model

import data.model.remote.LoginResponseDto

data class LoginResponse(
    val registered: Boolean,
    val newUser: Boolean
)

fun LoginResponseDto.toLoginResponse(): LoginResponse {
    return LoginResponse(
        registered = this.registered,
        newUser = this.newUser
    )
}