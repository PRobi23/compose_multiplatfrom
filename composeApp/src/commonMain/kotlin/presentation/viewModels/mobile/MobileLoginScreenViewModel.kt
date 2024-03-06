import core.UiEvent
import core.errorCode
import core.getApiErrorMessage
import dev.icerock.moko.mvvm.viewmodel.ViewModel
import domain.useCases.PasswordValidatorUseCase
import domain.useCases.UserLoginUseCase
import io.kamel.core.Resource
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.receiveAsFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

class MobileLoginScreenViewModel(
    private val passwordValidatorUseCase: PasswordValidatorUseCase,
    private val userLoginUseCase: UserLoginUseCase
) : ViewModel() {

    private val _uiState = MutableStateFlow(TvRegisterScreenUiState())
    val uiState = _uiState.asStateFlow()

    private val _uiEvents = Channel<UiEvent>()
    val uiEvents = _uiEvents.receiveAsFlow()

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

            if (loginResponse is Result) {

            } else if (loginResponse.isFailure) {
                val exception = loginResponse.exceptionOrNull()
                exception?.let {
                    val errorCode = it.errorCode
                    val stringResource = getApiErrorMessage(errorCode)

                    _uiEvents.send(
                        UiEvent.ShowErrorToTheUser(stringResource)
                    )
                }

                /*
                _uiEvents.send(
                    UiEvent.ShowErrorToTheUser()
                )
                */
            }
        }
    }

    /*
        private fun getErrorMessageByErrorCode(errorCode: Int): String {
            return when (errorCode) {
                LOGIN_FAILED -> {

                }

                else -> {

                }
            }
        }
        */
}

data class TvRegisterScreenUiState(
    val isPasswordValid: Boolean = true
)