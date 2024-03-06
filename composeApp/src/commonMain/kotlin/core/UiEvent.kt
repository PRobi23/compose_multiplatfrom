package core

import dev.icerock.moko.resources.StringResource

/**
 * UiEvents that happens in the UI.
 */
sealed interface UiEvent {

    data class ShowErrorToTheUser(val resourceId: StringResource) : UiEvent
}
