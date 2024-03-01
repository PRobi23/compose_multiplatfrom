package data.repository

import data.model.remote.LoginRequestDto
import domain.model.BadRequestException
import domain.model.LoginResponse
import domain.repositories.AuthenticationRepository
import io.ktor.client.*
import io.ktor.client.call.*
import io.ktor.client.plugins.contentnegotiation.ContentNegotiation
import io.ktor.client.request.*
import io.ktor.client.statement.*
import io.ktor.http.*
import io.ktor.serialization.kotlinx.json.json
import io.ktor.util.*

class AuthenticationRepositoryImpl(
    private val httpClient: HttpClient
) : AuthenticationRepository {

    private val baseUrl = "https://client-api.magine.com/api/login/v2/"

    @OptIn(InternalAPI::class)
    override suspend fun login(password: String, email: String): Result<LoginResponse> {
        return try {
            val response: HttpResponse = httpClient.post(baseUrl + "auth/email") {
                contentType(ContentType.Application.Json)
                body = LoginRequestDto(
                    dynamic = emptyMap(),
                    identity = email,
                    accessKey = password,
                    name = email
                )
            }

            if (response.status.isSuccess()) {
                val loginResponse = response.body<LoginResponse>()
                Result.success(loginResponse)
            } else {
                Result.failure(BadRequestException(response.status))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }

    }
}