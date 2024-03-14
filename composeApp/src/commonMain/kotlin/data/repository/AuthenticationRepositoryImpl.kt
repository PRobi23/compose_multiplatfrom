package data.repository

import data.model.remote.*
import domain.model.LoginResponse
import domain.model.QrCodeResponse
import domain.model.VerifyUserIdResponse
import domain.model.toLoginResponse
import domain.model.toQrCodeResponse
import domain.model.toVerifyUserIdResponse
import domain.repositories.AuthenticationRepository
import io.ktor.client.*
import io.ktor.client.call.*
import io.ktor.client.plugins.*
import io.ktor.client.request.*
import io.ktor.client.statement.*
import io.ktor.http.*
import utils.getDeviceModel
import utils.getDeviceVendor
import utils.getPlatform

class AuthenticationRepositoryImpl(
    private val httpClient: HttpClient
) : AuthenticationRepository {

    private val baseUrl = "https://client-api.magine.com/api/login/v2/"
    private val qrCodeUrl = "https://device-auth.eu-west-1.prod.magine.com/"
    private val userInfoUrl = "https://client-api.magine.com/api/user/v1/users/"
    private val magineAccessToken = "545bcd17-5a88-4311-a483-e4329ac06af3"

    override suspend fun login(password: String, email: String): Result<LoginResponse> {
        return try {
            val response: HttpResponse = httpClient.request() {
                url(baseUrl + "auth/email")
                method = HttpMethod.Post
                contentType(ContentType.Application.Json)
                header(HttpHeaders.ContentType, ContentType.Application.Json)
                header("Magine-AccessToken", magineAccessToken)

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

    override suspend fun qrCodeLogin(): Result<QrCodeResponse> {
        return try {
            val response: HttpResponse = httpClient.request() {
                url(qrCodeUrl + "device/code")
                method = HttpMethod.Post
                contentType(ContentType.Application.Json)
                header(HttpHeaders.ContentType, ContentType.Application.Json)
                header("Magine-AccessToken", magineAccessToken)

                setBody(
                    QrCodeRequestDto(
                        device = Device(
                            platform = getPlatform(),
                            vendor = getDeviceVendor(),
                            model = getDeviceModel()
                        )
                    )
                )
            }

            if (response.status.isSuccess()) {
                val qrCodeResponseDto = response.body<QrCodeResponseDto>()
                Result.success(qrCodeResponseDto.toQrCodeResponse())
            } else {
                Result.failure(ResponseException(response, "Error during login"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    override suspend fun verifyUserId(deviceCode: String): Result<VerifyUserIdResponse> {
        return try {
            val response: HttpResponse = httpClient.request() {
                url(qrCodeUrl + "device/token")
                method = HttpMethod.Post
                contentType(ContentType.Application.Json)
                header(HttpHeaders.ContentType, ContentType.Application.Json)
                header("Magine-AccessToken", magineAccessToken)

                setBody(
                    VerifyUserIdRequestDto(deviceCode)
                )
            }

            if (response.status.isSuccess()) {
                val verifyUserIdResponseDto = response.body<VerifyUserIdResponseDto>()
                Result.success(verifyUserIdResponseDto.toVerifyUserIdResponse())
            } else {
                Result.failure(ResponseException(response, "Error during login"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}