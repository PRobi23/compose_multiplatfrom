import dev.icerock.moko.mvvm.viewmodel.ViewModel
import domain.useCases.PasswordValidatorUseCase
import domain.useCases.UserLoginUseCase
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

class MobileLoginScreenViewModel(
    private val passwordValidatorUseCase: PasswordValidatorUseCase,
    private val userLoginUseCase: UserLoginUseCase
) : ViewModel() {

    private val _uiState = MutableStateFlow(TvRegisterScreenUiState())
    val uiState = _uiState.asStateFlow()

    fun validatePassword(password: String): Boolean {
        val isPasswordValid = passwordValidatorUseCase(password)
        _uiState.update {
            it.copy(isPasswordValid = isPasswordValid)
        }
        return isPasswordValid
    }

    fun login(email: String, password: String) {
        viewModelScope.launch {
            userLoginUseCase(email = email, password = password)
        }
    }
}

data class TvRegisterScreenUiState(
    val isPasswordValid: Boolean = true
)