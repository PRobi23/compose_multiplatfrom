package presentation.screens.common

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.material.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import cafe.adriel.voyager.core.screen.Screen
import presentation.components.MoviesList

class SuccessfulLoginScreen : Screen {

    @Composable
    override fun Content() {
        MaterialTheme {
            Column(modifier = Modifier.fillMaxSize()) {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colors.background
                ) {
                    Scaffold(
                        topBar = {
                            TopAppBar(backgroundColor = Color.Cyan,
                                title = {
                                    Text(
                                        text = "Magine Pro",
                                        modifier = Modifier.fillMaxWidth(),
                                        textAlign = TextAlign.Center,
                                        color = Color.White
                                    )
                                }
                            )
                        }
                    ) {
                        MoviesList(
                            modifier = Modifier.height(250.dp).fillMaxWidth(),
                            title = "Favourites"
                        )
                    }
                }
            }
        }
    }
}