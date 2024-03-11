package presentation.screens.common

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextAlign
import multiplatform.composeapp.generated.resources.Res
import androidx.compose.ui.unit.sp
import cafe.adriel.voyager.core.screen.Screen
import multiplatform.composeapp.generated.resources.successful_login
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.stringResource

class SuccessfulLoginScreen : Screen {

    @OptIn(ExperimentalResourceApi::class)
    @Composable
    override fun Content() {
        Column(modifier = Modifier.fillMaxSize()) {
            Text(
                modifier = Modifier.fillMaxSize(),
                text = stringResource(Res.string.successful_login),
                style = TextStyle(
                    textAlign = TextAlign.Center,
                    fontSize = 26.sp
                )
            )
        }
    }
}