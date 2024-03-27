package domain.util

import kotlinx.datetime.Instant
import kotlinx.datetime.LocalDate
import kotlinx.datetime.LocalDateTime
import kotlinx.datetime.TimeZone

interface DateTimeProvider {

    /***
     * UTC timezone
     * @see TimeZone
     */
    val utcTimeZone: TimeZone

    /***
     * Actual time.
     */
    val now: Instant

    /***
     * Actual time in LocalTime
     * @see LocalDate
     */
    fun getActualLocalDate(timeZone: TimeZone = utcTimeZone): LocalDate

    /***
     * Actual time in LocalDateTime
     * @see LocalDateTime
     */
    fun getActualLocalDateTime(timeZone: TimeZone = utcTimeZone): LocalDateTime
}
