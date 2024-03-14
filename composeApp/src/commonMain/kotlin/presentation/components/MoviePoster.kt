/*
 * ECAS Software
 * Copyright (c) 2024 European Commission
 * Licensed under the EUPL
 * You may not use this work except in compliance with the Licence.
 * You may obtain a copy of the Licence at:
 * http://ec.europa.eu/idabc/eupl
 */

package presentation.components

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.Card
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import domain.model.Movie

@Composable
fun MoviePoster(
    movie: Movie,
    size: Dp,
    modifier: Modifier = Modifier
) {
    Card(
        shape = RoundedCornerShape(5.dp),
        border = BorderStroke(0.5.dp, Color.Gray),
        modifier = modifier
            .width(size)
            .height(size)
    ) {
        Image(
            painter = movie.image,
            contentDescription = "img",
            modifier = Modifier.fillMaxSize(),
        )
    }
}