package com.magine.multiplatform.magine

import MobileSplashScreen
import TvSplashScreen
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview
import cafe.adriel.voyager.navigator.Navigator
import cafe.adriel.voyager.transitions.SlideTransition
import com.magine.multiplatform.isTv
import presentation.screens.tv.TvRegisterScreen

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContent {
            val screen = if (baseContext.isTv()) {
                TvSplashScreen()
            } else {
                MobileSplashScreen()
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
    TvRegisterScreen()
}