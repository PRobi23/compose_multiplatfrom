package domain.model.viewableInterface

import kotlinx.serialization.Serializable


@Serializable
data class Edge(
    val node: Node,
) 