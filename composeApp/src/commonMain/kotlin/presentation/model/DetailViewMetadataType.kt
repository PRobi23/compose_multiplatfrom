package presentation.model

/***
 * TagsToRender keys with meaningful name
 */
enum class DetailViewMetadataType(val tagName: String) {
    CAST("DetailViewMetadataCast"),
    DIRECTOR("DetailViewMetadataDirectors"),
    CUSTOM_TAG1("DetailViewMetadataCustomTags1"),
    CUSTOM_TAG2("DetailViewMetadataCustomTags2"),
    AGE_RATING("DetailViewMetadataRating"),
    COUNTRIES("DetailViewMetadataCountryOfOrigin"),
}