package presentation.screens.mobile

/*
 * Copyright (C) 2024 Magine Pro
 * All rights reserved.
 */

import MobileLoginScreenViewModel
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.Info
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import cafe.adriel.voyager.core.screen.Screen
import cafe.adriel.voyager.navigator.LocalNavigator
import cafe.adriel.voyager.navigator.currentOrThrow
import core.UiEvent
import core.ui.components.MagineAlertDialog
import multiplatform.composeapp.generated.resources.*
import multiplatform.composeapp.generated.resources.Res
import multiplatform.composeapp.generated.resources.invalid_password
import multiplatform.composeapp.generated.resources.login
import multiplatform.composeapp.generated.resources.password
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.StringResource
import org.jetbrains.compose.resources.stringResource
import org.koin.compose.koinInject
import presentation.screens.common.SuccessfulLoginScreen

class MobileLoginScreen(private val email: String) : Screen {

    @OptIn(ExperimentalResourceApi::class)
    @Composable
    override fun Content() {
        var password by remember { mutableStateOf("") }
        var showPassword by remember { mutableStateOf(value = false) }
        val mobileRegisterScreenViewModel: MobileLoginScreenViewModel = koinInject()
        val uiState by mobileRegisterScreenViewModel.uiState.collectAsState() //HERE USE THE ONE WITH LIFECYCLE IF POSSIBLE
        var openDialog = remember { mutableStateOf(value = false) }
        var errorResource by remember { mutableStateOf(Res.string.auth_failed_to_login) }
        val navigator = LocalNavigator.currentOrThrow

        LaunchedEffect(key1 = true) {
            mobileRegisterScreenViewModel.uiEvents.collect { event ->
                when (event) {
                    is UiEvent.ShowErrorToTheUser -> {
                        errorResource = event.resourceId
                        openDialog.value = true
                    }

                    is UiEvent.Success -> {
                        navigator.push(SuccessfulLoginScreen())
                    }
                }
            }
        }

        if (openDialog.value) {
            MagineAlertDialog(
                openDialog = openDialog,
                text = stringResource(errorResource)
            )
        }

        Column(modifier = Modifier.fillMaxSize()) {

            OutlinedTextField(
                value = email,
                onValueChange = { },
                shape = RoundedCornerShape(percent = 20),
                readOnly = true,
                modifier = Modifier.fillMaxWidth().padding(top = 32.dp, start = 16.dp, end = 16.dp),
            )
            Spacer(modifier = Modifier.height(16.dp))

            OutlinedTextField(
                value = password,
                onValueChange = { password = it },
                label = { Text(stringResource(Res.string.password)) },
                keyboardOptions = KeyboardOptions(
                    keyboardType = KeyboardType.Password,
                    imeAction = ImeAction.Next
                ),
                visualTransformation = if (showPassword) {
                    VisualTransformation.None
                } else {
                    PasswordVisualTransformation()

                },
                shape = RoundedCornerShape(percent = 20),
                modifier = Modifier.fillMaxWidth().padding(start = 16.dp, end = 16.dp),
                trailingIcon = {
                    IconButton(onClick = { showPassword = !showPassword }) {
                        Icon(
                            imageVector = Icons.Outlined.Info,
                            contentDescription = "Show password"
                        )
                    }
                },
            )
            if (!uiState.isPasswordValid) {
                Text(
                    text = stringResource(Res.string.invalid_password),
                    style = TextStyle(
                        color = Color.Red
                    ),
                    modifier = Modifier.padding(start = 16.dp, end = 16.dp)
                )
            }
            Button(
                modifier = Modifier.padding(start = 16.dp),
                onClick = {
                    val passwordIsValid = mobileRegisterScreenViewModel.validatePassword(password)
                    if (passwordIsValid) {
                        mobileRegisterScreenViewModel.login(
                            email = email,
                            password = password
                        )
                    }
                }) {
                Text(
                    text = stringResource(Res.string.login)
                )
            }
        }
    }
}
