package presentation.screens.tv

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.*
import androidx.compose.material.Button
import androidx.compose.material.CircularProgressIndicator
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import cafe.adriel.voyager.core.screen.Screen
import cafe.adriel.voyager.navigator.LocalNavigator
import cafe.adriel.voyager.navigator.currentOrThrow
import core.UiEvent
import io.github.alexzhirkevich.qrose.rememberQrCodePainter
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import multiplatform.composeapp.generated.resources.*
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.painterResource
import org.jetbrains.compose.resources.stringResource
import org.koin.compose.koinInject
import presentation.screens.common.SuccessfulLoginScreen
import presentation.viewModels.tv.QRCodeScreenViewModel


class TvQRCodeScreen : Screen {

    @OptIn(ExperimentalResourceApi::class)
    @Composable
    override fun Content() {
        val qrCodeScreenViewModel: QRCodeScreenViewModel = koinInject()
        val uiState by qrCodeScreenViewModel.uiState.collectAsState()
        val tokenState by qrCodeScreenViewModel.token.collectAsState()
        val loadingState by qrCodeScreenViewModel.loadingState.collectAsState()
        val navigator = LocalNavigator.currentOrThrow

        LaunchedEffect(key1 = Unit) {
            // Initial fetch to get expiresIn and interval values
            qrCodeScreenViewModel.fetchQRCode(true)

            // Launch a coroutine for verification attempts based on interval
            launch {
                while (tokenState.token == "") {
                    delay(uiState.interval * 1000L)
                    qrCodeScreenViewModel.verifyUserId(uiState.deviceCode)
                }
            }

            // Launch a coroutine for refetching QR code based on expiresIn
            launch {
                while (tokenState.token == "") {
                    if (uiState.expiresIn != 1) {
                        delay(uiState.expiresIn * 1000L)
                    } else {
                        delay(900000L) //15 minutes is our service's default value for the QrCode expiration
                    }
                    qrCodeScreenViewModel.fetchQRCode(false)
                }
            }
        }

        LaunchedEffect(key1 = true) {
            qrCodeScreenViewModel.uiEvents.collect { event ->
                when (event) {
                    is UiEvent.Success -> {
                        navigator.push(TvDetailsScreen())
                    }

                    is UiEvent.ShowMessageToTheUser -> {}
                }
            }
        }

        if (loadingState) {
            // Display loading indicator
            Box(modifier = Modifier.fillMaxSize()) {
                CircularProgressIndicator(modifier = Modifier.align(Alignment.Center))
            }
        } else {
            Row(modifier = Modifier.fillMaxSize()) {

                Column(
                    modifier = Modifier.weight(2f).padding(all = 50.dp).fillMaxHeight(),
                    verticalArrangement = Arrangement.Center
                ) {

                    Text(
                        text = stringResource(Res.string.qrTitle),
                        style = TextStyle(
                            fontSize = 30.sp,
                            fontWeight = FontWeight.Bold
                        ),
                        modifier = Modifier.align(Alignment.Start)
                    )

                    Spacer(modifier = Modifier.height(16.dp))

                    Text(
                        text = stringResource(Res.string.qrSteps),
                        style = TextStyle(
                            fontSize = 25.sp,
                            fontWeight = FontWeight.Bold
                        ),
                        modifier = Modifier.align(Alignment.Start).padding(top = 8.dp)
                    )

                    Spacer(modifier = Modifier.height(16.dp))

                    Row() {
                        Column {
                            Text(
                                text = stringResource(Res.string.qrStepOne),
                                style = TextStyle(
                                    fontSize = 20.sp, // Specify your desired size
                                    fontWeight = FontWeight.Bold // Makes the text bold
                                ),
                                modifier = Modifier
                            )
                        }
                        Spacer(modifier = Modifier.width(30.dp))
                        Column {
                            Text(
                                text = stringResource(Res.string.qrStepOneDesc),
                                style = TextStyle(
                                    fontSize = 17.sp,
                                ),
                                overflow = TextOverflow.Ellipsis
                            )
                            Spacer(modifier = Modifier.width(30.dp))
                            Text(
                                text = uiState.verificationUri,
                                style = TextStyle(
                                    fontSize = 17.sp,
                                    fontWeight = FontWeight.Bold
                                ),
                                modifier = Modifier
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(16.dp))

                    Row() {
                        Text(
                            text = stringResource(Res.string.qrStepTwo),
                            style = TextStyle(
                                fontSize = 20.sp,
                                fontWeight = FontWeight.Bold
                            ),
                            modifier = Modifier
                        )
                        Spacer(modifier = Modifier.width(30.dp))
                        Column {
                            Text(
                                text = stringResource(Res.string.qrStepTwoDesc),
                                style = TextStyle(
                                    fontSize = 17.sp,
                                ),
                                overflow = TextOverflow.Ellipsis
                            )
                            Spacer(modifier = Modifier.width(30.dp))
                            Text(
                                text = uiState.userCode,
                                style = TextStyle(
                                    fontSize = 17.sp,
                                    fontWeight = FontWeight.Bold
                                ),
                                overflow = TextOverflow.Ellipsis
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(16.dp))

                    Row() {
                        Text(
                            text = stringResource(Res.string.qrStepThree),
                            style = TextStyle(
                                fontSize = 20.sp,
                                fontWeight = FontWeight.Bold
                            ),
                            modifier = Modifier
                        )
                        Spacer(modifier = Modifier.width(30.dp))
                        Text(
                            text = stringResource(Res.string.qrStepThreeDesc),
                            style = TextStyle(
                                fontSize = 17.sp,
                            ),
                            overflow = TextOverflow.Ellipsis
                        )
                    }

                    Spacer(modifier = Modifier.height(16.dp))

                    Row(modifier = Modifier.padding(top = 16.dp)) {
                        Button(onClick = { navigator.push(TvRegisterScreen()) }) {
                            Text(text = stringResource(Res.string.qrToSignInActivity))
                        }

                        Spacer(modifier = Modifier.width(8.dp))

                        Button(onClick = { navigator.push(TvRegisterScreen()) }) {
                            Text(text = stringResource(Res.string.qrToRegisterActivity))
                        }
                    }
                }

                Column(
                    modifier = Modifier.weight(1f).padding(all = 50.dp).fillMaxHeight(),
                    verticalArrangement = Arrangement.Center
                ) {

                    Image(
                        painter = painterResource(Res.drawable.ic_logo),
                        contentDescription = "Logo",
                        modifier = Modifier.align(Alignment.End)
                            .width(204.dp)
                            .height(46.dp)
                    )

                    Image(
                        painter = rememberQrCodePainter(uiState.verificationUriComplete),
                        contentDescription = "QR code referring to the website",
                        modifier = Modifier.align(Alignment.End)
                            .width(400.dp)
                            .height(400.dp)
                    )
                }
            }
        }
    }
}