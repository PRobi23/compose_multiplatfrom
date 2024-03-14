package domain.repositories

import domain.model.LoginResponse
import domain.model.QrCodeResponse
import domain.model.VerifyUserIdResponse

interface AuthenticationRepository {

    suspend fun login(password: String, email: String): Result<LoginResponse>
    suspend fun qrCodeLogin(): Result<QrCodeResponse>
    suspend fun verifyUserId(deviceCode: String): Result<VerifyUserIdResponse>
}