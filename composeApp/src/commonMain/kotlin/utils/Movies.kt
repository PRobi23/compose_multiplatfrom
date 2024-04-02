import domain.model.viewableInterface.Playable
import domain.model.viewableInterface.PlayableKind
import domain.model.viewableInterface.ViewableInterface

private val theMentalist = ViewableInterface.VideoViewable.Program(
    typeName = "Program",
    id = "caa99e19-b113-4c70-8c07-430a825c54bb",
    magineId = "caa99e19-b113-4c70-8c07-430a825c54bb",
    title = "The Mentalist",
    image = null,
    poster = "https://images.eu-west-1.prod.magine.com/broadcasts/magine-pro-demo/888f10ab-c736-4e51-a316-4b661894926a.jpg",
    posterFeatured = null,
    description = null,
    tagsToRender = emptyList(),
    linkedViewables = emptyList(),
    defaultPlayable = Playable(
        id = "8cfc035b-f7d4-484e-999b-c0f52f0b6886",
        kind = PlayableKind.BROADCAST,
        duration = null,
        offlineAvailable = false
    ),
    headerImage = "https://images.eu-west-1.prod.magine.com/broadcasts/magine-pro-demo/888f10ab-c736-4e51-a316-4b661894926a.jpg",
    genres = null,
    inMyList = null,
    offers = listOf(
    ),
    durationHuman = null,
    entitlement = null,
    related = listOf(
    ),
    collections = listOf(
    ),
    webview = null
)

val mordenIMidsomer = ViewableInterface.VideoViewable.Program(
    typeName = "Program",
    id = "33b2e0a5-bb69-421f-bf34-604e92bfeffc",
    magineId = "33b2e0a5-bb69-421f-bf34-604e92bfeffc",
    title = "Morden i Midsomer",
    image = null,
    poster = "https://images.eu-west-1.prod.magine.com/broadcasts/magine-pro-demo/aaf95594-bb2e-4e0e-9104-f7b89221fdcc.jpg",
    posterFeatured = null,
    description = null,
    tagsToRender = emptyList(),
    linkedViewables = emptyList(),
    defaultPlayable = Playable(
        id = "5105e1d7-892b-4444-8c41-4433a5eeb647",
        kind = PlayableKind.BROADCAST,
        duration = null,
        offlineAvailable = false,
        watchOffset = null
    ),
    headerImage = "https://images.eu-west-1.prod.magine.com/broadcasts/magine-pro-demo/01f55609-29f5-41e3-a82c-a84a2829ce1e.jpg",
    genres = emptyList(),
    inMyList = false,
    offers = emptyList(),
    durationHuman = null,
    entitlement = null,
    related = emptyList(),
    collections = emptyList(),
    webview = null
)

val treDagarForCondor = ViewableInterface.VideoViewable.Movie(
    typeName = "Movie",
    id = "ccd0c331-9373-4587-be30-b16eaa0c6f4f",
    magineId = "ccd0c331-9373-4587-be30-b16eaa0c6f4f",
    title = "Tre dagar för Condor",
    image = null,
    poster = "https://images.eu-west-1.prod.magine.com/broadcasts/magine-pro-demo/6be4360c-8afa-4dae-b01f-71c2fa3902ea.jpg",
    posterFeatured = null,
    description = null,
    tagsToRender = emptyList(),
    linkedViewables = emptyList(),
    defaultPlayable = Playable(
        id = "4447b9fb-d951-4a51-aa1c-c5679e088bbb",
        kind = PlayableKind.BROADCAST,
        duration = null,
        offlineAvailable = false,
        watchOffset = null
    ),
    headerImage = "https://images.eu-west-1.prod.magine.com/broadcasts/magine-pro-demo/b448432c-e730-43fc-951a-679483847ce1.jpg",
    genres = emptyList(),
    inMyList = false,
    offers = emptyList(),
    durationHuman = null,
    productionYear = null,
    trailer = null,
    providedBy = null,
    entitlement = null,
    related = emptyList(),
    collections = emptyList(),
    webview = null
)

val joker = ViewableInterface.VideoViewable.Movie(
    typeName = "Movie",
    id = "d18a2df6-5ba2-49c4-8225-9e98105e502c",
    magineId = "d18a2df6-5ba2-49c4-8225-9e98105e502c",
    title = "Joker",
    image = "https://images.eu-west-1.prod.magine.com/broadcasts/magine-pro-demo/de150471-0569-416d-af5b-9a52c9686e9d.jpg",
    poster = "https://images.eu-west-1.prod.magine.com/broadcasts/magine-pro-demo/de150471-0569-416d-af5b-9a52c9686e9d.jpg",
    posterFeatured = null,
    description = "Succéthriller om den misslyckade komikern Arthur Fleck som möts av en grym omvärld och sakta men säkert håller på att förlora förståndet.",
    tagsToRender = emptyList(),
    linkedViewables = emptyList(),
    defaultPlayable = Playable(
        id = "828ad654-c44a-465a-8def-4fcd0dc28750",
        kind = PlayableKind.VOD,
        duration = 225,
        offlineAvailable = true,
        watchOffset = 23
    ),
    headerImage = "https://images.eu-west-1.prod.magine.com/broadcasts/magine-pro-demo/124fa1e2-0bb8-4e30-9f0b-0fa62fad2856.jpg",
    genres = listOf("Thriller", "Drama", "Crime"),
    inMyList = false,
    offers = listOf(
        // Populate with actual offers if available
    ),
    durationHuman = "3m 45s",
    productionYear = "2019",
    trailer = "https://media-magine-pro-demo.partner.maginepro.com/trailers/no_time_to_die.mp4",
    providedBy = null, // Populate if available
    entitlement = null, // Populate if available
    related = listOf(
        theMentalist, mordenIMidsomer, treDagarForCondor
    ),
    collections = listOf(
        // Collections here
    ),
    webview = null
)