package data

import domain.repositories.AuthenticationRepository
import io.ktor.client.*

class AuthenticationRepositoryImpl(
    private val httpClient: HttpClient
) : AuthenticationRepository {

    override fun login(password: String, email: String) {
        TODO("Not yet implemented")
    }
}