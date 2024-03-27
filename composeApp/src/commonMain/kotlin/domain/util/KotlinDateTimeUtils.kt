package domain.util

import kotlinx.datetime.Instant
import kotlinx.datetime.LocalDateTime
import kotlinx.datetime.TimeZone
import kotlinx.datetime.toLocalDateTime

class KotlinDateTimeUtils : DateTimeUtils {


    override fun epochMilliToLocalDateTime(epochMilli: Long, timeZone: TimeZone): LocalDateTime =
        Instant.fromEpochMilliseconds(epochMilli).toLocalDateTime(timeZone)

}