package core

import multiplatform.composeapp.generated.resources.Res
import io.ktor.client.plugins.*
import io.ktor.utils.io.errors.*
import multiplatform.composeapp.generated.resources.auth_failed_to_login
import multiplatform.composeapp.generated.resources.error_failed_general
import multiplatform.composeapp.generated.resources.error_message_network
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.StringResource

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
@OptIn(ExperimentalResourceApi::class)
fun getApiErrorMessage(errorCode: Int): StringResource =
    when (errorCode) {
        NETWORK_ERROR -> Res.string.error_message_network
        LOGIN_FAILED, UNATHORIZED -> Res.string.auth_failed_to_login
        else -> Res.string.error_failed_general
    }