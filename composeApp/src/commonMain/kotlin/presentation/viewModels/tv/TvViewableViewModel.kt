package presentation.viewModels.tv

import core.UiEvent
import dev.icerock.moko.mvvm.viewmodel.ViewModel
import domain.model.viewableInterface.Broadcast
import domain.model.viewableInterface.ViewableInterface
import joker
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

    fun fetchViewable() {
        viewModelScope.launch {
            _state.update { _ ->
                //MOCK
                ViewableViewState.Ready(
                    viewable = joker
                )
            }
        }
    }

    fun updateSecondElementHasFocus(secondElementHasFocus: Boolean) {
        _state.update { _ ->
            val value = _state.value
            if (value is ViewableViewState.Ready) {
                value.copy(
                    collapseMovieDetails = secondElementHasFocus,
                )
            } else state.value
        }
    }

    fun addToWatchlist() {
        val value = _state.value
        viewModelScope.launch {
            if (value is ViewableViewState.Ready) {
                updateInList(added = true, viewable = joker)
            }
        }
    }

    fun removeFromWatchlist() {
        val value = _state.value
        viewModelScope.launch {
            if (value is ViewableViewState.Ready) {
                updateInList(added = false, viewable = joker)
            }
        }
    }

    private fun updateInList(added: Boolean, viewable: ViewableInterface) {
        when (viewable) {
            is ViewableInterface.VideoViewable -> viewable.inMyList = added
            is ViewableInterface.Show -> viewable.inMyList = added
            else -> {}
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