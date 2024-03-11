package data.repository

import data.model.remote.LoginRequestDto
import data.model.remote.LoginResponseDto
import domain.model.LoginResponse
import domain.model.toLoginResponse
import domain.repositories.AuthenticationRepository
import io.ktor.client.*
import io.ktor.client.call.*
import io.ktor.client.plugins.*
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
            val response: HttpResponse = httpClient.request() {
                url(baseUrl + "auth/email")
                method = HttpMethod.Post
                contentType(ContentType.Application.Json)
                header(HttpHeaders.ContentType, ContentType.Application.Json)
                header("Magine-AccessToken", "e3be08fd-ae78-401a-a75f-e978c8784b7c")

                setBody(
                    LoginRequestDto(
                        identity = email,
                        accessKey = password
                    )
                )
            }

            if (response.status.isSuccess()) {
                val loginResponseDto = response.body<LoginResponseDto>()
                Result.success(loginResponseDto.toLoginResponse())
            } else {
                Result.failure(ResponseException(response, "Error during login"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}