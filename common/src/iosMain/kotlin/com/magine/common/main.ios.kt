package com.magine.common

import androidx.compose.ui.window.Application
import com.magine.multiplatform.common.App
import platform.UIKit.UIViewController

fun MainViewController(): UIViewController =
    Application("Example Application") {
        App()
    }