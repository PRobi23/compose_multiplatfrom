package presentation.components

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import cafe.adriel.voyager.navigator.LocalNavigator
import cafe.adriel.voyager.navigator.currentOrThrow
import domain.model.Movie
import presentation.screens.common.DetailsScreen

@Composable
fun MoviesList(
    modifier: Modifier,
    title: String,
    cardHeight: Dp,
    movies: List<Movie>,
    textSize: TextUnit = 10.sp,
    isTv: Boolean
) {
    val navigator = LocalNavigator.currentOrThrow

    Column(modifier = modifier) {
        Text(
            text = title,
            modifier = Modifier.padding(16.dp),
            color = Color.Black, textAlign = TextAlign.Center,
            style = TextStyle(
                fontWeight = FontWeight.Bold
            )
        )
        LazyRow {
            items(movies) { movie ->
                MovieItem(modifier = Modifier.clickable {
                    navigator.push(DetailsScreen(movie = movie))
                }, movie = movie, cardHeight = cardHeight, textSize = textSize)
            }
        }
    }
}
