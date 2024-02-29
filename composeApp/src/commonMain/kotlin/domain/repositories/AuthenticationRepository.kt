package domain.repositories

interface AuthenticationRepository {

    fun login(password: String, email: String)
}