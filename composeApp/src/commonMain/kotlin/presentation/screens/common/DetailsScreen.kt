/*
 * ECAS Software
 * Copyright (c) 2024 European Commission
 * Licensed under the EUPL
 * You may not use this work except in compliance with the Licence.
 * You may obtain a copy of the Licence at:
 * http://ec.europa.eu/idabc/eupl
 */

package presentation.screens.common

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.wrapContentHeight
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import cafe.adriel.voyager.core.screen.Screen
import domain.model.Movie
import presentation.components.MoviePoster
import utils.getScreenSizeInfo


class DetailsScreen(private val movie: Movie) : Screen {

    @Composable
    override fun Content() {
        val screenSizeInfo = getScreenSizeInfo()

        Column(modifier = Modifier.fillMaxSize().verticalScroll(rememberScrollState())) {
            MoviePoster(
                movie = movie,
                size = screenSizeInfo.wDP
            )
            Text(
                text = movie.actors,
                modifier = Modifier.padding(16.dp).wrapContentHeight(),
                color = Color.Black, textAlign = TextAlign.Center,
                style = TextStyle(fontSize = 12.sp, fontWeight = FontWeight.Bold)
            )
            Text(
                text = movie.title,
                modifier = Modifier.padding(16.dp).wrapContentHeight(),
                color = Color.Black, textAlign = TextAlign.Center,
                style = TextStyle(fontSize = 16.sp, fontWeight = FontWeight.Bold)
            )
            Text(
                text = movie.description,
                modifier = Modifier.padding(4.dp).wrapContentHeight(),
                color = Color.Black, textAlign = TextAlign.Center,
                style = TextStyle(fontSize = 16.sp)
            )
        }
    }
}