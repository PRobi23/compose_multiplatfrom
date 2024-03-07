import domain.useCases.EmailValidatorUseCase
import io.mockative.Mock
import io.mockative.classOf
import io.mockative.every
import io.mockative.mock
import presentation.viewModels.mobile.MobileFillInEmailScreenViewModel
import kotlin.test.Test
import kotlin.test.assertEquals

class MobileRegisterScreenViewModelTest {

    @Mock
    private val emailValidationUseCase = mock(classOf<EmailValidatorUseCase>())

    private val viewModel = MobileFillInEmailScreenViewModel(emailValidatorUseCase = emailValidationUseCase)

    @Test
    fun `validateEmail - invalid email`() {
        every { emailValidationUseCase("invalid_email") }.returns(false)

        viewModel.validateEmail("invalid_email")

        assertEquals(false, viewModel.uiState.value.isEmailValid)
    }

    @Test
    fun `validateEmail - valid email`() {
        every { emailValidationUseCase("valid@email.com") }.returns(true)

        viewModel.validateEmail("valid@email.com")

        assertEquals(true, viewModel.uiState.value.isEmailValid)
    }
}