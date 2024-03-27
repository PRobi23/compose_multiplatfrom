package domain.util

import kotlinx.datetime.Clock
import kotlinx.datetime.Instant
import kotlinx.datetime.LocalDate
import kotlinx.datetime.LocalDateTime
import kotlinx.datetime.TimeZone
import kotlinx.datetime.toLocalDateTime

class KotlinDateTimeProvider : DateTimeProvider {

    override val utcTimeZone: TimeZone
        get() = TimeZone.UTC

    override val now: Instant
        get() = Clock.System.now()

    override fun getActualLocalDate(timeZone: TimeZone): LocalDate =
        getActualLocalDateTime(timeZone).date

    override fun getActualLocalDateTime(timeZone: TimeZone): LocalDateTime =
        now.toLocalDateTime(timeZone)
}