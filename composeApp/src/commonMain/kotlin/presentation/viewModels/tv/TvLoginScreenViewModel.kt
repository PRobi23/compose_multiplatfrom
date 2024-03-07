package presentation.viewModels.tv

import core.UiEvent
import core.errorCode
import core.getApiErrorMessage
import dev.icerock.moko.mvvm.viewmodel.ViewModel
import domain.useCases.EmailValidatorUseCase
import domain.useCases.PasswordValidatorUseCase
import domain.useCases.UserLoginUseCase
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.receiveAsFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

class TvLoginScreenViewModel(
    private val userLoginUseCase: UserLoginUseCase,
    private val passwordValidatorUseCase: PasswordValidatorUseCase,
    private val emailValidatorUseCase: EmailValidatorUseCase
) : ViewModel() {

    private val _uiState = MutableStateFlow(TvRegisterScreenUiState())
    val uiState = _uiState.asStateFlow()

    private val _uiEvents = Channel<UiEvent>()
    val uiEvents = _uiEvents.receiveAsFlow()

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
            val loginResponse = userLoginUseCase(email = email, password = password)

            if (loginResponse.isSuccess) {
                _uiEvents.send(
                    UiEvent.Success
                )
            } else if (loginResponse.isFailure) {
                val exception = loginResponse.exceptionOrNull()
                exception?.let {
                    val errorCode = it.errorCode
                    val stringResource = getApiErrorMessage(errorCode)

                    _uiEvents.send(
                        UiEvent.ShowErrorToTheUser(stringResource)
                    )
                }
            }
        }
    }
}

data class TvRegisterScreenUiState(
    val isEmailValid: Boolean = true,
    val isPasswordValid: Boolean = true
)