package presentation.useCases

import domain.model.LoginResponse
import domain.repositories.AuthenticationRepository
import domain.useCases.UserLoginUseCase
import io.mockative.Mock
import io.mockative.classOf
import io.mockative.coEvery
import io.mockative.coVerify
import io.mockative.mock
import kotlinx.coroutines.runBlocking
import kotlin.test.Test

class UserLoginUseCaseTest {

    @Mock
    private val authenticationRepository = mock(classOf<AuthenticationRepository>())

    private fun createUseCase() = UserLoginUseCase(
        authenticationRepository = authenticationRepository
    )

    @Test
    fun `use case calls the login function of the authentication repository`() = runBlocking {
        val password = "test-password"
        val email = "test-email@test.com"

        coEvery {
            authenticationRepository.login(
                password = password,
                email = email
            )
        }.returns(
            Result.success(
                LoginResponse(
                    registered = true,
                    newUser = false
                )
            )
        )

        val useCase = createUseCase()
        useCase(password = password, email = email)

        coVerify {
            authenticationRepository.login(
                password = password,
                email = email
            )
        }
    }

}