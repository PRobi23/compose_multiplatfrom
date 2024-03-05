package presentation.viewModels.mobile

import dev.icerock.moko.mvvm.viewmodel.ViewModel
import domain.useCases.EmailValidatorUseCase
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update

class MobileFillInEmailScreenViewModel(private val emailValidatorUseCase: EmailValidatorUseCase) : ViewModel() {

    private val _uiState = MutableStateFlow(MobileFillInEmailScreenUiState())
    val uiState = _uiState.asStateFlow()

    fun validateEmail(email: String): Boolean {
        val isEmailValid = emailValidatorUseCase(email)
        _uiState.update {
            it.copy(isEmailValid = isEmailValid)
        }
        return isEmailValid
    }
}

data class MobileFillInEmailScreenUiState(
    val isEmailValid: Boolean = true
)