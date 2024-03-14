package domain.useCases

import domain.model.QrCodeResponse
import domain.repositories.AuthenticationRepository

class FetchQRCodeUseCase(private val authenticationRepository: AuthenticationRepository) {
    suspend operator fun invoke(): Result<QrCodeResponse> =
        authenticationRepository.qrCodeLogin()
}
