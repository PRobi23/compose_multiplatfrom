package domain.useCases

import domain.repositories.AuthenticationRepository

class UserLoginUseCase(val registrationRepository: AuthenticationRepository) {

    operator fun invoke(password: String, email: String) {
        registrationRepository.login(password, email)
    }
}
