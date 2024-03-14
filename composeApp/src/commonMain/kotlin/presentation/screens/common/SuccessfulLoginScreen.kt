package presentation.screens.common

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.CircularProgressIndicator
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Scaffold
import androidx.compose.material.Surface
import androidx.compose.material.Text
import androidx.compose.material.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import cafe.adriel.voyager.core.screen.Screen
import domain.model.Movie
import kotlinx.coroutines.delay
import multiplatform.composeapp.generated.resources.Res
import multiplatform.composeapp.generated.resources.alladin
import multiplatform.composeapp.generated.resources.annie
import multiplatform.composeapp.generated.resources.dr_dolittle
import multiplatform.composeapp.generated.resources.et
import multiplatform.composeapp.generated.resources.gooines
import multiplatform.composeapp.generated.resources.greatest_showman
import multiplatform.composeapp.generated.resources.homeward
import multiplatform.composeapp.generated.resources.hugo
import multiplatform.composeapp.generated.resources.lego_movie
import multiplatform.composeapp.generated.resources.moana
import multiplatform.composeapp.generated.resources.stand_by_me
import multiplatform.composeapp.generated.resources.the_secret_life_of_bees
import multiplatform.composeapp.generated.resources.thekaratekid
import multiplatform.composeapp.generated.resources.toy_story
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.painterResource
import presentation.components.MoviePoster
import presentation.components.MoviesList
import utils.getScreenSizeInfo

class SuccessfulLoginScreen(private val isTv: Boolean) : Screen {

    @OptIn(ExperimentalResourceApi::class)
    @Composable
    override fun Content() {
        MaterialTheme {

            var isLoading by remember { mutableStateOf(true) }
            val screenSizeInfo = getScreenSizeInfo()

            LaunchedEffect(true) {
                delay(2000L)
                isLoading = false
            }
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
                ),
                Movie(
                    title = "Aladdin",
                    image = painterResource(Res.drawable.alladin)
                ),
                Movie(
                    title = "Annie",
                    image = painterResource(Res.drawable.annie)
                ),
                Movie(
                    title = "E.T.",
                    image = painterResource(Res.drawable.et)
                ),
                Movie(
                    title = "Homeward",
                    image = painterResource(Res.drawable.homeward)
                ),
                Movie(
                    title = "Hugo",
                    image = painterResource(Res.drawable.hugo)
                ),
                Movie(
                    title = "Stand by me",
                    image = painterResource(Res.drawable.stand_by_me)
                ),
                Movie(
                    title = "The secret life of bees",
                    image = painterResource(Res.drawable.the_secret_life_of_bees)
                ),
                Movie(
                    title = "The karate kid",
                    image = painterResource(Res.drawable.thekaratekid)
                )
            )


            Column(modifier = Modifier.fillMaxSize()) {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colors.background
                ) {
                    Scaffold(
                        topBar = {
                            TopAppBar(backgroundColor = Color.Cyan,
                                title = {
                                    Text(
                                        text = "Magine Pro",
                                        modifier = Modifier.fillMaxWidth(),
                                        textAlign = TextAlign.Center,
                                        color = Color.White
                                    )
                                }
                            )
                        }
                    ) {
                        if (isLoading) {
                            Column(
                                modifier = Modifier.fillMaxSize(),
                                verticalArrangement = Arrangement.Center,
                                horizontalAlignment = Alignment.CenterHorizontally
                            ) {
                                CircularProgressIndicator()
                            }
                        } else {
                            Column(modifier = Modifier.verticalScroll(rememberScrollState())) {

                                LazyRow {
                                    items(movies) { movie ->
                                        MoviePoster(
                                            movie = movie,
                                            size = screenSizeInfo.wDP
                                        )
                                    }
                                }

                                MoviesList(
                                    modifier = Modifier.height(if (isTv) 280.dp else 260.dp)
                                        .fillMaxWidth(),
                                    title = "Favourites",
                                    cardHeight = if (isTv) 140.dp else 120.dp,
                                    movies = movies
                                )
                                Spacer(modifier = Modifier.height(16.dp))
                                MoviesList(
                                    modifier = Modifier.height(if (isTv) 190.dp else 170.dp)
                                        .fillMaxWidth(),
                                    title = "Items to watch",
                                    cardHeight = if (isTv) 80.dp else 60.dp,
                                    movies = movies
                                )
                                Spacer(modifier = Modifier.height(16.dp))
                                MoviesList(
                                    modifier = Modifier.height(if (isTv) 220.dp else 180.dp)
                                        .fillMaxWidth(),
                                    title = "Starred item",
                                    cardHeight = if (isTv) 90.dp else 70.dp,
                                    movies = movies
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}