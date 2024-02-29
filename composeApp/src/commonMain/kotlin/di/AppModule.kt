package di

import MobileLoginScreenViewModel
import data.AuthenticationRepositoryImpl
import domain.repositories.AuthenticationRepository
import domain.useCases.EmailValidatorUseCase
import domain.useCases.UserLoginUseCase
import io.ktor.client.*
import io.ktor.client.plugins.contentnegotiation.*
import io.ktor.serialization.kotlinx.json.*
import org.koin.dsl.module
import presentation.viewModels.mobile.MobileFillInEmailScreenViewModel


val appModule = module {
    factory { EmailValidatorUseCase() }
    factory { UserLoginUseCase(registrationRepository = get()) }

    single {
        HttpClient {
            install(ContentNegotiation) {
                json()
            }
        }
    }

    factory<AuthenticationRepository> {
        AuthenticationRepositoryImpl(httpClient = get())
    }

    viewModelDefinition { MobileFillInEmailScreenViewModel(emailValidatorUseCase = get()) }

    viewModelDefinition { MobileLoginScreenViewModel(userLoginUseCase = get()) }

}
