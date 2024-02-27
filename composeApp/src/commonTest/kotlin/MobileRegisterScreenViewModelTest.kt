/*
 * ECAS Software
 * Copyright (c) 2024 European Commission
 * Licensed under the EUPL
 * You may not use this work except in compliance with the Licence.
 * You may obtain a copy of the Licence at:
 * http://ec.europa.eu/idabc/eupl
 */
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Test

class MobileRegisterScreenViewModelTest {

    private val emailValidationUseCase: EmailValidatorUseCase = mockk()
    private val viewModel = MobileRegisterScreenViewModel(emailValidationUseCase)

    @Test
    fun `validateEmail - invalid email`() = runTest {
        every { emailValidationUseCase("invalid_email") } returns false

        viewModel.validateEmail("invalid_email")

        assertEquals(false, viewModel.uiState.value.isEmailValid)
    }

    @Test
    fun `validateEmail - valid email`() = runTest {
        every { emailValidationUseCase("valid@email.com") } returns true

        viewModel.validateEmail("valid@email.com")

        assertEquals(true, viewModel.uiState.value.isEmailValid)
    }
}
}