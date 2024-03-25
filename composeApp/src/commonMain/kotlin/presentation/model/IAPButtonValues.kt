package presentation.model

import domain.model.viewableInterface.OfferInterfaceType

data class IAPButtonValues(
    val text: String,
    val skuList: List<OfferInterfaceType.ThirdPartyType>,
    val isEntitled: Boolean,
    val expiresInSeconds: Long?,
)