/*
 * Copyright (C) 2024 Magine Pro
 * All rights reserved.
 */

package domain

class EmailValidatorUseCase {
    private val emailRegex = Regex("^[A-Za-z0-9._%+-]+@([A-Za-z0-9-]+\\.)+([A-Za-z0-9]{2,12})$")

    operator fun invoke(email: String): Boolean {
        return emailRegex.matches(email)
    }
}