package presentation.components

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.wrapContentHeight
import androidx.compose.material.Card
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import domain.model.Movie

@Composable
fun MovieItem(modifier: Modifier = Modifier, cardHeight: Dp, movie: Movie, textSize: TextUnit) {
    Card(
        modifier = modifier
            .padding(8.dp)
            .width(120.dp),
        elevation = 6.dp
    )
    {
        Column(
            modifier = Modifier
                .padding(8.dp)
                .height(cardHeight + 65.dp)
                .fillMaxHeight(),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Image(
                painter = movie.image,
                contentDescription = "img",
                modifier = androidx.compose.ui.Modifier
                    .height(cardHeight)
                    .width(cardHeight)
                    .padding(5.dp),

                alignment = Alignment.Center
            )
            Spacer(modifier = Modifier.height(5.dp))
            Text(
                text = movie.title,
                modifier = Modifier.padding(4.dp).wrapContentHeight(),
                color = Color.Black, textAlign = TextAlign.Center,
                style = TextStyle(fontSize = textSize)
            )
        }
    }
}