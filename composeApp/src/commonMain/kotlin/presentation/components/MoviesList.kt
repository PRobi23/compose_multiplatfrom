package presentation.components

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.material.Card
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import domain.model.Movie
import multiplatform.composeapp.generated.resources.*
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.painterResource

@OptIn(ExperimentalResourceApi::class)
@Composable
fun MoviesList(modifier: Modifier, title: String, cardHeight: Dp, movies: List<Movie>) {

    //this should come ideally from the VM

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
            items(movies) { item ->
                Card(
                    modifier = Modifier
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
                            painter = item.image,
                            contentDescription = "img",
                            modifier = Modifier
                                .height(cardHeight)
                                .width(cardHeight)
                                .padding(5.dp),

                            alignment = Alignment.Center
                        )
                        Spacer(modifier = Modifier.height(5.dp))
                        Text(
                            text = item.title,
                            modifier = Modifier.padding(4.dp).wrapContentHeight(),
                            color = Color.Black, textAlign = TextAlign.Center
                        )
                    }
                }
            }
        }
    }
}
