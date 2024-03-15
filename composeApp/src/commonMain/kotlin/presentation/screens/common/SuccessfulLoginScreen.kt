package presentation.screens.common

import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.wrapContentSize
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
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
import androidx.compose.ui.unit.sp
import cafe.adriel.voyager.core.screen.Screen
import cafe.adriel.voyager.navigator.LocalNavigator
import cafe.adriel.voyager.navigator.currentOrThrow
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
import multiplatform.composeapp.generated.resources.princess_and_the_frog
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

    @OptIn(ExperimentalResourceApi::class, ExperimentalFoundationApi::class)
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
                    image = painterResource(Res.drawable.dr_dolittle),
                    actors = "Eddie Murphy, Peter Boyle, Ossie Davis",
                    description = "Following an accident, Dr. John Dolittle (Eddie Murphy) regains his childhood ability to communicate with animals. The good doctor is surrounded by drunken monkeys, hurt owls, and downtrodden lions who need his special help, so the gift ends up being a mixed blessing. Dolittle ends up in a psychiatric hospital after his wife, Lisa (Kristen Wilson), notices his rather peculiar behavior. However, he is fortunate to have animal buddies who can rescue him from this rather hairy situation. It's the ultimate feel-good movie that will surely tickle your funny bone. It has a strong plot, witty lines, and a wonderful message. Psst, look out for the voice of Chris Rock as the hilarious hamster!"
                ),
                Movie(
                    title = "Lego movie",
                    image = painterResource(Res.drawable.lego_movie),
                    actors = "Chris Pratt, Will Ferrell, Elizabeth Banks",
                    description = "An ordinary LEGO figurine named Emmet (Chris Pratt), who always abides by the rules, is wrongly believed to be someone he's not. He is mistakenly identified as the Special, an extraordinary being who holds the key to rescuing the world. He is forced to join a group of strangers on a mission to thwart a wicked tyrant's (Will Ferrell) aspirations to rule the entire planet. Emmet will give it his all even though he is utterly and hilariously unprepared for such a task. It displays a humorous hero tale that feels brand-new despite not breaking new ground in terms of plot. Finally, The Lego Movie is a kid's movie that appeals to the child in all of us thanks to its themes and occasionally biting comedy."
                ),
                Movie(
                    title = "Gooines",
                    image = painterResource(Res.drawable.gooines),
                    actors = "Sean Astin, Josh Brolin, Jeff Cohen",
                    description = "The Goonies is about children who have grown up together but are about to be split apart because their parents are forced to sell their homes. Soon the kids discover an endless supply of fascinating items in the attic of one kid's home, including paintings, enigmatic writings in other languages, and treasure maps. They come across a map that seems promising and decide to check it out in the hopes of finding enough wealth to save their parents' homes. Perhaps, every child has fantasized about having some sort of grand adventure. Pirate ships, police chases, gold-filled treasure chests surrounded by human skeletons with eye patches, and the underlying intrigue of the possible existence of a vast wonderworld beneath the streets where they currently reside all add to the excitement. It includes all of the features that any child might desire. Anyone who grew up in the 1980s will undoubtedly pick The Goonies as one of their favorite movies, or at the very least, will remember it fondly."
                ),
                Movie(
                    title = "Greatest showman",
                    image = painterResource(Res.drawable.greatest_showman),
                    actors = "Hugh Jackman, Michelle Williams, Zac Efron",
                    description = "This is the perfect family night movie. Also, get your Kleenex ready if you enjoy musicals because this movie will have you sobbing ugly tears of joy. The Greatest Showman celebrates and tells the story of a visionary who came from nothing to build a spectacle that became a global sensation. The cast is excellent, especially the pitch-perfect performance of Hugh Jackman, the story will keep you interested, children and parents alike will enjoy the soundtrack, and the overall message is uplifting. Every time you see this movie, you'll feel something, sometimes for different reasons. After watching this film, you will be filled with joy and have the most beautiful songs stuck in your brain. Your next move is probably to get the DVD so you may relive the magic once more"
                ),
                Movie(
                    title = "Moana",
                    image = painterResource(Res.drawable.moana),
                    actors = "Dwayne Johnson, Auli'i Cravalho, Rachel House",
                    description = "Moana is a throwback to Disney's classic formula, complete with clichés and characters plucked from various other animated films. The production's sheer beauty and skill, on the other hand, elevates the old story to new heights. Easily among the best from the Disney Studio and a worthy successor to Mulan (1998). Also, perhaps one of Dwayne Johnson's best works, despite his not being the first name that comes to mind when we think of voice acting."
                ),
                Movie(
                    title = "Toy story",
                    image = painterResource(Res.drawable.toy_story),
                    actors = "N/A",
                    description = "N/A"
                ),
                Movie(
                    title = "Princess and the frog",
                    image = painterResource(Res.drawable.princess_and_the_frog),
                    actors = "Anika Noni Rose, Keith David, Oprah Winfrey",
                    description = "The film's main character is an obedient waitress (Anika Noni Rose). She is saving money to fulfill her father's long-held desire to open her own restaurant. The Pixar influence is highly felt throughout the film and might be a dominant driver behind its appeal. It features some of the most moving animated sequences since Simba's heartbreaking moment in The Lion King when he sees Mufasa lifeless. Princess And The Frog will make you cry as much as it will make you laugh, even while it fails to capture Up's emotional torment (honestly, few movies ever will). This film is just inches away from reaching Pixar status and has all the enthusiasm, excellence, tenderness, and superb animation of the Disney movies from the 1990s. Go ahead and see this film to get a taste of what being a child was like again."
                ),
                Movie(
                    title = "Aladdin",
                    image = painterResource(Res.drawable.alladin),
                    actors = "N/A",
                    description = "N/A"
                ),
                Movie(
                    title = "Annie",
                    image = painterResource(Res.drawable.annie),
                    actors = "Starring Quvenzhané Wallis, Cameron Diaz, Jamie Foxx",
                    description = "Little Annie (Quvenzhané Wallis) has led a hard life with her calculating foster mother ever since her parents abandoned her as a baby. But all changes when Will Stacks (Jamie Foxx), a ruthless millionaire and mayoral candidate, adopts her. Stacks thinks he is Annie's protector angel. However, it might be Annie and her self-assurance and upbeat outlook that will save Will instead. While with a slightly different take, every actor, song selection, and plot point provided a taste of the original adaptation from 1982 while retelling Annie's timeless Rags to Riches tale to a new audience. Indeed, the film's messages are clichéd and overused in the West, yet convey an absolute truth: family, whether biological or adopted, affection is more significant than material success, everyone needs love, and greed leads to evil. Yes, Annie is lengthy, cheesy, basic, clichéd, and repetitive. Yet, it also supports nearly unchallengeable messages about love and family while being whimsical, pleasant, and full of excellent performers. In other words, it's a great movie to watch as a family."
                ),
                Movie(
                    title = "E.T.",
                    image = painterResource(Res.drawable.et),
                    actors = "Starring Henry Thomas, Drew Barrymore, Peter Coyote",
                    description = "The family classic from the 1980s, E.T., explores the friendship between Elliot, a young boy living in California, and an extraterrestrial unintentionally left behind by his spaceship. It is a magnificent and touching depiction of childhood. A humane and emotionally engaging tale, it features cutting-edge visual effects, bold direction, and creative storytelling. Watching E.T. is a remarkable cinematic experience. It is a movie that should also be viewed as a model that all future films should attempt to follow. The financial success of movies like E.T. and Star Wars has a reason. There is also a reason why they endure so long in our memories. This is so because they have meaning and are representative of something. These are the elements of movies that stand the test of time and cross generational boundaries. Psst, E.T., you can phone or visit us anytime."
                ),
                Movie(
                    title = "Homeward",
                    image = painterResource(Res.drawable.homeward),
                    actors = "N/A",
                    description = "N/A"
                ),
                Movie(
                    title = "Hugo",
                    image = painterResource(Res.drawable.hugo),
                    actors = "Starring Asa Butterfield, Chloë Grace Moretz, Christopher Lee",
                    description = "Hugo tells the tale of a young kid named Hugo Cabret to revive long-forgotten movies and remind us of their magic. Hugo is an orphan who lives within the walls of a Parisian train station and whose father perished in a museum fire. He fixes an old automaton his father retrieved from museum storage in his free time when he's not keeping the station clocks running. After running with a grumpy toy store owner and his granddaughter Isabelle, Hugo begins a quest to fix the automaton and unearth its long-kept mysteries. This movie is a family-friendly adventure that may turn off Scorsese aficionados because it deviates from the director's usual themes. Yet, it's a beautiful experience. If you're a movie snob who values movies as works of art, Hugo is a movie that has a lot to offer. One of those family movies that adults may enjoy just as much as children, if not more."
                ),
                Movie(
                    title = "Stand by me",
                    image = painterResource(Res.drawable.stand_by_me),
                    actors = "N/A",
                    description = "N/A"
                ),
                Movie(
                    title = "The secret life of bees",
                    image = painterResource(Res.drawable.the_secret_life_of_bees),
                    actors = "Starring Dakota Fanning, Jennifer Hudson, Queen Latifah",
                    description = "Dakota Fanning plays Lily, who is brought up by her brutal, abusive father (Paul Bettany)in a loveless family. Lily, fourteen years old, yearns for a mother she never knew. When her only friend, maid Rosaleen (Jennifer Hudson), is racially abused, they escape to a little town dot on a map thanks to a clue Lily's mother left behind. They arrive at the home of August, June, and May Boatright (Queen Latifah, Alicia Keys, and Sophie Okonedo), who gather and preserve the best honey in the area. What happens next is a smörgåsbord of odd family life that gradually gives young Lily hope. Adapted from the 2001 novel of the same name by Sue Monk Kidd and set in 1964, the movie briefly touches on the Civil Rights Act and the persistent racism in the South. Still, it places a stronger emphasis on the power of love and family. The Secret Life of Bees will supply the honey if you seek a sweet way to spend the evening."
                ),
                Movie(
                    title = "The karate kid",
                    image = painterResource(Res.drawable.thekaratekid),
                    actors = "N/A",
                    description = "N/A"
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
                            val navigator = LocalNavigator.currentOrThrow

                            Column(modifier = Modifier.verticalScroll(rememberScrollState())) {
                                val pagerState = rememberPagerState(pageCount = {
                                    movies.count()
                                })
                                HorizontalPager(
                                    modifier = Modifier.wrapContentSize(),
                                    state = pagerState
                                ) { pageIdx ->
                                    MoviePoster(
                                        modifier = Modifier.clickable {
                                            navigator.push(DetailsScreen(movies[pageIdx]))
                                        },
                                        movie = movies[pageIdx],
                                        size = screenSizeInfo.wDP
                                    )
                                }
                                MoviesList(
                                    modifier = Modifier.height(if (isTv) 280.dp else 260.dp)
                                        .fillMaxWidth(),
                                    title = "Favourites",
                                    cardHeight = if (isTv) 140.dp else 120.dp,
                                    movies = movies,
                                    textSize = 18.sp,
                                    isTv = isTv
                                )
                                Spacer(modifier = Modifier.height(16.dp))
                                MoviesList(
                                    modifier = Modifier.height(if (isTv) 190.dp else 170.dp)
                                        .fillMaxWidth(),
                                    title = "Items to watch",
                                    cardHeight = if (isTv) 80.dp else 60.dp,
                                    movies = movies,
                                    isTv = isTv
                                )
                                Spacer(modifier = Modifier.height(16.dp))
                                MoviesList(
                                    modifier = Modifier.height(if (isTv) 220.dp else 180.dp)
                                        .fillMaxWidth(),
                                    title = "Starred item",
                                    cardHeight = if (isTv) 90.dp else 70.dp,
                                    movies = movies,
                                    isTv = isTv
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}