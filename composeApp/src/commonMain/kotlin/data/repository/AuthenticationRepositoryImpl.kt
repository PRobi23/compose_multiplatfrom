package data.repository

import data.model.remote.LoginRequestDto
import domain.model.BadRequestException
import domain.model.LoginResponse
import domain.repositories.AuthenticationRepository
import io.ktor.client.*
import io.ktor.client.call.*
import io.ktor.client.request.*
import io.ktor.client.statement.*
import io.ktor.http.*
import io.ktor.util.*

class AuthenticationRepositoryImpl(
    private val httpClient: HttpClient
) : AuthenticationRepository {

    private val baseUrl = "https://client-api.tvoli.com/api/login/v2/"

    @OptIn(InternalAPI::class)
    override suspend fun login(password: String, email: String): Result<LoginResponse> {
        return try {
            val response: HttpResponse = httpClient.request(baseUrl + "auth/email") {
                method = HttpMethod.Post
                contentType(ContentType.Application.Json)
                header(HttpHeaders.ContentType, ContentType.Application.Json)
                header("Magine-AccessToken", "e3be08fd-ae78-401a-a75f-e978c8784b7c")

                body = LoginRequestDto(
                    identity = email,
                    accessKey = password
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