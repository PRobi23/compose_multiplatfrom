package presentation.helpers.extensions

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


