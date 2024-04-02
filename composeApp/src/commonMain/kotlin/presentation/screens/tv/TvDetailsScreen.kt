package presentation.screens.tv

import androidx.compose.foundation.background
import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.*
import androidx.compose.material.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.paint
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.RectangleShape
import androidx.compose.ui.graphics.TileMode
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.unit.dp
import cafe.adriel.voyager.core.screen.Screen
import core.UiEvent
import io.kamel.image.KamelImage
import multiplatform.composeapp.generated.resources.Res
import multiplatform.composeapp.generated.resources.qrToRegisterActivity
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.koin.compose.koinInject
import presentation.components.ExtendedMovieDetails
import presentation.components.TabItemsContent
import presentation.helpers.compose.loadImage
import presentation.helpers.extensions.backgroundImage
import presentation.util.primary
import presentation.viewModels.tv.TvViewableViewModel
import presentation.viewModels.tv.ViewableViewState
import utils.getScreenSizeInfo

class TvDetailsScreen : Screen {

    @OptIn(ExperimentalResourceApi::class)
    @Composable
    override fun Content() {
        val tvDetailsScreenViewModel: TvViewableViewModel = koinInject()

        val uiState = tvDetailsScreenViewModel.state.collectAsState().value
        val snackbarHostState = remember { SnackbarHostState() }

        LaunchedEffect(Unit) {
            tvDetailsScreenViewModel.fetchViewable()
        }

        when (uiState) {
            is ViewableViewState.Ready -> {
                val screenSize = getScreenSizeInfo()
                var collapseMovieDetails by remember { mutableStateOf(false) }
                val (_, imagePainter) = loadImage(
                    url = uiState.viewable?.backgroundImage,
                    crop = false,
                    widthPx = screenSize.wPX,
                    heightPx = screenSize.hPX
                )

                LaunchedEffect(key1 = collapseMovieDetails) {
                    if (collapseMovieDetails != uiState.collapseMovieDetails) {
                        tvDetailsScreenViewModel.updateSecondElementHasFocus(collapseMovieDetails)
                    }
                }

                LaunchedEffect(key1 = true) {
                    tvDetailsScreenViewModel.uiEvents.collect { event ->
                        when (event) {
                            is UiEvent.ShowMessageToTheUser -> {
                                snackbarHostState.showSnackbar(
                                    message = Res.string.qrToRegisterActivity.toString()
                                )
                            }

                            else -> {}
                        }
                    }
                }

                Scaffold(
                    snackbarHost = { SnackbarHost(snackbarHostState) },
                ) { innerPadding ->
                    Surface(shape = RectangleShape) {
                        KamelImage(
                            resource = imagePainter,
                            contentDescription = "Description",
                            modifier = Modifier
                                .size(height = screenSize.hDP, width = screenSize.wDP),
                            contentScale = ContentScale.FillBounds
                        )
                        Column(
                            verticalArrangement = Arrangement.spacedBy(if (collapseMovieDetails) 16.dp else 32.dp),
                            modifier = Modifier
                                .fillMaxSize()
                                .padding(innerPadding)
                                .background(
                                    if (collapseMovieDetails) {
                                        createGradientBrush(
                                            isVertical = true,
                                            colors = listOf(
                                                primary,
                                                primary,
                                            ),
                                        )
                                    } else {
                                        createGradientBrush(
                                            isVertical = false,
                                            colors = listOf(
                                                primary,
                                                Color.Transparent,
                                            ),
                                        )
                                    },
                                ),
                        ) {
                            ExtendedMovieDetails(
                                modifier = Modifier
                                    .onFocusChanged {
                                        if (it.isFocused) {
                                            collapseMovieDetails = false
                                        }
                                    }
                                    .focusable(),
                                state = uiState,
                                collapseMovieDetails = collapseMovieDetails,
                                viewModel = tvDetailsScreenViewModel
                            )
                            TabItemsContent(
                                viewableViewState = uiState,
                                modifier = Modifier
                                    .onFocusChanged {
                                        if (it.hasFocus) {
                                            collapseMovieDetails = true
                                        }
                                    },
                                resetFocus = collapseMovieDetails, // If the tab items are collapsed then reset the focus
                            )
                        }
                    }
                }
            }

            ViewableViewState.Loading -> {
                Loading()
            }
        }
    }
}

@Composable
private fun Loading() {
    Column(
        modifier = Modifier
            .fillMaxSize(),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        CircularProgressIndicator(color = primary)
    }
}

private fun createGradientBrush(
    colors: List<Color>,
    isVertical: Boolean = true,
): Brush {
    val endOffset = if (isVertical) {
        Offset(0f, Float.POSITIVE_INFINITY)
    } else {
        Offset(Float.POSITIVE_INFINITY, 0f)
    }

    return Brush.linearGradient(
        colors = colors,
        start = Offset(0f, 0f),
        end = endOffset,
        tileMode = TileMode.Clamp,
    )
}
