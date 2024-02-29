package com.magine.multiplatform.magine

import presentation.screens.mobile.MobileRegisterScreen
import presentation.screens.tv.TvRegisterScreen
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
                TvRegisterScreen()
            } else {
                MobileRegisterScreen()
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