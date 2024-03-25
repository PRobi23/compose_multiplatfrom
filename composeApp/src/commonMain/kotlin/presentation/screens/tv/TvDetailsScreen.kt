package presentation.screens.tv

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.material.Scaffold
import androidx.compose.material.SnackbarHost
import androidx.compose.material.Surface
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.RectangleShape
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.unit.dp
import cafe.adriel.voyager.core.screen.Screen
import core.UiEvent
import org.koin.compose.koinInject
import presentation.viewModels.tv.TvViewableViewModel
import presentation.viewModels.tv.ViewableViewState

class TvDetailsScreen : Screen {
    @Composable
    override fun Content() {
        val viewableViewModel: TvViewableViewModel = koinInject()

        val uiState = viewableViewModel.state.collectAsState().value
        //viewableViewModel.initSchedule(ChannelScheduleView.DAYS_IN_SCHEDULE)
        var previewSize: List<String> = emptyList()

        /*
        val startForResult = rememberLauncherForActivityResult(
            contract = ActivityResultContracts.StartActivityForResult(),
        ) { result: ActivityResult ->
            if (result.resultCode == Activity.RESULT_OK) {
                val viewableId =
                    context.findActivity().intent?.getStringExtra(TvViewableViewActivity.EXTRA_VIEWABLE_ID)

                if (!viewableId.isNullOrEmpty()) {
                    viewableViewModel.fetchViewable(viewableId)
                } else {
                    viewableViewModel.setUnknownErrorState()
                }
            } else if (result.resultCode == Activity.RESULT_CANCELED) {
                Log.d("DetailsScreen", "onActivityResult returns RESULT_CANCELED")
                viewableViewModel.showErrorMessageToTheUser(
                    UiText.StringResource(
                        commonR.string.error_viewable_id_not_found,
                    ),
                )
            }
        }
        */

        when (uiState) {
            is ViewableViewState.Ready -> {
                /*
                SharedPreferencesHelper.getPreviewSize(context)?.let {
                    previewSize = listOf(it.max(), it.min())
                }
                val (_, imagePainter) = loadImage(
                    url = uiState.viewable?.backgroundImage,
                    crop = false,
                    widthPx = previewSize[0].toInt(),
                    heightPx = previewSize[1].toInt(),
                )
                */

                var collapseMovieDetails by remember { mutableStateOf(false) }

                LaunchedEffect(key1 = collapseMovieDetails) {
                    if (collapseMovieDetails != uiState.collapseMovieDetails) {
                        // viewableViewModel.updateSecondElementHasFocus(collapseMovieDetails)
                    }
                }

                LaunchedEffect(key1 = true) {
                    viewableViewModel.uiEvents.collect { event ->
                        when (event) {
                            is UiEvent.ShowMessageToUser -> {
                                snackbarHostState.showSnackbar(
                                    message = event.message.asString(context),
                                )
                            }

                            is UiEvent.ShowErrorToTheUser -> {
                                snackbarHostState.showSnackbar(
                                    message = ApiErrorCodeMapper.getApiErrorMessage(
                                        context,
                                        event.error,
                                    ),
                                )
                            }
                        }
                    }
                }

                Scaffold(
                    snackbarHost = { SnackbarHost(snackbarHostState) },
                ) { innerPadding ->
                    Surface(shape = RectangleShape) {
                        Column(
                            verticalArrangement = Arrangement.spacedBy(if (collapseMovieDetails) 16.dp else 32.dp),
                            modifier = modifier
                                .fillMaxSize()
                                .padding(innerPadding)
                                .paint(
                                    imagePainter,
                                    contentScale = ContentScale.FillBounds,
                                )
                                .background(
                                    if (collapseMovieDetails) {
                                        createGradientBrush(
                                            isVertical = true,
                                            colors = listOf(
                                                Color(context.partnerTheme.bottomBarBackgroundColor),
                                                Color(context.partnerTheme.bottomBarBackgroundColor),
                                            ),
                                        )
                                    } else {
                                        createGradientBrush(
                                            isVertical = false,
                                            colors = listOf(
                                                Color(context.partnerTheme.bottomBarBackgroundColor),
                                                Color.Transparent,
                                            ),
                                        )
                                    },
                                ),
                        ) {
                            MovieDetails(
                                modifier = Modifier
                                    .onFocusChanged {
                                        if (it.isFocused) {
                                            collapseMovieDetails = false
                                        }
                                    }
                                    .focusable(),
                                state = uiState,
                                collapseMovieDetails = collapseMovieDetails,
                                viewModel = viewableViewModel,
                                onPlayClicked = {
                                    (
                                            uiState.viewable.viewableToPlay(
                                                context,
                                                TvViewableViewActivity.EXTRA_PLAYABLE_ID,
                                            ) as? ViewableInterface.VideoViewable
                                            )?.apply {
                                            this.defaultPlayable?.localizedUpcomingAvailability(context)
                                                ?.apply {
                                                    Toast.makeText(context, this, Toast.LENGTH_SHORT)
                                                        .show()
                                                } ?: run {
                                                context.startActivity(
                                                    PlayerActivity.newIntent(
                                                        context,
                                                        viewableToPlay(
                                                            context,
                                                            TvViewableViewActivity.EXTRA_PLAYABLE_ID,
                                                        ),
                                                    ),
                                                )
                                            }
                                        }
                                },
                                onRestartClicked = {
                                    context.startActivity(
                                        PlayerActivity.newIntent(
                                            context = context,
                                            viewable = (
                                                    uiState.viewable.viewableToPlay(
                                                        context,
                                                        TvViewableViewActivity.EXTRA_PLAYABLE_ID,
                                                    )
                                                    ),
                                            restart = true,
                                        ),
                                    )
                                },
                                onTrailerPlayClicked = {
                                    playTrailer(
                                        viewable = uiState.viewable,
                                        context = context,
                                    )
                                },
                                onScheduleClicked = {
                                    context.startActivity(
                                        ChannelScheduleActivity.newIntent(
                                            context = context,
                                            viewable = getCurrentChannel(
                                                uiState.viewable,
                                                uiState.schedule,
                                            ),
                                        ),
                                    )
                                },
                                iapButtonActions = mapOf(
                                    ThirdPartyOfferSubType.RENTAL to {
                                        startForResult.launch(
                                            getIapButtonClickAction(
                                                uiState = uiState,
                                                context = context,
                                                isGoogleApp = isGoogleApp,
                                                thirdPartyOfferSubType = ThirdPartyOfferSubType.RENTAL,
                                                background = uiState.viewable?.backgroundImage?.imageUrl(
                                                    previewSize[0].toInt(),
                                                    previewSize[1].toInt(),
                                                ),
                                            ),
                                        )

                                        IAPTracker.trackThirdPartyOfferClicked()
                                    },
                                    ThirdPartyOfferSubType.SUBSCRIPTION to {
                                        startForResult.launch(
                                            getIapButtonClickAction(
                                                uiState = uiState,
                                                context = context,
                                                isGoogleApp = isGoogleApp,
                                                thirdPartyOfferSubType = ThirdPartyOfferSubType.SUBSCRIPTION,
                                                background = uiState.viewable?.backgroundImage?.imageUrl(
                                                    previewSize[0].toInt(),
                                                    previewSize[1].toInt(),
                                                ),
                                            ),
                                        )

                                        if (isGoogleApp) {
                                            IAPTracker.trackThirdPartyOfferClicked()
                                        } else {
                                            AmazonIAPTracker.trackThirdPartyOfferClicked()
                                        }
                                    },
                                    ThirdPartyOfferSubType.PASS to {
                                        startForResult.launch(
                                            getIapButtonClickAction(
                                                uiState = uiState,
                                                context = context,
                                                isGoogleApp = isGoogleApp,
                                                thirdPartyOfferSubType = ThirdPartyOfferSubType.PASS,
                                                background = uiState.viewable?.backgroundImage?.imageUrl(
                                                    previewSize[0].toInt(),
                                                    previewSize[1].toInt(),
                                                ),
                                            ),
                                        )
                                        IAPTracker.trackThirdPartyOfferClicked()
                                    },
                                    ThirdPartyOfferSubType.EST to {
                                        startForResult.launch(
                                            getIapButtonClickAction(
                                                uiState = uiState,
                                                context = context,
                                                isGoogleApp = isGoogleApp,
                                                thirdPartyOfferSubType = ThirdPartyOfferSubType.EST,
                                                background = uiState.viewable?.backgroundImage?.imageUrl(
                                                    previewSize[0].toInt(),
                                                    previewSize[1].toInt(),
                                                ),
                                            ),
                                        )
                                        IAPTracker.trackThirdPartyOfferClicked()
                                    },
                                ),
                                getEntitledStatus = viewableViewModel::getEntitledStatus,
                            )

                            TabItems(
                                viewableViewState = uiState,
                                modifier = Modifier
                                    .onFocusChanged {
                                        if (it.hasFocus) {
                                            collapseMovieDetails = true
                                        }
                                    },
                                resetFocus = collapseMovieDetails, // If the tab items are collapsed then reset the focus
                                convertLocalDateTimeToDuration = viewableViewModel::convertLocalDateTimeToDuration,
                                calculateMinutesLeft = viewableViewModel::calculateMinutesLeftFromDurationTimeAndCurrentTime,
                                calculateRemainingTimePercentage = viewableViewModel::calculateRemainingTimePercentage,
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

    @Composable
    private fun Loading() {
        Column(
            modifier = Modifier
                .fillMaxSize(),
            verticalArrangement = Arrangement.Center,
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            CircularProgressIndicator(color = Color(LocalContext.current.partnerTheme.primary))
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

    private fun getCurrentChannel(
        viewable: ViewableInterface?,
        schedule: List<List<Broadcast>>?,
    ): ViewableInterface.Channel {
        val channel = viewable as ViewableInterface.Channel
        channel.schedule = schedule
        return channel
    }

    private fun playTrailer(viewable: ViewableInterface?, context: Context) {
        val trailers =
            viewable?.linkedViewables?.filterIsInstance<ViewableInterface.VideoViewable.Trailer>()
                ?: emptyList()
        if (trailers.isEmpty()) {
            context.startActivity(
                Intent(context, VideoWebActivity::class.java).apply {
                    putExtra(VideoWebActivity.INTENT_EXTRA_URL, viewable?.getTrailerUrl())
                    putExtra(VideoWebActivity.INTENT_EXTRA_TITLE, viewable?.title)
                },
            )
        } else {
            val playableIds = trailers.map { trailer -> trailer.magineId }.toMutableList()
            val trailer = trailers.first()
            playableIds.remove(trailer.magineId)
            context.startActivity(
                PlayerActivity.newIntent(
                    context,
                    trailer,
                    nextPlayableIds = playableIds.toTypedArray(),
                ),
            )
        }
    }

    private fun getIapButtonClickAction(
        uiState: ViewableViewState.Ready,
        context: Context,
        isGoogleApp: Boolean,
        thirdPartyOfferSubType: ThirdPartyOfferSubType,
        background: String?,
    ): Intent {
        uiState.textsWithIapButtons[thirdPartyOfferSubType]?.skuList.let { skusList ->
            return createIntent(
                offersList = skusList,
                offerType = thirdPartyOfferSubType.name,
                isEpisode = false,
                context = context,
                isGoogleApp = isGoogleApp,
                viewable = uiState.viewable,
                background = background,
            )
        }
    }

    private fun createIntent(
        offersList: List<OfferInterfaceType>?,
        offerType: String?,
        isEpisode: Boolean,
        context: Context,
        isGoogleApp: Boolean,
        viewable: ViewableInterface?,
        background: String?,
    ): Intent {
        return Intent(context, IAPActivity::class.java)
            .putExtra(INTENT_ARGS_IMAGE_URL, background)
            .putExtra(
                INTENT_ARGS_LIST_OF_SKUS,
                if (isGoogleApp) {
                    handleGoogleThirdPartyOffer(
                        context = context,
                        offers = offersList,
                        entitlement = checkEntitlement(viewable),
                    ).toTypedArray()
                } else {
                    offersList?.toTypedArray()
                },
            )
            .putExtra(INTENT_ARGS_OFFER_TYPE, offerType)
            .putExtra(INTENT_ARGS_POSTER_URL, viewable?.poster)
            .putExtra(INTENT_ARGS_CONTENT_TITLE, viewable?.title)
            .putExtra(INTENT_ARGS_EPISODE, isEpisode)
    }
}

@Preview(device = Devices.TV_1080p)
@Composable
private fun LoadingPreview() {
    MagineTheme {
        Loading()
    }
}


