package core

import com.magine.multiplatform.magine.MR
import dev.icerock.moko.resources.StringResource
import io.ktor.client.plugins.*
import io.ktor.utils.io.errors.*

// internal codes
internal const val GENERAL_ERROR = -1
internal const val NETWORK_ERROR = -2
internal const val LOGIN_FAILED = -3

internal const val UNATHORIZED = 401

/** Returns the error code of the request */
val Throwable.errorCode: Int
    get() {
        return when (this) {
            is ResponseException -> {
                this.response.status.value
            }

            is IOException -> {
                NETWORK_ERROR
            }

            else -> GENERAL_ERROR
        }
    }

/** Error message shown after failing a HTTP requests. */
fun getApiErrorMessage(errorCode: Int): StringResource =
    when (errorCode) {
        NETWORK_ERROR -> MR.strings.error_message_network
        LOGIN_FAILED, UNATHORIZED -> MR.strings.auth_failed_to_login
        else -> MR.strings.error_failed_general
    }