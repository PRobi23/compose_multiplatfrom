package presentation.viewModels.tv

import core.UiEvent
import dev.icerock.moko.mvvm.viewmodel.ViewModel
import domain.model.QrCodeResponse
import domain.model.VerifyUserIdResponse
import domain.useCases.FetchQRCodeUseCase
import domain.useCases.VerifyUserIdUseCase
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.receiveAsFlow
import kotlinx.coroutines.launch


class QRCodeScreenViewModel(
    private val fetchQRCodeUseCase: FetchQRCodeUseCase,
    private val verifyUserIdCodeUseCase: VerifyUserIdUseCase
) : ViewModel() {

    private val _uiState = MutableStateFlow(QrCodeResponse())
    val uiState = _uiState.asStateFlow()
    private val _token = MutableStateFlow(VerifyUserIdResponse())
    val token = _token.asStateFlow()
    private val _loadingState = MutableStateFlow(true)
    val loadingState = _loadingState.asStateFlow()
    private val _uiEvents = Channel<UiEvent>()
    val uiEvents = _uiEvents.receiveAsFlow()

    suspend fun fetchQRCode(firstCall: Boolean) {
        viewModelScope.launch {
            val qrCodeResult = fetchQRCodeUseCase()
            if (qrCodeResult.isSuccess) {
                _uiState.value = qrCodeResult.getOrThrow()
                _loadingState.value = false
            } else if (qrCodeResult.isFailure) {
                println(qrCodeResult.exceptionOrNull())
            }
        }
    }

    suspend fun verifyUserId(deviceCode: String) {
        viewModelScope.launch {
            val verifyUserIdResult = verifyUserIdCodeUseCase(deviceCode)
            if (verifyUserIdResult.isSuccess) {
                _token.value = verifyUserIdResult.getOrThrow()
                _uiEvents.send(
                    UiEvent.Success
                )
            } else if (verifyUserIdResult.isFailure) {
                println(verifyUserIdResult.exceptionOrNull())
            }
        }
    }
}