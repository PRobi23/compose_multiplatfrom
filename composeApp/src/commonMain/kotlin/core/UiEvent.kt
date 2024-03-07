package core

import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.StringResource

/**
 * UiEvents that happens in the UI.
 */
sealed interface UiEvent {

    data object Success : UiEvent

    @OptIn(ExperimentalResourceApi::class)
    data class ShowErrorToTheUser(val resourceId: StringResource) : UiEvent
}
