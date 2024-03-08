package presentation.screens.tv

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.Alignment
import cafe.adriel.voyager.core.screen.Screen
import cafe.adriel.voyager.navigator.Navigator
import kotlinx.coroutines.delay
import multiplatform.composeapp.generated.resources.Res
import multiplatform.composeapp.generated.resources.tv_splash_bg
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.painterResource
import presentation.screens.tv.TvRegisterScreen

class TvSplashScreen : Screen {
    @OptIn(ExperimentalResourceApi::class)
    @Composable
    override fun Content() {
        var isPerformingTask by remember { mutableStateOf(true) }

        Box(
            modifier = Modifier.fillMaxSize(),
            contentAlignment = Alignment.Center
        ) {
            // Load the local image resource
            Image(
                painter = painterResource(Res.drawable.tv_splash_bg),
                contentDescription = null,
                modifier = Modifier.fillMaxSize()
            )
        }

        LaunchedEffect(Unit) {
            delay(2000) // Do some heavy lifting
            isPerformingTask = false
        }
        if (isPerformingTask) {
            Text("Performing some tasks. Please wait!")
        } else {
            val screen = TvRegisterScreen()
            Navigator(screen)
        }
    }
}
