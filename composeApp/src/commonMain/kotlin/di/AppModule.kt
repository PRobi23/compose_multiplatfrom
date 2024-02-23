package di

import EmailValidatorUseCase
import MobileRegisterScreenViewModel
import org.koin.dsl.module


fun appModule() = module {
    factory { EmailValidatorUseCase() }

    viewModelDefinition { MobileRegisterScreenViewModel(get()) }
}
