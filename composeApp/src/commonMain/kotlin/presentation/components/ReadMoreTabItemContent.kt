package presentation.components

import androidx.compose.foundation.background
import androidx.compose.foundation.focusable
import androidx.compose.foundation.gestures.scrollBy
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.staggeredgrid.LazyVerticalStaggeredGrid
import androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridCells
import androidx.compose.foundation.lazy.staggeredgrid.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.MaterialTheme.typography
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.buildAnnotatedString
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.launch
import multiplatform.composeapp.generated.resources.Res
import multiplatform.composeapp.generated.resources.tv_details_page_read_duration
import multiplatform.composeapp.generated.resources.tv_details_page_read_more_year
import org.jetbrains.compose.resources.ExperimentalResourceApi
import org.jetbrains.compose.resources.StringResource
import org.jetbrains.compose.resources.stringResource
import presentation.model.ReadMoreTabItemData
import presentation.util.MagineBodyText
import presentation.util.themePrimaryTint0

@OptIn(ExperimentalResourceApi::class)
@Composable
internal fun ReadMoreTabItemContent(
    modifier: Modifier = Modifier,
    data: ReadMoreTabItemData,
) {
    val scrollAmount = 100f
    val scrollState = rememberScrollState()
    val coroutineScope = rememberCoroutineScope()
    val focusedColor = themePrimaryTint0.copy(alpha = 0.3f)

    fun scroll(reverse: Boolean = false) {
        coroutineScope.launch {
            scrollState.scrollBy(if (reverse) -scrollAmount else scrollAmount)
        }
    }

    var descriptionBackground by remember { mutableStateOf(Color.Transparent) }
    var extraInformationBackground by remember { mutableStateOf(Color.Transparent) }

    Row(
        modifier = modifier
            .fillMaxSize(),
    ) {
        Box(
            modifier = Modifier
                .weight(0.5f)
                .verticalScroll(scrollState)
                .focusable()
                .padding(start = 20.dp)
                .background(color = descriptionBackground),
        ) {
            data.moreInformationText?.let { moreInformationText ->
                Text(
                    text = moreInformationText,
                    style = typography.MagineBodyText.copy(
                        color = themePrimaryTint0,
                    ),
                    overflow = TextOverflow.Clip,
                )
            }
        }
        LazyVerticalStaggeredGrid(
            columns = StaggeredGridCells.Fixed(2),
            contentPadding = PaddingValues(
                start = 16.dp,
            ),
            modifier = modifier
                .weight(0.5f)
                .onFocusChanged {
                    if (it.hasFocus) {
                        extraInformationBackground = focusedColor
                        descriptionBackground = Color.Transparent
                    } else {
                        extraInformationBackground = Color.Transparent
                    }
                }
                .background(extraInformationBackground),
            horizontalArrangement = Arrangement.spacedBy(16.dp),
            verticalItemSpacing = 16.dp,
            userScrollEnabled = true,
        ) {
            data.duration?.let { duration ->
                if (duration.isNotEmpty()) {
                    item {
                        Column(modifier = Modifier.focusable()) {
                            Title(titleRes = Res.string.tv_details_page_read_duration)
                            Value(value = duration)
                        }
                    }
                }
            }
            data.year?.let { year ->
                if (year.isNotEmpty()) {
                    item {
                        Column(modifier = Modifier.focusable()) {
                            Title(titleRes = Res.string.tv_details_page_read_more_year)
                            Value(value = year)
                        }
                    }
                }
            }
            data.tagsToRender?.let { tagsToRender ->
                items(tagsToRender) { tagToRender ->
                    if (tagToRender.values?.isNotEmpty() == true) {
                        val elementVisible = tagToRender.translationKey?.isNotEmpty() == true &&
                                tagToRender.values?.isNotEmpty() == true
                        if (elementVisible) {
                            Column(modifier = Modifier.focusable()) {
                                val text = buildAnnotatedString {
                                    append(('A'..'z').map { it }.shuffled().subList(0, 55).joinToString(""))
                                    append(": ")
                                }.text
                                Title(title = text)
                                tagToRender.values?.forEach { value ->
                                    Value(value = value)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalResourceApi::class)
@Composable
private fun Title(
    titleRes: StringResource,
) {
    Text(
        text = stringResource(titleRes),
        style = typography.MagineBodyText.copy(
            fontWeight = FontWeight.Bold,
            color = themePrimaryTint0,
        ),
        modifier = Modifier
            .focusable()
            .padding(bottom = 8.dp),
    )
}

@Composable
private fun Title(
    title: String,
) {
    Text(
        text = title,
        style = typography.MagineBodyText.copy(
            fontWeight = FontWeight.Bold,
            color = themePrimaryTint0,
        ),
        modifier = Modifier
            .focusable()
            .padding(bottom = 8.dp),
    )
}

@Composable
private fun Value(
    value: String,
) {
    Text(
        text = value,
        style = typography.MagineBodyText.copy(
            color = themePrimaryTint0,
        ),
        maxLines = 4,
        modifier = Modifier.focusable(),
    )
}