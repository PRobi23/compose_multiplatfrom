package domain.useCases

class PasswordValidatorUseCase {
    operator fun invoke(password: String): Boolean = password.length >= 6
}

