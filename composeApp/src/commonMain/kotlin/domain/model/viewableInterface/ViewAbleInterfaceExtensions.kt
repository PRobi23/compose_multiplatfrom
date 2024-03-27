package domain.model.viewableInterface

fun ViewableInterface.resolveYear(): String? = when (this) {
    is ViewableInterface.VideoViewable.Movie -> productionYear
    is ViewableInterface.Show -> productionYear
    is ViewableInterface.VideoViewable.Episode -> show?.productionYear
    else -> null
}

fun ViewableInterface.resolveDuration(): String? = when (this) {
    is ViewableInterface.VideoViewable.Movie -> durationHuman
    is ViewableInterface.VideoViewable.Program -> durationHuman
    else -> null
}

/**
 * @return the progress percentage the user have watched the playable.
 */
fun ViewableInterface.VideoViewable.getWatchedPercentage(): Int? {
    var watchedPercentage: Int? = null
    defaultPlayable?.let {
        // verify we actually have a duration and offset
        if (it.duration != null && it.duration != 0 && it.watchOffset != 0) {
            watchedPercentage = maxOf((it.watchOffset ?: 0) * 100 / it.duration!!, 0)
        }
    }
    return watchedPercentage
}

val ViewableInterface.relatedContent: List<ViewableInterface>?
    get() = when (this) {
        is ViewableInterface.VideoViewable.Movie -> related
        is ViewableInterface.Show -> related
        is ViewableInterface.VideoViewable.Program -> related
        is ViewableInterface.VideoViewable.Episode -> related
        else -> null
    }

val ViewableInterface.curatedContent: List<ViewableInterface.Collection>?
    get() = when (this) {
        is ViewableInterface.VideoViewable.Movie -> collections
        is ViewableInterface.Show -> collections
        is ViewableInterface.VideoViewable.Program -> collections
        is ViewableInterface.VideoViewable.Episode -> collections
        else -> null
    }


