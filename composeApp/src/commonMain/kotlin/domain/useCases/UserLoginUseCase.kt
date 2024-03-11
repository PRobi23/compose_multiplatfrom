package domain.useCases

import domain.model.LoginResponse
import domain.repositories.AuthenticationRepository

class UserLoginUseCase(val authenticationRepository: AuthenticationRepository) {

    suspend operator fun invoke(password: String, email: String): Result<LoginResponse> =
        authenticationRepository.login(password, email)
}
