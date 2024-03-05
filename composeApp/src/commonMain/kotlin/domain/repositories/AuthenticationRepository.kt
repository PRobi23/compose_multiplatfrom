package domain.repositories

import domain.model.LoginResponse

interface AuthenticationRepository {

    suspend fun login(password: String, email: String): Result<LoginResponse>
}