package domain.model.viewableInterface

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.Transient

/*
 * Copyright (C) 2021 Magine Pro
 * All rights reserved.
 */

@Serializable
sealed class ViewableInterface {
    abstract var typeName: String
    abstract var id: String
    abstract var magineId: String
    abstract var title: String?
    abstract var image: String?
    abstract var poster: String?
    abstract var posterFeatured: String?
    abstract var description: String?
    abstract var tagsToRender: List<ViewableTagToRender>?
    abstract var linkedViewables: List<ViewableInterface>?

    @Serializable
    sealed class VideoViewable : ViewableInterface() {
        abstract var defaultPlayable: Playable?
        abstract var headerImage: String?
        abstract var genres: List<String>?
        abstract var inMyList: Boolean?
        abstract var offers: List<OfferInterfaceType>?

        @Serializable
        data class Trailer(
            @Transient
            @SerialName("__typename")
            override var typeName: String = "",
            override var id: String = "",
            override var magineId: String = "",
            override var offers: List<OfferInterfaceType>? = emptyList(),
            override var title: String? = null,
            override var description: String? = null,
            override var image: String? = null,
            override var genres: List<String>? = null,
            @Transient
            override var defaultPlayable: Playable? = null,
            @Transient
            override var headerImage: String? = null,
            override var inMyList: Boolean? = null,
            @Transient
            override var poster: String? = null,
            override var posterFeatured: String? = null,
            override var tagsToRender: List<ViewableTagToRender>? = null,
            override var linkedViewables: List<ViewableInterface>? = null,
        ) : VideoViewable()

        @Serializable
        data class Episode(
            @Transient
            @SerialName("__typename")
            override var typeName: String = "",
            override var id: String = "",
            @Transient
            override var magineId: String = "",
            override var title: String? = null,
            @Transient
            override var image: String? = null,
            @Transient
            override var poster: String? = null,
            override var posterFeatured: String? = null,
            override var description: String? = null,
            override var tagsToRender: List<ViewableTagToRender>? = null,
            @Transient
            override var defaultPlayable: Playable? = null,
            @Transient
            override var headerImage: String? = null,
            override var genres: List<String>? = null,
            override var inMyList: Boolean? = null,
            override var offers: List<OfferInterfaceType>? = emptyList(),
            override var linkedViewables: List<ViewableInterface>? = null,
            @Transient
            var seasonNumber: Int? = null,
            @Transient
            var episodeNumber: Int? = null,
            @Transient
            var duration: Int? = null,
            @Transient
            var entitlement: EntitlementInterfaceType? = null,
            var durationHuman: String? = null,
            var shortDescription: String? = null,
            var show: Show? = null,
            var related: List<ViewableInterface>? = null,
            var collections: List<Collection>? = null,
            var webview: String? = null,
        ) : VideoViewable() {
            override fun toString(): String {
                return ""
            }
        }

        @Serializable
        data class Movie(
            @Transient
            @SerialName("__typename")
            override var typeName: String = "",
            override var id: String = "",
            @Transient
            override var magineId: String = "",
            @Transient
            override var title: String? = null,
            @Transient
            override var image: String? = null,
            @Transient
            override var poster: String? = null,
            override var posterFeatured: String? = null,
            override var description: String? = null,
            override var tagsToRender: List<ViewableTagToRender>? = null,
            @Transient
            override var defaultPlayable: Playable? = null,
            @Transient
            override var headerImage: String? = null,
            @Transient
            override var genres: List<String>? = null,
            @Transient
            override var inMyList: Boolean? = null,
            override var offers: List<OfferInterfaceType>? = emptyList(),
            override var linkedViewables: List<ViewableInterface>? = null,
            @Transient
            var durationHuman: String? = null,
            @Transient
            var productionYear: String? = null,
            var trailer: String? = null,
            var providedBy: ProvidedBy? = null,
            var entitlement: EntitlementInterfaceType? = null,
            var related: List<ViewableInterface>? = null,
            var collections: List<Collection>? = null,
            var webview: String? = null,
        ) : VideoViewable()

        @Serializable
        data class Program(
            @Transient
            @SerialName("__typename")
            override var typeName: String = "",
            override var id: String = "",
            @Transient
            override var magineId: String = "",
            override var offers: List<OfferInterfaceType>? = emptyList(),
            @Transient
            override var title: String? = null,
            override var description: String? = null,
            @Transient
            override var image: String? = null,
            @Transient
            override var genres: List<String>? = null,
            @Transient
            override var defaultPlayable: Playable? = null,
            @Transient
            override var headerImage: String? = null,
            @Transient
            override var inMyList: Boolean? = null,
            @Transient
            override var poster: String? = null,
            override var posterFeatured: String? = null,
            override var tagsToRender: List<ViewableTagToRender>? = null,
            override var linkedViewables: List<ViewableInterface>? = null,
            @Transient
            var durationHuman: String? = null,
            var entitlement: EntitlementInterfaceType? = null,
            var related: List<ViewableInterface>? = null,
            var collections: List<Collection>? = null,
            var webview: String? = null,
        ) : VideoViewable()
    }

    @Serializable
    data class Channel(
        @Transient
        @SerialName("__typename")
        override var typeName: String = "",
        override var id: String = "",
        override var magineId: String = "",
        override var title: String? = null,
        @Transient
        override var image: String? = null,
        @Transient
        override var poster: String? = null,
        override var posterFeatured: String? = null,
        override var description: String? = null,
        override var tagsToRender: List<ViewableTagToRender>? = null,
        override var linkedViewables: List<ViewableInterface>? = null,
        var inMyList: Boolean? = null,
        var broadcasts: MutableList<Broadcast>? = null,
        var broadcastsFromLive: List<Broadcast>? = null,
        var broadcastById: Broadcast? = null,
        var logoDark: String? = null,
        var logoLight: String? = null,
        var playable: Playable,
        var genres: List<String>? = null,
        var offers: List<OfferInterfaceType>? = emptyList(),
        var providedBy: ProvidedBy? = null,
        var collections: List<Collection>? = null,
        var schedule: List<List<Broadcast>>? = null,
        var entitlement: EntitlementInterfaceType? = null,
        var webview: String? = null,
    ) : ViewableInterface() {
        override fun toString(): String {
            return ""
        }
    }

    @Serializable
    data class Show(
        @Transient
        @SerialName("__typename")
        override var typeName: String = "",
        override var id: String = "",
        @Transient
        override var magineId: String = "",
        @Transient
        override var title: String? = null,
        @Transient
        override var image: String? = null,
        @Transient
        override var poster: String? = null,
        override var posterFeatured: String? = null,
        override var description: String? = null,
        override var tagsToRender: List<ViewableTagToRender>? = null,
        override var linkedViewables: List<ViewableInterface>? = null,
        @Transient
        var seasons: List<Season>? = null,
        @Transient
        var headerImage: String? = null,
        @Transient
        var genres: List<String>? = null,
        var productionYear: String? = null,
        var trailer: String? = null,
        @Transient
        var inMyList: Boolean? = null,
        var offers: List<OfferInterfaceType> = emptyList(),
        var providedBy: ProvidedBy? = null,
        var entitlement: EntitlementInterfaceType? = null,
        var related: List<ViewableInterface>? = null,
        var collections: List<Collection>? = null,
        var selectedEpisode: VideoViewable.Episode? = null,
        var webview: String? = null,
    ) : ViewableInterface() {
        override fun toString(): String {
            return ""
        }
    }
}
