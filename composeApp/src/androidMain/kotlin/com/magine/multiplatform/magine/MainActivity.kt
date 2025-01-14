package com.magine.multiplatform.magine

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview
import cafe.adriel.voyager.navigator.Navigator
import cafe.adriel.voyager.transitions.SlideTransition
import com.magine.multiplatform.isTv
import presentation.screens.common.SuccessfulLoginScreen
import presentation.screens.mobile.MobileSplashScreen
import presentation.screens.tv.TvSplashScreen

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
fun MoviesListTvPreview() {
    SuccessfulLoginScreen(
        isTv = true
    ).Content()
}

@Preview
@Composable
fun MoviesListMobilePreview() {
    SuccessfulLoginScreen(
        isTv = false
    ).Content()
}