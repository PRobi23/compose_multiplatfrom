import dev.icerock.moko.mvvm.viewmodel.ViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update


class MobileRegisterScreenViewModel(private val emailValidatorUseCase: EmailValidatorUseCase) : ViewModel() {

    private val _uiState = MutableStateFlow(MobileRegisterScreenUiState())
    val uiState = _uiState.asStateFlow()

    fun validateEmail(email: String) {
        val isEmailValid = emailValidatorUseCase(email)
        _uiState.update {
            it.copy(isEmailValid = isEmailValid)
        }
    }
}

data class MobileRegisterScreenUiState(
    val isEmailValid: Boolean = true
)