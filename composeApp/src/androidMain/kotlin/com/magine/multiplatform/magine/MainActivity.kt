package com.magine.multiplatform.magine

import presentation.screens.mobile.MobileFillInEmailScreen
import presentation.screens.tv.TvLoginScreen
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview
import cafe.adriel.voyager.navigator.Navigator
import cafe.adriel.voyager.transitions.SlideTransition
import com.magine.multiplatform.isTv

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContent {
            val screen = if (baseContext.isTv()) {
                TvLoginScreen()
            } else {
                MobileFillInEmailScreen()
            }
    
            Navigator(screen) { navigator ->
                SlideTransition(navigator)
            }
        }
    }
}

@Preview
@Composable
fun RegisterScreenTvPreview() {
    TvLoginScreen()
}