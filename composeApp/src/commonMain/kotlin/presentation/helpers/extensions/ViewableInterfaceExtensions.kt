package presentation.helpers.extensions

import domain.model.viewableInterface.Broadcast
import domain.model.viewableInterface.ViewableInterface

/**
 * In this file we have the extensions to map values and show in the UI.
 */
fun ViewableInterface.getSubtitle(): String =
    when (this) {
        is ViewableInterface.VideoViewable.Movie ->
            safeJoinToString(
                listOf(
                    this.durationHuman,
                    this.productionYear,
                    this.genres?.joinToString(", "),
                ),
                " | ",
            )
                ?: ""

        is ViewableInterface.Show ->
            safeJoinToString(
                listOf(
                    this.productionYear,
                    this.genres?.joinToString(", "),
                    this.getSeasonQuantityTextOrNull(),
                ),
                " | ",
            )
                ?: ""

        is ViewableInterface.Channel -> this.broadcastsFromLive?.firstOrNull()?.title
            ?: ""
        //?.formattedAiringTimes() // NEEDS REFACTOR

        else -> ""
    }

/** @return seasons string eg. '1 season', '2 seasons' */
fun ViewableInterface.Show.getSeasonQuantityTextOrNull(): String? =
    if (!seasons.isNullOrEmpty()) {
        "Season" + seasons?.size
    } else {
        null
    }

fun getCurrentChannel(
    viewable: ViewableInterface?,
    schedule: List<List<Broadcast>>?,
): ViewableInterface.Channel {
    val channel = viewable as ViewableInterface.Channel
    channel.schedule = schedule
    return channel
}

fun ViewableInterface.checkWatchList(): Boolean? {
    return when (this) {
        is ViewableInterface.VideoViewable -> this.inMyList
        is ViewableInterface.Show -> this.inMyList
        else -> null
    }
}

fun ViewableInterface.hasWatchOffset(): Boolean {
    val viewableView = when (this) {
        is ViewableInterface.VideoViewable -> this
        is ViewableInterface.Show -> this.selectedEpisode
        else -> null
    }
    return viewableView?.let { (it.getWatchOffset() ?: 0) != 0 && ((it.getTimeLeft() ?: 0) > 15) }
        ?: false
}

fun ViewableInterface.VideoViewable.getWatchOffset(): Int? = defaultPlayable?.watchOffset

fun ViewableInterface.VideoViewable.getTimeLeft(): Int? =
    getDuration()?.minus(getWatchOffset() ?: 0)

fun ViewableInterface.VideoViewable.getDuration(): Int? = defaultPlayable?.duration

fun ViewableInterface.resolveSubtitle(): String =
    when (this) {
        is ViewableInterface.VideoViewable.Movie ->
            safeJoinToString(
                listOf(
                    this.genres?.joinToString(", "),
                    this.durationHuman,
                    this.productionYear,
                ),
                " | ",
            )
                ?: ""

        is ViewableInterface.Show ->
            safeJoinToString(
                listOf(
                    this.productionYear,
                    this.genres?.joinToString(", "),
                    this.getSeasonQuantityTextOrNull(),
                ),
                " | ",
            )
                ?: ""

        is ViewableInterface.Channel -> this.broadcastsFromLive?.firstOrNull()?.title
            ?: ""

        else -> ""
    }
