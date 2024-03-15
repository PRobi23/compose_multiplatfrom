/*
 * ECAS Software
 * Copyright (c) 2024 European Commission
 * Licensed under the EUPL
 * You may not use this work except in compliance with the Licence.
 * You may obtain a copy of the Licence at:
 * http://ec.europa.eu/idabc/eupl
 */

package utils

import androidx.compose.runtime.Composable
import androidx.compose.ui.unit.Dp

/** Getting screen size info for UI-related calculations */
data class ScreenSizeInfo(val hPX: Int, val wPX: Int, val hDP: Dp, val wDP: Dp)

@Composable
expect fun getScreenSizeInfo(): ScreenSizeInfo
