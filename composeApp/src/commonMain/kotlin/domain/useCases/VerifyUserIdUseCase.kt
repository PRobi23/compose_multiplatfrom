package domain.useCases

import domain.model.VerifyUserIdResponse
import domain.repositories.AuthenticationRepository

class VerifyUserIdUseCase(private val authenticationRepository: AuthenticationRepository) {
    suspend operator fun invoke(deviceId: String): Result<VerifyUserIdResponse> =
        authenticationRepository.verifyUserId(deviceId)
}
