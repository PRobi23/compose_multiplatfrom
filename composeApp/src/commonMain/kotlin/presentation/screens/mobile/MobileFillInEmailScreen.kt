package presentation.screens.mobile

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Delete
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import cafe.adriel.voyager.core.screen.Screen
import cafe.adriel.voyager.navigator.LocalNavigator
import cafe.adriel.voyager.navigator.currentOrThrow
import com.magine.multiplatform.magine.MR
import dev.icerock.moko.resources.compose.stringResource
import org.koin.compose.koinInject
import presentation.viewModels.mobile.MobileFillInEmailScreenViewModel

class MobileFillInEmailScreen : Screen {

    @Composable
    override fun Content() {
        val mobileFillInEmailScreenViewModel: MobileFillInEmailScreenViewModel = koinInject()
        val uiState by mobileFillInEmailScreenViewModel.uiState.collectAsState() //HERE USE THE ONE WITH LIFECYCLE IF POSSIBLE
        var email by remember { mutableStateOf("") }
        val navigator = LocalNavigator.currentOrThrow

        MaterialTheme {
            Column(
                modifier = Modifier.fillMaxSize().padding(horizontal = 16.dp),
                verticalArrangement = Arrangement.Center
            ) {
                Text(
                    text = stringResource(MR.strings.welcome),
                    fontSize = 28.sp,
                    fontWeight = FontWeight.Bold,
                    textAlign = TextAlign.Center,
                    modifier = Modifier.fillMaxWidth().padding(vertical = 32.dp)
                )

                OutlinedTextField(
                    value = email,
                    onValueChange = { email = it },
                    label = { Text(stringResource(MR.strings.email)) },
                    keyboardOptions = KeyboardOptions(
                        keyboardType = KeyboardType.Email,
                        imeAction = ImeAction.Next
                    ),
                    shape = RoundedCornerShape(percent = 20),
                    modifier = Modifier.fillMaxWidth(),
                    trailingIcon = {
                        IconButton(onClick = { email = "" }) {
                            Icon(
                                imageVector = Icons.Filled.Delete,
                                contentDescription = "Delete Icon"
                            )
                        }
                    },
                )
                if (!uiState.isEmailValid) {
                    Text(
                        text = stringResource(MR.strings.invalid_email), style = TextStyle(
                            color = Color.Red
                        )
                    )
                }

                Button(
                    onClick = {
                        val isEmailValid = mobileFillInEmailScreenViewModel.validateEmail(email)
                        if (isEmailValid) {
                            navigator.push(MobileLoginScreen(email))
                        }
                    },
                ) {
                    Text(text = stringResource(MR.strings.next))
                }
            }
        }
    }

}