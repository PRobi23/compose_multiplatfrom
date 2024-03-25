package domain.model.viewableInterface

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.Transient

@Serializable
sealed class EntitlementInterfaceType {
    abstract var typeName: String
    abstract var offerID: String
    abstract var offer: OfferInterfaceType
    abstract var purchasedAt: String
    abstract var entitledUntil: String?
    abstract var expiresInSeconds: Long?

    @Serializable
    data class EntitlementBuyType(
        @Transient
        @SerialName("offerId")
        override var offerID: String = "",
        @Transient
        @SerialName("__typename")
        override var typeName: String = "",

        override var purchasedAt: String = "",
        override var offer: OfferInterfaceType,
        @Transient
        override var entitledUntil: String? = null,
        override var expiresInSeconds: Long? = null,
    ) : EntitlementInterfaceType()

    @Serializable
    data class EntitlementDefaultType(
        @Transient
        @SerialName("offerId")
        override var offerID: String = "",

        @Transient
        @SerialName("__typename")
        override var typeName: String = "",

        override var purchasedAt: String = "",
        override var offer: OfferInterfaceType,
        @Transient
        override var entitledUntil: String? = null,
        override var expiresInSeconds: Long? = null,
    ) : EntitlementInterfaceType()

    @Serializable
    data class EntitlementPassType(
        @Transient
        @SerialName("offerId")
        override var offerID: String = "",

        @Transient
        @SerialName("__typename")
        override var typeName: String = "",

        override var purchasedAt: String = "",
        override var offer: OfferInterfaceType,
        @Transient
        override var entitledUntil: String? = null,
        override var expiresInSeconds: Long? = null,
    ) : EntitlementInterfaceType()

    @Serializable
    data class EntitlementRentType(
        @Transient
        @SerialName("offerId")
        override var offerID: String = "",

        @Transient
        @SerialName("__typename")
        override var typeName: String = "",

        override var purchasedAt: String = "",
        override var offer: OfferInterfaceType,
        @Transient
        override var entitledUntil: String? = null,
        override var expiresInSeconds: Long? = null,
    ) : EntitlementInterfaceType()

    @Serializable
    data class EntitlementSubscribeType(
        @Transient
        @SerialName("offerId")
        override var offerID: String = "",

        @Transient
        @SerialName("__typename")
        override var typeName: String = "",

        override var purchasedAt: String = "",
        override var offer: OfferInterfaceType,
        @Transient
        override var entitledUntil: String? = null,
        override var expiresInSeconds: Long? = null,
    ) : EntitlementInterfaceType()

    @Serializable
    data class EntitlementThirdPartyType(
        @Transient
        @SerialName("offerId")
        override var offerID: String = "",

        @Transient
        @SerialName("__typename")
        override var typeName: String = "",

        override var purchasedAt: String = "",
        override var offer: OfferInterfaceType,
        @Transient
        override var entitledUntil: String? = null,
        override var expiresInSeconds: Long? = null,
    ) : EntitlementInterfaceType()
}
