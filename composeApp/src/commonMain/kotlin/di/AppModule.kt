package di

import domain.EmailValidatorUseCase
import org.koin.dsl.module
import presentation.viewModels.MobileRegisterScreenViewModel


val appModule = module {
    factory { EmailValidatorUseCase() }

    viewModelDefinition { MobileRegisterScreenViewModel(get()) }
}
