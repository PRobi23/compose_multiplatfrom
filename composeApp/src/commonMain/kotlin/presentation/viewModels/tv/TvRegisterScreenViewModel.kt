package presentation.viewModels.tv

import dev.icerock.moko.mvvm.viewmodel.ViewModel
import domain.model.LoginResponse
import domain.useCases.EmailValidatorUseCase
import domain.useCases.PasswordValidatorUseCase
import domain.useCases.UserLoginUseCase
import io.kamel.core.Resource
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch


class TvRegisterScreenViewModel(
    private val userLoginUseCase: UserLoginUseCase,
    private val passwordValidatorUseCase: PasswordValidatorUseCase,
    private val emailValidatorUseCase: EmailValidatorUseCase
) : ViewModel() {

    private val _uiState = MutableStateFlow(TvRegisterScreenUiState())
    val uiState = _uiState.asStateFlow()

    fun validateEmail(email: String): Boolean {
        val isEmailValid = emailValidatorUseCase(email)
        _uiState.update {
            it.copy(isEmailValid = isEmailValid)
        }
        return isEmailValid
    }

    fun validatePassword(password: String): Boolean {
        val isPasswordValid = passwordValidatorUseCase(password)
        _uiState.update {
            it.copy(isPasswordValid = isPasswordValid)
        }
        return isPasswordValid
    }

    fun login(email: String, password: String) {
        viewModelScope.launch {
            val loginResult = userLoginUseCase(email = email, password = password)

            if (loginResult.isSuccess) {

            } else if (loginResult.isFailure) {

            }
        }
    }
}

data class TvRegisterScreenUiState(
    val isEmailValid: Boolean = true,
    val isPasswordValid: Boolean = true
)