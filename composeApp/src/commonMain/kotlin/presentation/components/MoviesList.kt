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
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import domain.model.Movie
import multiplatform.composeapp.generated.resources.*
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.painterResource

@OptIn(ExperimentalResourceApi::class)
@Composable
fun MoviesList(modifier: Modifier, title: String) {

    //this should come ideally from the VM
    val movies = listOf(
        Movie(
            title = "Dr dolittle",
            image = painterResource(Res.drawable.dr_dolittle)
        ),
        Movie(
            title = "Lego movie",
            image = painterResource(Res.drawable.lego_movie)
        ),
        Movie(
            title = "Gooines",
            image = painterResource(Res.drawable.gooines)
        ),
        Movie(
            title = "Greatest showman",
            image = painterResource(Res.drawable.greatest_showman)
        ),
        Movie(
            title = "Moana",
            image = painterResource(Res.drawable.moana)
        ),
        Movie(
            title = "Toy story",
            image = painterResource(Res.drawable.toy_story)
        )
    )

    Column(modifier = modifier) {
        Text(
            text = title,
            modifier = Modifier.padding(4.dp),
            color = Color.Black, textAlign = TextAlign.Center
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
                            .fillMaxWidth(),
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Spacer(modifier = Modifier.height(5.dp))
                        Image(
                            painter = item.image,
                            contentDescription = "img",
                            modifier = Modifier
                                .height(160.dp)
                                .width(160.dp)
                                .padding(5.dp),

                            alignment = Alignment.Center
                        )
                        Spacer(modifier = Modifier.height(5.dp))
                        Text(
                            text = item.title,
                            modifier = Modifier.padding(4.dp),
                            color = Color.Black, textAlign = TextAlign.Center
                        )
                    }
                }
            }
        }
    }
}

@Preview
@Composable
fun MoviesListPreview(){
    MoviesList(
        modifier = Modifier.height(250.dp).fillMaxWidth(),
        title = "Favourites"
    )
}
