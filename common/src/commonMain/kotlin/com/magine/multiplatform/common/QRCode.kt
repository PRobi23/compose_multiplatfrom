package com.magine.multiplatform.common

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.Button
import androidx.compose.material.MaterialTheme
import androidx.compose.material.OutlinedTextField
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

@Composable
internal fun QRCode() {
    val startColor = Color.Blue // Replace with your desired start color
    val endColor = Color.Green // Replace with your desired end color

    val gradient = Brush.verticalGradient(
        colors = listOf(startColor, endColor)
    )

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(brush = gradient)
    ) {

//        Image(
//            painter = rememberVect,
//            contentDescription = "",
//            modifier = Modifier.align(Alignment.TopEnd)
//        )

        Row(modifier = Modifier.align(Alignment.TopStart).padding(32.dp, 32.dp, 32.dp, 32.dp)) {
            Column(modifier = Modifier.align(Alignment.CenterVertically)) {
                Text(
                    text = "Access via mobile phone or computer",
                    fontSize = 32.sp,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.align(Alignment.Start)
                )
                Spacer(modifier = Modifier.height(32.dp))
                Text(
                    text = "Follow these steps",
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.align(Alignment.Start)
                )
                Spacer(modifier = Modifier.height(32.dp))
                Row {
                    Text(
                        text = "Step 1",
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold,
                        modifier = Modifier.align(Alignment.CenterVertically)
                    )
                    Spacer(modifier = Modifier.width(10.dp))
                    Text(
                        text = "Scan the QR code with your phone’s camera or go to:",
                        fontSize = 18.sp,
                        modifier = Modifier.align(Alignment.CenterVertically)
                    )
                }
                Spacer(modifier = Modifier.height(32.dp))
                Row {
                    Text(
                        text = "Step 2",
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold,
                        modifier = Modifier.align(Alignment.CenterVertically)
                    )
                    Spacer(modifier = Modifier.width(10.dp))
                    Text(
                        text = "Enter sign in code:",
                        fontSize = 18.sp,
                        modifier = Modifier.align(Alignment.CenterVertically)
                    )
                }
                Spacer(modifier = Modifier.height(32.dp))
                Row {
                    Text(
                        text = "Step 3",
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold,
                        modifier = Modifier.align(Alignment.CenterVertically)
                    )
                    Spacer(modifier = Modifier.width(10.dp))
                    Text(
                        text = "Sign in to Magine Pro. Your ${getPlatformName()} application will be ready to watch!",
                        fontSize = 18.sp,
                        modifier = Modifier.align(Alignment.CenterVertically)
                    )
                }
            }
            Spacer(modifier = Modifier.width(32.dp))
//            Image(
//                painter = rememberVect,
//                contentDescription = "",
//                modifier = Modifier.align(Alignment.CenterVertically)
//            )
        }


        Row(
            modifier = Modifier.fillMaxWidth().align(Alignment.BottomStart)
                .padding(32.dp, 32.dp, 32.dp, 32.dp)
        ) {
            Button(
                onClick = { /* Handle login button click */ },
                modifier = Modifier.align(Alignment.CenterVertically)
            ) {
                Text(text = "Sign in from TV")
            }
            Spacer(modifier = Modifier.width(32.dp))
            Button(
                onClick = { /* Handle login button click */ },
                modifier = Modifier.align(Alignment.CenterVertically)
            ) {
                Text(text = "Sign up from TV")
            }
        }
    }
}

