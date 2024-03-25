package domain.model.viewableInterface

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.Transient

@Serializable
data class Node(
    @Transient
    @SerialName("__typename")
    override var typeName: String = "",
    override var id: String,
    @Transient
    override var magineId: String = "",
    @Transient
    override var title: String? = null,
    override var poster: String? = null,
    override var posterFeatured: String? = null,
    val banner: String? = null,
    override var headerImage: String? = null,
    override var defaultPlayable: Playable? = null,
    val entitlement: EntitlementInterfaceType? = null,
    override var image: String?,
    override var description: String?,
    override var tagsToRender: List<ViewableTagToRender>?,
    override var linkedViewables: List<ViewableInterface>?,
    override var genres: List<String>?,
    override var inMyList: Boolean?,
    override var offers: List<OfferInterfaceType>?,
) : ViewableInterface.VideoViewable() {
    override fun toString(): String {
        return ""
    }
}