package data.model.remote

import kotlinx.serialization.Serializable


@Serializable
data class QrCodeRequestDto(
    val device: Device
)

@Serializable
data class Device(
    val platform: String,
    val vendor: String,
    val model: String
)