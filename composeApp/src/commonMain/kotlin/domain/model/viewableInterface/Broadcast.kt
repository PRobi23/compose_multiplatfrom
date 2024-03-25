package domain.model.viewableInterface

import kotlinx.serialization.Serializable

@Serializable
class Broadcast(
    var id: String,
    var title: String,
    var description: String? = null,
    var image: String? = null,
    var sixteenNineImage: String? = null,
    var start: Int,
    var stop: Int,
    var catchup: Catchup? = null,
    var liveAvailable: Boolean,
    var posterFeatured: String? = null,
    var rights: Rights? = null,
    var poster: String? = null,
)