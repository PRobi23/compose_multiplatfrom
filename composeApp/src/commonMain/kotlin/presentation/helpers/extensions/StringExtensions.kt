package presentation.helpers.extensions

/** Joins iterable using separator and assuring none element is null or blank */
fun safeJoinToString(iterable: Iterable<String?>?, separator: String = ", "): String? =
    iterable?.filterNot { it.isNullOrBlank() }?.joinToString(separator)

