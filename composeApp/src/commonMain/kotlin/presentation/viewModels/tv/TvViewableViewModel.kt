package presentation.viewModels.tv

import core.UiEvent
import dev.icerock.moko.mvvm.viewmodel.ViewModel
import domain.model.viewableInterface.Broadcast
import domain.model.viewableInterface.ViewableInterface
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.receiveAsFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

class TvViewableViewModel : ViewModel() {

    private val _state = MutableStateFlow<ViewableViewState>(ViewableViewState.Loading)
    val state = _state.asStateFlow()

    private val _uiEvents = Channel<UiEvent>()
    val uiEvents = _uiEvents.receiveAsFlow()

    fun fetchViewable(magineId: String) {
        viewModelScope.launch {
            _state.update { _ ->
                //MOCK
                ViewableViewState.Ready()
            }
        }
    }
}

sealed interface ViewableViewState {
    data object Loading : ViewableViewState

    data class Ready(
        val viewable: ViewableInterface? = null,
        val schedule: MutableList<MutableList<Broadcast>>? = null,
        val collapseMovieDetails: Boolean = false,
        val trailerButtonIsVisible: Boolean = true,
    ) : ViewableViewState
}