package presentation.screens.common

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.sp
import cafe.adriel.voyager.core.screen.Screen
import com.magine.multiplatform.magine.MR
import dev.icerock.moko.resources.compose.stringResource

class SuccessfulLoginScreen : Screen {

    @Composable
    override fun Content() {
        Column(modifier = Modifier.fillMaxSize()) {
            Text(
                modifier = Modifier.fillMaxSize(),
                text = stringResource(MR.strings.successful_login),
                style = TextStyle(
                    textAlign = TextAlign.Center,
                    fontSize = 26.sp
                )
            )
        }
    }
}