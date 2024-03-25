package domain.model.viewableInterface

import kotlinx.serialization.Serializable

@Serializable
data class Playable(
    val id: String,
    var duration: Int? = 0,
    val kind: PlayableKind,
    var catchup: Catchup? = null,
    var broadcast: Broadcast? = null,
    var channel: ViewableInterface.Channel? = null,
    var offlineAvailable: Boolean = false,
    var watchOffset: Int? = 0,
    var rights: Rights? = null,
    var startTimeUtc: Int? = null,
    var catchupStop: Long? = null,
    var stopTimeUtc: Int? = null,
    var mms: Boolean? = null,
    var mmsOrigCode: String? = null,
)

