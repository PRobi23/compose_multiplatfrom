package presentation.screens.mobile/*
 * Copyright (C) 2024 Magine Pro
 * All rights reserved.
 */

import MobileLoginScreenViewModel
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Delete
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.unit.dp
import cafe.adriel.voyager.core.screen.Screen
import org.koin.compose.koinInject

class MobileLoginScreen(private val email: String) : Screen {

    @Composable
    override fun Content() {
        var password by remember { mutableStateOf("") }
        val mobileRegisterScreenViewModel: MobileLoginScreenViewModel = koinInject()
        val uiState by mobileRegisterScreenViewModel.uiState.collectAsState() //HERE USE THE ONE WITH LIFECYCLE IF POSSIBLE

        Column(modifier = Modifier.fillMaxSize()) {
            Text(text = email)
            Spacer(modifier = Modifier.height(16.dp))

            OutlinedTextField(
                value = password,
                onValueChange = { password = it },
                label = { Text("Password") },
                keyboardOptions = KeyboardOptions(
                    keyboardType = KeyboardType.Password,
                    imeAction = ImeAction.Next
                ),
                modifier = Modifier.fillMaxWidth(),
                trailingIcon = {
                    IconButton(onClick = { password = "" }) {
                        Icon(
                            imageVector = Icons.Filled.Delete,
                            contentDescription = "Delete Icon"
                        )
                    }
                },
            )
            if (!uiState.isPasswordValid) {
                Text(
                    text = "Passwords must have at least 6 characters", style = TextStyle(
                        color = Color.Red
                    )
                )
            }
            Button(onClick = {
                val passwordIsValid = mobileRegisterScreenViewModel.validatePassword(password)
                if (passwordIsValid) {
                    mobileRegisterScreenViewModel.login(
                        email = email,
                        password = password
                    )
                }
            }) {
                Text(text = "Log in")
            }
        }
    }
}
