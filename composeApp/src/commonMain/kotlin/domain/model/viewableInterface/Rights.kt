package domain.model.viewableInterface

import kotlinx.serialization.Serializable

@Serializable
data class Rights(
    var fastForward: Boolean = true,
    var rewind: Boolean = true,
    var pause: Boolean = true,
    var adsFastForward: Boolean = true,
    var adsPause: Boolean = true,
    var adsRewind: Boolean = true,
) {
    fun hasSeekRights(): Boolean {
        return rewind && fastForward
    }
}
