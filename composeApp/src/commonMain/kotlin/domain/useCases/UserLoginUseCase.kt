package domain.useCases

import domain.model.LoginResponse
import domain.repositories.AuthenticationRepository

class UserLoginUseCase(val registrationRepository: AuthenticationRepository) {

    suspend operator fun invoke(password: String, email: String): Result<LoginResponse> =
        registrationRepository.login(password, email)
}
