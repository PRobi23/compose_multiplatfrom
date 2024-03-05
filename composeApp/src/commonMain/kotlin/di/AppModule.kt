package di

import MobileLoginScreenViewModel
import data.repository.AuthenticationRepositoryImpl
import domain.repositories.AuthenticationRepository
import domain.useCases.EmailValidatorUseCase
import domain.useCases.PasswordValidatorUseCase
import domain.useCases.UserLoginUseCase
import io.ktor.client.*
import io.ktor.client.plugins.cookies.*
import io.ktor.serialization.kotlinx.json.*
import kotlinx.serialization.json.Json
import org.koin.dsl.module
import presentation.viewModels.mobile.MobileFillInEmailScreenViewModel
import presentation.viewModels.tv.TvRegisterScreenViewModel


val appModule = module {
    //Use cases
    factory { EmailValidatorUseCase() }
    factory { UserLoginUseCase(registrationRepository = get()) }
    factory { PasswordValidatorUseCase() }

    //Data layer
    single<HttpClient> {
        HttpClient {
            install(HttpCookies) // this is for logging in
            install(io.ktor.client.plugins.contentnegotiation.ContentNegotiation) {
                // I'm using kotlinx.serialization, so you'd need to import that as well.
                json(Json {
                    prettyPrint = true
                    isLenient = true
                })
            }
        }
    }

    factory<AuthenticationRepository> {
        AuthenticationRepositoryImpl(httpClient = get())
    }

    // ViewModels
    viewModelDefinition { MobileFillInEmailScreenViewModel(emailValidatorUseCase = get()) }

    viewModelDefinition {
        MobileLoginScreenViewModel(
            userLoginUseCase = get(),
            passwordValidatorUseCase = get()
        )
    }

    viewModelDefinition {
        TvRegisterScreenViewModel(
            userLoginUseCase = get(),
            passwordValidatorUseCase = get(),
            emailValidatorUseCase = get()
        )
    }
}
