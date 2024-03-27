package domain.util

import kotlinx.datetime.LocalDateTime
import kotlinx.datetime.TimeZone

interface DateTimeUtils {


    fun epochMilliToLocalDateTime(epochMilli: Long, timeZone: TimeZone = TimeZone.currentSystemDefault()): LocalDateTime
} 

