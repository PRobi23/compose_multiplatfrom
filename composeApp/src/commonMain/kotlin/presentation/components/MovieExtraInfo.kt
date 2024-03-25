package presentation.components

import androidx.compose.foundation.layout.*
import androidx.compose.material.MaterialTheme.typography
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import domain.model.viewableInterface.ViewableInterface
import presentation.helpers.compose.calculateMaxHeight
import presentation.model.DetailViewMetadataType
import presentation.util.MagineBodyText
import presentation.util.md_theme_light_onPrimary

@Composable
fun MovieExtraInfo(viewable: ViewableInterface) {
    Column(
        modifier = Modifier
            .padding(start = 20.dp, top = 40.dp, end = 60.dp, bottom = 0.dp)
            .fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        val keysToShow = listOf(
            DetailViewMetadataType.CAST,
            DetailViewMetadataType.DIRECTOR,
            DetailViewMetadataType.CUSTOM_TAG1,
        )
        viewable.tagsToRender?.forEach { tag ->
            keysToShow.firstOrNull { it.tagName == tag.translationKey }
                ?.let {
                    val header = tag.title
                    val value = tag.values?.joinToString(", ") ?: ""

                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .heightIn(
                                max = calculateMaxHeight(
                                    typography.MagineBodyText,
                                    4,
                                ),
                            ),
                    ) {
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            verticalAlignment = Alignment.Top,
                        ) {
                            Text(
                                text = "$header:",
                                style = typography.MagineBodyText.copy(
                                    fontWeight = FontWeight.Bold,
                                    color = md_theme_light_onPrimary,
                                ),
                            )
                            Text(
                                text = value,
                                style = typography.MagineBodyText.copy(
                                    color = md_theme_light_onPrimary
                                ),
                                modifier = Modifier.weight(1f),
                            )
                        }
                    }
                }
        }
    }
}


