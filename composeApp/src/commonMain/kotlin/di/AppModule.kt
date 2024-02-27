package di

import EmailValidatorUseCase
import MobileRegisterScreenViewModel
import org.koin.dsl.module


val appModule = module {
    factory { EmailValidatorUseCase() }

    viewModelDefinition { MobileRegisterScreenViewModel(get()) }
}
