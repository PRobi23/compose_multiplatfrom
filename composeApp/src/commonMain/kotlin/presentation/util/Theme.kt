package presentation.util

import androidx.compose.material.Typography
import androidx.compose.runtime.Composable
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp

val Typography.MagineDisplayText: TextStyle
    @Composable
    get() {
        return TextStyle(
            fontFamily = FontFamily.SansSerif,
            fontWeight = FontWeight.Bold,
            fontSize = 40.sp,
        )
    }

val Typography.MagineHeadlineText: TextStyle
    @Composable
    get() {
        return TextStyle(
            fontFamily = FontFamily.SansSerif,
            fontWeight = FontWeight.Normal,
            fontSize = 32.sp,
        )
    }

val Typography.MagineTitleText: TextStyle
    @Composable
    get() {
        return TextStyle(
            fontFamily = FontFamily.SansSerif,
            fontWeight = FontWeight.Normal,
            fontSize = 24.sp,
        )
    }

val Typography.MagineSubheaderText: TextStyle
    @Composable
    get() {
        return TextStyle(
            fontFamily = FontFamily.SansSerif,
            fontWeight = FontWeight.Normal,
            fontSize = 18.sp,
        )
    }

val Typography.MagineBodyText: TextStyle
    @Composable
    get() {
        return TextStyle(
            fontFamily = FontFamily.SansSerif,
            fontWeight = FontWeight.Normal,
            fontSize = 15.sp,
        )
    }

val Typography.MagineCaptionText: TextStyle
    @Composable
    get() {
        return TextStyle(
            fontFamily = FontFamily.SansSerif,
            fontWeight = FontWeight.Normal,
            fontSize = 14.sp,
        )
    }

val Typography.MagineSmallText: TextStyle
    @Composable
    get() {
        return TextStyle(
            fontFamily = FontFamily.SansSerif,
            fontWeight = FontWeight.Normal,
            fontSize = 12.sp,
        )
    }