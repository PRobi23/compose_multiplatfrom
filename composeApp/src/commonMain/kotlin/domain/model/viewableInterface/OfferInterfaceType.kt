package domain.model.viewableInterface

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
sealed class OfferInterfaceType {
    abstract val typeName: String?
    abstract val id: String?
    abstract val priceInCents: Long?
    abstract val currency: String?
    abstract val purchaseAvailableUntil: String?
    abstract val decorationText: String?
    abstract val buttonText: String?
    abstract val title: String?

    @Serializable
    data class DefaultType(
        @SerialName("__typename")
        override val typeName: String? = null,
        override val id: String,
        override val priceInCents: Long,
        override val currency: String,
        override val purchaseAvailableUntil: String? = null,
        override val decorationText: String,
        override val buttonText: String,
        override val title: String,
    ) : OfferInterfaceType()

    @Serializable
    data class BuyType(
        @SerialName("__typename")
        override val typeName: String? = null,
        override val id: String,
        override val priceInCents: Long,
        override val currency: String,
        override val purchaseAvailableUntil: String? = null,
        override val decorationText: String,
        override val buttonText: String,
        override val title: String,
    ) : OfferInterfaceType()

    @Serializable
    data class PassType(
        @SerialName("__typename")
        override val typeName: String? = null,
        override val id: String,
        override val priceInCents: Long,
        override val currency: String,
        override val purchaseAvailableUntil: String? = null,
        override val decorationText: String,
        override val buttonText: String,
        override val title: String,
    ) : OfferInterfaceType()

    @Serializable
    data class RentType(
        @SerialName("__typename")
        override val typeName: String? = null,
        override val id: String,
        override val priceInCents: Long,
        override val currency: String,
        override val purchaseAvailableUntil: String? = null,
        override val decorationText: String,
        override val buttonText: String,
        var entitlementDurationSec: Int? = null,
        override val title: String,
    ) : OfferInterfaceType()

    @Serializable
    data class SubscribeType(
        @SerialName("__typename")
        override val typeName: String? = null,
        override val id: String?,
        override val priceInCents: Long?,
        override val currency: String?,
        override val purchaseAvailableUntil: String? = null,
        override val decorationText: String?,
        override val buttonText: String?,
        override val title: String?,
        val trialPeriod: Period? = null,
        val recurringPeriod: Period? = null,
    ) : OfferInterfaceType()

    @Serializable
    class ThirdPartyType(
        @SerialName("__typename")
        override val typeName: String? = null,
        override val id: String,
        override val priceInCents: Long,
        override val currency: String?,
        override val purchaseAvailableUntil: String? = null,
        override val decorationText: String? = null,
        override val buttonText: String? = null,
        override val title: String,
        val image: String?,
        var subtype: String? = null,
        var externalOfferId: String? = null,
        var providerName: String? = null,
        var entitlementDurationSec: Int? = null,
        val description: String? = null,
    ) : OfferInterfaceType()
}
