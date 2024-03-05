package domain.model

import io.ktor.http.*

class BadRequestException(httpStatusCode: HttpStatusCode) : Exception()