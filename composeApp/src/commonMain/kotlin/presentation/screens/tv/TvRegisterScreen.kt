package presentation.screens.tv

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.Button
import androidx.compose.material.MaterialTheme
import androidx.compose.material.OutlinedTextField
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import cafe.adriel.voyager.core.screen.Screen
import org.koin.compose.koinInject
import presentation.viewModels.tv.TvRegisterScreenViewModel


class TvRegisterScreen : Screen {

    @Composable
    override fun Content() {
        MaterialTheme {
            val tvRegisterScreenViewModel: TvRegisterScreenViewModel = koinInject()
            val uiState by tvRegisterScreenViewModel.uiState.collectAsState() //HERE USE THE ONE WITH LIFECYCLE IF POSSIBLE

            var email by remember { mutableStateOf("") }
            var password by remember { mutableStateOf("") }

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
                    label = { Text("Email") },
                    keyboardOptions = KeyboardOptions(
                        keyboardType = KeyboardType.Email,
                        imeAction = ImeAction.Next
                    ),
                    modifier = Modifier.fillMaxWidth()
                )
                if (!uiState.isEmailValid) {
                    Text(
                        text = "E-mail address is not valid", style = TextStyle(
                            color = Color.Red
                        )
                    )
                }

                Spacer(modifier = Modifier.height(16.dp))

                OutlinedTextField(
                    value = password,
                    onValueChange = { password = it },
                    label = { Text("Password") },
                    visualTransformation = PasswordVisualTransformation(),
                    keyboardOptions = KeyboardOptions(
                        keyboardType = KeyboardType.Password,
                        imeAction = ImeAction.Done
                    ),
                    modifier = Modifier.fillMaxWidth()
                )
                if (!uiState.isPasswordValid) {
                    Text(
                        text = "Passwords must have at least 6 characters", style = TextStyle(
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
                    Text(text = "Log in")
                }
            }
        }
    }

}