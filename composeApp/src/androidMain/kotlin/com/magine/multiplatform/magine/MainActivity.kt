package com.magine.multiplatform.magine

import MobileRegisterScreen
import TvRegisterScreen
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview
import com.magine.multiplatform.isTv

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContent {
            if (baseContext.isTv()) {
                TvRegisterScreen()
            } else {
                MobileRegisterScreen()
            }
        }
    }
}

@Preview
@Composable
fun RegisterScreenTvPreview() {
    TvRegisterScreen()
}