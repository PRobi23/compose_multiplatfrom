package di

import MobileLoginScreenViewModel
import data.repository.AuthenticationRepositoryImpl
import domain.repositories.AuthenticationRepository
import domain.useCases.EmailValidatorUseCase
import domain.useCases.FetchQRCodeUseCase
import domain.useCases.PasswordValidatorUseCase
import domain.useCases.UserLoginUseCase
import domain.useCases.VerifyUserIdUseCase
import domain.util.DateTimeProvider
import domain.util.DateTimeUtils
import domain.util.KotlinDateTimeProvider
import domain.util.KotlinDateTimeUtils
import io.ktor.client.*
import io.ktor.client.plugins.cookies.*
import io.ktor.serialization.kotlinx.json.*
import kotlinx.serialization.json.Json
import org.koin.dsl.module
import presentation.viewModels.mobile.MobileFillInEmailScreenViewModel
import presentation.viewModels.tv.QRCodeScreenViewModel
import presentation.viewModels.tv.TvLoginScreenViewModel
import presentation.viewModels.tv.TvViewableViewModel


val appModule = module {
    //Use cases
    factory { EmailValidatorUseCase() }
    factory { UserLoginUseCase(authenticationRepository = get()) }
    factory { FetchQRCodeUseCase(authenticationRepository = get()) }
    factory { VerifyUserIdUseCase(authenticationRepository = get()) }
    factory { PasswordValidatorUseCase() }
    factory<DateTimeProvider> { KotlinDateTimeProvider() }
    factory<DateTimeUtils> { KotlinDateTimeUtils() }


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
        TvLoginScreenViewModel(
            userLoginUseCase = get(),
            passwordValidatorUseCase = get(),
            emailValidatorUseCase = get()
        )
    }

    viewModelDefinition {
        QRCodeScreenViewModel(
            fetchQRCodeUseCase = get(),
            verifyUserIdCodeUseCase = get()
        )
    }

    viewModelDefinition {
        TvViewableViewModel()
    }
}
