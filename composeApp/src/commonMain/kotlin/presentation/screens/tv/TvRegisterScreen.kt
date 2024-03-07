package presentation.screens.tv

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.Button
import androidx.compose.material.Icon
import androidx.compose.material.IconButton
import androidx.compose.material.MaterialTheme
import androidx.compose.material.OutlinedTextField
import androidx.compose.material.Text
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.Info
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import cafe.adriel.voyager.core.screen.Screen
import cafe.adriel.voyager.navigator.LocalNavigator
import cafe.adriel.voyager.navigator.currentOrThrow
import core.UiEvent
import core.ui.components.MagineAlertDialog
import multiplatform.composeapp.generated.resources.*
import multiplatform.composeapp.generated.resources.Res
import multiplatform.composeapp.generated.resources.auth_failed_to_login
import multiplatform.composeapp.generated.resources.invalid_email
import multiplatform.composeapp.generated.resources.password
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.stringResource
import org.koin.compose.koinInject
import presentation.screens.common.SuccessfulLoginScreen
import presentation.viewModels.tv.TvLoginScreenViewModel


class TvRegisterScreen : Screen {

    @OptIn(ExperimentalResourceApi::class)
    @Composable
    override fun Content() {
        MaterialTheme {
            val tvRegisterScreenViewModel: TvLoginScreenViewModel = koinInject()
            val uiState by tvRegisterScreenViewModel.uiState.collectAsState() //HERE USE THE ONE WITH LIFECYCLE IF POSSIBLE

            var email by remember { mutableStateOf("") }
            var password by remember { mutableStateOf("") }
            var showPassword by remember { mutableStateOf(value = false) }
            var openDialog = remember { mutableStateOf(value = false) }
            val navigator = LocalNavigator.currentOrThrow

            LaunchedEffect(key1 = true) {
                tvRegisterScreenViewModel.uiEvents.collect { event ->
                    when (event) {
                        is UiEvent.ShowErrorToTheUser -> {
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
                    text = stringResource(Res.string.auth_failed_to_login)
                )
            }

            Column(
                modifier = Modifier.fillMaxSize().padding(horizontal = 16.dp),
                verticalArrangement = Arrangement.Center
            ) {
                Text(
                    text = "Login",
                    fontSize = 28.sp,
                    fontWeight = FontWeight.Bold,
                    textAlign = TextAlign.Center,
                    modifier = Modifier.fillMaxWidth().padding(vertical = 32.dp)
                )

                OutlinedTextField(
                    value = email,
                    onValueChange = { email = it },
                    shape = RoundedCornerShape(percent = 20),
                    label = { Text("Email") },
                    keyboardOptions = KeyboardOptions(
                        keyboardType = KeyboardType.Email,
                        imeAction = ImeAction.Next
                    ),
                    modifier = Modifier.fillMaxWidth()
                )
                if (!uiState.isEmailValid) {
                    Text(
                        text = stringResource(Res.string.invalid_email), style = TextStyle(
                            color = Color.Red
                        )
                    )
                }

                Spacer(modifier = Modifier.height(16.dp))

                OutlinedTextField(
                    value = password,
                    onValueChange = { password = it },
                    label = { Text(stringResource(Res.string.password)) },
                    shape = RoundedCornerShape(percent = 20),
                    visualTransformation = if (showPassword) {
                        VisualTransformation.None
                    } else {
                        PasswordVisualTransformation()

                    },
                    keyboardOptions = KeyboardOptions(
                        keyboardType = KeyboardType.Password,
                        imeAction = ImeAction.Done
                    ),
                    modifier = Modifier.fillMaxWidth(),
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
                        text = stringResource(Res.string.invalid_password), style = TextStyle(
                            color = Color.Red
                        )
                    )
                }

                Spacer(modifier = Modifier.height(32.dp))

                Button(
                    onClick = {
                        val passwordIsValid = tvRegisterScreenViewModel.validatePassword(password)
                        val emailIsValid = tvRegisterScreenViewModel.validateEmail(email)

                        if (passwordIsValid && emailIsValid) {
                            tvRegisterScreenViewModel.login(
                                email = email,
                                password = password
                            )
                        }
                    },
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(text = stringResource(Res.string.login))
                }
            }
        }
    }

}