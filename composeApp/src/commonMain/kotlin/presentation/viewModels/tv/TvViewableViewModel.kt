package presentation.viewModels.tv

import dev.icerock.moko.mvvm.viewmodel.ViewModel
import domain.model.viewableInterface.Broadcast
import domain.model.viewableInterface.OfferInterfaceType
import domain.model.viewableInterface.ThirdPartyOfferSubType
import domain.model.viewableInterface.ViewableInterface
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import presentation.model.IAPButtonValues

class TvViewableViewModel : ViewModel() {

    private val _state = MutableStateFlow<ViewableViewState>(ViewableViewState.Loading)
    val state = _state.asStateFlow()


}

sealed interface ViewableViewState {
    data object Loading : ViewableViewState

    data class Ready(
        val viewable: ViewableInterface? = null,
        val textsWithIapButtons: Map<ThirdPartyOfferSubType, IAPButtonValues> = emptyMap(),
        val schedule: MutableList<MutableList<Broadcast>>? = null,
        val collapseMovieDetails: Boolean = false,
        val skusMapping: Map<Long, List<OfferInterfaceType.ThirdPartyType>> = emptyMap(),
        val trailerButtonIsVisible: Boolean = true,
    ) : ViewableViewState
}