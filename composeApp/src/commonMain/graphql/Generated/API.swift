// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct AddToMyListInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - viewableId
  ///   - clientMutationId
  public init(viewableId: String, clientMutationId: Swift.Optional<String?> = nil) {
    graphQLMap = ["viewableId": viewableId, "clientMutationId": clientMutationId]
  }

  public var viewableId: String {
    get {
      return graphQLMap["viewableId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "viewableId")
    }
  }

  public var clientMutationId: Swift.Optional<String?> {
    get {
      return graphQLMap["clientMutationId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "clientMutationId")
    }
  }
}

public struct RemoveFromMyListInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - viewableId
  ///   - clientMutationId
  public init(viewableId: String, clientMutationId: Swift.Optional<String?> = nil) {
    graphQLMap = ["viewableId": viewableId, "clientMutationId": clientMutationId]
  }

  public var viewableId: String {
    get {
      return graphQLMap["viewableId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "viewableId")
    }
  }

  public var clientMutationId: Swift.Optional<String?> {
    get {
      return graphQLMap["clientMutationId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "clientMutationId")
    }
  }
}

public enum PlayableKind: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case channel
  case broadcast
  case vod
  case liveEvent
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CHANNEL": self = .channel
      case "BROADCAST": self = .broadcast
      case "VOD": self = .vod
      case "LIVE_EVENT": self = .liveEvent
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .channel: return "CHANNEL"
      case .broadcast: return "BROADCAST"
      case .vod: return "VOD"
      case .liveEvent: return "LIVE_EVENT"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: PlayableKind, rhs: PlayableKind) -> Bool {
    switch (lhs, rhs) {
      case (.channel, .channel): return true
      case (.broadcast, .broadcast): return true
      case (.vod, .vod): return true
      case (.liveEvent, .liveEvent): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [PlayableKind] {
    return [
      .channel,
      .broadcast,
      .vod,
      .liveEvent,
    ]
  }
}

public enum PromoBlockCTATarget: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case blank
  case `self`
  case webview
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "blank": self = .blank
      case "self": self = .`self`
      case "webview": self = .webview
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .blank: return "blank"
      case .`self`: return "self"
      case .webview: return "webview"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: PromoBlockCTATarget, rhs: PromoBlockCTATarget) -> Bool {
    switch (lhs, rhs) {
      case (.blank, .blank): return true
      case (.`self`, .`self`): return true
      case (.webview, .webview): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [PromoBlockCTATarget] {
    return [
      .blank,
      .`self`,
      .webview,
    ]
  }
}

public enum PromoBlockCTAType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case url
  case view
  case block
  case offer
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "url": self = .url
      case "view": self = .view
      case "block": self = .block
      case "offer": self = .offer
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .url: return "url"
      case .view: return "view"
      case .block: return "block"
      case .offer: return "offer"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: PromoBlockCTAType, rhs: PromoBlockCTAType) -> Bool {
    switch (lhs, rhs) {
      case (.url, .url): return true
      case (.view, .view): return true
      case (.block, .block): return true
      case (.offer, .offer): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [PromoBlockCTAType] {
    return [
      .url,
      .view,
      .block,
      .offer,
    ]
  }
}

public enum RecurringPeriodUnitType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Monthly subscription period
  case monthly
  /// Yearly subscription period
  case yearly
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "MONTHLY": self = .monthly
      case "YEARLY": self = .yearly
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .monthly: return "MONTHLY"
      case .yearly: return "YEARLY"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: RecurringPeriodUnitType, rhs: RecurringPeriodUnitType) -> Bool {
    switch (lhs, rhs) {
      case (.monthly, .monthly): return true
      case (.yearly, .yearly): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [RecurringPeriodUnitType] {
    return [
      .monthly,
      .yearly,
    ]
  }
}

public enum ThirdPartyOfferSubtype: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case rental
  case est
  case subscription
  case outsourced
  case pass
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "rental": self = .rental
      case "est": self = .est
      case "subscription": self = .subscription
      case "outsourced": self = .outsourced
      case "pass": self = .pass
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .rental: return "rental"
      case .est: return "est"
      case .subscription: return "subscription"
      case .outsourced: return "outsourced"
      case .pass: return "pass"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ThirdPartyOfferSubtype, rhs: ThirdPartyOfferSubtype) -> Bool {
    switch (lhs, rhs) {
      case (.rental, .rental): return true
      case (.est, .est): return true
      case (.subscription, .subscription): return true
      case (.outsourced, .outsourced): return true
      case (.pass, .pass): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ThirdPartyOfferSubtype] {
    return [
      .rental,
      .est,
      .subscription,
      .outsourced,
      .pass,
    ]
  }
}

public final class AssetMetadataQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query AssetMetadata($magineId: ID!) {
      viewer {
        __typename
        viewable(magineId: $magineId) {
          __typename
          magineId
          ...AssetFragment
        }
      }
    }
    """

  public let operationName: String = "AssetMetadata"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + AssetFragment.fragmentDefinition)
    document.append("\n" + AssetEpisodeFragment.fragmentDefinition)
    document.append("\n" + AssetPlayableFragment.fragmentDefinition)
    document.append("\n" + AssetVodPlayableFragment.fragmentDefinition)
    document.append("\n" + AssetShowFragment.fragmentDefinition)
    document.append("\n" + AssetMovieFragment.fragmentDefinition)
    document.append("\n" + AssetProgramFragment.fragmentDefinition)
    return document
  }

  public var magineId: GraphQLID

  public init(magineId: GraphQLID) {
    self.magineId = magineId
  }

  public var variables: GraphQLMap? {
    return ["magineId": magineId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("viewable", arguments: ["magineId": GraphQLVariable("magineId")], type: .object(Viewable.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(viewable: Viewable? = nil) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "viewable": viewable.flatMap { (value: Viewable) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// use this to fetch specific viewable
      public var viewable: Viewable? {
        get {
          return (resultMap["viewable"] as? ResultMap).flatMap { Viewable(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "viewable")
        }
      }

      public struct Viewable: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(AssetFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public static func makeChannel(magineId: String, title: String? = nil, description: String? = nil, posterImage: String? = nil, coverImage: String? = nil) -> Viewable {
          return Viewable(unsafeResultMap: ["__typename": "Channel", "magineId": magineId, "title": title, "description": description, "posterImage": posterImage, "coverImage": coverImage])
        }

        public static func makeTrailer(magineId: String, title: String? = nil, description: String? = nil, posterImage: String? = nil, coverImage: String? = nil) -> Viewable {
          return Viewable(unsafeResultMap: ["__typename": "Trailer", "magineId": magineId, "title": title, "description": description, "posterImage": posterImage, "coverImage": coverImage])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// use this id for urls and presentation
        public var magineId: String {
          get {
            return resultMap["magineId"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "magineId")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var assetFragment: AssetFragment {
            get {
              return AssetFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class ResellerBrandingQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query resellerBranding {
      viewer {
        __typename
        userId
        resellerBranding {
          __typename
          logo {
            __typename
            dark
            light
          }
        }
      }
    }
    """

  public let operationName: String = "resellerBranding"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .scalar(String.self)),
          GraphQLField("resellerBranding", type: .object(ResellerBranding.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(userId: String? = nil, resellerBranding: ResellerBranding? = nil) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "userId": userId, "resellerBranding": resellerBranding.flatMap { (value: ResellerBranding) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// User id, or null if not logged in
      public var userId: String? {
        get {
          return resultMap["userId"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      /// reseller branding settings if exists
      public var resellerBranding: ResellerBranding? {
        get {
          return (resultMap["resellerBranding"] as? ResultMap).flatMap { ResellerBranding(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "resellerBranding")
        }
      }

      public struct ResellerBranding: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ResellerBranding"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("logo", type: .object(Logo.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(logo: Logo? = nil) {
          self.init(unsafeResultMap: ["__typename": "ResellerBranding", "logo": logo.flatMap { (value: Logo) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var logo: Logo? {
          get {
            return (resultMap["logo"] as? ResultMap).flatMap { Logo(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "logo")
          }
        }

        public struct Logo: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Logo"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("dark", type: .scalar(String.self)),
              GraphQLField("light", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(dark: String? = nil, light: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Logo", "dark": dark, "light": light])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var dark: String? {
            get {
              return resultMap["dark"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "dark")
            }
          }

          public var light: String? {
            get {
              return resultMap["light"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "light")
            }
          }
        }
      }
    }
  }
}

public final class CollectionContentQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query CollectionContent($collectionId: ID!, $first: Int, $after: String) {
      viewer {
        __typename
        block(magineId: $collectionId) {
          __typename
          id
          ...BookmarksFragment
          ...ContinueWatchingFragment
          ...EntitledContentFragment
          ...FavouriteChannelsFragment
          ...FeaturedCarouselFragment
          ...FeaturedFragment
          ...LiveChannelsFragment
          ...PosterFragment
          ...SixteenNineFragment
          ...LinkCollectionFragment
        }
      }
    }
    """

  public let operationName: String = "CollectionContent"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + BookmarksFragment.fragmentDefinition)
    document.append("\n" + PageInfoFragment.fragmentDefinition)
    document.append("\n" + ViewableInterfaceFragment.fragmentDefinition)
    document.append("\n" + ChannelFragment.fragmentDefinition)
    document.append("\n" + ViewableEntitlementFragment.fragmentDefinition)
    document.append("\n" + OfferFragment.fragmentDefinition)
    document.append("\n" + PlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastPlayableFragment.fragmentDefinition)
    document.append("\n" + VodPlayableFragment.fragmentDefinition)
    document.append("\n" + LiveEventPlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastFragment.fragmentDefinition)
    document.append("\n" + EpisodeFragment.fragmentDefinition)
    document.append("\n" + TagsToRenderFragment.fragmentDefinition)
    document.append("\n" + ShowFragment.fragmentDefinition)
    document.append("\n" + MovieFragment.fragmentDefinition)
    document.append("\n" + ProgramFragment.fragmentDefinition)
    document.append("\n" + TrailerFragment.fragmentDefinition)
    document.append("\n" + ContinueWatchingFragment.fragmentDefinition)
    document.append("\n" + EntitledContentFragment.fragmentDefinition)
    document.append("\n" + FavouriteChannelsFragment.fragmentDefinition)
    document.append("\n" + FeaturedCarouselFragment.fragmentDefinition)
    document.append("\n" + FeaturedFragment.fragmentDefinition)
    document.append("\n" + LiveChannelsFragment.fragmentDefinition)
    document.append("\n" + PosterFragment.fragmentDefinition)
    document.append("\n" + SixteenNineFragment.fragmentDefinition)
    document.append("\n" + LinkCollectionFragment.fragmentDefinition)
    return document
  }

  public var collectionId: GraphQLID
  public var first: Int?
  public var after: String?

  public init(collectionId: GraphQLID, first: Int? = nil, after: String? = nil) {
    self.collectionId = collectionId
    self.first = first
    self.after = after
  }

  public var variables: GraphQLMap? {
    return ["collectionId": collectionId, "first": first, "after": after]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("block", arguments: ["magineId": GraphQLVariable("collectionId")], type: .object(Block.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(block: Block? = nil) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "block": block.flatMap { (value: Block) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// use this to fetch specific block
      public var block: Block? {
        get {
          return (resultMap["block"] as? ResultMap).flatMap { Block(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "block")
        }
      }

      public struct Block: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PosterCollection", "SixteenNineCollection", "BookmarksCollection", "ContinueWatchingCollection", "EntitledContentCollection", "FavouriteChannelsCollection", "FeaturedCarouselCollection", "FeaturedCollection", "LinkCollection", "LiveChannelsCollection", "PromoBlock"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLFragmentSpread(BookmarksFragment.self),
            GraphQLFragmentSpread(ContinueWatchingFragment.self),
            GraphQLFragmentSpread(EntitledContentFragment.self),
            GraphQLFragmentSpread(FavouriteChannelsFragment.self),
            GraphQLFragmentSpread(FeaturedCarouselFragment.self),
            GraphQLFragmentSpread(FeaturedFragment.self),
            GraphQLFragmentSpread(LiveChannelsFragment.self),
            GraphQLFragmentSpread(PosterFragment.self),
            GraphQLFragmentSpread(SixteenNineFragment.self),
            GraphQLFragmentSpread(LinkCollectionFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public static func makePromoBlock(id: GraphQLID) -> Block {
          return Block(unsafeResultMap: ["__typename": "PromoBlock", "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The ID of an object
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var bookmarksFragment: BookmarksFragment? {
            get {
              if !BookmarksFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return BookmarksFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var continueWatchingFragment: ContinueWatchingFragment? {
            get {
              if !ContinueWatchingFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return ContinueWatchingFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var entitledContentFragment: EntitledContentFragment? {
            get {
              if !EntitledContentFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return EntitledContentFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var favouriteChannelsFragment: FavouriteChannelsFragment? {
            get {
              if !FavouriteChannelsFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return FavouriteChannelsFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var featuredCarouselFragment: FeaturedCarouselFragment? {
            get {
              if !FeaturedCarouselFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return FeaturedCarouselFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var featuredFragment: FeaturedFragment? {
            get {
              if !FeaturedFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return FeaturedFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var liveChannelsFragment: LiveChannelsFragment? {
            get {
              if !LiveChannelsFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return LiveChannelsFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var posterFragment: PosterFragment? {
            get {
              if !PosterFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return PosterFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var sixteenNineFragment: SixteenNineFragment? {
            get {
              if !SixteenNineFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return SixteenNineFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var linkCollectionFragment: LinkCollectionFragment? {
            get {
              if !LinkCollectionFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return LinkCollectionFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class BlocksViewQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query BlocksView($magineId: ID!, $first: Int, $after: String) {
      viewer {
        __typename
        view(magineId: $magineId) {
          __typename
          blocks(first: $first, after: $after) {
            __typename
            pageInfo {
              __typename
              ...PageInfoFragment
            }
            edges {
              __typename
              node {
                __typename
                id
                magineId
                ...BookmarksCollectionFragment
                ...ContinueWatchingCollectionFragment
                ...EntitledContentCollectionFragment
                ...FavouriteChannelsCollectionFragment
                ...FeaturedCarouselCollectionFragment
                ...FeaturedCollectionFragment
                ...LiveChannelsCollectionFragment
                ...PosterCollectionFragment
                ...SixteenNineCollectionFragment
                ...LinkCollectionFragment
                ...PromoBlockFragment
              }
            }
          }
        }
      }
    }
    """

  public let operationName: String = "BlocksView"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + PageInfoFragment.fragmentDefinition)
    document.append("\n" + BookmarksCollectionFragment.fragmentDefinition)
    document.append("\n" + ViewableInterfaceFragment.fragmentDefinition)
    document.append("\n" + ChannelFragment.fragmentDefinition)
    document.append("\n" + ViewableEntitlementFragment.fragmentDefinition)
    document.append("\n" + OfferFragment.fragmentDefinition)
    document.append("\n" + PlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastPlayableFragment.fragmentDefinition)
    document.append("\n" + VodPlayableFragment.fragmentDefinition)
    document.append("\n" + LiveEventPlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastFragment.fragmentDefinition)
    document.append("\n" + EpisodeFragment.fragmentDefinition)
    document.append("\n" + TagsToRenderFragment.fragmentDefinition)
    document.append("\n" + ShowFragment.fragmentDefinition)
    document.append("\n" + MovieFragment.fragmentDefinition)
    document.append("\n" + ProgramFragment.fragmentDefinition)
    document.append("\n" + TrailerFragment.fragmentDefinition)
    document.append("\n" + ContinueWatchingCollectionFragment.fragmentDefinition)
    document.append("\n" + EntitledContentCollectionFragment.fragmentDefinition)
    document.append("\n" + FavouriteChannelsCollectionFragment.fragmentDefinition)
    document.append("\n" + FeaturedCarouselCollectionFragment.fragmentDefinition)
    document.append("\n" + FeaturedCollectionFragment.fragmentDefinition)
    document.append("\n" + LiveChannelsCollectionFragment.fragmentDefinition)
    document.append("\n" + PosterCollectionFragment.fragmentDefinition)
    document.append("\n" + SixteenNineCollectionFragment.fragmentDefinition)
    document.append("\n" + LinkCollectionFragment.fragmentDefinition)
    document.append("\n" + PromoBlockFragment.fragmentDefinition)
    return document
  }

  public var magineId: GraphQLID
  public var first: Int?
  public var after: String?

  public init(magineId: GraphQLID, first: Int? = nil, after: String? = nil) {
    self.magineId = magineId
    self.first = first
    self.after = after
  }

  public var variables: GraphQLMap? {
    return ["magineId": magineId, "first": first, "after": after]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("view", arguments: ["magineId": GraphQLVariable("magineId")], type: .object(View.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(view: View? = nil) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "view": view.flatMap { (value: View) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// use this to fetch one specific View
      public var view: View? {
        get {
          return (resultMap["view"] as? ResultMap).flatMap { View(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "view")
        }
      }

      public struct View: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["View"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("blocks", arguments: ["first": GraphQLVariable("first"), "after": GraphQLVariable("after")], type: .nonNull(.object(Block.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(blocks: Block) {
          self.init(unsafeResultMap: ["__typename": "View", "blocks": blocks.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// a list of blocks in order defined by the view, with pagination support
        public var blocks: Block {
          get {
            return Block(unsafeResultMap: resultMap["blocks"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "blocks")
          }
        }

        public struct Block: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["BlockConnection"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
              GraphQLField("edges", type: .list(.object(Edge.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "BlockConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Information to aid in pagination.
          public var pageInfo: PageInfo {
            get {
              return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
            }
          }

          /// A list of edges.
          public var edges: [Edge?]? {
            get {
              return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
            }
          }

          public struct PageInfo: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["PageInfo"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLFragmentSpread(PageInfoFragment.self),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var fragments: Fragments {
              get {
                return Fragments(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }

            public struct Fragments {
              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public var pageInfoFragment: PageInfoFragment {
                get {
                  return PageInfoFragment(unsafeResultMap: resultMap)
                }
                set {
                  resultMap += newValue.resultMap
                }
              }
            }
          }

          public struct Edge: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["BlockEdge"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("node", type: .nonNull(.object(Node.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(node: Node) {
              self.init(unsafeResultMap: ["__typename": "BlockEdge", "node": node.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The item at the end of the edge.
            public var node: Node {
              get {
                return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "node")
              }
            }

            public struct Node: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["PosterCollection", "SixteenNineCollection", "BookmarksCollection", "ContinueWatchingCollection", "EntitledContentCollection", "FavouriteChannelsCollection", "FeaturedCarouselCollection", "FeaturedCollection", "LinkCollection", "LiveChannelsCollection", "PromoBlock"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                  GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
                  GraphQLFragmentSpread(BookmarksCollectionFragment.self),
                  GraphQLFragmentSpread(ContinueWatchingCollectionFragment.self),
                  GraphQLFragmentSpread(EntitledContentCollectionFragment.self),
                  GraphQLFragmentSpread(FavouriteChannelsCollectionFragment.self),
                  GraphQLFragmentSpread(FeaturedCarouselCollectionFragment.self),
                  GraphQLFragmentSpread(FeaturedCollectionFragment.self),
                  GraphQLFragmentSpread(LiveChannelsCollectionFragment.self),
                  GraphQLFragmentSpread(PosterCollectionFragment.self),
                  GraphQLFragmentSpread(SixteenNineCollectionFragment.self),
                  GraphQLFragmentSpread(LinkCollectionFragment.self),
                  GraphQLFragmentSpread(PromoBlockFragment.self),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public static func makePromoBlock(id: GraphQLID, magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, blockUi: String? = nil, ctaTarget: PromoBlockCTATarget? = nil, ctaValueType: PromoBlockCTAType? = nil, ctaValue: String? = nil, ctaLabel: String? = nil) -> Node {
                return Node(unsafeResultMap: ["__typename": "PromoBlock", "id": id, "magineId": magineId, "title": title, "description": description, "image": image, "blockUI": blockUi, "ctaTarget": ctaTarget, "ctaValueType": ctaValueType, "ctaValue": ctaValue, "ctaLabel": ctaLabel])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The ID of an object
              public var id: GraphQLID {
                get {
                  return resultMap["id"]! as! GraphQLID
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
                }
              }

              /// use this id for urls and presentation
              public var magineId: String {
                get {
                  return resultMap["magineId"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "magineId")
                }
              }

              public var fragments: Fragments {
                get {
                  return Fragments(unsafeResultMap: resultMap)
                }
                set {
                  resultMap += newValue.resultMap
                }
              }

              public struct Fragments {
                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public var bookmarksCollectionFragment: BookmarksCollectionFragment? {
                  get {
                    if !BookmarksCollectionFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
                    return BookmarksCollectionFragment(unsafeResultMap: resultMap)
                  }
                  set {
                    guard let newValue = newValue else { return }
                    resultMap += newValue.resultMap
                  }
                }

                public var continueWatchingCollectionFragment: ContinueWatchingCollectionFragment? {
                  get {
                    if !ContinueWatchingCollectionFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
                    return ContinueWatchingCollectionFragment(unsafeResultMap: resultMap)
                  }
                  set {
                    guard let newValue = newValue else { return }
                    resultMap += newValue.resultMap
                  }
                }

                public var entitledContentCollectionFragment: EntitledContentCollectionFragment? {
                  get {
                    if !EntitledContentCollectionFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
                    return EntitledContentCollectionFragment(unsafeResultMap: resultMap)
                  }
                  set {
                    guard let newValue = newValue else { return }
                    resultMap += newValue.resultMap
                  }
                }

                public var favouriteChannelsCollectionFragment: FavouriteChannelsCollectionFragment? {
                  get {
                    if !FavouriteChannelsCollectionFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
                    return FavouriteChannelsCollectionFragment(unsafeResultMap: resultMap)
                  }
                  set {
                    guard let newValue = newValue else { return }
                    resultMap += newValue.resultMap
                  }
                }

                public var featuredCarouselCollectionFragment: FeaturedCarouselCollectionFragment? {
                  get {
                    if !FeaturedCarouselCollectionFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
                    return FeaturedCarouselCollectionFragment(unsafeResultMap: resultMap)
                  }
                  set {
                    guard let newValue = newValue else { return }
                    resultMap += newValue.resultMap
                  }
                }

                public var featuredCollectionFragment: FeaturedCollectionFragment? {
                  get {
                    if !FeaturedCollectionFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
                    return FeaturedCollectionFragment(unsafeResultMap: resultMap)
                  }
                  set {
                    guard let newValue = newValue else { return }
                    resultMap += newValue.resultMap
                  }
                }

                public var liveChannelsCollectionFragment: LiveChannelsCollectionFragment? {
                  get {
                    if !LiveChannelsCollectionFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
                    return LiveChannelsCollectionFragment(unsafeResultMap: resultMap)
                  }
                  set {
                    guard let newValue = newValue else { return }
                    resultMap += newValue.resultMap
                  }
                }

                public var posterCollectionFragment: PosterCollectionFragment? {
                  get {
                    if !PosterCollectionFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
                    return PosterCollectionFragment(unsafeResultMap: resultMap)
                  }
                  set {
                    guard let newValue = newValue else { return }
                    resultMap += newValue.resultMap
                  }
                }

                public var sixteenNineCollectionFragment: SixteenNineCollectionFragment? {
                  get {
                    if !SixteenNineCollectionFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
                    return SixteenNineCollectionFragment(unsafeResultMap: resultMap)
                  }
                  set {
                    guard let newValue = newValue else { return }
                    resultMap += newValue.resultMap
                  }
                }

                public var linkCollectionFragment: LinkCollectionFragment? {
                  get {
                    if !LinkCollectionFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
                    return LinkCollectionFragment(unsafeResultMap: resultMap)
                  }
                  set {
                    guard let newValue = newValue else { return }
                    resultMap += newValue.resultMap
                  }
                }

                public var promoBlockFragment: PromoBlockFragment? {
                  get {
                    if !PromoBlockFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
                    return PromoBlockFragment(unsafeResultMap: resultMap)
                  }
                  set {
                    guard let newValue = newValue else { return }
                    resultMap += newValue.resultMap
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class CollectionInfoQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query CollectionInfo($collectionId: ID!) {
      viewer {
        __typename
        block(magineId: $collectionId) {
          __typename
          magineId
          ...BookmarksCollectionInfoFragment
          ...ContinueWatchingCollectionInfoFragment
          ...EntitledContentCollectionInfoFragment
          ...FavouriteChannelsCollectionInfoFragment
          ...FeaturedCarouselCollectionInfoFragment
          ...FeaturedCollectionInfoFragment
          ...LiveChannelsCollectionInfoFragment
          ...PosterCollectionInfoFragment
          ...SixteenNineCollectionInfoFragment
          ...LinkCollectionInfoFragment
        }
      }
    }
    """

  public let operationName: String = "CollectionInfo"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + BookmarksCollectionInfoFragment.fragmentDefinition)
    document.append("\n" + ContinueWatchingCollectionInfoFragment.fragmentDefinition)
    document.append("\n" + EntitledContentCollectionInfoFragment.fragmentDefinition)
    document.append("\n" + FavouriteChannelsCollectionInfoFragment.fragmentDefinition)
    document.append("\n" + FeaturedCarouselCollectionInfoFragment.fragmentDefinition)
    document.append("\n" + FeaturedCollectionInfoFragment.fragmentDefinition)
    document.append("\n" + LiveChannelsCollectionInfoFragment.fragmentDefinition)
    document.append("\n" + PosterCollectionInfoFragment.fragmentDefinition)
    document.append("\n" + SixteenNineCollectionInfoFragment.fragmentDefinition)
    document.append("\n" + LinkCollectionInfoFragment.fragmentDefinition)
    return document
  }

  public var collectionId: GraphQLID

  public init(collectionId: GraphQLID) {
    self.collectionId = collectionId
  }

  public var variables: GraphQLMap? {
    return ["collectionId": collectionId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("block", arguments: ["magineId": GraphQLVariable("collectionId")], type: .object(Block.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(block: Block? = nil) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "block": block.flatMap { (value: Block) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// use this to fetch specific block
      public var block: Block? {
        get {
          return (resultMap["block"] as? ResultMap).flatMap { Block(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "block")
        }
      }

      public struct Block: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PosterCollection", "SixteenNineCollection", "BookmarksCollection", "ContinueWatchingCollection", "EntitledContentCollection", "FavouriteChannelsCollection", "FeaturedCarouselCollection", "FeaturedCollection", "LinkCollection", "LiveChannelsCollection", "PromoBlock"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(BookmarksCollectionInfoFragment.self),
            GraphQLFragmentSpread(ContinueWatchingCollectionInfoFragment.self),
            GraphQLFragmentSpread(EntitledContentCollectionInfoFragment.self),
            GraphQLFragmentSpread(FavouriteChannelsCollectionInfoFragment.self),
            GraphQLFragmentSpread(FeaturedCarouselCollectionInfoFragment.self),
            GraphQLFragmentSpread(FeaturedCollectionInfoFragment.self),
            GraphQLFragmentSpread(LiveChannelsCollectionInfoFragment.self),
            GraphQLFragmentSpread(PosterCollectionInfoFragment.self),
            GraphQLFragmentSpread(SixteenNineCollectionInfoFragment.self),
            GraphQLFragmentSpread(LinkCollectionInfoFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public static func makePosterCollection(magineId: String, title: String? = nil) -> Block {
          return Block(unsafeResultMap: ["__typename": "PosterCollection", "magineId": magineId, "title": title])
        }

        public static func makeSixteenNineCollection(magineId: String, title: String? = nil) -> Block {
          return Block(unsafeResultMap: ["__typename": "SixteenNineCollection", "magineId": magineId, "title": title])
        }

        public static func makeBookmarksCollection(magineId: String, title: String? = nil) -> Block {
          return Block(unsafeResultMap: ["__typename": "BookmarksCollection", "magineId": magineId, "title": title])
        }

        public static func makeContinueWatchingCollection(magineId: String, title: String? = nil) -> Block {
          return Block(unsafeResultMap: ["__typename": "ContinueWatchingCollection", "magineId": magineId, "title": title])
        }

        public static func makeEntitledContentCollection(magineId: String, title: String? = nil) -> Block {
          return Block(unsafeResultMap: ["__typename": "EntitledContentCollection", "magineId": magineId, "title": title])
        }

        public static func makeFavouriteChannelsCollection(magineId: String, title: String? = nil) -> Block {
          return Block(unsafeResultMap: ["__typename": "FavouriteChannelsCollection", "magineId": magineId, "title": title])
        }

        public static func makeFeaturedCarouselCollection(magineId: String, title: String? = nil) -> Block {
          return Block(unsafeResultMap: ["__typename": "FeaturedCarouselCollection", "magineId": magineId, "title": title])
        }

        public static func makeFeaturedCollection(magineId: String, title: String? = nil) -> Block {
          return Block(unsafeResultMap: ["__typename": "FeaturedCollection", "magineId": magineId, "title": title])
        }

        public static func makeLinkCollection(magineId: String, title: String? = nil) -> Block {
          return Block(unsafeResultMap: ["__typename": "LinkCollection", "magineId": magineId, "title": title])
        }

        public static func makeLiveChannelsCollection(magineId: String, title: String? = nil) -> Block {
          return Block(unsafeResultMap: ["__typename": "LiveChannelsCollection", "magineId": magineId, "title": title])
        }

        public static func makePromoBlock(magineId: String) -> Block {
          return Block(unsafeResultMap: ["__typename": "PromoBlock", "magineId": magineId])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// use this id for urls and presentation
        public var magineId: String {
          get {
            return resultMap["magineId"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "magineId")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var bookmarksCollectionInfoFragment: BookmarksCollectionInfoFragment? {
            get {
              if !BookmarksCollectionInfoFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return BookmarksCollectionInfoFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var continueWatchingCollectionInfoFragment: ContinueWatchingCollectionInfoFragment? {
            get {
              if !ContinueWatchingCollectionInfoFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return ContinueWatchingCollectionInfoFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var entitledContentCollectionInfoFragment: EntitledContentCollectionInfoFragment? {
            get {
              if !EntitledContentCollectionInfoFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return EntitledContentCollectionInfoFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var favouriteChannelsCollectionInfoFragment: FavouriteChannelsCollectionInfoFragment? {
            get {
              if !FavouriteChannelsCollectionInfoFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return FavouriteChannelsCollectionInfoFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var featuredCarouselCollectionInfoFragment: FeaturedCarouselCollectionInfoFragment? {
            get {
              if !FeaturedCarouselCollectionInfoFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return FeaturedCarouselCollectionInfoFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var featuredCollectionInfoFragment: FeaturedCollectionInfoFragment? {
            get {
              if !FeaturedCollectionInfoFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return FeaturedCollectionInfoFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var liveChannelsCollectionInfoFragment: LiveChannelsCollectionInfoFragment? {
            get {
              if !LiveChannelsCollectionInfoFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return LiveChannelsCollectionInfoFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var posterCollectionInfoFragment: PosterCollectionInfoFragment? {
            get {
              if !PosterCollectionInfoFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return PosterCollectionInfoFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var sixteenNineCollectionInfoFragment: SixteenNineCollectionInfoFragment? {
            get {
              if !SixteenNineCollectionInfoFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return SixteenNineCollectionInfoFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }

          public var linkCollectionInfoFragment: LinkCollectionInfoFragment? {
            get {
              if !LinkCollectionInfoFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
              return LinkCollectionInfoFragment(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class SearchContentQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query SearchContent($query: String!, $limit: Int!, $next: String!, $show: Boolean!, $movie: Boolean!, $program: Boolean!, $channel: Boolean!) {
      viewer {
        __typename
        shows: search(query: $query, first: $limit, after: $next, kinds: "show") @include(if: $show) {
          __typename
          ...SearchResponseFragment
        }
        movies: search(query: $query, first: $limit, after: $next, kinds: "movie") @include(if: $movie) {
          __typename
          ...SearchResponseFragment
        }
        programs: search(query: $query, first: $limit, after: $next, kinds: "program") @include(if: $program) {
          __typename
          ...SearchResponseFragment
        }
        channels: search(query: $query, first: $limit, after: $next, kinds: "channel") @include(if: $channel) {
          __typename
          ...SearchResponseFragment
        }
      }
    }
    """

  public let operationName: String = "SearchContent"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + SearchResponseFragment.fragmentDefinition)
    document.append("\n" + PageInfoFragment.fragmentDefinition)
    document.append("\n" + ViewableInterfaceFragment.fragmentDefinition)
    document.append("\n" + ChannelFragment.fragmentDefinition)
    document.append("\n" + ViewableEntitlementFragment.fragmentDefinition)
    document.append("\n" + OfferFragment.fragmentDefinition)
    document.append("\n" + PlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastPlayableFragment.fragmentDefinition)
    document.append("\n" + VodPlayableFragment.fragmentDefinition)
    document.append("\n" + LiveEventPlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastFragment.fragmentDefinition)
    document.append("\n" + EpisodeFragment.fragmentDefinition)
    document.append("\n" + TagsToRenderFragment.fragmentDefinition)
    document.append("\n" + ShowFragment.fragmentDefinition)
    document.append("\n" + MovieFragment.fragmentDefinition)
    document.append("\n" + ProgramFragment.fragmentDefinition)
    document.append("\n" + TrailerFragment.fragmentDefinition)
    return document
  }

  public var query: String
  public var limit: Int
  public var next: String
  public var show: Bool
  public var movie: Bool
  public var program: Bool
  public var channel: Bool

  public init(query: String, limit: Int, next: String, show: Bool, movie: Bool, program: Bool, channel: Bool) {
    self.query = query
    self.limit = limit
    self.next = next
    self.show = show
    self.movie = movie
    self.program = program
    self.channel = channel
  }

  public var variables: GraphQLMap? {
    return ["query": query, "limit": limit, "next": next, "show": show, "movie": movie, "program": program, "channel": channel]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLBooleanCondition(variableName: "show", inverted: false, selections: [
            GraphQLField("search", alias: "shows", arguments: ["query": GraphQLVariable("query"), "first": GraphQLVariable("limit"), "after": GraphQLVariable("next"), "kinds": "show"], type: .nonNull(.object(Show.selections))),
          ]),
          GraphQLBooleanCondition(variableName: "movie", inverted: false, selections: [
            GraphQLField("search", alias: "movies", arguments: ["query": GraphQLVariable("query"), "first": GraphQLVariable("limit"), "after": GraphQLVariable("next"), "kinds": "movie"], type: .nonNull(.object(Movie.selections))),
          ]),
          GraphQLBooleanCondition(variableName: "program", inverted: false, selections: [
            GraphQLField("search", alias: "programs", arguments: ["query": GraphQLVariable("query"), "first": GraphQLVariable("limit"), "after": GraphQLVariable("next"), "kinds": "program"], type: .nonNull(.object(Program.selections))),
          ]),
          GraphQLBooleanCondition(variableName: "channel", inverted: false, selections: [
            GraphQLField("search", alias: "channels", arguments: ["query": GraphQLVariable("query"), "first": GraphQLVariable("limit"), "after": GraphQLVariable("next"), "kinds": "channel"], type: .nonNull(.object(Channel.selections))),
          ]),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(shows: Show? = nil, movies: Movie? = nil, programs: Program? = nil, channels: Channel? = nil) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "shows": shows.flatMap { (value: Show) -> ResultMap in value.resultMap }, "movies": movies.flatMap { (value: Movie) -> ResultMap in value.resultMap }, "programs": programs.flatMap { (value: Program) -> ResultMap in value.resultMap }, "channels": channels.flatMap { (value: Channel) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// use this to search viewables
      public var shows: Show? {
        get {
          return (resultMap["shows"] as? ResultMap).flatMap { Show(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "shows")
        }
      }

      /// use this to search viewables
      public var movies: Movie? {
        get {
          return (resultMap["movies"] as? ResultMap).flatMap { Movie(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "movies")
        }
      }

      /// use this to search viewables
      public var programs: Program? {
        get {
          return (resultMap["programs"] as? ResultMap).flatMap { Program(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "programs")
        }
      }

      /// use this to search viewables
      public var channels: Channel? {
        get {
          return (resultMap["channels"] as? ResultMap).flatMap { Channel(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "channels")
        }
      }

      public struct Show: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["SearchResponseConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(SearchResponseFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var searchResponseFragment: SearchResponseFragment {
            get {
              return SearchResponseFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }

      public struct Movie: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["SearchResponseConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(SearchResponseFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var searchResponseFragment: SearchResponseFragment {
            get {
              return SearchResponseFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }

      public struct Program: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["SearchResponseConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(SearchResponseFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var searchResponseFragment: SearchResponseFragment {
            get {
              return SearchResponseFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }

      public struct Channel: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["SearchResponseConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(SearchResponseFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var searchResponseFragment: SearchResponseFragment {
            get {
              return SearchResponseFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class SearchShowQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query SearchShow($query: String!, $limit: Int!, $next: String!) {
      viewer {
        __typename
        shows: search(query: $query, first: $limit, after: $next, kinds: "show") {
          __typename
          ...SearchResponseFragment
        }
      }
    }
    """

  public let operationName: String = "SearchShow"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + SearchResponseFragment.fragmentDefinition)
    document.append("\n" + PageInfoFragment.fragmentDefinition)
    document.append("\n" + ViewableInterfaceFragment.fragmentDefinition)
    document.append("\n" + ChannelFragment.fragmentDefinition)
    document.append("\n" + ViewableEntitlementFragment.fragmentDefinition)
    document.append("\n" + OfferFragment.fragmentDefinition)
    document.append("\n" + PlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastPlayableFragment.fragmentDefinition)
    document.append("\n" + VodPlayableFragment.fragmentDefinition)
    document.append("\n" + LiveEventPlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastFragment.fragmentDefinition)
    document.append("\n" + EpisodeFragment.fragmentDefinition)
    document.append("\n" + TagsToRenderFragment.fragmentDefinition)
    document.append("\n" + ShowFragment.fragmentDefinition)
    document.append("\n" + MovieFragment.fragmentDefinition)
    document.append("\n" + ProgramFragment.fragmentDefinition)
    document.append("\n" + TrailerFragment.fragmentDefinition)
    return document
  }

  public var query: String
  public var limit: Int
  public var next: String

  public init(query: String, limit: Int, next: String) {
    self.query = query
    self.limit = limit
    self.next = next
  }

  public var variables: GraphQLMap? {
    return ["query": query, "limit": limit, "next": next]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("search", alias: "shows", arguments: ["query": GraphQLVariable("query"), "first": GraphQLVariable("limit"), "after": GraphQLVariable("next"), "kinds": "show"], type: .nonNull(.object(Show.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(shows: Show) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "shows": shows.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// use this to search viewables
      public var shows: Show {
        get {
          return Show(unsafeResultMap: resultMap["shows"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "shows")
        }
      }

      public struct Show: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["SearchResponseConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(SearchResponseFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var searchResponseFragment: SearchResponseFragment {
            get {
              return SearchResponseFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class SearchMovieQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query SearchMovie($query: String!, $limit: Int!, $next: String!) {
      viewer {
        __typename
        shows: search(query: $query, first: $limit, after: $next, kinds: "movie") {
          __typename
          ...SearchResponseFragment
        }
      }
    }
    """

  public let operationName: String = "SearchMovie"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + SearchResponseFragment.fragmentDefinition)
    document.append("\n" + PageInfoFragment.fragmentDefinition)
    document.append("\n" + ViewableInterfaceFragment.fragmentDefinition)
    document.append("\n" + ChannelFragment.fragmentDefinition)
    document.append("\n" + ViewableEntitlementFragment.fragmentDefinition)
    document.append("\n" + OfferFragment.fragmentDefinition)
    document.append("\n" + PlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastPlayableFragment.fragmentDefinition)
    document.append("\n" + VodPlayableFragment.fragmentDefinition)
    document.append("\n" + LiveEventPlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastFragment.fragmentDefinition)
    document.append("\n" + EpisodeFragment.fragmentDefinition)
    document.append("\n" + TagsToRenderFragment.fragmentDefinition)
    document.append("\n" + ShowFragment.fragmentDefinition)
    document.append("\n" + MovieFragment.fragmentDefinition)
    document.append("\n" + ProgramFragment.fragmentDefinition)
    document.append("\n" + TrailerFragment.fragmentDefinition)
    return document
  }

  public var query: String
  public var limit: Int
  public var next: String

  public init(query: String, limit: Int, next: String) {
    self.query = query
    self.limit = limit
    self.next = next
  }

  public var variables: GraphQLMap? {
    return ["query": query, "limit": limit, "next": next]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("search", alias: "shows", arguments: ["query": GraphQLVariable("query"), "first": GraphQLVariable("limit"), "after": GraphQLVariable("next"), "kinds": "movie"], type: .nonNull(.object(Show.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(shows: Show) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "shows": shows.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// use this to search viewables
      public var shows: Show {
        get {
          return Show(unsafeResultMap: resultMap["shows"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "shows")
        }
      }

      public struct Show: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["SearchResponseConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(SearchResponseFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var searchResponseFragment: SearchResponseFragment {
            get {
              return SearchResponseFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class SearchProgramQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query SearchProgram($query: String!, $limit: Int!, $next: String!) {
      viewer {
        __typename
        shows: search(query: $query, first: $limit, after: $next, kinds: "program") {
          __typename
          ...SearchResponseFragment
        }
      }
    }
    """

  public let operationName: String = "SearchProgram"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + SearchResponseFragment.fragmentDefinition)
    document.append("\n" + PageInfoFragment.fragmentDefinition)
    document.append("\n" + ViewableInterfaceFragment.fragmentDefinition)
    document.append("\n" + ChannelFragment.fragmentDefinition)
    document.append("\n" + ViewableEntitlementFragment.fragmentDefinition)
    document.append("\n" + OfferFragment.fragmentDefinition)
    document.append("\n" + PlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastPlayableFragment.fragmentDefinition)
    document.append("\n" + VodPlayableFragment.fragmentDefinition)
    document.append("\n" + LiveEventPlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastFragment.fragmentDefinition)
    document.append("\n" + EpisodeFragment.fragmentDefinition)
    document.append("\n" + TagsToRenderFragment.fragmentDefinition)
    document.append("\n" + ShowFragment.fragmentDefinition)
    document.append("\n" + MovieFragment.fragmentDefinition)
    document.append("\n" + ProgramFragment.fragmentDefinition)
    document.append("\n" + TrailerFragment.fragmentDefinition)
    return document
  }

  public var query: String
  public var limit: Int
  public var next: String

  public init(query: String, limit: Int, next: String) {
    self.query = query
    self.limit = limit
    self.next = next
  }

  public var variables: GraphQLMap? {
    return ["query": query, "limit": limit, "next": next]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("search", alias: "shows", arguments: ["query": GraphQLVariable("query"), "first": GraphQLVariable("limit"), "after": GraphQLVariable("next"), "kinds": "program"], type: .nonNull(.object(Show.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(shows: Show) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "shows": shows.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// use this to search viewables
      public var shows: Show {
        get {
          return Show(unsafeResultMap: resultMap["shows"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "shows")
        }
      }

      public struct Show: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["SearchResponseConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(SearchResponseFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var searchResponseFragment: SearchResponseFragment {
            get {
              return SearchResponseFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class SearchChannelQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query SearchChannel($query: String!, $limit: Int!, $next: String!) {
      viewer {
        __typename
        shows: search(query: $query, first: $limit, after: $next, kinds: "channel") {
          __typename
          ...SearchResponseFragment
        }
      }
    }
    """

  public let operationName: String = "SearchChannel"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + SearchResponseFragment.fragmentDefinition)
    document.append("\n" + PageInfoFragment.fragmentDefinition)
    document.append("\n" + ViewableInterfaceFragment.fragmentDefinition)
    document.append("\n" + ChannelFragment.fragmentDefinition)
    document.append("\n" + ViewableEntitlementFragment.fragmentDefinition)
    document.append("\n" + OfferFragment.fragmentDefinition)
    document.append("\n" + PlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastPlayableFragment.fragmentDefinition)
    document.append("\n" + VodPlayableFragment.fragmentDefinition)
    document.append("\n" + LiveEventPlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastFragment.fragmentDefinition)
    document.append("\n" + EpisodeFragment.fragmentDefinition)
    document.append("\n" + TagsToRenderFragment.fragmentDefinition)
    document.append("\n" + ShowFragment.fragmentDefinition)
    document.append("\n" + MovieFragment.fragmentDefinition)
    document.append("\n" + ProgramFragment.fragmentDefinition)
    document.append("\n" + TrailerFragment.fragmentDefinition)
    return document
  }

  public var query: String
  public var limit: Int
  public var next: String

  public init(query: String, limit: Int, next: String) {
    self.query = query
    self.limit = limit
    self.next = next
  }

  public var variables: GraphQLMap? {
    return ["query": query, "limit": limit, "next": next]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("search", alias: "shows", arguments: ["query": GraphQLVariable("query"), "first": GraphQLVariable("limit"), "after": GraphQLVariable("next"), "kinds": "channel"], type: .nonNull(.object(Show.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(shows: Show) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "shows": shows.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// use this to search viewables
      public var shows: Show {
        get {
          return Show(unsafeResultMap: resultMap["shows"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "shows")
        }
      }

      public struct Show: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["SearchResponseConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(SearchResponseFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var searchResponseFragment: SearchResponseFragment {
            get {
              return SearchResponseFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class DeleteUserAccountMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation deleteUserAccount($clientMutationId: String!) {
      deleteUserAccount(input: {clientMutationId: $clientMutationId}) {
        __typename
        clientMutationId
      }
    }
    """

  public let operationName: String = "deleteUserAccount"

  public var clientMutationId: String

  public init(clientMutationId: String) {
    self.clientMutationId = clientMutationId
  }

  public var variables: GraphQLMap? {
    return ["clientMutationId": clientMutationId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deleteUserAccount", arguments: ["input": ["clientMutationId": GraphQLVariable("clientMutationId")]], type: .object(DeleteUserAccount.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteUserAccount: DeleteUserAccount? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteUserAccount": deleteUserAccount.flatMap { (value: DeleteUserAccount) -> ResultMap in value.resultMap }])
    }

    /// If the user account does not exist you will get:
    /// ```
    /// {
    /// "errors" : [
    /// {
    /// "message" : "Not found",
    /// "extensions" : {
    /// "code" : "NOT_FOUND",
    /// "clientMutationId" : "client-mutation-id"
    /// }
    /// }
    /// ]
    /// }
    /// ```
    /// 
    /// Unexpected errors look like this:
    /// ```
    /// {
    /// "errors" : [
    /// {
    /// "message" : "Internal server error",
    /// "extensions" : {
    /// "code" : "INTERNAL_SERVER_ERROR",
    /// "clientMutationId" : "client-mutation-id"
    /// }
    /// }
    /// ]
    /// }
    /// ```
    public var deleteUserAccount: DeleteUserAccount? {
      get {
        return (resultMap["deleteUserAccount"] as? ResultMap).flatMap { DeleteUserAccount(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "deleteUserAccount")
      }
    }

    public struct DeleteUserAccount: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DeleteUserAccountPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("clientMutationId", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(clientMutationId: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "DeleteUserAccountPayload", "clientMutationId": clientMutationId])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var clientMutationId: String? {
        get {
          return resultMap["clientMutationId"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "clientMutationId")
        }
      }
    }
  }
}

public final class EpgQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query EPG($date: String) {
      viewer {
        __typename
        channels {
          __typename
          edges {
            __typename
            node {
              __typename
              ...EPGChannelFragment
            }
          }
        }
      }
    }
    """

  public let operationName: String = "EPG"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + EpgChannelFragment.fragmentDefinition)
    document.append("\n" + EpgPlayableFragment.fragmentDefinition)
    document.append("\n" + EpgChannelPlayable.fragmentDefinition)
    document.append("\n" + EpgBroadcastPlayable.fragmentDefinition)
    document.append("\n" + EpgBroadcastInfoFragment.fragmentDefinition)
    return document
  }

  public var date: String?

  public init(date: String? = nil) {
    self.date = date
  }

  public var variables: GraphQLMap? {
    return ["date": date]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("channels", type: .nonNull(.object(Channel.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(channels: Channel) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "channels": channels.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var channels: Channel {
        get {
          return Channel(unsafeResultMap: resultMap["channels"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "channels")
        }
      }

      public struct Channel: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserChannelsConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("edges", type: .list(.object(Edge.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(edges: [Edge?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "UserChannelsConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A list of edges.
        public var edges: [Edge?]? {
          get {
            return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
          }
        }

        public struct Edge: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["UserChannelsEdge"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("node", type: .object(Node.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(node: Node? = nil) {
            self.init(unsafeResultMap: ["__typename": "UserChannelsEdge", "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The item at the end of the edge.
          public var node: Node? {
            get {
              return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "node")
            }
          }

          public struct Node: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Channel"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLFragmentSpread(EpgChannelFragment.self),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var fragments: Fragments {
              get {
                return Fragments(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }

            public struct Fragments {
              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public var epgChannelFragment: EpgChannelFragment {
                get {
                  return EpgChannelFragment(unsafeResultMap: resultMap)
                }
                set {
                  resultMap += newValue.resultMap
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class AddToFavoritesMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddToFavorites($input: AddToMyListInput!) {
      addToMyList(input: $input) {
        __typename
        viewableId
        clientMutationId
      }
    }
    """

  public let operationName: String = "AddToFavorites"

  public var input: AddToMyListInput

  public init(input: AddToMyListInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addToMyList", arguments: ["input": GraphQLVariable("input")], type: .object(AddToMyList.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addToMyList: AddToMyList? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addToMyList": addToMyList.flatMap { (value: AddToMyList) -> ResultMap in value.resultMap }])
    }

    public var addToMyList: AddToMyList? {
      get {
        return (resultMap["addToMyList"] as? ResultMap).flatMap { AddToMyList(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "addToMyList")
      }
    }

    public struct AddToMyList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["AddToMyListPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("viewableId", type: .scalar(String.self)),
          GraphQLField("clientMutationId", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(viewableId: String? = nil, clientMutationId: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "AddToMyListPayload", "viewableId": viewableId, "clientMutationId": clientMutationId])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var viewableId: String? {
        get {
          return resultMap["viewableId"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "viewableId")
        }
      }

      public var clientMutationId: String? {
        get {
          return resultMap["clientMutationId"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "clientMutationId")
        }
      }
    }
  }
}

public final class RemoveFromFavoritesMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation RemoveFromFavorites($input: RemoveFromMyListInput!) {
      removeFromMyList(input: $input) {
        __typename
        viewableId
        clientMutationId
      }
    }
    """

  public let operationName: String = "RemoveFromFavorites"

  public var input: RemoveFromMyListInput

  public init(input: RemoveFromMyListInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("removeFromMyList", arguments: ["input": GraphQLVariable("input")], type: .object(RemoveFromMyList.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(removeFromMyList: RemoveFromMyList? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "removeFromMyList": removeFromMyList.flatMap { (value: RemoveFromMyList) -> ResultMap in value.resultMap }])
    }

    public var removeFromMyList: RemoveFromMyList? {
      get {
        return (resultMap["removeFromMyList"] as? ResultMap).flatMap { RemoveFromMyList(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "removeFromMyList")
      }
    }

    public struct RemoveFromMyList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["RemoveFromMyListPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("viewableId", type: .scalar(String.self)),
          GraphQLField("clientMutationId", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(viewableId: String? = nil, clientMutationId: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "RemoveFromMyListPayload", "viewableId": viewableId, "clientMutationId": clientMutationId])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var viewableId: String? {
        get {
          return resultMap["viewableId"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "viewableId")
        }
      }

      public var clientMutationId: String? {
        get {
          return resultMap["clientMutationId"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "clientMutationId")
        }
      }
    }
  }
}

public final class FavoriteChannelsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query FavoriteChannels {
      viewer {
        __typename
        channels {
          __typename
          pageInfo {
            __typename
            hasNextPage
            hasPreviousPage
            startCursor
            endCursor
          }
          edges {
            __typename
            node {
              __typename
              ...FavoritesPickerChannelFragment
            }
          }
        }
      }
    }
    """

  public let operationName: String = "FavoriteChannels"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + FavoritesPickerChannelFragment.fragmentDefinition)
    return document
  }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("channels", type: .nonNull(.object(Channel.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(channels: Channel) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "channels": channels.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var channels: Channel {
        get {
          return Channel(unsafeResultMap: resultMap["channels"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "channels")
        }
      }

      public struct Channel: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserChannelsConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
            GraphQLField("edges", type: .list(.object(Edge.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "UserChannelsConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Information to aid in pagination.
        public var pageInfo: PageInfo {
          get {
            return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
          }
        }

        /// A list of edges.
        public var edges: [Edge?]? {
          get {
            return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
          }
        }

        public struct PageInfo: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PageInfo"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("hasNextPage", type: .nonNull(.scalar(Bool.self))),
              GraphQLField("hasPreviousPage", type: .nonNull(.scalar(Bool.self))),
              GraphQLField("startCursor", type: .scalar(String.self)),
              GraphQLField("endCursor", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(hasNextPage: Bool, hasPreviousPage: Bool, startCursor: String? = nil, endCursor: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "PageInfo", "hasNextPage": hasNextPage, "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "endCursor": endCursor])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// When paginating forwards, are there more items?
          public var hasNextPage: Bool {
            get {
              return resultMap["hasNextPage"]! as! Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "hasNextPage")
            }
          }

          /// When paginating backwards, are there more items?
          public var hasPreviousPage: Bool {
            get {
              return resultMap["hasPreviousPage"]! as! Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "hasPreviousPage")
            }
          }

          /// When paginating backwards, the cursor to continue.
          public var startCursor: String? {
            get {
              return resultMap["startCursor"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "startCursor")
            }
          }

          /// When paginating forwards, the cursor to continue.
          public var endCursor: String? {
            get {
              return resultMap["endCursor"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "endCursor")
            }
          }
        }

        public struct Edge: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["UserChannelsEdge"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("node", type: .object(Node.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(node: Node? = nil) {
            self.init(unsafeResultMap: ["__typename": "UserChannelsEdge", "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The item at the end of the edge.
          public var node: Node? {
            get {
              return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "node")
            }
          }

          public struct Node: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Channel"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLFragmentSpread(FavoritesPickerChannelFragment.self),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(magineId: String, title: String? = nil, logoDefault: String? = nil, logoDark: String? = nil, logoLight: String? = nil, inMyList: Bool? = nil) {
              self.init(unsafeResultMap: ["__typename": "Channel", "magineId": magineId, "title": title, "logoDefault": logoDefault, "logoDark": logoDark, "logoLight": logoLight, "inMyList": inMyList])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var fragments: Fragments {
              get {
                return Fragments(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }

            public struct Fragments {
              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public var favoritesPickerChannelFragment: FavoritesPickerChannelFragment {
                get {
                  return FavoritesPickerChannelFragment(unsafeResultMap: resultMap)
                }
                set {
                  resultMap += newValue.resultMap
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class FavoritesPickerAddFavoriteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation FavoritesPickerAddFavorite($favorite: AddToMyListInput!) {
      addToMyList(input: $favorite) {
        __typename
        viewableId
        clientMutationId
      }
    }
    """

  public let operationName: String = "FavoritesPickerAddFavorite"

  public var favorite: AddToMyListInput

  public init(favorite: AddToMyListInput) {
    self.favorite = favorite
  }

  public var variables: GraphQLMap? {
    return ["favorite": favorite]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addToMyList", arguments: ["input": GraphQLVariable("favorite")], type: .object(AddToMyList.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addToMyList: AddToMyList? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addToMyList": addToMyList.flatMap { (value: AddToMyList) -> ResultMap in value.resultMap }])
    }

    public var addToMyList: AddToMyList? {
      get {
        return (resultMap["addToMyList"] as? ResultMap).flatMap { AddToMyList(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "addToMyList")
      }
    }

    public struct AddToMyList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["AddToMyListPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("viewableId", type: .scalar(String.self)),
          GraphQLField("clientMutationId", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(viewableId: String? = nil, clientMutationId: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "AddToMyListPayload", "viewableId": viewableId, "clientMutationId": clientMutationId])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var viewableId: String? {
        get {
          return resultMap["viewableId"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "viewableId")
        }
      }

      public var clientMutationId: String? {
        get {
          return resultMap["clientMutationId"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "clientMutationId")
        }
      }
    }
  }
}

public final class FavoritesPickerRemoveFavoriteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation FavoritesPickerRemoveFavorite($favorite: RemoveFromMyListInput!) {
      removeFromMyList(input: $favorite) {
        __typename
        viewableId
        clientMutationId
      }
    }
    """

  public let operationName: String = "FavoritesPickerRemoveFavorite"

  public var favorite: RemoveFromMyListInput

  public init(favorite: RemoveFromMyListInput) {
    self.favorite = favorite
  }

  public var variables: GraphQLMap? {
    return ["favorite": favorite]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("removeFromMyList", arguments: ["input": GraphQLVariable("favorite")], type: .object(RemoveFromMyList.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(removeFromMyList: RemoveFromMyList? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "removeFromMyList": removeFromMyList.flatMap { (value: RemoveFromMyList) -> ResultMap in value.resultMap }])
    }

    public var removeFromMyList: RemoveFromMyList? {
      get {
        return (resultMap["removeFromMyList"] as? ResultMap).flatMap { RemoveFromMyList(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "removeFromMyList")
      }
    }

    public struct RemoveFromMyList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["RemoveFromMyListPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("viewableId", type: .scalar(String.self)),
          GraphQLField("clientMutationId", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(viewableId: String? = nil, clientMutationId: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "RemoveFromMyListPayload", "viewableId": viewableId, "clientMutationId": clientMutationId])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var viewableId: String? {
        get {
          return resultMap["viewableId"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "viewableId")
        }
      }

      public var clientMutationId: String? {
        get {
          return resultMap["clientMutationId"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "clientMutationId")
        }
      }
    }
  }
}

public final class GetEntitledOffersQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getEntitledOffers {
      viewer {
        __typename
        entitlements {
          __typename
          edges {
            __typename
            node {
              __typename
              offer {
                __typename
                ...OfferFragment
              }
              ... on EntitlementRentType {
                __typename
                entitledUntil
                expiresInSeconds
              }
              ... on EntitlementPassType {
                __typename
                entitledUntil
                expiresInSeconds
              }
              ... on EntitlementThirdPartyType {
                __typename
                entitledUntil
                expiresInSeconds
              }
            }
          }
        }
        subscriptions {
          __typename
          edges {
            __typename
            node {
              __typename
              offerId
              promoCode {
                __typename
                code
                expiry
                remaining
              }
              billing {
                __typename
                price {
                  __typename
                  netPrice
                  grossPrice
                  currency
                }
              }
            }
          }
        }
      }
    }
    """

  public let operationName: String = "getEntitledOffers"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + OfferFragment.fragmentDefinition)
    return document
  }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("entitlements", type: .nonNull(.object(Entitlement.selections))),
          GraphQLField("subscriptions", type: .nonNull(.object(Subscription.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(entitlements: Entitlement, subscriptions: Subscription) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "entitlements": entitlements.resultMap, "subscriptions": subscriptions.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// List of entitlements for user. Empty if user is not authenticated, can be checked using viewer.isAuthenticated.
      public var entitlements: Entitlement {
        get {
          return Entitlement(unsafeResultMap: resultMap["entitlements"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "entitlements")
        }
      }

      /// List of subscriptions for a user. Empty if user is not authenticated, can be checked using viewer.isAuthenticated.
      public var subscriptions: Subscription {
        get {
          return Subscription(unsafeResultMap: resultMap["subscriptions"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "subscriptions")
        }
      }

      public struct Entitlement: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserEntitlementsConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("edges", type: .list(.object(Edge.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(edges: [Edge?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "UserEntitlementsConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A list of edges.
        public var edges: [Edge?]? {
          get {
            return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
          }
        }

        public struct Edge: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["UserEntitlementsEdge"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("node", type: .nonNull(.object(Node.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(node: Node) {
            self.init(unsafeResultMap: ["__typename": "UserEntitlementsEdge", "node": node.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The item at the end of the edge.
          public var node: Node {
            get {
              return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "node")
            }
          }

          public struct Node: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["EntitlementSubscribeType", "EntitlementBuyType", "EntitlementDefaultType", "EntitlementPassType", "EntitlementPurchaseType", "EntitlementRentType", "EntitlementThirdPartyType"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLTypeCase(
                  variants: ["EntitlementRentType": AsEntitlementRentType.selections, "EntitlementPassType": AsEntitlementPassType.selections, "EntitlementThirdPartyType": AsEntitlementThirdPartyType.selections],
                  default: [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("offer", type: .object(Offer.selections)),
                  ]
                )
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public static func makeEntitlementSubscribeType(offer: Offer? = nil) -> Node {
              return Node(unsafeResultMap: ["__typename": "EntitlementSubscribeType", "offer": offer.flatMap { (value: Offer) -> ResultMap in value.resultMap }])
            }

            public static func makeEntitlementBuyType(offer: Offer? = nil) -> Node {
              return Node(unsafeResultMap: ["__typename": "EntitlementBuyType", "offer": offer.flatMap { (value: Offer) -> ResultMap in value.resultMap }])
            }

            public static func makeEntitlementDefaultType(offer: Offer? = nil) -> Node {
              return Node(unsafeResultMap: ["__typename": "EntitlementDefaultType", "offer": offer.flatMap { (value: Offer) -> ResultMap in value.resultMap }])
            }

            public static func makeEntitlementPurchaseType(offer: Offer? = nil) -> Node {
              return Node(unsafeResultMap: ["__typename": "EntitlementPurchaseType", "offer": offer.flatMap { (value: Offer) -> ResultMap in value.resultMap }])
            }

            public static func makeEntitlementRentType(offer: AsEntitlementRentType.Offer? = nil, entitledUntil: Instant? = nil, expiresInSeconds: Long? = nil) -> Node {
              return Node(unsafeResultMap: ["__typename": "EntitlementRentType", "offer": offer.flatMap { (value: AsEntitlementRentType.Offer) -> ResultMap in value.resultMap }, "entitledUntil": entitledUntil, "expiresInSeconds": expiresInSeconds])
            }

            public static func makeEntitlementPassType(offer: AsEntitlementPassType.Offer? = nil, entitledUntil: Instant? = nil, expiresInSeconds: Long? = nil) -> Node {
              return Node(unsafeResultMap: ["__typename": "EntitlementPassType", "offer": offer.flatMap { (value: AsEntitlementPassType.Offer) -> ResultMap in value.resultMap }, "entitledUntil": entitledUntil, "expiresInSeconds": expiresInSeconds])
            }

            public static func makeEntitlementThirdPartyType(offer: AsEntitlementThirdPartyType.Offer? = nil, entitledUntil: Instant? = nil, expiresInSeconds: Long? = nil) -> Node {
              return Node(unsafeResultMap: ["__typename": "EntitlementThirdPartyType", "offer": offer.flatMap { (value: AsEntitlementThirdPartyType.Offer) -> ResultMap in value.resultMap }, "entitledUntil": entitledUntil, "expiresInSeconds": expiresInSeconds])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var offer: Offer? {
              get {
                return (resultMap["offer"] as? ResultMap).flatMap { Offer(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "offer")
              }
            }

            public struct Offer: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLFragmentSpread(OfferFragment.self),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
                return Offer(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
              }

              public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> Offer {
                return Offer(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
              }

              public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> Offer {
                return Offer(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
              }

              public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
                return Offer(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
              }

              public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> Offer {
                return Offer(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var fragments: Fragments {
                get {
                  return Fragments(unsafeResultMap: resultMap)
                }
                set {
                  resultMap += newValue.resultMap
                }
              }

              public struct Fragments {
                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public var offerFragment: OfferFragment {
                  get {
                    return OfferFragment(unsafeResultMap: resultMap)
                  }
                  set {
                    resultMap += newValue.resultMap
                  }
                }
              }
            }

            public var asEntitlementRentType: AsEntitlementRentType? {
              get {
                if !AsEntitlementRentType.possibleTypes.contains(__typename) { return nil }
                return AsEntitlementRentType(unsafeResultMap: resultMap)
              }
              set {
                guard let newValue = newValue else { return }
                resultMap = newValue.resultMap
              }
            }

            public struct AsEntitlementRentType: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["EntitlementRentType"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("offer", type: .object(Offer.selections)),
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("entitledUntil", type: .scalar(Instant.self)),
                  GraphQLField("expiresInSeconds", type: .scalar(Long.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(offer: Offer? = nil, entitledUntil: Instant? = nil, expiresInSeconds: Long? = nil) {
                self.init(unsafeResultMap: ["__typename": "EntitlementRentType", "offer": offer.flatMap { (value: Offer) -> ResultMap in value.resultMap }, "entitledUntil": entitledUntil, "expiresInSeconds": expiresInSeconds])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var offer: Offer? {
                get {
                  return (resultMap["offer"] as? ResultMap).flatMap { Offer(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "offer")
                }
              }

              /// The user is entitled to this until this datetime, format is in ISO-8601. If not set, indefinitely.
              public var entitledUntil: Instant? {
                get {
                  return resultMap["entitledUntil"] as? Instant
                }
                set {
                  resultMap.updateValue(newValue, forKey: "entitledUntil")
                }
              }

              /// How soon the entitlement expires in seconds. If not present, entitlement never expires.
              public var expiresInSeconds: Long? {
                get {
                  return resultMap["expiresInSeconds"] as? Long
                }
                set {
                  resultMap.updateValue(newValue, forKey: "expiresInSeconds")
                }
              }

              public struct Offer: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLFragmentSpread(OfferFragment.self),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
                  return Offer(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
                }

                public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> Offer {
                  return Offer(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
                }

                public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> Offer {
                  return Offer(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
                }

                public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
                  return Offer(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
                }

                public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> Offer {
                  return Offer(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var fragments: Fragments {
                  get {
                    return Fragments(unsafeResultMap: resultMap)
                  }
                  set {
                    resultMap += newValue.resultMap
                  }
                }

                public struct Fragments {
                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public var offerFragment: OfferFragment {
                    get {
                      return OfferFragment(unsafeResultMap: resultMap)
                    }
                    set {
                      resultMap += newValue.resultMap
                    }
                  }
                }
              }
            }

            public var asEntitlementPassType: AsEntitlementPassType? {
              get {
                if !AsEntitlementPassType.possibleTypes.contains(__typename) { return nil }
                return AsEntitlementPassType(unsafeResultMap: resultMap)
              }
              set {
                guard let newValue = newValue else { return }
                resultMap = newValue.resultMap
              }
            }

            public struct AsEntitlementPassType: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["EntitlementPassType"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("offer", type: .object(Offer.selections)),
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("entitledUntil", type: .scalar(Instant.self)),
                  GraphQLField("expiresInSeconds", type: .scalar(Long.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(offer: Offer? = nil, entitledUntil: Instant? = nil, expiresInSeconds: Long? = nil) {
                self.init(unsafeResultMap: ["__typename": "EntitlementPassType", "offer": offer.flatMap { (value: Offer) -> ResultMap in value.resultMap }, "entitledUntil": entitledUntil, "expiresInSeconds": expiresInSeconds])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var offer: Offer? {
                get {
                  return (resultMap["offer"] as? ResultMap).flatMap { Offer(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "offer")
                }
              }

              /// The user is entitled to this until this datetime, format is in ISO-8601. If not set, indefinitely.
              public var entitledUntil: Instant? {
                get {
                  return resultMap["entitledUntil"] as? Instant
                }
                set {
                  resultMap.updateValue(newValue, forKey: "entitledUntil")
                }
              }

              /// How soon the entitlement expires in seconds. If not present, entitlement never expires.
              public var expiresInSeconds: Long? {
                get {
                  return resultMap["expiresInSeconds"] as? Long
                }
                set {
                  resultMap.updateValue(newValue, forKey: "expiresInSeconds")
                }
              }

              public struct Offer: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLFragmentSpread(OfferFragment.self),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
                  return Offer(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
                }

                public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> Offer {
                  return Offer(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
                }

                public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> Offer {
                  return Offer(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
                }

                public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
                  return Offer(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
                }

                public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> Offer {
                  return Offer(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var fragments: Fragments {
                  get {
                    return Fragments(unsafeResultMap: resultMap)
                  }
                  set {
                    resultMap += newValue.resultMap
                  }
                }

                public struct Fragments {
                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public var offerFragment: OfferFragment {
                    get {
                      return OfferFragment(unsafeResultMap: resultMap)
                    }
                    set {
                      resultMap += newValue.resultMap
                    }
                  }
                }
              }
            }

            public var asEntitlementThirdPartyType: AsEntitlementThirdPartyType? {
              get {
                if !AsEntitlementThirdPartyType.possibleTypes.contains(__typename) { return nil }
                return AsEntitlementThirdPartyType(unsafeResultMap: resultMap)
              }
              set {
                guard let newValue = newValue else { return }
                resultMap = newValue.resultMap
              }
            }

            public struct AsEntitlementThirdPartyType: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["EntitlementThirdPartyType"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("offer", type: .object(Offer.selections)),
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("entitledUntil", type: .scalar(Instant.self)),
                  GraphQLField("expiresInSeconds", type: .scalar(Long.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(offer: Offer? = nil, entitledUntil: Instant? = nil, expiresInSeconds: Long? = nil) {
                self.init(unsafeResultMap: ["__typename": "EntitlementThirdPartyType", "offer": offer.flatMap { (value: Offer) -> ResultMap in value.resultMap }, "entitledUntil": entitledUntil, "expiresInSeconds": expiresInSeconds])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var offer: Offer? {
                get {
                  return (resultMap["offer"] as? ResultMap).flatMap { Offer(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "offer")
                }
              }

              /// The user is entitled to this until this datetime, format is in ISO-8601. If not set, indefinitely.
              public var entitledUntil: Instant? {
                get {
                  return resultMap["entitledUntil"] as? Instant
                }
                set {
                  resultMap.updateValue(newValue, forKey: "entitledUntil")
                }
              }

              /// How soon the entitlement expires in seconds. If not present, entitlement never expires.
              public var expiresInSeconds: Long? {
                get {
                  return resultMap["expiresInSeconds"] as? Long
                }
                set {
                  resultMap.updateValue(newValue, forKey: "expiresInSeconds")
                }
              }

              public struct Offer: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLFragmentSpread(OfferFragment.self),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
                  return Offer(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
                }

                public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> Offer {
                  return Offer(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
                }

                public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> Offer {
                  return Offer(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
                }

                public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
                  return Offer(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
                }

                public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> Offer {
                  return Offer(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var fragments: Fragments {
                  get {
                    return Fragments(unsafeResultMap: resultMap)
                  }
                  set {
                    resultMap += newValue.resultMap
                  }
                }

                public struct Fragments {
                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public var offerFragment: OfferFragment {
                    get {
                      return OfferFragment(unsafeResultMap: resultMap)
                    }
                    set {
                      resultMap += newValue.resultMap
                    }
                  }
                }
              }
            }
          }
        }
      }

      public struct Subscription: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserSubscriptionsConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("edges", type: .list(.object(Edge.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(edges: [Edge?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "UserSubscriptionsConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A list of edges.
        public var edges: [Edge?]? {
          get {
            return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
          }
        }

        public struct Edge: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["UserSubscriptionsEdge"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("node", type: .nonNull(.object(Node.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(node: Node) {
            self.init(unsafeResultMap: ["__typename": "UserSubscriptionsEdge", "node": node.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The item at the end of the edge.
          public var node: Node {
            get {
              return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "node")
            }
          }

          public struct Node: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["SubscriptionType"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("offerId", type: .nonNull(.scalar(String.self))),
                GraphQLField("promoCode", type: .object(PromoCode.selections)),
                GraphQLField("billing", type: .object(Billing.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(offerId: String, promoCode: PromoCode? = nil, billing: Billing? = nil) {
              self.init(unsafeResultMap: ["__typename": "SubscriptionType", "offerId": offerId, "promoCode": promoCode.flatMap { (value: PromoCode) -> ResultMap in value.resultMap }, "billing": billing.flatMap { (value: Billing) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var offerId: String {
              get {
                return resultMap["offerId"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "offerId")
              }
            }

            public var promoCode: PromoCode? {
              get {
                return (resultMap["promoCode"] as? ResultMap).flatMap { PromoCode(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "promoCode")
              }
            }

            public var billing: Billing? {
              get {
                return (resultMap["billing"] as? ResultMap).flatMap { Billing(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "billing")
              }
            }

            public struct PromoCode: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["PromoCode"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("code", type: .nonNull(.scalar(String.self))),
                  GraphQLField("expiry", type: .scalar(Instant.self)),
                  GraphQLField("remaining", type: .scalar(Int.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(code: String, expiry: Instant? = nil, remaining: Int? = nil) {
                self.init(unsafeResultMap: ["__typename": "PromoCode", "code": code, "expiry": expiry, "remaining": remaining])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var code: String {
                get {
                  return resultMap["code"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "code")
                }
              }

              /// The instant when this promo code will expire, if the promo code campaign has an end date, otherwise null
              public var expiry: Instant? {
                get {
                  return resultMap["expiry"] as? Instant
                }
                set {
                  resultMap.updateValue(newValue, forKey: "expiry")
                }
              }

              /// Number of remaining times this promo code can be used for this user, if the
              /// promo code campaign has an end date, otherwise null
              public var remaining: Int? {
                get {
                  return resultMap["remaining"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "remaining")
                }
              }
            }

            public struct Billing: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["Billing"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("price", type: .nonNull(.object(Price.selections))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(price: Price) {
                self.init(unsafeResultMap: ["__typename": "Billing", "price": price.resultMap])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// the price the current subscription cycle cost when it was purchased lately
              public var price: Price {
                get {
                  return Price(unsafeResultMap: resultMap["price"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "price")
                }
              }

              public struct Price: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["NextPrice"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("netPrice", type: .nonNull(.scalar(Long.self))),
                    GraphQLField("grossPrice", type: .nonNull(.scalar(Long.self))),
                    GraphQLField("currency", type: .nonNull(.scalar(String.self))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(netPrice: Long, grossPrice: Long, currency: String) {
                  self.init(unsafeResultMap: ["__typename": "NextPrice", "netPrice": netPrice, "grossPrice": grossPrice, "currency": currency])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// Net price in cents
                public var netPrice: Long {
                  get {
                    return resultMap["netPrice"]! as! Long
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "netPrice")
                  }
                }

                /// Gross price in cents
                public var grossPrice: Long {
                  get {
                    return resultMap["grossPrice"]! as! Long
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "grossPrice")
                  }
                }

                public var currency: String {
                  get {
                    return resultMap["currency"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "currency")
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class PlayerBroadcastsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query PlayerBroadcasts($viewableId: ID!, $date: String!) {
      viewer {
        __typename
        viewable(magineId: $viewableId) {
          __typename
          ... on Channel {
            __typename
            id
            title
            genres
            providedBy {
              __typename
              brand
              logo
            }
            broadcasts(day: $date) {
              __typename
              ...PlayerBroadcastFragment
            }
            playable {
              __typename
              ...PlayerChannelPlayableFragment
            }
          }
        }
      }
    }
    """

  public let operationName: String = "PlayerBroadcasts"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + PlayerBroadcastFragment.fragmentDefinition)
    document.append("\n" + PlayerChannelPlayableFragment.fragmentDefinition)
    return document
  }

  public var viewableId: GraphQLID
  public var date: String

  public init(viewableId: GraphQLID, date: String) {
    self.viewableId = viewableId
    self.date = date
  }

  public var variables: GraphQLMap? {
    return ["viewableId": viewableId, "date": date]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("viewable", arguments: ["magineId": GraphQLVariable("viewableId")], type: .object(Viewable.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(viewable: Viewable? = nil) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "viewable": viewable.flatMap { (value: Viewable) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// use this to fetch specific viewable
      public var viewable: Viewable? {
        get {
          return (resultMap["viewable"] as? ResultMap).flatMap { Viewable(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "viewable")
        }
      }

      public struct Viewable: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLTypeCase(
              variants: ["Channel": AsChannel.selections],
              default: [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              ]
            )
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public static func makeEpisode() -> Viewable {
          return Viewable(unsafeResultMap: ["__typename": "Episode"])
        }

        public static func makeTrailer() -> Viewable {
          return Viewable(unsafeResultMap: ["__typename": "Trailer"])
        }

        public static func makeShow() -> Viewable {
          return Viewable(unsafeResultMap: ["__typename": "Show"])
        }

        public static func makeMovie() -> Viewable {
          return Viewable(unsafeResultMap: ["__typename": "Movie"])
        }

        public static func makeProgram() -> Viewable {
          return Viewable(unsafeResultMap: ["__typename": "Program"])
        }

        public static func makeChannel(id: GraphQLID, title: String? = nil, genres: [String]? = nil, providedBy: AsChannel.ProvidedBy? = nil, broadcasts: [AsChannel.Broadcast]? = nil, playable: AsChannel.Playable) -> Viewable {
          return Viewable(unsafeResultMap: ["__typename": "Channel", "id": id, "title": title, "genres": genres, "providedBy": providedBy.flatMap { (value: AsChannel.ProvidedBy) -> ResultMap in value.resultMap }, "broadcasts": broadcasts.flatMap { (value: [AsChannel.Broadcast]) -> [ResultMap] in value.map { (value: AsChannel.Broadcast) -> ResultMap in value.resultMap } }, "playable": playable.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var asChannel: AsChannel? {
          get {
            if !AsChannel.possibleTypes.contains(__typename) { return nil }
            return AsChannel(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsChannel: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Channel"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("title", type: .scalar(String.self)),
              GraphQLField("genres", type: .list(.nonNull(.scalar(String.self)))),
              GraphQLField("providedBy", type: .object(ProvidedBy.selections)),
              GraphQLField("broadcasts", arguments: ["day": GraphQLVariable("date")], type: .list(.nonNull(.object(Broadcast.selections)))),
              GraphQLField("playable", type: .nonNull(.object(Playable.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, title: String? = nil, genres: [String]? = nil, providedBy: ProvidedBy? = nil, broadcasts: [Broadcast]? = nil, playable: Playable) {
            self.init(unsafeResultMap: ["__typename": "Channel", "id": id, "title": title, "genres": genres, "providedBy": providedBy.flatMap { (value: ProvidedBy) -> ResultMap in value.resultMap }, "broadcasts": broadcasts.flatMap { (value: [Broadcast]) -> [ResultMap] in value.map { (value: Broadcast) -> ResultMap in value.resultMap } }, "playable": playable.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The ID of an object
          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var title: String? {
            get {
              return resultMap["title"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "title")
            }
          }

          public var genres: [String]? {
            get {
              return resultMap["genres"] as? [String]
            }
            set {
              resultMap.updateValue(newValue, forKey: "genres")
            }
          }

          public var providedBy: ProvidedBy? {
            get {
              return (resultMap["providedBy"] as? ResultMap).flatMap { ProvidedBy(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "providedBy")
            }
          }

          /// Get broadcasts for channel by day. If no day is provided it will default to today in UTC.
          public var broadcasts: [Broadcast]? {
            get {
              return (resultMap["broadcasts"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Broadcast] in value.map { (value: ResultMap) -> Broadcast in Broadcast(unsafeResultMap: value) } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Broadcast]) -> [ResultMap] in value.map { (value: Broadcast) -> ResultMap in value.resultMap } }, forKey: "broadcasts")
            }
          }

          public var playable: Playable {
            get {
              return Playable(unsafeResultMap: resultMap["playable"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "playable")
            }
          }

          public struct ProvidedBy: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ProvidedBy"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("brand", type: .nonNull(.scalar(String.self))),
                GraphQLField("logo", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(brand: String, logo: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "ProvidedBy", "brand": brand, "logo": logo])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var brand: String {
              get {
                return resultMap["brand"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "brand")
              }
            }

            public var logo: String? {
              get {
                return resultMap["logo"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "logo")
              }
            }
          }

          public struct Broadcast: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Broadcast"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLFragmentSpread(PlayerBroadcastFragment.self),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var fragments: Fragments {
              get {
                return Fragments(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }

            public struct Fragments {
              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public var playerBroadcastFragment: PlayerBroadcastFragment {
                get {
                  return PlayerBroadcastFragment(unsafeResultMap: resultMap)
                }
                set {
                  resultMap += newValue.resultMap
                }
              }
            }
          }

          public struct Playable: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLFragmentSpread(PlayerChannelPlayableFragment.self),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public static func makeBroadcastPlayable() -> Playable {
              return Playable(unsafeResultMap: ["__typename": "BroadcastPlayable"])
            }

            public static func makeLiveEventPlayable() -> Playable {
              return Playable(unsafeResultMap: ["__typename": "LiveEventPlayable"])
            }

            public static func makeVodPlayable() -> Playable {
              return Playable(unsafeResultMap: ["__typename": "VodPlayable"])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var fragments: Fragments {
              get {
                return Fragments(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }

            public struct Fragments {
              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public var playerChannelPlayableFragment: PlayerChannelPlayableFragment? {
                get {
                  if !PlayerChannelPlayableFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
                  return PlayerChannelPlayableFragment(unsafeResultMap: resultMap)
                }
                set {
                  guard let newValue = newValue else { return }
                  resultMap += newValue.resultMap
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class PlayerViewableQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query PlayerViewable($viewableId: ID!) {
      viewer {
        __typename
        viewable(magineId: $viewableId) {
          __typename
          ...PlayerViewableFragment
        }
      }
    }
    """

  public let operationName: String = "PlayerViewable"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + PlayerViewableFragment.fragmentDefinition)
    document.append("\n" + Episode.fragmentDefinition)
    document.append("\n" + OfferFragment.fragmentDefinition)
    return document
  }

  public var viewableId: GraphQLID

  public init(viewableId: GraphQLID) {
    self.viewableId = viewableId
  }

  public var variables: GraphQLMap? {
    return ["viewableId": viewableId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("viewable", arguments: ["magineId": GraphQLVariable("viewableId")], type: .object(Viewable.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(viewable: Viewable? = nil) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "viewable": viewable.flatMap { (value: Viewable) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// use this to fetch specific viewable
      public var viewable: Viewable? {
        get {
          return (resultMap["viewable"] as? ResultMap).flatMap { Viewable(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "viewable")
        }
      }

      public struct Viewable: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(PlayerViewableFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public static func makeChannel(title: String? = nil, sixteenNineImage: String? = nil) -> Viewable {
          return Viewable(unsafeResultMap: ["__typename": "Channel", "title": title, "sixteenNineImage": sixteenNineImage])
        }

        public static func makeTrailer(title: String? = nil, sixteenNineImage: String? = nil) -> Viewable {
          return Viewable(unsafeResultMap: ["__typename": "Trailer", "title": title, "sixteenNineImage": sixteenNineImage])
        }

        public static func makeShow(title: String? = nil, sixteenNineImage: String? = nil) -> Viewable {
          return Viewable(unsafeResultMap: ["__typename": "Show", "title": title, "sixteenNineImage": sixteenNineImage])
        }

        public static func makeMovie(title: String? = nil, sixteenNineImage: String? = nil) -> Viewable {
          return Viewable(unsafeResultMap: ["__typename": "Movie", "title": title, "sixteenNineImage": sixteenNineImage])
        }

        public static func makeProgram(title: String? = nil, sixteenNineImage: String? = nil) -> Viewable {
          return Viewable(unsafeResultMap: ["__typename": "Program", "title": title, "sixteenNineImage": sixteenNineImage])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var playerViewableFragment: PlayerViewableFragment {
            get {
              return PlayerViewableFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class PlayerUserChannelsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query PlayerUserChannels {
      viewer {
        __typename
        channels {
          __typename
          edges {
            __typename
            node {
              __typename
              ...PlayerChannelFragment
            }
          }
        }
      }
    }
    """

  public let operationName: String = "PlayerUserChannels"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + PlayerChannelFragment.fragmentDefinition)
    document.append("\n" + PlayerChannelPlayableFragment.fragmentDefinition)
    return document
  }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("channels", type: .nonNull(.object(Channel.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(channels: Channel) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "channels": channels.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var channels: Channel {
        get {
          return Channel(unsafeResultMap: resultMap["channels"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "channels")
        }
      }

      public struct Channel: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserChannelsConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("edges", type: .list(.object(Edge.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(edges: [Edge?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "UserChannelsConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A list of edges.
        public var edges: [Edge?]? {
          get {
            return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
          }
        }

        public struct Edge: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["UserChannelsEdge"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("node", type: .object(Node.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(node: Node? = nil) {
            self.init(unsafeResultMap: ["__typename": "UserChannelsEdge", "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The item at the end of the edge.
          public var node: Node? {
            get {
              return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "node")
            }
          }

          public struct Node: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Channel"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLFragmentSpread(PlayerChannelFragment.self),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var fragments: Fragments {
              get {
                return Fragments(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }

            public struct Fragments {
              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public var playerChannelFragment: PlayerChannelFragment {
                get {
                  return PlayerChannelFragment(unsafeResultMap: resultMap)
                }
                set {
                  resultMap += newValue.resultMap
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class ViewableViewContentQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query ViewableViewContent($magineId: ID!, $date: String) {
      viewer {
        __typename
        viewable(magineId: $magineId) {
          __typename
          magineId
          ... on Show {
            __typename
            ...ShowViewableFragment
            ...ViewableInterfaceFragment
          }
          ... on Episode {
            __typename
            ...EpisodeViewableFragment
            ...ViewableInterfaceFragment
          }
          ... on Channel {
            __typename
            ...ChannelViewableFragment
            ...ViewableInterfaceFragment
          }
          ... on Movie {
            __typename
            ...MovieViewableFragment
            ...ViewableInterfaceFragment
          }
          ... on Program {
            __typename
            ...ProgramViewableFragment
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public let operationName: String = "ViewableViewContent"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + ShowViewableFragment.fragmentDefinition)
    document.append("\n" + ProvidedByFragment.fragmentDefinition)
    document.append("\n" + ViewableInterfaceFragment.fragmentDefinition)
    document.append("\n" + ChannelFragment.fragmentDefinition)
    document.append("\n" + ViewableEntitlementFragment.fragmentDefinition)
    document.append("\n" + OfferFragment.fragmentDefinition)
    document.append("\n" + PlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastPlayableFragment.fragmentDefinition)
    document.append("\n" + VodPlayableFragment.fragmentDefinition)
    document.append("\n" + LiveEventPlayableFragment.fragmentDefinition)
    document.append("\n" + BroadcastFragment.fragmentDefinition)
    document.append("\n" + EpisodeFragment.fragmentDefinition)
    document.append("\n" + TagsToRenderFragment.fragmentDefinition)
    document.append("\n" + ShowFragment.fragmentDefinition)
    document.append("\n" + MovieFragment.fragmentDefinition)
    document.append("\n" + ProgramFragment.fragmentDefinition)
    document.append("\n" + TrailerFragment.fragmentDefinition)
    document.append("\n" + ShowEpisodeViewableFragment.fragmentDefinition)
    document.append("\n" + ViewableSixteenNineCollection.fragmentDefinition)
    document.append("\n" + CollectionViewViewableFragment.fragmentDefinition)
    document.append("\n" + ViewablePosterCollection.fragmentDefinition)
    document.append("\n" + EpisodeViewableFragment.fragmentDefinition)
    document.append("\n" + ChannelViewableFragment.fragmentDefinition)
    document.append("\n" + MovieViewableFragment.fragmentDefinition)
    document.append("\n" + ProgramViewableFragment.fragmentDefinition)
    return document
  }

  public var magineId: GraphQLID
  public var date: String?

  public init(magineId: GraphQLID, date: String? = nil) {
    self.magineId = magineId
    self.date = date
  }

  public var variables: GraphQLMap? {
    return ["magineId": magineId, "date": date]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("viewer", type: .nonNull(.object(Viewer.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer) {
      self.init(unsafeResultMap: ["__typename": "Query", "viewer": viewer.resultMap])
    }

    public var viewer: Viewer {
      get {
        return Viewer(unsafeResultMap: resultMap["viewer"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Viewer"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("viewable", arguments: ["magineId": GraphQLVariable("magineId")], type: .object(Viewable.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(viewable: Viewable? = nil) {
        self.init(unsafeResultMap: ["__typename": "Viewer", "viewable": viewable.flatMap { (value: Viewable) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// use this to fetch specific viewable
      public var viewable: Viewable? {
        get {
          return (resultMap["viewable"] as? ResultMap).flatMap { Viewable(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "viewable")
        }
      }

      public struct Viewable: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLTypeCase(
              variants: ["Show": AsShow.selections, "Episode": AsEpisode.selections, "Channel": AsChannel.selections, "Movie": AsMovie.selections, "Program": AsProgram.selections],
              default: [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
              ]
            )
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public static func makeTrailer(magineId: String) -> Viewable {
          return Viewable(unsafeResultMap: ["__typename": "Trailer", "magineId": magineId])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// use this id for urls and presentation
        public var magineId: String {
          get {
            return resultMap["magineId"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "magineId")
          }
        }

        public var asShow: AsShow? {
          get {
            if !AsShow.possibleTypes.contains(__typename) { return nil }
            return AsShow(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsShow: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Show"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLFragmentSpread(ShowViewableFragment.self),
              GraphQLFragmentSpread(ViewableInterfaceFragment.self),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// use this id for urls and presentation
          public var magineId: String {
            get {
              return resultMap["magineId"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "magineId")
            }
          }

          public var fragments: Fragments {
            get {
              return Fragments(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }

          public struct Fragments {
            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public var showViewableFragment: ShowViewableFragment {
              get {
                return ShowViewableFragment(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }

            public var viewableInterfaceFragment: ViewableInterfaceFragment {
              get {
                return ViewableInterfaceFragment(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }
          }
        }

        public var asEpisode: AsEpisode? {
          get {
            if !AsEpisode.possibleTypes.contains(__typename) { return nil }
            return AsEpisode(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsEpisode: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Episode"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLFragmentSpread(EpisodeViewableFragment.self),
              GraphQLFragmentSpread(ViewableInterfaceFragment.self),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// use this id for urls and presentation
          public var magineId: String {
            get {
              return resultMap["magineId"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "magineId")
            }
          }

          public var fragments: Fragments {
            get {
              return Fragments(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }

          public struct Fragments {
            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public var episodeViewableFragment: EpisodeViewableFragment {
              get {
                return EpisodeViewableFragment(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }

            public var viewableInterfaceFragment: ViewableInterfaceFragment {
              get {
                return ViewableInterfaceFragment(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }
          }
        }

        public var asChannel: AsChannel? {
          get {
            if !AsChannel.possibleTypes.contains(__typename) { return nil }
            return AsChannel(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsChannel: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Channel"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLFragmentSpread(ChannelViewableFragment.self),
              GraphQLFragmentSpread(ViewableInterfaceFragment.self),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// use this id for urls and presentation
          public var magineId: String {
            get {
              return resultMap["magineId"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "magineId")
            }
          }

          public var fragments: Fragments {
            get {
              return Fragments(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }

          public struct Fragments {
            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public var channelViewableFragment: ChannelViewableFragment {
              get {
                return ChannelViewableFragment(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }

            public var viewableInterfaceFragment: ViewableInterfaceFragment {
              get {
                return ViewableInterfaceFragment(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }
          }
        }

        public var asMovie: AsMovie? {
          get {
            if !AsMovie.possibleTypes.contains(__typename) { return nil }
            return AsMovie(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsMovie: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Movie"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLFragmentSpread(MovieViewableFragment.self),
              GraphQLFragmentSpread(ViewableInterfaceFragment.self),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// use this id for urls and presentation
          public var magineId: String {
            get {
              return resultMap["magineId"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "magineId")
            }
          }

          public var fragments: Fragments {
            get {
              return Fragments(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }

          public struct Fragments {
            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public var movieViewableFragment: MovieViewableFragment {
              get {
                return MovieViewableFragment(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }

            public var viewableInterfaceFragment: ViewableInterfaceFragment {
              get {
                return ViewableInterfaceFragment(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }
          }
        }

        public var asProgram: AsProgram? {
          get {
            if !AsProgram.possibleTypes.contains(__typename) { return nil }
            return AsProgram(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsProgram: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Program"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLFragmentSpread(ProgramViewableFragment.self),
              GraphQLFragmentSpread(ViewableInterfaceFragment.self),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// use this id for urls and presentation
          public var magineId: String {
            get {
              return resultMap["magineId"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "magineId")
            }
          }

          public var fragments: Fragments {
            get {
              return Fragments(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }

          public struct Fragments {
            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public var programViewableFragment: ProgramViewableFragment {
              get {
                return ProgramViewableFragment(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }

            public var viewableInterfaceFragment: ViewableInterfaceFragment {
              get {
                return ViewableInterfaceFragment(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }
          }
        }
      }
    }
  }
}

public struct AssetFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment AssetFragment on ViewableInterface {
      __typename
      magineId
      title
      description
      posterImage: image(type: "poster")
      coverImage: image(type: "sixteen-nine")
      ...AssetEpisodeFragment
      ...AssetShowFragment
      ...AssetMovieFragment
      ...AssetProgramFragment
    }
    """

  public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", alias: "posterImage", arguments: ["type": "poster"], type: .scalar(String.self)),
      GraphQLField("image", alias: "coverImage", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
      GraphQLFragmentSpread(AssetEpisodeFragment.self),
      GraphQLFragmentSpread(AssetShowFragment.self),
      GraphQLFragmentSpread(AssetMovieFragment.self),
      GraphQLFragmentSpread(AssetProgramFragment.self),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public static func makeChannel(magineId: String, title: String? = nil, description: String? = nil, posterImage: String? = nil, coverImage: String? = nil) -> AssetFragment {
    return AssetFragment(unsafeResultMap: ["__typename": "Channel", "magineId": magineId, "title": title, "description": description, "posterImage": posterImage, "coverImage": coverImage])
  }

  public static func makeTrailer(magineId: String, title: String? = nil, description: String? = nil, posterImage: String? = nil, coverImage: String? = nil) -> AssetFragment {
    return AssetFragment(unsafeResultMap: ["__typename": "Trailer", "magineId": magineId, "title": title, "description": description, "posterImage": posterImage, "coverImage": coverImage])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var posterImage: String? {
    get {
      return resultMap["posterImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "posterImage")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var coverImage: String? {
    get {
      return resultMap["coverImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "coverImage")
    }
  }

  public var fragments: Fragments {
    get {
      return Fragments(unsafeResultMap: resultMap)
    }
    set {
      resultMap += newValue.resultMap
    }
  }

  public struct Fragments {
    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var assetEpisodeFragment: AssetEpisodeFragment? {
      get {
        if !AssetEpisodeFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return AssetEpisodeFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }

    public var assetShowFragment: AssetShowFragment? {
      get {
        if !AssetShowFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return AssetShowFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }

    public var assetMovieFragment: AssetMovieFragment? {
      get {
        if !AssetMovieFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return AssetMovieFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }

    public var assetProgramFragment: AssetProgramFragment? {
      get {
        if !AssetProgramFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return AssetProgramFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }
  }
}

public struct AssetEpisodeFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment AssetEpisodeFragment on Episode {
      __typename
      magineId
      title
      descriptionText: description
      genres
      posterImage: image(type: "poster")
      coverImage: image(type: "sixteen-nine")
      seasonNumber
      episodeNumber
      playables {
        __typename
        episodePlayableId: id
        kind
        ...AssetPlayableFragment
      }
      show {
        __typename
        posterImage: image(type: "poster")
      }
    }
    """

  public static let possibleTypes: [String] = ["Episode"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", alias: "descriptionText", type: .scalar(String.self)),
      GraphQLField("genres", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("image", alias: "posterImage", arguments: ["type": "poster"], type: .scalar(String.self)),
      GraphQLField("image", alias: "coverImage", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
      GraphQLField("seasonNumber", type: .scalar(Int.self)),
      GraphQLField("episodeNumber", type: .scalar(Int.self)),
      GraphQLField("playables", type: .nonNull(.list(.nonNull(.object(Playable.selections))))),
      GraphQLField("show", type: .object(Show.selections)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, descriptionText: String? = nil, genres: [String]? = nil, posterImage: String? = nil, coverImage: String? = nil, seasonNumber: Int? = nil, episodeNumber: Int? = nil, playables: [Playable], show: Show? = nil) {
    self.init(unsafeResultMap: ["__typename": "Episode", "magineId": magineId, "title": title, "descriptionText": descriptionText, "genres": genres, "posterImage": posterImage, "coverImage": coverImage, "seasonNumber": seasonNumber, "episodeNumber": episodeNumber, "playables": playables.map { (value: Playable) -> ResultMap in value.resultMap }, "show": show.flatMap { (value: Show) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var descriptionText: String? {
    get {
      return resultMap["descriptionText"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "descriptionText")
    }
  }

  public var genres: [String]? {
    get {
      return resultMap["genres"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "genres")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var posterImage: String? {
    get {
      return resultMap["posterImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "posterImage")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var coverImage: String? {
    get {
      return resultMap["coverImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "coverImage")
    }
  }

  public var seasonNumber: Int? {
    get {
      return resultMap["seasonNumber"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "seasonNumber")
    }
  }

  public var episodeNumber: Int? {
    get {
      return resultMap["episodeNumber"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "episodeNumber")
    }
  }

  public var playables: [Playable] {
    get {
      return (resultMap["playables"] as! [ResultMap]).map { (value: ResultMap) -> Playable in Playable(unsafeResultMap: value) }
    }
    set {
      resultMap.updateValue(newValue.map { (value: Playable) -> ResultMap in value.resultMap }, forKey: "playables")
    }
  }

  public var show: Show? {
    get {
      return (resultMap["show"] as? ResultMap).flatMap { Show(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "show")
    }
  }

  public struct Playable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", alias: "episodePlayableId", type: .nonNull(.scalar(String.self))),
        GraphQLField("kind", type: .nonNull(.scalar(PlayableKind.self))),
        GraphQLFragmentSpread(AssetPlayableFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeBroadcastPlayable(episodePlayableId: String, kind: PlayableKind) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "BroadcastPlayable", "episodePlayableId": episodePlayableId, "kind": kind])
    }

    public static func makeChannelPlayable(episodePlayableId: String, kind: PlayableKind) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "ChannelPlayable", "episodePlayableId": episodePlayableId, "kind": kind])
    }

    public static func makeLiveEventPlayable(episodePlayableId: String, kind: PlayableKind) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "LiveEventPlayable", "episodePlayableId": episodePlayableId, "kind": kind])
    }

    public static func makeVodPlayable(episodePlayableId: String, kind: PlayableKind, vodPlayableId: String) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "VodPlayable", "episodePlayableId": episodePlayableId, "kind": kind, "vodPlayableId": vodPlayableId])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var episodePlayableId: String {
      get {
        return resultMap["episodePlayableId"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "episodePlayableId")
      }
    }

    public var kind: PlayableKind {
      get {
        return resultMap["kind"]! as! PlayableKind
      }
      set {
        resultMap.updateValue(newValue, forKey: "kind")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var assetPlayableFragment: AssetPlayableFragment {
        get {
          return AssetPlayableFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Show: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Show"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("image", alias: "posterImage", arguments: ["type": "poster"], type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(posterImage: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Show", "posterImage": posterImage])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var posterImage: String? {
      get {
        return resultMap["posterImage"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "posterImage")
      }
    }
  }
}

public struct AssetShowFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment AssetShowFragment on Show {
      __typename
      magineId
      title
      descriptionText: description
      genres
      showImage: image
      seasons {
        __typename
        seasonNumber
        episodes {
          __typename
          episodeNumber
          title
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["Show"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", alias: "descriptionText", type: .scalar(String.self)),
      GraphQLField("genres", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("image", alias: "showImage", type: .scalar(String.self)),
      GraphQLField("seasons", type: .list(.nonNull(.object(Season.selections)))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, descriptionText: String? = nil, genres: [String]? = nil, showImage: String? = nil, seasons: [Season]? = nil) {
    self.init(unsafeResultMap: ["__typename": "Show", "magineId": magineId, "title": title, "descriptionText": descriptionText, "genres": genres, "showImage": showImage, "seasons": seasons.flatMap { (value: [Season]) -> [ResultMap] in value.map { (value: Season) -> ResultMap in value.resultMap } }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var descriptionText: String? {
    get {
      return resultMap["descriptionText"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "descriptionText")
    }
  }

  public var genres: [String]? {
    get {
      return resultMap["genres"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "genres")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var showImage: String? {
    get {
      return resultMap["showImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "showImage")
    }
  }

  public var seasons: [Season]? {
    get {
      return (resultMap["seasons"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Season] in value.map { (value: ResultMap) -> Season in Season(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Season]) -> [ResultMap] in value.map { (value: Season) -> ResultMap in value.resultMap } }, forKey: "seasons")
    }
  }

  public struct Season: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Season"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("seasonNumber", type: .scalar(Int.self)),
        GraphQLField("episodes", type: .list(.nonNull(.object(Episode.selections)))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(seasonNumber: Int? = nil, episodes: [Episode]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Season", "seasonNumber": seasonNumber, "episodes": episodes.flatMap { (value: [Episode]) -> [ResultMap] in value.map { (value: Episode) -> ResultMap in value.resultMap } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var seasonNumber: Int? {
      get {
        return resultMap["seasonNumber"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "seasonNumber")
      }
    }

    public var episodes: [Episode]? {
      get {
        return (resultMap["episodes"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Episode] in value.map { (value: ResultMap) -> Episode in Episode(unsafeResultMap: value) } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Episode]) -> [ResultMap] in value.map { (value: Episode) -> ResultMap in value.resultMap } }, forKey: "episodes")
      }
    }

    public struct Episode: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Episode"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("episodeNumber", type: .scalar(Int.self)),
          GraphQLField("title", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(episodeNumber: Int? = nil, title: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Episode", "episodeNumber": episodeNumber, "title": title])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var episodeNumber: Int? {
        get {
          return resultMap["episodeNumber"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "episodeNumber")
        }
      }

      public var title: String? {
        get {
          return resultMap["title"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }
    }
  }
}

public struct AssetMovieFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment AssetMovieFragment on Movie {
      __typename
      magineId
      title
      descriptionText: description
      genres
      durationHuman
      productionYear
      posterImage: image(type: "poster")
      coverImage: image(type: "sixteen-nine")
      playables {
        __typename
        moviePlayableId: id
        kind
        ...AssetPlayableFragment
      }
    }
    """

  public static let possibleTypes: [String] = ["Movie"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", alias: "descriptionText", type: .scalar(String.self)),
      GraphQLField("genres", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("durationHuman", type: .scalar(String.self)),
      GraphQLField("productionYear", type: .scalar(String.self)),
      GraphQLField("image", alias: "posterImage", arguments: ["type": "poster"], type: .scalar(String.self)),
      GraphQLField("image", alias: "coverImage", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
      GraphQLField("playables", type: .nonNull(.list(.nonNull(.object(Playable.selections))))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, descriptionText: String? = nil, genres: [String]? = nil, durationHuman: String? = nil, productionYear: String? = nil, posterImage: String? = nil, coverImage: String? = nil, playables: [Playable]) {
    self.init(unsafeResultMap: ["__typename": "Movie", "magineId": magineId, "title": title, "descriptionText": descriptionText, "genres": genres, "durationHuman": durationHuman, "productionYear": productionYear, "posterImage": posterImage, "coverImage": coverImage, "playables": playables.map { (value: Playable) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var descriptionText: String? {
    get {
      return resultMap["descriptionText"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "descriptionText")
    }
  }

  public var genres: [String]? {
    get {
      return resultMap["genres"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "genres")
    }
  }

  public var durationHuman: String? {
    get {
      return resultMap["durationHuman"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "durationHuman")
    }
  }

  public var productionYear: String? {
    get {
      return resultMap["productionYear"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "productionYear")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var posterImage: String? {
    get {
      return resultMap["posterImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "posterImage")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var coverImage: String? {
    get {
      return resultMap["coverImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "coverImage")
    }
  }

  public var playables: [Playable] {
    get {
      return (resultMap["playables"] as! [ResultMap]).map { (value: ResultMap) -> Playable in Playable(unsafeResultMap: value) }
    }
    set {
      resultMap.updateValue(newValue.map { (value: Playable) -> ResultMap in value.resultMap }, forKey: "playables")
    }
  }

  public struct Playable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", alias: "moviePlayableId", type: .nonNull(.scalar(String.self))),
        GraphQLField("kind", type: .nonNull(.scalar(PlayableKind.self))),
        GraphQLFragmentSpread(AssetPlayableFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeBroadcastPlayable(moviePlayableId: String, kind: PlayableKind) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "BroadcastPlayable", "moviePlayableId": moviePlayableId, "kind": kind])
    }

    public static func makeChannelPlayable(moviePlayableId: String, kind: PlayableKind) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "ChannelPlayable", "moviePlayableId": moviePlayableId, "kind": kind])
    }

    public static func makeLiveEventPlayable(moviePlayableId: String, kind: PlayableKind) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "LiveEventPlayable", "moviePlayableId": moviePlayableId, "kind": kind])
    }

    public static func makeVodPlayable(moviePlayableId: String, kind: PlayableKind, vodPlayableId: String) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "VodPlayable", "moviePlayableId": moviePlayableId, "kind": kind, "vodPlayableId": vodPlayableId])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var moviePlayableId: String {
      get {
        return resultMap["moviePlayableId"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "moviePlayableId")
      }
    }

    public var kind: PlayableKind {
      get {
        return resultMap["kind"]! as! PlayableKind
      }
      set {
        resultMap.updateValue(newValue, forKey: "kind")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var assetPlayableFragment: AssetPlayableFragment {
        get {
          return AssetPlayableFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct AssetProgramFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment AssetProgramFragment on Program {
      __typename
      magineId
      title
      descriptionText: description
      genres
      coverImage: image(type: "sixteen-nine")
      posterImage: image(type: "poster")
      playables {
        __typename
        programPlayableId: id
        kind
        ...AssetPlayableFragment
      }
    }
    """

  public static let possibleTypes: [String] = ["Program"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", alias: "descriptionText", type: .scalar(String.self)),
      GraphQLField("genres", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("image", alias: "coverImage", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
      GraphQLField("image", alias: "posterImage", arguments: ["type": "poster"], type: .scalar(String.self)),
      GraphQLField("playables", type: .nonNull(.list(.nonNull(.object(Playable.selections))))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, descriptionText: String? = nil, genres: [String]? = nil, coverImage: String? = nil, posterImage: String? = nil, playables: [Playable]) {
    self.init(unsafeResultMap: ["__typename": "Program", "magineId": magineId, "title": title, "descriptionText": descriptionText, "genres": genres, "coverImage": coverImage, "posterImage": posterImage, "playables": playables.map { (value: Playable) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var descriptionText: String? {
    get {
      return resultMap["descriptionText"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "descriptionText")
    }
  }

  public var genres: [String]? {
    get {
      return resultMap["genres"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "genres")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var coverImage: String? {
    get {
      return resultMap["coverImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "coverImage")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var posterImage: String? {
    get {
      return resultMap["posterImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "posterImage")
    }
  }

  public var playables: [Playable] {
    get {
      return (resultMap["playables"] as! [ResultMap]).map { (value: ResultMap) -> Playable in Playable(unsafeResultMap: value) }
    }
    set {
      resultMap.updateValue(newValue.map { (value: Playable) -> ResultMap in value.resultMap }, forKey: "playables")
    }
  }

  public struct Playable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", alias: "programPlayableId", type: .nonNull(.scalar(String.self))),
        GraphQLField("kind", type: .nonNull(.scalar(PlayableKind.self))),
        GraphQLFragmentSpread(AssetPlayableFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeBroadcastPlayable(programPlayableId: String, kind: PlayableKind) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "BroadcastPlayable", "programPlayableId": programPlayableId, "kind": kind])
    }

    public static func makeChannelPlayable(programPlayableId: String, kind: PlayableKind) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "ChannelPlayable", "programPlayableId": programPlayableId, "kind": kind])
    }

    public static func makeLiveEventPlayable(programPlayableId: String, kind: PlayableKind) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "LiveEventPlayable", "programPlayableId": programPlayableId, "kind": kind])
    }

    public static func makeVodPlayable(programPlayableId: String, kind: PlayableKind, vodPlayableId: String) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "VodPlayable", "programPlayableId": programPlayableId, "kind": kind, "vodPlayableId": vodPlayableId])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var programPlayableId: String {
      get {
        return resultMap["programPlayableId"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "programPlayableId")
      }
    }

    public var kind: PlayableKind {
      get {
        return resultMap["kind"]! as! PlayableKind
      }
      set {
        resultMap.updateValue(newValue, forKey: "kind")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var assetPlayableFragment: AssetPlayableFragment {
        get {
          return AssetPlayableFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct AssetPlayableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment AssetPlayableFragment on Playable {
      __typename
      ...AssetVODPlayableFragment
    }
    """

  public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLFragmentSpread(AssetVodPlayableFragment.self),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public static func makeBroadcastPlayable() -> AssetPlayableFragment {
    return AssetPlayableFragment(unsafeResultMap: ["__typename": "BroadcastPlayable"])
  }

  public static func makeChannelPlayable() -> AssetPlayableFragment {
    return AssetPlayableFragment(unsafeResultMap: ["__typename": "ChannelPlayable"])
  }

  public static func makeLiveEventPlayable() -> AssetPlayableFragment {
    return AssetPlayableFragment(unsafeResultMap: ["__typename": "LiveEventPlayable"])
  }

  public static func makeVodPlayable(vodPlayableId: String, kind: PlayableKind) -> AssetPlayableFragment {
    return AssetPlayableFragment(unsafeResultMap: ["__typename": "VodPlayable", "vodPlayableId": vodPlayableId, "kind": kind])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var fragments: Fragments {
    get {
      return Fragments(unsafeResultMap: resultMap)
    }
    set {
      resultMap += newValue.resultMap
    }
  }

  public struct Fragments {
    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var assetVodPlayableFragment: AssetVodPlayableFragment? {
      get {
        if !AssetVodPlayableFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return AssetVodPlayableFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }
  }
}

public struct AssetVodPlayableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment AssetVODPlayableFragment on VodPlayable {
      __typename
      vodPlayableId: id
      kind
    }
    """

  public static let possibleTypes: [String] = ["VodPlayable"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", alias: "vodPlayableId", type: .nonNull(.scalar(String.self))),
      GraphQLField("kind", type: .nonNull(.scalar(PlayableKind.self))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(vodPlayableId: String, kind: PlayableKind) {
    self.init(unsafeResultMap: ["__typename": "VodPlayable", "vodPlayableId": vodPlayableId, "kind": kind])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var vodPlayableId: String {
    get {
      return resultMap["vodPlayableId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "vodPlayableId")
    }
  }

  public var kind: PlayableKind {
    get {
      return resultMap["kind"]! as! PlayableKind
    }
    set {
      resultMap.updateValue(newValue, forKey: "kind")
    }
  }
}

public struct BookmarksFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment BookmarksFragment on BookmarksCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first, after: $after) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["BookmarksCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first"), "after": GraphQLVariable("after")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "BookmarksCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct ContinueWatchingFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ContinueWatchingFragment on ContinueWatchingCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first, after: $after) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["ContinueWatchingCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first"), "after": GraphQLVariable("after")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "ContinueWatchingCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct EntitledContentFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment EntitledContentFragment on EntitledContentCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first, after: $after) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["EntitledContentCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first"), "after": GraphQLVariable("after")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "EntitledContentCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct FavouriteChannelsFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment FavouriteChannelsFragment on FavouriteChannelsCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first, after: $after) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["FavouriteChannelsCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first"), "after": GraphQLVariable("after")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "FavouriteChannelsCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct FeaturedCarouselFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment FeaturedCarouselFragment on FeaturedCarouselCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first, after: $after) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["FeaturedCarouselCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first"), "after": GraphQLVariable("after")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "FeaturedCarouselCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct FeaturedFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment FeaturedFragment on FeaturedCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first, after: $after) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["FeaturedCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first"), "after": GraphQLVariable("after")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "FeaturedCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct LiveChannelsFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment LiveChannelsFragment on LiveChannelsCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first, after: $after) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["LiveChannelsCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first"), "after": GraphQLVariable("after")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "LiveChannelsCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct PosterFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment PosterFragment on PosterCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first, after: $after) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["PosterCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first"), "after": GraphQLVariable("after")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "PosterCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct SixteenNineFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment SixteenNineFragment on SixteenNineCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first, after: $after) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["SixteenNineCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first"), "after": GraphQLVariable("after")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "SixteenNineCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct BookmarksCollectionInfoFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment BookmarksCollectionInfoFragment on BookmarksCollection {
      __typename
      title
    }
    """

  public static let possibleTypes: [String] = ["BookmarksCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(title: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "BookmarksCollection", "title": title])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }
}

public struct ContinueWatchingCollectionInfoFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ContinueWatchingCollectionInfoFragment on ContinueWatchingCollection {
      __typename
      title
    }
    """

  public static let possibleTypes: [String] = ["ContinueWatchingCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(title: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "ContinueWatchingCollection", "title": title])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }
}

public struct EntitledContentCollectionInfoFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment EntitledContentCollectionInfoFragment on EntitledContentCollection {
      __typename
      title
    }
    """

  public static let possibleTypes: [String] = ["EntitledContentCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(title: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "EntitledContentCollection", "title": title])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }
}

public struct FavouriteChannelsCollectionInfoFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment FavouriteChannelsCollectionInfoFragment on FavouriteChannelsCollection {
      __typename
      title
    }
    """

  public static let possibleTypes: [String] = ["FavouriteChannelsCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(title: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "FavouriteChannelsCollection", "title": title])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }
}

public struct FeaturedCarouselCollectionInfoFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment FeaturedCarouselCollectionInfoFragment on FeaturedCarouselCollection {
      __typename
      title
    }
    """

  public static let possibleTypes: [String] = ["FeaturedCarouselCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(title: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "FeaturedCarouselCollection", "title": title])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }
}

public struct FeaturedCollectionInfoFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment FeaturedCollectionInfoFragment on FeaturedCollection {
      __typename
      title
    }
    """

  public static let possibleTypes: [String] = ["FeaturedCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(title: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "FeaturedCollection", "title": title])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }
}

public struct LiveChannelsCollectionInfoFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment LiveChannelsCollectionInfoFragment on LiveChannelsCollection {
      __typename
      title
    }
    """

  public static let possibleTypes: [String] = ["LiveChannelsCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(title: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "LiveChannelsCollection", "title": title])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }
}

public struct PosterCollectionInfoFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment PosterCollectionInfoFragment on PosterCollection {
      __typename
      title
    }
    """

  public static let possibleTypes: [String] = ["PosterCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(title: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "PosterCollection", "title": title])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }
}

public struct SixteenNineCollectionInfoFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment SixteenNineCollectionInfoFragment on SixteenNineCollection {
      __typename
      title
    }
    """

  public static let possibleTypes: [String] = ["SixteenNineCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(title: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "SixteenNineCollection", "title": title])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }
}

public struct LinkCollectionInfoFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment LinkCollectionInfoFragment on LinkCollection {
      __typename
      title
    }
    """

  public static let possibleTypes: [String] = ["LinkCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(title: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "LinkCollection", "title": title])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }
}

public struct BookmarksCollectionFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment BookmarksCollectionFragment on BookmarksCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["BookmarksCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "BookmarksCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct ContinueWatchingCollectionFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ContinueWatchingCollectionFragment on ContinueWatchingCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["ContinueWatchingCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "ContinueWatchingCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct EntitledContentCollectionFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment EntitledContentCollectionFragment on EntitledContentCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["EntitledContentCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "EntitledContentCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct FavouriteChannelsCollectionFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment FavouriteChannelsCollectionFragment on FavouriteChannelsCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["FavouriteChannelsCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "FavouriteChannelsCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct FeaturedCarouselCollectionFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment FeaturedCarouselCollectionFragment on FeaturedCarouselCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["FeaturedCarouselCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "FeaturedCarouselCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct FeaturedCollectionFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment FeaturedCollectionFragment on FeaturedCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["FeaturedCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "FeaturedCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct LiveChannelsCollectionFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment LiveChannelsCollectionFragment on LiveChannelsCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["LiveChannelsCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "LiveChannelsCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct PosterCollectionFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment PosterCollectionFragment on PosterCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["PosterCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "PosterCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct SixteenNineCollectionFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment SixteenNineCollectionFragment on SixteenNineCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      viewables(first: $first) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            ...ViewableInterfaceFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["SixteenNineCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("viewables", arguments: ["first": GraphQLVariable("first")], type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "SixteenNineCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ViewableInterfaceFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var viewableInterfaceFragment: ViewableInterfaceFragment {
            get {
              return ViewableInterfaceFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct LinkCollectionFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment LinkCollectionFragment on LinkCollection {
      __typename
      magineId
      title
      description
      image
      collectionUI
      collectionLinks: links(fetchMax: true) {
        __typename
        pageInfo {
          __typename
          ...PageInfoFragment
        }
        edges {
          __typename
          node {
            __typename
            magineId
            title
            description
            defaultImage: image
            sixteenNineImage: image(type: "sixteen-nine")
            posterImage: image(type: "poster")
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["LinkCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("collectionUI", type: .scalar(String.self)),
      GraphQLField("links", alias: "collectionLinks", arguments: ["fetchMax": true], type: .nonNull(.object(CollectionLink.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, collectionUi: String? = nil, collectionLinks: CollectionLink) {
    self.init(unsafeResultMap: ["__typename": "LinkCollection", "magineId": magineId, "title": title, "description": description, "image": image, "collectionUI": collectionUi, "collectionLinks": collectionLinks.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  public var collectionUi: String? {
    get {
      return resultMap["collectionUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "collectionUI")
    }
  }

  public var collectionLinks: CollectionLink {
    get {
      return CollectionLink(unsafeResultMap: resultMap["collectionLinks"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "collectionLinks")
    }
  }

  public struct CollectionLink: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["LinkConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "LinkConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Information to aid in pagination.
    public var pageInfo: PageInfo {
      get {
        return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct PageInfo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PageInfo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PageInfoFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var pageInfoFragment: PageInfoFragment {
          get {
            return PageInfoFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["LinkEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "LinkEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CollectionLink", "ViewLink"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("image", alias: "defaultImage", type: .scalar(String.self)),
            GraphQLField("image", alias: "sixteenNineImage", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
            GraphQLField("image", alias: "posterImage", arguments: ["type": "poster"], type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public static func makeCollectionLink(magineId: String, title: String? = nil, description: String? = nil, defaultImage: String? = nil, sixteenNineImage: String? = nil, posterImage: String? = nil) -> Node {
          return Node(unsafeResultMap: ["__typename": "CollectionLink", "magineId": magineId, "title": title, "description": description, "defaultImage": defaultImage, "sixteenNineImage": sixteenNineImage, "posterImage": posterImage])
        }

        public static func makeViewLink(magineId: String, title: String? = nil, description: String? = nil, defaultImage: String? = nil, sixteenNineImage: String? = nil, posterImage: String? = nil) -> Node {
          return Node(unsafeResultMap: ["__typename": "ViewLink", "magineId": magineId, "title": title, "description": description, "defaultImage": defaultImage, "sixteenNineImage": sixteenNineImage, "posterImage": posterImage])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// use this id for urls and presentation
        public var magineId: String {
          get {
            return resultMap["magineId"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "magineId")
          }
        }

        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        /// An image URL.
        /// 
        /// If no parameters are specified an image marked as default in the metadata will
        /// be picked. If no image is marked as default the first image in the list will
        /// be returned. In the case of no images available null is returned.
        /// 
        /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
        public var defaultImage: String? {
          get {
            return resultMap["defaultImage"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "defaultImage")
          }
        }

        /// An image URL.
        /// 
        /// If no parameters are specified an image marked as default in the metadata will
        /// be picked. If no image is marked as default the first image in the list will
        /// be returned. In the case of no images available null is returned.
        /// 
        /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
        public var sixteenNineImage: String? {
          get {
            return resultMap["sixteenNineImage"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "sixteenNineImage")
          }
        }

        /// An image URL.
        /// 
        /// If no parameters are specified an image marked as default in the metadata will
        /// be picked. If no image is marked as default the first image in the list will
        /// be returned. In the case of no images available null is returned.
        /// 
        /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
        public var posterImage: String? {
          get {
            return resultMap["posterImage"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "posterImage")
          }
        }
      }
    }
  }
}

public struct PromoBlockFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment PromoBlockFragment on PromoBlock {
      __typename
      magineId
      title
      description
      image
      blockUI
      ctaTarget
      ctaValueType
      ctaValue
      ctaLabel
    }
    """

  public static let possibleTypes: [String] = ["PromoBlock"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("blockUI", type: .scalar(String.self)),
      GraphQLField("ctaTarget", type: .scalar(PromoBlockCTATarget.self)),
      GraphQLField("ctaValueType", type: .scalar(PromoBlockCTAType.self)),
      GraphQLField("ctaValue", type: .scalar(String.self)),
      GraphQLField("ctaLabel", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, blockUi: String? = nil, ctaTarget: PromoBlockCTATarget? = nil, ctaValueType: PromoBlockCTAType? = nil, ctaValue: String? = nil, ctaLabel: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "PromoBlock", "magineId": magineId, "title": title, "description": description, "image": image, "blockUI": blockUi, "ctaTarget": ctaTarget, "ctaValueType": ctaValueType, "ctaValue": ctaValue, "ctaLabel": ctaLabel])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  /// UI rendering information used by template apps
  public var blockUi: String? {
    get {
      return resultMap["blockUI"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "blockUI")
    }
  }

  /// how apps to open the object when user click
  public var ctaTarget: PromoBlockCTATarget? {
    get {
      return resultMap["ctaTarget"] as? PromoBlockCTATarget
    }
    set {
      resultMap.updateValue(newValue, forKey: "ctaTarget")
    }
  }

  /// Type of object to promote
  public var ctaValueType: PromoBlockCTAType? {
    get {
      return resultMap["ctaValueType"] as? PromoBlockCTAType
    }
    set {
      resultMap.updateValue(newValue, forKey: "ctaValueType")
    }
  }

  /// the specific object to promote, Id, or Url
  public var ctaValue: String? {
    get {
      return resultMap["ctaValue"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "ctaValue")
    }
  }

  /// label for rendering
  public var ctaLabel: String? {
    get {
      return resultMap["ctaLabel"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "ctaLabel")
    }
  }
}

public struct SearchResponseFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment SearchResponseFragment on SearchResponseConnection {
      __typename
      pageInfo {
        __typename
        ...PageInfoFragment
      }
      edges {
        __typename
        node {
          __typename
          ...ViewableInterfaceFragment
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["SearchResponseConnection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
      GraphQLField("edges", type: .list(.object(Edge.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(pageInfo: PageInfo, edges: [Edge?]? = nil) {
    self.init(unsafeResultMap: ["__typename": "SearchResponseConnection", "pageInfo": pageInfo.resultMap, "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// Information to aid in pagination.
  public var pageInfo: PageInfo {
    get {
      return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
    }
  }

  /// A list of edges.
  public var edges: [Edge?]? {
    get {
      return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
    }
  }

  public struct PageInfo: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["PageInfo"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(PageInfoFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var pageInfoFragment: PageInfoFragment {
        get {
          return PageInfoFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Edge: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["SearchResponseEdge"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("node", type: .nonNull(.object(Node.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(node: Node) {
      self.init(unsafeResultMap: ["__typename": "SearchResponseEdge", "node": node.resultMap])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The item at the end of the edge.
    public var node: Node {
      get {
        return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "node")
      }
    }

    public struct Node: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(ViewableInterfaceFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var viewableInterfaceFragment: ViewableInterfaceFragment {
          get {
            return ViewableInterfaceFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public struct PageInfoFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment PageInfoFragment on PageInfo {
      __typename
      hasPreviousPage
      startCursor
      hasNextPage
      endCursor
    }
    """

  public static let possibleTypes: [String] = ["PageInfo"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("hasPreviousPage", type: .nonNull(.scalar(Bool.self))),
      GraphQLField("startCursor", type: .scalar(String.self)),
      GraphQLField("hasNextPage", type: .nonNull(.scalar(Bool.self))),
      GraphQLField("endCursor", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(hasPreviousPage: Bool, startCursor: String? = nil, hasNextPage: Bool, endCursor: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "PageInfo", "hasPreviousPage": hasPreviousPage, "startCursor": startCursor, "hasNextPage": hasNextPage, "endCursor": endCursor])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// When paginating backwards, are there more items?
  public var hasPreviousPage: Bool {
    get {
      return resultMap["hasPreviousPage"]! as! Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "hasPreviousPage")
    }
  }

  /// When paginating backwards, the cursor to continue.
  public var startCursor: String? {
    get {
      return resultMap["startCursor"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "startCursor")
    }
  }

  /// When paginating forwards, are there more items?
  public var hasNextPage: Bool {
    get {
      return resultMap["hasNextPage"]! as! Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "hasNextPage")
    }
  }

  /// When paginating forwards, the cursor to continue.
  public var endCursor: String? {
    get {
      return resultMap["endCursor"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "endCursor")
    }
  }
}

public struct ViewableInterfaceFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ViewableInterfaceFragment on ViewableInterface {
      __typename
      magineId
      title
      description
      defaultImage: image
      sixteenNineImage: image(type: "sixteen-nine")
      posterImage: image(type: "poster")
      posterFeatured: image(type: "poster-featured")
      ...ChannelFragment
      ...EpisodeFragment
      ...ShowFragment
      ...MovieFragment
      ...ProgramFragment
      ...TrailerFragment
    }
    """

  public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", alias: "defaultImage", type: .scalar(String.self)),
      GraphQLField("image", alias: "sixteenNineImage", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
      GraphQLField("image", alias: "posterImage", arguments: ["type": "poster"], type: .scalar(String.self)),
      GraphQLField("image", alias: "posterFeatured", arguments: ["type": "poster-featured"], type: .scalar(String.self)),
      GraphQLFragmentSpread(ChannelFragment.self),
      GraphQLFragmentSpread(EpisodeFragment.self),
      GraphQLFragmentSpread(ShowFragment.self),
      GraphQLFragmentSpread(MovieFragment.self),
      GraphQLFragmentSpread(ProgramFragment.self),
      GraphQLFragmentSpread(TrailerFragment.self),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var defaultImage: String? {
    get {
      return resultMap["defaultImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "defaultImage")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var sixteenNineImage: String? {
    get {
      return resultMap["sixteenNineImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "sixteenNineImage")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var posterImage: String? {
    get {
      return resultMap["posterImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "posterImage")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var posterFeatured: String? {
    get {
      return resultMap["posterFeatured"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "posterFeatured")
    }
  }

  public var fragments: Fragments {
    get {
      return Fragments(unsafeResultMap: resultMap)
    }
    set {
      resultMap += newValue.resultMap
    }
  }

  public struct Fragments {
    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var channelFragment: ChannelFragment? {
      get {
        if !ChannelFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return ChannelFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }

    public var episodeFragment: EpisodeFragment? {
      get {
        if !EpisodeFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return EpisodeFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }

    public var showFragment: ShowFragment? {
      get {
        if !ShowFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return ShowFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }

    public var movieFragment: MovieFragment? {
      get {
        if !MovieFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return MovieFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }

    public var programFragment: ProgramFragment? {
      get {
        if !ProgramFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return ProgramFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }

    public var trailerFragment: TrailerFragment? {
      get {
        if !TrailerFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return TrailerFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }
  }
}

public struct ChannelFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ChannelFragment on Channel {
      __typename
      magineId
      genres
      logoDefault: image
      logoDark: image(type: "logo-dark")
      logoLight: image(type: "logo-light")
      entitlement {
        __typename
        ...ViewableEntitlementFragment
      }
      playable {
        __typename
        ...PlayableFragment
      }
      broadcasts {
        __typename
        ...BroadcastFragment
      }
    }
    """

  public static let possibleTypes: [String] = ["Channel"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("genres", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("image", alias: "logoDefault", type: .scalar(String.self)),
      GraphQLField("image", alias: "logoDark", arguments: ["type": "logo-dark"], type: .scalar(String.self)),
      GraphQLField("image", alias: "logoLight", arguments: ["type": "logo-light"], type: .scalar(String.self)),
      GraphQLField("entitlement", type: .object(Entitlement.selections)),
      GraphQLField("playable", type: .nonNull(.object(Playable.selections))),
      GraphQLField("broadcasts", type: .list(.nonNull(.object(Broadcast.selections)))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, genres: [String]? = nil, logoDefault: String? = nil, logoDark: String? = nil, logoLight: String? = nil, entitlement: Entitlement? = nil, playable: Playable, broadcasts: [Broadcast]? = nil) {
    self.init(unsafeResultMap: ["__typename": "Channel", "magineId": magineId, "genres": genres, "logoDefault": logoDefault, "logoDark": logoDark, "logoLight": logoLight, "entitlement": entitlement.flatMap { (value: Entitlement) -> ResultMap in value.resultMap }, "playable": playable.resultMap, "broadcasts": broadcasts.flatMap { (value: [Broadcast]) -> [ResultMap] in value.map { (value: Broadcast) -> ResultMap in value.resultMap } }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var genres: [String]? {
    get {
      return resultMap["genres"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "genres")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var logoDefault: String? {
    get {
      return resultMap["logoDefault"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "logoDefault")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var logoDark: String? {
    get {
      return resultMap["logoDark"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "logoDark")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var logoLight: String? {
    get {
      return resultMap["logoLight"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "logoLight")
    }
  }

  /// Entitlement returns available entitlements for this viewable.
  /// 
  /// If the user is not authenticated it will always return null. You can use the
  /// viewer.isAuthenticated to check in the response from GraphQL.
  public var entitlement: Entitlement? {
    get {
      return (resultMap["entitlement"] as? ResultMap).flatMap { Entitlement(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "entitlement")
    }
  }

  public var playable: Playable {
    get {
      return Playable(unsafeResultMap: resultMap["playable"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "playable")
    }
  }

  /// Get broadcasts for channel by day. If no day is provided it will default to today in UTC.
  public var broadcasts: [Broadcast]? {
    get {
      return (resultMap["broadcasts"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Broadcast] in value.map { (value: ResultMap) -> Broadcast in Broadcast(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Broadcast]) -> [ResultMap] in value.map { (value: Broadcast) -> ResultMap in value.resultMap } }, forKey: "broadcasts")
    }
  }

  public struct Entitlement: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["EntitlementSubscribeType", "EntitlementBuyType", "EntitlementDefaultType", "EntitlementPassType", "EntitlementPurchaseType", "EntitlementRentType", "EntitlementThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewableEntitlementFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableEntitlementFragment: ViewableEntitlementFragment {
        get {
          return ViewableEntitlementFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Playable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(PlayableFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeChannelPlayable(id: String, kind: PlayableKind) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "ChannelPlayable", "id": id, "kind": kind])
    }

    public static func makeLiveEventPlayable(id: String, kind: PlayableKind, startTimeUtc: Int, catchupStop: Long? = nil) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "LiveEventPlayable", "id": id, "kind": kind, "startTimeUtc": startTimeUtc, "catchupStop": catchupStop])
    }

    public static func makeVodPlayable(id: String, kind: PlayableKind, watchOffset: Int? = nil, duration: Int? = nil, offlineAvailable: Bool) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "VodPlayable", "id": id, "kind": kind, "watchOffset": watchOffset, "duration": duration, "offlineAvailable": offlineAvailable])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var playableFragment: PlayableFragment {
        get {
          return PlayableFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Broadcast: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Broadcast"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(BroadcastFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var broadcastFragment: BroadcastFragment {
        get {
          return BroadcastFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct EpisodeFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment EpisodeFragment on Episode {
      __typename
      magineId
      shortDescription
      durationHuman
      genres
      productionYear
      rating
      directors
      cast
      tagsToRender {
        __typename
        ...TagsToRenderFragment
      }
      seasonNumber
      episodeNumber
      entitlement {
        __typename
        ...ViewableEntitlementFragment
      }
      show {
        __typename
        ...ShowFragment
      }
      defaultPlayable {
        __typename
        ...PlayableFragment
      }
    }
    """

  public static let possibleTypes: [String] = ["Episode"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("shortDescription", type: .scalar(String.self)),
      GraphQLField("durationHuman", type: .scalar(String.self)),
      GraphQLField("genres", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("productionYear", type: .scalar(String.self)),
      GraphQLField("rating", type: .scalar(String.self)),
      GraphQLField("directors", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("cast", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("tagsToRender", type: .list(.nonNull(.object(TagsToRender.selections)))),
      GraphQLField("seasonNumber", type: .scalar(Int.self)),
      GraphQLField("episodeNumber", type: .scalar(Int.self)),
      GraphQLField("entitlement", type: .object(Entitlement.selections)),
      GraphQLField("show", type: .object(Show.selections)),
      GraphQLField("defaultPlayable", type: .object(DefaultPlayable.selections)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, shortDescription: String? = nil, durationHuman: String? = nil, genres: [String]? = nil, productionYear: String? = nil, rating: String? = nil, directors: [String]? = nil, cast: [String]? = nil, tagsToRender: [TagsToRender]? = nil, seasonNumber: Int? = nil, episodeNumber: Int? = nil, entitlement: Entitlement? = nil, show: Show? = nil, defaultPlayable: DefaultPlayable? = nil) {
    self.init(unsafeResultMap: ["__typename": "Episode", "magineId": magineId, "shortDescription": shortDescription, "durationHuman": durationHuman, "genres": genres, "productionYear": productionYear, "rating": rating, "directors": directors, "cast": cast, "tagsToRender": tagsToRender.flatMap { (value: [TagsToRender]) -> [ResultMap] in value.map { (value: TagsToRender) -> ResultMap in value.resultMap } }, "seasonNumber": seasonNumber, "episodeNumber": episodeNumber, "entitlement": entitlement.flatMap { (value: Entitlement) -> ResultMap in value.resultMap }, "show": show.flatMap { (value: Show) -> ResultMap in value.resultMap }, "defaultPlayable": defaultPlayable.flatMap { (value: DefaultPlayable) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var shortDescription: String? {
    get {
      return resultMap["shortDescription"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "shortDescription")
    }
  }

  public var durationHuman: String? {
    get {
      return resultMap["durationHuman"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "durationHuman")
    }
  }

  public var genres: [String]? {
    get {
      return resultMap["genres"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "genres")
    }
  }

  public var productionYear: String? {
    get {
      return resultMap["productionYear"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "productionYear")
    }
  }

  public var rating: String? {
    get {
      return resultMap["rating"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "rating")
    }
  }

  public var directors: [String]? {
    get {
      return resultMap["directors"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "directors")
    }
  }

  public var cast: [String]? {
    get {
      return resultMap["cast"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "cast")
    }
  }

  /// Contains a list of tags to render about the viewable and if they are searchable or not.
  public var tagsToRender: [TagsToRender]? {
    get {
      return (resultMap["tagsToRender"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [TagsToRender] in value.map { (value: ResultMap) -> TagsToRender in TagsToRender(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [TagsToRender]) -> [ResultMap] in value.map { (value: TagsToRender) -> ResultMap in value.resultMap } }, forKey: "tagsToRender")
    }
  }

  public var seasonNumber: Int? {
    get {
      return resultMap["seasonNumber"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "seasonNumber")
    }
  }

  public var episodeNumber: Int? {
    get {
      return resultMap["episodeNumber"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "episodeNumber")
    }
  }

  /// Entitlement returns available entitlements for this viewable.
  /// 
  /// If the user is not authenticated it will always return null. You can use the
  /// viewer.isAuthenticated to check in the response from GraphQL.
  public var entitlement: Entitlement? {
    get {
      return (resultMap["entitlement"] as? ResultMap).flatMap { Entitlement(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "entitlement")
    }
  }

  public var show: Show? {
    get {
      return (resultMap["show"] as? ResultMap).flatMap { Show(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "show")
    }
  }

  public var defaultPlayable: DefaultPlayable? {
    get {
      return (resultMap["defaultPlayable"] as? ResultMap).flatMap { DefaultPlayable(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "defaultPlayable")
    }
  }

  public struct TagsToRender: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableTagToRender"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(TagsToRenderFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(title: String? = nil, translationKey: String, searchable: Bool, values: [String]) {
      self.init(unsafeResultMap: ["__typename": "ViewableTagToRender", "title": title, "translationKey": translationKey, "searchable": searchable, "values": values])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var tagsToRenderFragment: TagsToRenderFragment {
        get {
          return TagsToRenderFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Entitlement: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["EntitlementSubscribeType", "EntitlementBuyType", "EntitlementDefaultType", "EntitlementPassType", "EntitlementPurchaseType", "EntitlementRentType", "EntitlementThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewableEntitlementFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableEntitlementFragment: ViewableEntitlementFragment {
        get {
          return ViewableEntitlementFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Show: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Show"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ShowFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var showFragment: ShowFragment {
        get {
          return ShowFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct DefaultPlayable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(PlayableFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeChannelPlayable(id: String, kind: PlayableKind) -> DefaultPlayable {
      return DefaultPlayable(unsafeResultMap: ["__typename": "ChannelPlayable", "id": id, "kind": kind])
    }

    public static func makeLiveEventPlayable(id: String, kind: PlayableKind, startTimeUtc: Int, catchupStop: Long? = nil) -> DefaultPlayable {
      return DefaultPlayable(unsafeResultMap: ["__typename": "LiveEventPlayable", "id": id, "kind": kind, "startTimeUtc": startTimeUtc, "catchupStop": catchupStop])
    }

    public static func makeVodPlayable(id: String, kind: PlayableKind, watchOffset: Int? = nil, duration: Int? = nil, offlineAvailable: Bool) -> DefaultPlayable {
      return DefaultPlayable(unsafeResultMap: ["__typename": "VodPlayable", "id": id, "kind": kind, "watchOffset": watchOffset, "duration": duration, "offlineAvailable": offlineAvailable])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var playableFragment: PlayableFragment {
        get {
          return PlayableFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct ShowFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ShowFragment on Show {
      __typename
      magineId
      title
      description
      defaultImage: image
      sixteenNineImage: image(type: "sixteen-nine")
      posterImage: image(type: "poster")
      genres
      productionYear
      rating
      directors
      cast
      tagsToRender {
        __typename
        ...TagsToRenderFragment
      }
      entitlement {
        __typename
        ...ViewableEntitlementFragment
      }
      seasons {
        __typename
        seasonNumber
        episodes {
          __typename
          episodeNumber
          defaultPlayable {
            __typename
            ...PlayableFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["Show"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", alias: "defaultImage", type: .scalar(String.self)),
      GraphQLField("image", alias: "sixteenNineImage", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
      GraphQLField("image", alias: "posterImage", arguments: ["type": "poster"], type: .scalar(String.self)),
      GraphQLField("genres", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("productionYear", type: .scalar(String.self)),
      GraphQLField("rating", type: .scalar(String.self)),
      GraphQLField("directors", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("cast", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("tagsToRender", type: .list(.nonNull(.object(TagsToRender.selections)))),
      GraphQLField("entitlement", type: .object(Entitlement.selections)),
      GraphQLField("seasons", type: .list(.nonNull(.object(Season.selections)))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, defaultImage: String? = nil, sixteenNineImage: String? = nil, posterImage: String? = nil, genres: [String]? = nil, productionYear: String? = nil, rating: String? = nil, directors: [String]? = nil, cast: [String]? = nil, tagsToRender: [TagsToRender]? = nil, entitlement: Entitlement? = nil, seasons: [Season]? = nil) {
    self.init(unsafeResultMap: ["__typename": "Show", "magineId": magineId, "title": title, "description": description, "defaultImage": defaultImage, "sixteenNineImage": sixteenNineImage, "posterImage": posterImage, "genres": genres, "productionYear": productionYear, "rating": rating, "directors": directors, "cast": cast, "tagsToRender": tagsToRender.flatMap { (value: [TagsToRender]) -> [ResultMap] in value.map { (value: TagsToRender) -> ResultMap in value.resultMap } }, "entitlement": entitlement.flatMap { (value: Entitlement) -> ResultMap in value.resultMap }, "seasons": seasons.flatMap { (value: [Season]) -> [ResultMap] in value.map { (value: Season) -> ResultMap in value.resultMap } }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var defaultImage: String? {
    get {
      return resultMap["defaultImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "defaultImage")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var sixteenNineImage: String? {
    get {
      return resultMap["sixteenNineImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "sixteenNineImage")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var posterImage: String? {
    get {
      return resultMap["posterImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "posterImage")
    }
  }

  public var genres: [String]? {
    get {
      return resultMap["genres"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "genres")
    }
  }

  public var productionYear: String? {
    get {
      return resultMap["productionYear"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "productionYear")
    }
  }

  public var rating: String? {
    get {
      return resultMap["rating"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "rating")
    }
  }

  public var directors: [String]? {
    get {
      return resultMap["directors"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "directors")
    }
  }

  public var cast: [String]? {
    get {
      return resultMap["cast"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "cast")
    }
  }

  /// Contains a list of tags to render about the viewable and if they are searchable or not.
  public var tagsToRender: [TagsToRender]? {
    get {
      return (resultMap["tagsToRender"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [TagsToRender] in value.map { (value: ResultMap) -> TagsToRender in TagsToRender(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [TagsToRender]) -> [ResultMap] in value.map { (value: TagsToRender) -> ResultMap in value.resultMap } }, forKey: "tagsToRender")
    }
  }

  /// Entitlement returns available entitlements for this viewable.
  /// 
  /// If the user is not authenticated it will always return null. You can use the
  /// viewer.isAuthenticated to check in the response from GraphQL.
  public var entitlement: Entitlement? {
    get {
      return (resultMap["entitlement"] as? ResultMap).flatMap { Entitlement(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "entitlement")
    }
  }

  public var seasons: [Season]? {
    get {
      return (resultMap["seasons"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Season] in value.map { (value: ResultMap) -> Season in Season(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Season]) -> [ResultMap] in value.map { (value: Season) -> ResultMap in value.resultMap } }, forKey: "seasons")
    }
  }

  public struct TagsToRender: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableTagToRender"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(TagsToRenderFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(title: String? = nil, translationKey: String, searchable: Bool, values: [String]) {
      self.init(unsafeResultMap: ["__typename": "ViewableTagToRender", "title": title, "translationKey": translationKey, "searchable": searchable, "values": values])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var tagsToRenderFragment: TagsToRenderFragment {
        get {
          return TagsToRenderFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Entitlement: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["EntitlementSubscribeType", "EntitlementBuyType", "EntitlementDefaultType", "EntitlementPassType", "EntitlementPurchaseType", "EntitlementRentType", "EntitlementThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewableEntitlementFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableEntitlementFragment: ViewableEntitlementFragment {
        get {
          return ViewableEntitlementFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Season: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Season"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("seasonNumber", type: .scalar(Int.self)),
        GraphQLField("episodes", type: .list(.nonNull(.object(Episode.selections)))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(seasonNumber: Int? = nil, episodes: [Episode]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Season", "seasonNumber": seasonNumber, "episodes": episodes.flatMap { (value: [Episode]) -> [ResultMap] in value.map { (value: Episode) -> ResultMap in value.resultMap } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var seasonNumber: Int? {
      get {
        return resultMap["seasonNumber"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "seasonNumber")
      }
    }

    public var episodes: [Episode]? {
      get {
        return (resultMap["episodes"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Episode] in value.map { (value: ResultMap) -> Episode in Episode(unsafeResultMap: value) } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Episode]) -> [ResultMap] in value.map { (value: Episode) -> ResultMap in value.resultMap } }, forKey: "episodes")
      }
    }

    public struct Episode: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Episode"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("episodeNumber", type: .scalar(Int.self)),
          GraphQLField("defaultPlayable", type: .object(DefaultPlayable.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(episodeNumber: Int? = nil, defaultPlayable: DefaultPlayable? = nil) {
        self.init(unsafeResultMap: ["__typename": "Episode", "episodeNumber": episodeNumber, "defaultPlayable": defaultPlayable.flatMap { (value: DefaultPlayable) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var episodeNumber: Int? {
        get {
          return resultMap["episodeNumber"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "episodeNumber")
        }
      }

      public var defaultPlayable: DefaultPlayable? {
        get {
          return (resultMap["defaultPlayable"] as? ResultMap).flatMap { DefaultPlayable(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "defaultPlayable")
        }
      }

      public struct DefaultPlayable: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(PlayableFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public static func makeChannelPlayable(id: String, kind: PlayableKind) -> DefaultPlayable {
          return DefaultPlayable(unsafeResultMap: ["__typename": "ChannelPlayable", "id": id, "kind": kind])
        }

        public static func makeLiveEventPlayable(id: String, kind: PlayableKind, startTimeUtc: Int, catchupStop: Long? = nil) -> DefaultPlayable {
          return DefaultPlayable(unsafeResultMap: ["__typename": "LiveEventPlayable", "id": id, "kind": kind, "startTimeUtc": startTimeUtc, "catchupStop": catchupStop])
        }

        public static func makeVodPlayable(id: String, kind: PlayableKind, watchOffset: Int? = nil, duration: Int? = nil, offlineAvailable: Bool) -> DefaultPlayable {
          return DefaultPlayable(unsafeResultMap: ["__typename": "VodPlayable", "id": id, "kind": kind, "watchOffset": watchOffset, "duration": duration, "offlineAvailable": offlineAvailable])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var playableFragment: PlayableFragment {
            get {
              return PlayableFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct MovieFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment MovieFragment on Movie {
      __typename
      magineId
      durationHuman
      genres
      productionYear
      rating
      directors
      cast
      tagsToRender {
        __typename
        ...TagsToRenderFragment
      }
      entitlement {
        __typename
        ...ViewableEntitlementFragment
      }
      defaultPlayable {
        __typename
        ...PlayableFragment
      }
    }
    """

  public static let possibleTypes: [String] = ["Movie"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("durationHuman", type: .scalar(String.self)),
      GraphQLField("genres", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("productionYear", type: .scalar(String.self)),
      GraphQLField("rating", type: .scalar(String.self)),
      GraphQLField("directors", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("cast", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("tagsToRender", type: .list(.nonNull(.object(TagsToRender.selections)))),
      GraphQLField("entitlement", type: .object(Entitlement.selections)),
      GraphQLField("defaultPlayable", type: .object(DefaultPlayable.selections)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, durationHuman: String? = nil, genres: [String]? = nil, productionYear: String? = nil, rating: String? = nil, directors: [String]? = nil, cast: [String]? = nil, tagsToRender: [TagsToRender]? = nil, entitlement: Entitlement? = nil, defaultPlayable: DefaultPlayable? = nil) {
    self.init(unsafeResultMap: ["__typename": "Movie", "magineId": magineId, "durationHuman": durationHuman, "genres": genres, "productionYear": productionYear, "rating": rating, "directors": directors, "cast": cast, "tagsToRender": tagsToRender.flatMap { (value: [TagsToRender]) -> [ResultMap] in value.map { (value: TagsToRender) -> ResultMap in value.resultMap } }, "entitlement": entitlement.flatMap { (value: Entitlement) -> ResultMap in value.resultMap }, "defaultPlayable": defaultPlayable.flatMap { (value: DefaultPlayable) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var durationHuman: String? {
    get {
      return resultMap["durationHuman"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "durationHuman")
    }
  }

  public var genres: [String]? {
    get {
      return resultMap["genres"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "genres")
    }
  }

  public var productionYear: String? {
    get {
      return resultMap["productionYear"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "productionYear")
    }
  }

  public var rating: String? {
    get {
      return resultMap["rating"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "rating")
    }
  }

  public var directors: [String]? {
    get {
      return resultMap["directors"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "directors")
    }
  }

  public var cast: [String]? {
    get {
      return resultMap["cast"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "cast")
    }
  }

  /// Contains a list of tags to render about the viewable and if they are searchable or not.
  public var tagsToRender: [TagsToRender]? {
    get {
      return (resultMap["tagsToRender"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [TagsToRender] in value.map { (value: ResultMap) -> TagsToRender in TagsToRender(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [TagsToRender]) -> [ResultMap] in value.map { (value: TagsToRender) -> ResultMap in value.resultMap } }, forKey: "tagsToRender")
    }
  }

  /// Entitlement returns available entitlements for this viewable.
  /// 
  /// If the user is not authenticated it will always return null. You can use the
  /// viewer.isAuthenticated to check in the response from GraphQL.
  public var entitlement: Entitlement? {
    get {
      return (resultMap["entitlement"] as? ResultMap).flatMap { Entitlement(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "entitlement")
    }
  }

  public var defaultPlayable: DefaultPlayable? {
    get {
      return (resultMap["defaultPlayable"] as? ResultMap).flatMap { DefaultPlayable(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "defaultPlayable")
    }
  }

  public struct TagsToRender: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableTagToRender"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(TagsToRenderFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(title: String? = nil, translationKey: String, searchable: Bool, values: [String]) {
      self.init(unsafeResultMap: ["__typename": "ViewableTagToRender", "title": title, "translationKey": translationKey, "searchable": searchable, "values": values])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var tagsToRenderFragment: TagsToRenderFragment {
        get {
          return TagsToRenderFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Entitlement: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["EntitlementSubscribeType", "EntitlementBuyType", "EntitlementDefaultType", "EntitlementPassType", "EntitlementPurchaseType", "EntitlementRentType", "EntitlementThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewableEntitlementFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableEntitlementFragment: ViewableEntitlementFragment {
        get {
          return ViewableEntitlementFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct DefaultPlayable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(PlayableFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeChannelPlayable(id: String, kind: PlayableKind) -> DefaultPlayable {
      return DefaultPlayable(unsafeResultMap: ["__typename": "ChannelPlayable", "id": id, "kind": kind])
    }

    public static func makeLiveEventPlayable(id: String, kind: PlayableKind, startTimeUtc: Int, catchupStop: Long? = nil) -> DefaultPlayable {
      return DefaultPlayable(unsafeResultMap: ["__typename": "LiveEventPlayable", "id": id, "kind": kind, "startTimeUtc": startTimeUtc, "catchupStop": catchupStop])
    }

    public static func makeVodPlayable(id: String, kind: PlayableKind, watchOffset: Int? = nil, duration: Int? = nil, offlineAvailable: Bool) -> DefaultPlayable {
      return DefaultPlayable(unsafeResultMap: ["__typename": "VodPlayable", "id": id, "kind": kind, "watchOffset": watchOffset, "duration": duration, "offlineAvailable": offlineAvailable])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var playableFragment: PlayableFragment {
        get {
          return PlayableFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct ProgramFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ProgramFragment on Program {
      __typename
      magineId
      genres
      durationHuman
      tagsToRender {
        __typename
        ...TagsToRenderFragment
      }
      entitlement {
        __typename
        ...ViewableEntitlementFragment
      }
      defaultPlayable {
        __typename
        ...PlayableFragment
      }
    }
    """

  public static let possibleTypes: [String] = ["Program"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("genres", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("durationHuman", type: .scalar(String.self)),
      GraphQLField("tagsToRender", type: .list(.nonNull(.object(TagsToRender.selections)))),
      GraphQLField("entitlement", type: .object(Entitlement.selections)),
      GraphQLField("defaultPlayable", type: .object(DefaultPlayable.selections)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, genres: [String]? = nil, durationHuman: String? = nil, tagsToRender: [TagsToRender]? = nil, entitlement: Entitlement? = nil, defaultPlayable: DefaultPlayable? = nil) {
    self.init(unsafeResultMap: ["__typename": "Program", "magineId": magineId, "genres": genres, "durationHuman": durationHuman, "tagsToRender": tagsToRender.flatMap { (value: [TagsToRender]) -> [ResultMap] in value.map { (value: TagsToRender) -> ResultMap in value.resultMap } }, "entitlement": entitlement.flatMap { (value: Entitlement) -> ResultMap in value.resultMap }, "defaultPlayable": defaultPlayable.flatMap { (value: DefaultPlayable) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var genres: [String]? {
    get {
      return resultMap["genres"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "genres")
    }
  }

  public var durationHuman: String? {
    get {
      return resultMap["durationHuman"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "durationHuman")
    }
  }

  /// Contains a list of tags to render about the viewable and if they are searchable or not.
  public var tagsToRender: [TagsToRender]? {
    get {
      return (resultMap["tagsToRender"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [TagsToRender] in value.map { (value: ResultMap) -> TagsToRender in TagsToRender(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [TagsToRender]) -> [ResultMap] in value.map { (value: TagsToRender) -> ResultMap in value.resultMap } }, forKey: "tagsToRender")
    }
  }

  /// Entitlement returns available entitlements for this viewable.
  /// 
  /// If the user is not authenticated it will always return null. You can use the
  /// viewer.isAuthenticated to check in the response from GraphQL.
  public var entitlement: Entitlement? {
    get {
      return (resultMap["entitlement"] as? ResultMap).flatMap { Entitlement(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "entitlement")
    }
  }

  public var defaultPlayable: DefaultPlayable? {
    get {
      return (resultMap["defaultPlayable"] as? ResultMap).flatMap { DefaultPlayable(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "defaultPlayable")
    }
  }

  public struct TagsToRender: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableTagToRender"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(TagsToRenderFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(title: String? = nil, translationKey: String, searchable: Bool, values: [String]) {
      self.init(unsafeResultMap: ["__typename": "ViewableTagToRender", "title": title, "translationKey": translationKey, "searchable": searchable, "values": values])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var tagsToRenderFragment: TagsToRenderFragment {
        get {
          return TagsToRenderFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Entitlement: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["EntitlementSubscribeType", "EntitlementBuyType", "EntitlementDefaultType", "EntitlementPassType", "EntitlementPurchaseType", "EntitlementRentType", "EntitlementThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewableEntitlementFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableEntitlementFragment: ViewableEntitlementFragment {
        get {
          return ViewableEntitlementFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct DefaultPlayable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(PlayableFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeChannelPlayable(id: String, kind: PlayableKind) -> DefaultPlayable {
      return DefaultPlayable(unsafeResultMap: ["__typename": "ChannelPlayable", "id": id, "kind": kind])
    }

    public static func makeLiveEventPlayable(id: String, kind: PlayableKind, startTimeUtc: Int, catchupStop: Long? = nil) -> DefaultPlayable {
      return DefaultPlayable(unsafeResultMap: ["__typename": "LiveEventPlayable", "id": id, "kind": kind, "startTimeUtc": startTimeUtc, "catchupStop": catchupStop])
    }

    public static func makeVodPlayable(id: String, kind: PlayableKind, watchOffset: Int? = nil, duration: Int? = nil, offlineAvailable: Bool) -> DefaultPlayable {
      return DefaultPlayable(unsafeResultMap: ["__typename": "VodPlayable", "id": id, "kind": kind, "watchOffset": watchOffset, "duration": duration, "offlineAvailable": offlineAvailable])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var playableFragment: PlayableFragment {
        get {
          return PlayableFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct TrailerFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment TrailerFragment on Trailer {
      __typename
      magineId
      title
      description
      image(type: "sixteen-nine")
      entitlement {
        __typename
        ...ViewableEntitlementFragment
      }
      defaultPlayable {
        __typename
        ...PlayableFragment
      }
    }
    """

  public static let possibleTypes: [String] = ["Trailer"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
      GraphQLField("entitlement", type: .object(Entitlement.selections)),
      GraphQLField("defaultPlayable", type: .object(DefaultPlayable.selections)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, description: String? = nil, image: String? = nil, entitlement: Entitlement? = nil, defaultPlayable: DefaultPlayable? = nil) {
    self.init(unsafeResultMap: ["__typename": "Trailer", "magineId": magineId, "title": title, "description": description, "image": image, "entitlement": entitlement.flatMap { (value: Entitlement) -> ResultMap in value.resultMap }, "defaultPlayable": defaultPlayable.flatMap { (value: DefaultPlayable) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  /// Entitlement returns available entitlements for this viewable.
  /// 
  /// If the user is not authenticated it will always return null. You can use the
  /// viewer.isAuthenticated to check in the response from GraphQL.
  public var entitlement: Entitlement? {
    get {
      return (resultMap["entitlement"] as? ResultMap).flatMap { Entitlement(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "entitlement")
    }
  }

  public var defaultPlayable: DefaultPlayable? {
    get {
      return (resultMap["defaultPlayable"] as? ResultMap).flatMap { DefaultPlayable(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "defaultPlayable")
    }
  }

  public struct Entitlement: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["EntitlementSubscribeType", "EntitlementBuyType", "EntitlementDefaultType", "EntitlementPassType", "EntitlementPurchaseType", "EntitlementRentType", "EntitlementThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewableEntitlementFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableEntitlementFragment: ViewableEntitlementFragment {
        get {
          return ViewableEntitlementFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct DefaultPlayable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(PlayableFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeChannelPlayable(id: String, kind: PlayableKind) -> DefaultPlayable {
      return DefaultPlayable(unsafeResultMap: ["__typename": "ChannelPlayable", "id": id, "kind": kind])
    }

    public static func makeLiveEventPlayable(id: String, kind: PlayableKind, startTimeUtc: Int, catchupStop: Long? = nil) -> DefaultPlayable {
      return DefaultPlayable(unsafeResultMap: ["__typename": "LiveEventPlayable", "id": id, "kind": kind, "startTimeUtc": startTimeUtc, "catchupStop": catchupStop])
    }

    public static func makeVodPlayable(id: String, kind: PlayableKind, watchOffset: Int? = nil, duration: Int? = nil, offlineAvailable: Bool) -> DefaultPlayable {
      return DefaultPlayable(unsafeResultMap: ["__typename": "VodPlayable", "id": id, "kind": kind, "watchOffset": watchOffset, "duration": duration, "offlineAvailable": offlineAvailable])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var playableFragment: PlayableFragment {
        get {
          return PlayableFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct BroadcastFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment BroadcastFragment on Broadcast {
      __typename
      id
      title
      description
      coverImage: image
      sixteenNineImage: image(type: "sixteen-nine")
      posterFeatured: image(type: "poster-featured")
      poster: image(type: "poster")
      image
      start
      stop
      catchup {
        __typename
        from
        to
      }
    }
    """

  public static let possibleTypes: [String] = ["Broadcast"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .nonNull(.scalar(String.self))),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("image", alias: "coverImage", type: .scalar(String.self)),
      GraphQLField("image", alias: "sixteenNineImage", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
      GraphQLField("image", alias: "posterFeatured", arguments: ["type": "poster-featured"], type: .scalar(String.self)),
      GraphQLField("image", alias: "poster", arguments: ["type": "poster"], type: .scalar(String.self)),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("start", type: .nonNull(.scalar(Int.self))),
      GraphQLField("stop", type: .nonNull(.scalar(Int.self))),
      GraphQLField("catchup", type: .object(Catchup.selections)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: String, title: String, description: String? = nil, coverImage: String? = nil, sixteenNineImage: String? = nil, posterFeatured: String? = nil, poster: String? = nil, image: String? = nil, start: Int, stop: Int, catchup: Catchup? = nil) {
    self.init(unsafeResultMap: ["__typename": "Broadcast", "id": id, "title": title, "description": description, "coverImage": coverImage, "sixteenNineImage": sixteenNineImage, "posterFeatured": posterFeatured, "poster": poster, "image": image, "start": start, "stop": stop, "catchup": catchup.flatMap { (value: Catchup) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// A unique id for this broadcast
  public var id: String {
    get {
      return resultMap["id"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  /// Title of broadcast
  public var title: String {
    get {
      return resultMap["title"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  /// Description of broadcast
  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var coverImage: String? {
    get {
      return resultMap["coverImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "coverImage")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var sixteenNineImage: String? {
    get {
      return resultMap["sixteenNineImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "sixteenNineImage")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var posterFeatured: String? {
    get {
      return resultMap["posterFeatured"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "posterFeatured")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var poster: String? {
    get {
      return resultMap["poster"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "poster")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  /// Start time of broadcast in unix timestamp (seconds from epoch time)
  public var start: Int {
    get {
      return resultMap["start"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "start")
    }
  }

  /// Stop time of broadcast in unix timestamp (seconds from epoch time)
  public var stop: Int {
    get {
      return resultMap["stop"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "stop")
    }
  }

  /// Recorded interval for when broadcast is available
  public var catchup: Catchup? {
    get {
      return (resultMap["catchup"] as? ResultMap).flatMap { Catchup(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "catchup")
    }
  }

  public struct Catchup: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Catchup"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("from", type: .nonNull(.scalar(Int.self))),
        GraphQLField("to", type: .nonNull(.scalar(Int.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(from: Int, to: Int) {
      self.init(unsafeResultMap: ["__typename": "Catchup", "from": from, "to": to])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var from: Int {
      get {
        return resultMap["from"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "from")
      }
    }

    public var to: Int {
      get {
        return resultMap["to"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "to")
      }
    }
  }
}

public struct TagsToRenderFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment TagsToRenderFragment on ViewableTagToRender {
      __typename
      title
      translationKey
      searchable
      values
    }
    """

  public static let possibleTypes: [String] = ["ViewableTagToRender"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("translationKey", type: .nonNull(.scalar(String.self))),
      GraphQLField("searchable", type: .nonNull(.scalar(Bool.self))),
      GraphQLField("values", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(title: String? = nil, translationKey: String, searchable: Bool, values: [String]) {
    self.init(unsafeResultMap: ["__typename": "ViewableTagToRender", "title": title, "translationKey": translationKey, "searchable": searchable, "values": values])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var translationKey: String {
    get {
      return resultMap["translationKey"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "translationKey")
    }
  }

  public var searchable: Bool {
    get {
      return resultMap["searchable"]! as! Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "searchable")
    }
  }

  public var values: [String] {
    get {
      return resultMap["values"]! as! [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "values")
    }
  }
}

public struct ViewableEntitlementFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ViewableEntitlementFragment on EntitlementInterfaceType {
      __typename
      offer {
        __typename
        ...OfferFragment
      }
      ... on EntitlementRentType {
        __typename
        entitledUntil
        expiresInSeconds
      }
      ... on EntitlementPassType {
        __typename
        entitledUntil
        expiresInSeconds
      }
      ... on EntitlementThirdPartyType {
        __typename
        entitledUntil
        expiresInSeconds
      }
    }
    """

  public static let possibleTypes: [String] = ["EntitlementSubscribeType", "EntitlementBuyType", "EntitlementDefaultType", "EntitlementPassType", "EntitlementPurchaseType", "EntitlementRentType", "EntitlementThirdPartyType"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLTypeCase(
        variants: ["EntitlementRentType": AsEntitlementRentType.selections, "EntitlementPassType": AsEntitlementPassType.selections, "EntitlementThirdPartyType": AsEntitlementThirdPartyType.selections],
        default: [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("offer", type: .object(Offer.selections)),
        ]
      )
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public static func makeEntitlementSubscribeType(offer: Offer? = nil) -> ViewableEntitlementFragment {
    return ViewableEntitlementFragment(unsafeResultMap: ["__typename": "EntitlementSubscribeType", "offer": offer.flatMap { (value: Offer) -> ResultMap in value.resultMap }])
  }

  public static func makeEntitlementBuyType(offer: Offer? = nil) -> ViewableEntitlementFragment {
    return ViewableEntitlementFragment(unsafeResultMap: ["__typename": "EntitlementBuyType", "offer": offer.flatMap { (value: Offer) -> ResultMap in value.resultMap }])
  }

  public static func makeEntitlementDefaultType(offer: Offer? = nil) -> ViewableEntitlementFragment {
    return ViewableEntitlementFragment(unsafeResultMap: ["__typename": "EntitlementDefaultType", "offer": offer.flatMap { (value: Offer) -> ResultMap in value.resultMap }])
  }

  public static func makeEntitlementPurchaseType(offer: Offer? = nil) -> ViewableEntitlementFragment {
    return ViewableEntitlementFragment(unsafeResultMap: ["__typename": "EntitlementPurchaseType", "offer": offer.flatMap { (value: Offer) -> ResultMap in value.resultMap }])
  }

  public static func makeEntitlementRentType(offer: AsEntitlementRentType.Offer? = nil, entitledUntil: Instant? = nil, expiresInSeconds: Long? = nil) -> ViewableEntitlementFragment {
    return ViewableEntitlementFragment(unsafeResultMap: ["__typename": "EntitlementRentType", "offer": offer.flatMap { (value: AsEntitlementRentType.Offer) -> ResultMap in value.resultMap }, "entitledUntil": entitledUntil, "expiresInSeconds": expiresInSeconds])
  }

  public static func makeEntitlementPassType(offer: AsEntitlementPassType.Offer? = nil, entitledUntil: Instant? = nil, expiresInSeconds: Long? = nil) -> ViewableEntitlementFragment {
    return ViewableEntitlementFragment(unsafeResultMap: ["__typename": "EntitlementPassType", "offer": offer.flatMap { (value: AsEntitlementPassType.Offer) -> ResultMap in value.resultMap }, "entitledUntil": entitledUntil, "expiresInSeconds": expiresInSeconds])
  }

  public static func makeEntitlementThirdPartyType(offer: AsEntitlementThirdPartyType.Offer? = nil, entitledUntil: Instant? = nil, expiresInSeconds: Long? = nil) -> ViewableEntitlementFragment {
    return ViewableEntitlementFragment(unsafeResultMap: ["__typename": "EntitlementThirdPartyType", "offer": offer.flatMap { (value: AsEntitlementThirdPartyType.Offer) -> ResultMap in value.resultMap }, "entitledUntil": entitledUntil, "expiresInSeconds": expiresInSeconds])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var offer: Offer? {
    get {
      return (resultMap["offer"] as? ResultMap).flatMap { Offer(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "offer")
    }
  }

  public struct Offer: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(OfferFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
    }

    public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
    }

    public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var offerFragment: OfferFragment {
        get {
          return OfferFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public var asEntitlementRentType: AsEntitlementRentType? {
    get {
      if !AsEntitlementRentType.possibleTypes.contains(__typename) { return nil }
      return AsEntitlementRentType(unsafeResultMap: resultMap)
    }
    set {
      guard let newValue = newValue else { return }
      resultMap = newValue.resultMap
    }
  }

  public struct AsEntitlementRentType: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["EntitlementRentType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("offer", type: .object(Offer.selections)),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("entitledUntil", type: .scalar(Instant.self)),
        GraphQLField("expiresInSeconds", type: .scalar(Long.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(offer: Offer? = nil, entitledUntil: Instant? = nil, expiresInSeconds: Long? = nil) {
      self.init(unsafeResultMap: ["__typename": "EntitlementRentType", "offer": offer.flatMap { (value: Offer) -> ResultMap in value.resultMap }, "entitledUntil": entitledUntil, "expiresInSeconds": expiresInSeconds])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var offer: Offer? {
      get {
        return (resultMap["offer"] as? ResultMap).flatMap { Offer(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "offer")
      }
    }

    /// The user is entitled to this until this datetime, format is in ISO-8601. If not set, indefinitely.
    public var entitledUntil: Instant? {
      get {
        return resultMap["entitledUntil"] as? Instant
      }
      set {
        resultMap.updateValue(newValue, forKey: "entitledUntil")
      }
    }

    /// How soon the entitlement expires in seconds. If not present, entitlement never expires.
    public var expiresInSeconds: Long? {
      get {
        return resultMap["expiresInSeconds"] as? Long
      }
      set {
        resultMap.updateValue(newValue, forKey: "expiresInSeconds")
      }
    }

    public struct Offer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(OfferFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
        return Offer(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
      }

      public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> Offer {
        return Offer(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
      }

      public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> Offer {
        return Offer(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
      }

      public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
        return Offer(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
      }

      public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> Offer {
        return Offer(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var offerFragment: OfferFragment {
          get {
            return OfferFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }

  public var asEntitlementPassType: AsEntitlementPassType? {
    get {
      if !AsEntitlementPassType.possibleTypes.contains(__typename) { return nil }
      return AsEntitlementPassType(unsafeResultMap: resultMap)
    }
    set {
      guard let newValue = newValue else { return }
      resultMap = newValue.resultMap
    }
  }

  public struct AsEntitlementPassType: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["EntitlementPassType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("offer", type: .object(Offer.selections)),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("entitledUntil", type: .scalar(Instant.self)),
        GraphQLField("expiresInSeconds", type: .scalar(Long.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(offer: Offer? = nil, entitledUntil: Instant? = nil, expiresInSeconds: Long? = nil) {
      self.init(unsafeResultMap: ["__typename": "EntitlementPassType", "offer": offer.flatMap { (value: Offer) -> ResultMap in value.resultMap }, "entitledUntil": entitledUntil, "expiresInSeconds": expiresInSeconds])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var offer: Offer? {
      get {
        return (resultMap["offer"] as? ResultMap).flatMap { Offer(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "offer")
      }
    }

    /// The user is entitled to this until this datetime, format is in ISO-8601. If not set, indefinitely.
    public var entitledUntil: Instant? {
      get {
        return resultMap["entitledUntil"] as? Instant
      }
      set {
        resultMap.updateValue(newValue, forKey: "entitledUntil")
      }
    }

    /// How soon the entitlement expires in seconds. If not present, entitlement never expires.
    public var expiresInSeconds: Long? {
      get {
        return resultMap["expiresInSeconds"] as? Long
      }
      set {
        resultMap.updateValue(newValue, forKey: "expiresInSeconds")
      }
    }

    public struct Offer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(OfferFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
        return Offer(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
      }

      public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> Offer {
        return Offer(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
      }

      public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> Offer {
        return Offer(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
      }

      public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
        return Offer(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
      }

      public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> Offer {
        return Offer(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var offerFragment: OfferFragment {
          get {
            return OfferFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }

  public var asEntitlementThirdPartyType: AsEntitlementThirdPartyType? {
    get {
      if !AsEntitlementThirdPartyType.possibleTypes.contains(__typename) { return nil }
      return AsEntitlementThirdPartyType(unsafeResultMap: resultMap)
    }
    set {
      guard let newValue = newValue else { return }
      resultMap = newValue.resultMap
    }
  }

  public struct AsEntitlementThirdPartyType: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["EntitlementThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("offer", type: .object(Offer.selections)),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("entitledUntil", type: .scalar(Instant.self)),
        GraphQLField("expiresInSeconds", type: .scalar(Long.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(offer: Offer? = nil, entitledUntil: Instant? = nil, expiresInSeconds: Long? = nil) {
      self.init(unsafeResultMap: ["__typename": "EntitlementThirdPartyType", "offer": offer.flatMap { (value: Offer) -> ResultMap in value.resultMap }, "entitledUntil": entitledUntil, "expiresInSeconds": expiresInSeconds])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var offer: Offer? {
      get {
        return (resultMap["offer"] as? ResultMap).flatMap { Offer(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "offer")
      }
    }

    /// The user is entitled to this until this datetime, format is in ISO-8601. If not set, indefinitely.
    public var entitledUntil: Instant? {
      get {
        return resultMap["entitledUntil"] as? Instant
      }
      set {
        resultMap.updateValue(newValue, forKey: "entitledUntil")
      }
    }

    /// How soon the entitlement expires in seconds. If not present, entitlement never expires.
    public var expiresInSeconds: Long? {
      get {
        return resultMap["expiresInSeconds"] as? Long
      }
      set {
        resultMap.updateValue(newValue, forKey: "expiresInSeconds")
      }
    }

    public struct Offer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(OfferFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
        return Offer(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
      }

      public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> Offer {
        return Offer(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
      }

      public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> Offer {
        return Offer(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
      }

      public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
        return Offer(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
      }

      public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> Offer {
        return Offer(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var offerFragment: OfferFragment {
          get {
            return OfferFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public struct ViewablePosterCollection: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ViewablePosterCollection on PosterCollection {
      __typename
      magineId
      title
      viewables {
        __typename
        edges {
          __typename
          node {
            __typename
            ...CollectionViewViewableFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["PosterCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("viewables", type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "PosterCollection", "magineId": magineId, "title": title, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(CollectionViewViewableFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public static func makeChannel(id: GraphQLID, magineId: String, title: String? = nil, poster: String? = nil, banner: String? = nil, posterFeatured: String? = nil) -> Node {
          return Node(unsafeResultMap: ["__typename": "Channel", "id": id, "magineId": magineId, "title": title, "poster": poster, "banner": banner, "posterFeatured": posterFeatured])
        }

        public static func makeTrailer(id: GraphQLID, magineId: String, title: String? = nil, poster: String? = nil, banner: String? = nil, posterFeatured: String? = nil) -> Node {
          return Node(unsafeResultMap: ["__typename": "Trailer", "id": id, "magineId": magineId, "title": title, "poster": poster, "banner": banner, "posterFeatured": posterFeatured])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var collectionViewViewableFragment: CollectionViewViewableFragment {
            get {
              return CollectionViewViewableFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct ViewableSixteenNineCollection: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ViewableSixteenNineCollection on SixteenNineCollection {
      __typename
      magineId
      title
      viewables {
        __typename
        edges {
          __typename
          node {
            __typename
            ...CollectionViewViewableFragment
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["SixteenNineCollection"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("viewables", type: .nonNull(.object(Viewable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, viewables: Viewable) {
    self.init(unsafeResultMap: ["__typename": "SixteenNineCollection", "magineId": magineId, "title": title, "viewables": viewables.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var viewables: Viewable {
    get {
      return Viewable(unsafeResultMap: resultMap["viewables"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "viewables")
    }
  }

  public struct Viewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ViewableConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ViewableConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// A list of edges.
    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ViewableEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .nonNull(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node) {
        self.init(unsafeResultMap: ["__typename": "ViewableEdge", "node": node.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The item at the end of the edge.
      public var node: Node {
        get {
          return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(CollectionViewViewableFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public static func makeChannel(id: GraphQLID, magineId: String, title: String? = nil, poster: String? = nil, banner: String? = nil, posterFeatured: String? = nil) -> Node {
          return Node(unsafeResultMap: ["__typename": "Channel", "id": id, "magineId": magineId, "title": title, "poster": poster, "banner": banner, "posterFeatured": posterFeatured])
        }

        public static func makeTrailer(id: GraphQLID, magineId: String, title: String? = nil, poster: String? = nil, banner: String? = nil, posterFeatured: String? = nil) -> Node {
          return Node(unsafeResultMap: ["__typename": "Trailer", "id": id, "magineId": magineId, "title": title, "poster": poster, "banner": banner, "posterFeatured": posterFeatured])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var collectionViewViewableFragment: CollectionViewViewableFragment {
            get {
              return CollectionViewViewableFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct CollectionViewViewableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment CollectionViewViewableFragment on ViewableInterface {
      __typename
      id
      magineId
      title
      poster: image(type: "poster")
      banner: image(type: "sixteen-nine")
      posterFeatured: image(type: "poster-featured")
      ... on Episode {
        __typename
        show {
          __typename
          poster: image(type: "poster")
        }
        defaultPlayable {
          __typename
          ...PlayableFragment
        }
        entitlement {
          __typename
          ...ViewableEntitlementFragment
        }
      }
      ... on Show {
        __typename
        entitlement {
          __typename
          ...ViewableEntitlementFragment
        }
      }
      ... on Movie {
        __typename
        defaultPlayable {
          __typename
          ...PlayableFragment
        }
        entitlement {
          __typename
          ...ViewableEntitlementFragment
        }
      }
      ... on Program {
        __typename
        defaultPlayable {
          __typename
          ...PlayableFragment
        }
        entitlement {
          __typename
          ...ViewableEntitlementFragment
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLTypeCase(
        variants: ["Episode": AsEpisode.selections, "Show": AsShow.selections, "Movie": AsMovie.selections, "Program": AsProgram.selections],
        default: [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("image", alias: "poster", arguments: ["type": "poster"], type: .scalar(String.self)),
          GraphQLField("image", alias: "banner", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
          GraphQLField("image", alias: "posterFeatured", arguments: ["type": "poster-featured"], type: .scalar(String.self)),
        ]
      )
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public static func makeChannel(id: GraphQLID, magineId: String, title: String? = nil, poster: String? = nil, banner: String? = nil, posterFeatured: String? = nil) -> CollectionViewViewableFragment {
    return CollectionViewViewableFragment(unsafeResultMap: ["__typename": "Channel", "id": id, "magineId": magineId, "title": title, "poster": poster, "banner": banner, "posterFeatured": posterFeatured])
  }

  public static func makeTrailer(id: GraphQLID, magineId: String, title: String? = nil, poster: String? = nil, banner: String? = nil, posterFeatured: String? = nil) -> CollectionViewViewableFragment {
    return CollectionViewViewableFragment(unsafeResultMap: ["__typename": "Trailer", "id": id, "magineId": magineId, "title": title, "poster": poster, "banner": banner, "posterFeatured": posterFeatured])
  }

  public static func makeEpisode(id: GraphQLID, magineId: String, title: String? = nil, poster: String? = nil, banner: String? = nil, posterFeatured: String? = nil, show: AsEpisode.Show? = nil, defaultPlayable: AsEpisode.DefaultPlayable? = nil, entitlement: AsEpisode.Entitlement? = nil) -> CollectionViewViewableFragment {
    return CollectionViewViewableFragment(unsafeResultMap: ["__typename": "Episode", "id": id, "magineId": magineId, "title": title, "poster": poster, "banner": banner, "posterFeatured": posterFeatured, "show": show.flatMap { (value: AsEpisode.Show) -> ResultMap in value.resultMap }, "defaultPlayable": defaultPlayable.flatMap { (value: AsEpisode.DefaultPlayable) -> ResultMap in value.resultMap }, "entitlement": entitlement.flatMap { (value: AsEpisode.Entitlement) -> ResultMap in value.resultMap }])
  }

  public static func makeShow(id: GraphQLID, magineId: String, title: String? = nil, poster: String? = nil, banner: String? = nil, posterFeatured: String? = nil, entitlement: AsShow.Entitlement? = nil) -> CollectionViewViewableFragment {
    return CollectionViewViewableFragment(unsafeResultMap: ["__typename": "Show", "id": id, "magineId": magineId, "title": title, "poster": poster, "banner": banner, "posterFeatured": posterFeatured, "entitlement": entitlement.flatMap { (value: AsShow.Entitlement) -> ResultMap in value.resultMap }])
  }

  public static func makeMovie(id: GraphQLID, magineId: String, title: String? = nil, poster: String? = nil, banner: String? = nil, posterFeatured: String? = nil, defaultPlayable: AsMovie.DefaultPlayable? = nil, entitlement: AsMovie.Entitlement? = nil) -> CollectionViewViewableFragment {
    return CollectionViewViewableFragment(unsafeResultMap: ["__typename": "Movie", "id": id, "magineId": magineId, "title": title, "poster": poster, "banner": banner, "posterFeatured": posterFeatured, "defaultPlayable": defaultPlayable.flatMap { (value: AsMovie.DefaultPlayable) -> ResultMap in value.resultMap }, "entitlement": entitlement.flatMap { (value: AsMovie.Entitlement) -> ResultMap in value.resultMap }])
  }

  public static func makeProgram(id: GraphQLID, magineId: String, title: String? = nil, poster: String? = nil, banner: String? = nil, posterFeatured: String? = nil, defaultPlayable: AsProgram.DefaultPlayable? = nil, entitlement: AsProgram.Entitlement? = nil) -> CollectionViewViewableFragment {
    return CollectionViewViewableFragment(unsafeResultMap: ["__typename": "Program", "id": id, "magineId": magineId, "title": title, "poster": poster, "banner": banner, "posterFeatured": posterFeatured, "defaultPlayable": defaultPlayable.flatMap { (value: AsProgram.DefaultPlayable) -> ResultMap in value.resultMap }, "entitlement": entitlement.flatMap { (value: AsProgram.Entitlement) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// The ID of an object
  public var id: GraphQLID {
    get {
      return resultMap["id"]! as! GraphQLID
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var poster: String? {
    get {
      return resultMap["poster"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "poster")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var banner: String? {
    get {
      return resultMap["banner"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "banner")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var posterFeatured: String? {
    get {
      return resultMap["posterFeatured"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "posterFeatured")
    }
  }

  public var asEpisode: AsEpisode? {
    get {
      if !AsEpisode.possibleTypes.contains(__typename) { return nil }
      return AsEpisode(unsafeResultMap: resultMap)
    }
    set {
      guard let newValue = newValue else { return }
      resultMap = newValue.resultMap
    }
  }

  public struct AsEpisode: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Episode"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("image", alias: "poster", arguments: ["type": "poster"], type: .scalar(String.self)),
        GraphQLField("image", alias: "banner", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
        GraphQLField("image", alias: "posterFeatured", arguments: ["type": "poster-featured"], type: .scalar(String.self)),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("show", type: .object(Show.selections)),
        GraphQLField("defaultPlayable", type: .object(DefaultPlayable.selections)),
        GraphQLField("entitlement", type: .object(Entitlement.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(id: GraphQLID, magineId: String, title: String? = nil, poster: String? = nil, banner: String? = nil, posterFeatured: String? = nil, show: Show? = nil, defaultPlayable: DefaultPlayable? = nil, entitlement: Entitlement? = nil) {
      self.init(unsafeResultMap: ["__typename": "Episode", "id": id, "magineId": magineId, "title": title, "poster": poster, "banner": banner, "posterFeatured": posterFeatured, "show": show.flatMap { (value: Show) -> ResultMap in value.resultMap }, "defaultPlayable": defaultPlayable.flatMap { (value: DefaultPlayable) -> ResultMap in value.resultMap }, "entitlement": entitlement.flatMap { (value: Entitlement) -> ResultMap in value.resultMap }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The ID of an object
    public var id: GraphQLID {
      get {
        return resultMap["id"]! as! GraphQLID
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }

    /// use this id for urls and presentation
    public var magineId: String {
      get {
        return resultMap["magineId"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "magineId")
      }
    }

    public var title: String? {
      get {
        return resultMap["title"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "title")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var poster: String? {
      get {
        return resultMap["poster"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "poster")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var banner: String? {
      get {
        return resultMap["banner"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "banner")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var posterFeatured: String? {
      get {
        return resultMap["posterFeatured"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "posterFeatured")
      }
    }

    public var show: Show? {
      get {
        return (resultMap["show"] as? ResultMap).flatMap { Show(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "show")
      }
    }

    public var defaultPlayable: DefaultPlayable? {
      get {
        return (resultMap["defaultPlayable"] as? ResultMap).flatMap { DefaultPlayable(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "defaultPlayable")
      }
    }

    /// Entitlement returns available entitlements for this viewable.
    /// 
    /// If the user is not authenticated it will always return null. You can use the
    /// viewer.isAuthenticated to check in the response from GraphQL.
    public var entitlement: Entitlement? {
      get {
        return (resultMap["entitlement"] as? ResultMap).flatMap { Entitlement(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "entitlement")
      }
    }

    public struct Show: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Show"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("image", alias: "poster", arguments: ["type": "poster"], type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(poster: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Show", "poster": poster])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// An image URL.
      /// 
      /// If no parameters are specified an image marked as default in the metadata will
      /// be picked. If no image is marked as default the first image in the list will
      /// be returned. In the case of no images available null is returned.
      /// 
      /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
      public var poster: String? {
        get {
          return resultMap["poster"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "poster")
        }
      }
    }

    public struct DefaultPlayable: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PlayableFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public static func makeChannelPlayable(id: String, kind: PlayableKind) -> DefaultPlayable {
        return DefaultPlayable(unsafeResultMap: ["__typename": "ChannelPlayable", "id": id, "kind": kind])
      }

      public static func makeLiveEventPlayable(id: String, kind: PlayableKind, startTimeUtc: Int, catchupStop: Long? = nil) -> DefaultPlayable {
        return DefaultPlayable(unsafeResultMap: ["__typename": "LiveEventPlayable", "id": id, "kind": kind, "startTimeUtc": startTimeUtc, "catchupStop": catchupStop])
      }

      public static func makeVodPlayable(id: String, kind: PlayableKind, watchOffset: Int? = nil, duration: Int? = nil, offlineAvailable: Bool) -> DefaultPlayable {
        return DefaultPlayable(unsafeResultMap: ["__typename": "VodPlayable", "id": id, "kind": kind, "watchOffset": watchOffset, "duration": duration, "offlineAvailable": offlineAvailable])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var playableFragment: PlayableFragment {
          get {
            return PlayableFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Entitlement: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["EntitlementSubscribeType", "EntitlementBuyType", "EntitlementDefaultType", "EntitlementPassType", "EntitlementPurchaseType", "EntitlementRentType", "EntitlementThirdPartyType"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(ViewableEntitlementFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var viewableEntitlementFragment: ViewableEntitlementFragment {
          get {
            return ViewableEntitlementFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }

  public var asShow: AsShow? {
    get {
      if !AsShow.possibleTypes.contains(__typename) { return nil }
      return AsShow(unsafeResultMap: resultMap)
    }
    set {
      guard let newValue = newValue else { return }
      resultMap = newValue.resultMap
    }
  }

  public struct AsShow: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Show"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("image", alias: "poster", arguments: ["type": "poster"], type: .scalar(String.self)),
        GraphQLField("image", alias: "banner", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
        GraphQLField("image", alias: "posterFeatured", arguments: ["type": "poster-featured"], type: .scalar(String.self)),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("entitlement", type: .object(Entitlement.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(id: GraphQLID, magineId: String, title: String? = nil, poster: String? = nil, banner: String? = nil, posterFeatured: String? = nil, entitlement: Entitlement? = nil) {
      self.init(unsafeResultMap: ["__typename": "Show", "id": id, "magineId": magineId, "title": title, "poster": poster, "banner": banner, "posterFeatured": posterFeatured, "entitlement": entitlement.flatMap { (value: Entitlement) -> ResultMap in value.resultMap }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The ID of an object
    public var id: GraphQLID {
      get {
        return resultMap["id"]! as! GraphQLID
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }

    /// use this id for urls and presentation
    public var magineId: String {
      get {
        return resultMap["magineId"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "magineId")
      }
    }

    public var title: String? {
      get {
        return resultMap["title"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "title")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var poster: String? {
      get {
        return resultMap["poster"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "poster")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var banner: String? {
      get {
        return resultMap["banner"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "banner")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var posterFeatured: String? {
      get {
        return resultMap["posterFeatured"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "posterFeatured")
      }
    }

    /// Entitlement returns available entitlements for this viewable.
    /// 
    /// If the user is not authenticated it will always return null. You can use the
    /// viewer.isAuthenticated to check in the response from GraphQL.
    public var entitlement: Entitlement? {
      get {
        return (resultMap["entitlement"] as? ResultMap).flatMap { Entitlement(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "entitlement")
      }
    }

    public struct Entitlement: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["EntitlementSubscribeType", "EntitlementBuyType", "EntitlementDefaultType", "EntitlementPassType", "EntitlementPurchaseType", "EntitlementRentType", "EntitlementThirdPartyType"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(ViewableEntitlementFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var viewableEntitlementFragment: ViewableEntitlementFragment {
          get {
            return ViewableEntitlementFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }

  public var asMovie: AsMovie? {
    get {
      if !AsMovie.possibleTypes.contains(__typename) { return nil }
      return AsMovie(unsafeResultMap: resultMap)
    }
    set {
      guard let newValue = newValue else { return }
      resultMap = newValue.resultMap
    }
  }

  public struct AsMovie: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Movie"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("image", alias: "poster", arguments: ["type": "poster"], type: .scalar(String.self)),
        GraphQLField("image", alias: "banner", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
        GraphQLField("image", alias: "posterFeatured", arguments: ["type": "poster-featured"], type: .scalar(String.self)),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("defaultPlayable", type: .object(DefaultPlayable.selections)),
        GraphQLField("entitlement", type: .object(Entitlement.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(id: GraphQLID, magineId: String, title: String? = nil, poster: String? = nil, banner: String? = nil, posterFeatured: String? = nil, defaultPlayable: DefaultPlayable? = nil, entitlement: Entitlement? = nil) {
      self.init(unsafeResultMap: ["__typename": "Movie", "id": id, "magineId": magineId, "title": title, "poster": poster, "banner": banner, "posterFeatured": posterFeatured, "defaultPlayable": defaultPlayable.flatMap { (value: DefaultPlayable) -> ResultMap in value.resultMap }, "entitlement": entitlement.flatMap { (value: Entitlement) -> ResultMap in value.resultMap }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The ID of an object
    public var id: GraphQLID {
      get {
        return resultMap["id"]! as! GraphQLID
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }

    /// use this id for urls and presentation
    public var magineId: String {
      get {
        return resultMap["magineId"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "magineId")
      }
    }

    public var title: String? {
      get {
        return resultMap["title"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "title")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var poster: String? {
      get {
        return resultMap["poster"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "poster")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var banner: String? {
      get {
        return resultMap["banner"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "banner")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var posterFeatured: String? {
      get {
        return resultMap["posterFeatured"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "posterFeatured")
      }
    }

    public var defaultPlayable: DefaultPlayable? {
      get {
        return (resultMap["defaultPlayable"] as? ResultMap).flatMap { DefaultPlayable(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "defaultPlayable")
      }
    }

    /// Entitlement returns available entitlements for this viewable.
    /// 
    /// If the user is not authenticated it will always return null. You can use the
    /// viewer.isAuthenticated to check in the response from GraphQL.
    public var entitlement: Entitlement? {
      get {
        return (resultMap["entitlement"] as? ResultMap).flatMap { Entitlement(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "entitlement")
      }
    }

    public struct DefaultPlayable: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PlayableFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public static func makeChannelPlayable(id: String, kind: PlayableKind) -> DefaultPlayable {
        return DefaultPlayable(unsafeResultMap: ["__typename": "ChannelPlayable", "id": id, "kind": kind])
      }

      public static func makeLiveEventPlayable(id: String, kind: PlayableKind, startTimeUtc: Int, catchupStop: Long? = nil) -> DefaultPlayable {
        return DefaultPlayable(unsafeResultMap: ["__typename": "LiveEventPlayable", "id": id, "kind": kind, "startTimeUtc": startTimeUtc, "catchupStop": catchupStop])
      }

      public static func makeVodPlayable(id: String, kind: PlayableKind, watchOffset: Int? = nil, duration: Int? = nil, offlineAvailable: Bool) -> DefaultPlayable {
        return DefaultPlayable(unsafeResultMap: ["__typename": "VodPlayable", "id": id, "kind": kind, "watchOffset": watchOffset, "duration": duration, "offlineAvailable": offlineAvailable])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var playableFragment: PlayableFragment {
          get {
            return PlayableFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Entitlement: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["EntitlementSubscribeType", "EntitlementBuyType", "EntitlementDefaultType", "EntitlementPassType", "EntitlementPurchaseType", "EntitlementRentType", "EntitlementThirdPartyType"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(ViewableEntitlementFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var viewableEntitlementFragment: ViewableEntitlementFragment {
          get {
            return ViewableEntitlementFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }

  public var asProgram: AsProgram? {
    get {
      if !AsProgram.possibleTypes.contains(__typename) { return nil }
      return AsProgram(unsafeResultMap: resultMap)
    }
    set {
      guard let newValue = newValue else { return }
      resultMap = newValue.resultMap
    }
  }

  public struct AsProgram: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Program"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("image", alias: "poster", arguments: ["type": "poster"], type: .scalar(String.self)),
        GraphQLField("image", alias: "banner", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
        GraphQLField("image", alias: "posterFeatured", arguments: ["type": "poster-featured"], type: .scalar(String.self)),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("defaultPlayable", type: .object(DefaultPlayable.selections)),
        GraphQLField("entitlement", type: .object(Entitlement.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(id: GraphQLID, magineId: String, title: String? = nil, poster: String? = nil, banner: String? = nil, posterFeatured: String? = nil, defaultPlayable: DefaultPlayable? = nil, entitlement: Entitlement? = nil) {
      self.init(unsafeResultMap: ["__typename": "Program", "id": id, "magineId": magineId, "title": title, "poster": poster, "banner": banner, "posterFeatured": posterFeatured, "defaultPlayable": defaultPlayable.flatMap { (value: DefaultPlayable) -> ResultMap in value.resultMap }, "entitlement": entitlement.flatMap { (value: Entitlement) -> ResultMap in value.resultMap }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The ID of an object
    public var id: GraphQLID {
      get {
        return resultMap["id"]! as! GraphQLID
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }

    /// use this id for urls and presentation
    public var magineId: String {
      get {
        return resultMap["magineId"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "magineId")
      }
    }

    public var title: String? {
      get {
        return resultMap["title"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "title")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var poster: String? {
      get {
        return resultMap["poster"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "poster")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var banner: String? {
      get {
        return resultMap["banner"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "banner")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var posterFeatured: String? {
      get {
        return resultMap["posterFeatured"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "posterFeatured")
      }
    }

    public var defaultPlayable: DefaultPlayable? {
      get {
        return (resultMap["defaultPlayable"] as? ResultMap).flatMap { DefaultPlayable(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "defaultPlayable")
      }
    }

    /// Entitlement returns available entitlements for this viewable.
    /// 
    /// If the user is not authenticated it will always return null. You can use the
    /// viewer.isAuthenticated to check in the response from GraphQL.
    public var entitlement: Entitlement? {
      get {
        return (resultMap["entitlement"] as? ResultMap).flatMap { Entitlement(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "entitlement")
      }
    }

    public struct DefaultPlayable: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PlayableFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public static func makeChannelPlayable(id: String, kind: PlayableKind) -> DefaultPlayable {
        return DefaultPlayable(unsafeResultMap: ["__typename": "ChannelPlayable", "id": id, "kind": kind])
      }

      public static func makeLiveEventPlayable(id: String, kind: PlayableKind, startTimeUtc: Int, catchupStop: Long? = nil) -> DefaultPlayable {
        return DefaultPlayable(unsafeResultMap: ["__typename": "LiveEventPlayable", "id": id, "kind": kind, "startTimeUtc": startTimeUtc, "catchupStop": catchupStop])
      }

      public static func makeVodPlayable(id: String, kind: PlayableKind, watchOffset: Int? = nil, duration: Int? = nil, offlineAvailable: Bool) -> DefaultPlayable {
        return DefaultPlayable(unsafeResultMap: ["__typename": "VodPlayable", "id": id, "kind": kind, "watchOffset": watchOffset, "duration": duration, "offlineAvailable": offlineAvailable])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var playableFragment: PlayableFragment {
          get {
            return PlayableFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Entitlement: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["EntitlementSubscribeType", "EntitlementBuyType", "EntitlementDefaultType", "EntitlementPassType", "EntitlementPurchaseType", "EntitlementRentType", "EntitlementThirdPartyType"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(ViewableEntitlementFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var viewableEntitlementFragment: ViewableEntitlementFragment {
          get {
            return ViewableEntitlementFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public struct PlayableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment PlayableFragment on Playable {
      __typename
      id
      kind
      ...BroadcastPlayableFragment
      ...VodPlayableFragment
      ...LiveEventPlayableFragment
    }
    """

  public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(String.self))),
      GraphQLField("kind", type: .nonNull(.scalar(PlayableKind.self))),
      GraphQLFragmentSpread(BroadcastPlayableFragment.self),
      GraphQLFragmentSpread(VodPlayableFragment.self),
      GraphQLFragmentSpread(LiveEventPlayableFragment.self),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public static func makeChannelPlayable(id: String, kind: PlayableKind) -> PlayableFragment {
    return PlayableFragment(unsafeResultMap: ["__typename": "ChannelPlayable", "id": id, "kind": kind])
  }

  public static func makeLiveEventPlayable(id: String, kind: PlayableKind, startTimeUtc: Int, catchupStop: Long? = nil) -> PlayableFragment {
    return PlayableFragment(unsafeResultMap: ["__typename": "LiveEventPlayable", "id": id, "kind": kind, "startTimeUtc": startTimeUtc, "catchupStop": catchupStop])
  }

  public static func makeVodPlayable(id: String, kind: PlayableKind, watchOffset: Int? = nil, duration: Int? = nil, offlineAvailable: Bool) -> PlayableFragment {
    return PlayableFragment(unsafeResultMap: ["__typename": "VodPlayable", "id": id, "kind": kind, "watchOffset": watchOffset, "duration": duration, "offlineAvailable": offlineAvailable])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return resultMap["id"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  public var kind: PlayableKind {
    get {
      return resultMap["kind"]! as! PlayableKind
    }
    set {
      resultMap.updateValue(newValue, forKey: "kind")
    }
  }

  public var fragments: Fragments {
    get {
      return Fragments(unsafeResultMap: resultMap)
    }
    set {
      resultMap += newValue.resultMap
    }
  }

  public struct Fragments {
    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var broadcastPlayableFragment: BroadcastPlayableFragment? {
      get {
        if !BroadcastPlayableFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return BroadcastPlayableFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }

    public var vodPlayableFragment: VodPlayableFragment? {
      get {
        if !VodPlayableFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return VodPlayableFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }

    public var liveEventPlayableFragment: LiveEventPlayableFragment? {
      get {
        if !LiveEventPlayableFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return LiveEventPlayableFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }
  }
}

public struct BroadcastPlayableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment BroadcastPlayableFragment on BroadcastPlayable {
      __typename
      id
      channel {
        __typename
        logoDefault: image
        logoDark: image(type: "logo-dark")
        logoLight: image(type: "logo-light")
      }
      catchup {
        __typename
        from
        to
      }
      watchOffset
      duration
    }
    """

  public static let possibleTypes: [String] = ["BroadcastPlayable"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(String.self))),
      GraphQLField("channel", type: .object(Channel.selections)),
      GraphQLField("catchup", type: .nonNull(.object(Catchup.selections))),
      GraphQLField("watchOffset", type: .scalar(Int.self)),
      GraphQLField("duration", type: .scalar(Int.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: String, channel: Channel? = nil, catchup: Catchup, watchOffset: Int? = nil, duration: Int? = nil) {
    self.init(unsafeResultMap: ["__typename": "BroadcastPlayable", "id": id, "channel": channel.flatMap { (value: Channel) -> ResultMap in value.resultMap }, "catchup": catchup.resultMap, "watchOffset": watchOffset, "duration": duration])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var id: String {
    get {
      return resultMap["id"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  public var channel: Channel? {
    get {
      return (resultMap["channel"] as? ResultMap).flatMap { Channel(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "channel")
    }
  }

  public var catchup: Catchup {
    get {
      return Catchup(unsafeResultMap: resultMap["catchup"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "catchup")
    }
  }

  public var watchOffset: Int? {
    get {
      return resultMap["watchOffset"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "watchOffset")
    }
  }

  public var duration: Int? {
    get {
      return resultMap["duration"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "duration")
    }
  }

  public struct Channel: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Channel"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("image", alias: "logoDefault", type: .scalar(String.self)),
        GraphQLField("image", alias: "logoDark", arguments: ["type": "logo-dark"], type: .scalar(String.self)),
        GraphQLField("image", alias: "logoLight", arguments: ["type": "logo-light"], type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(logoDefault: String? = nil, logoDark: String? = nil, logoLight: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Channel", "logoDefault": logoDefault, "logoDark": logoDark, "logoLight": logoLight])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var logoDefault: String? {
      get {
        return resultMap["logoDefault"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "logoDefault")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var logoDark: String? {
      get {
        return resultMap["logoDark"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "logoDark")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var logoLight: String? {
      get {
        return resultMap["logoLight"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "logoLight")
      }
    }
  }

  public struct Catchup: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Catchup"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("from", type: .nonNull(.scalar(Int.self))),
        GraphQLField("to", type: .nonNull(.scalar(Int.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(from: Int, to: Int) {
      self.init(unsafeResultMap: ["__typename": "Catchup", "from": from, "to": to])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var from: Int {
      get {
        return resultMap["from"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "from")
      }
    }

    public var to: Int {
      get {
        return resultMap["to"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "to")
      }
    }
  }
}

public struct VodPlayableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment VodPlayableFragment on VodPlayable {
      __typename
      watchOffset
      duration
      offlineAvailable
    }
    """

  public static let possibleTypes: [String] = ["VodPlayable"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("watchOffset", type: .scalar(Int.self)),
      GraphQLField("duration", type: .scalar(Int.self)),
      GraphQLField("offlineAvailable", type: .nonNull(.scalar(Bool.self))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(watchOffset: Int? = nil, duration: Int? = nil, offlineAvailable: Bool) {
    self.init(unsafeResultMap: ["__typename": "VodPlayable", "watchOffset": watchOffset, "duration": duration, "offlineAvailable": offlineAvailable])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var watchOffset: Int? {
    get {
      return resultMap["watchOffset"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "watchOffset")
    }
  }

  public var duration: Int? {
    get {
      return resultMap["duration"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "duration")
    }
  }

  public var offlineAvailable: Bool {
    get {
      return resultMap["offlineAvailable"]! as! Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "offlineAvailable")
    }
  }
}

public struct LiveEventPlayableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment LiveEventPlayableFragment on LiveEventPlayable {
      __typename
      startTimeUtc
      catchupStop
    }
    """

  public static let possibleTypes: [String] = ["LiveEventPlayable"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("startTimeUtc", type: .nonNull(.scalar(Int.self))),
      GraphQLField("catchupStop", type: .scalar(Long.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(startTimeUtc: Int, catchupStop: Long? = nil) {
    self.init(unsafeResultMap: ["__typename": "LiveEventPlayable", "startTimeUtc": startTimeUtc, "catchupStop": catchupStop])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// Start time utc in seconds
  public var startTimeUtc: Int {
    get {
      return resultMap["startTimeUtc"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "startTimeUtc")
    }
  }

  public var catchupStop: Long? {
    get {
      return resultMap["catchupStop"] as? Long
    }
    set {
      resultMap.updateValue(newValue, forKey: "catchupStop")
    }
  }
}

public struct CollectionViewPlayableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment CollectionViewPlayableFragment on Playable {
      __typename
      ...CollectionViewBroadcastPlayableFragment
      ...CollectionViewVODPlayableFragment
      ...CollectionViewLiveEventPlayableFragment
    }
    """

  public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLFragmentSpread(CollectionViewBroadcastPlayableFragment.self),
      GraphQLFragmentSpread(CollectionViewVodPlayableFragment.self),
      GraphQLFragmentSpread(CollectionViewLiveEventPlayableFragment.self),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public static func makeChannelPlayable() -> CollectionViewPlayableFragment {
    return CollectionViewPlayableFragment(unsafeResultMap: ["__typename": "ChannelPlayable"])
  }

  public static func makeLiveEventPlayable(id: String, kind: PlayableKind, startTimeUtc: Int, catchupStop: Long? = nil) -> CollectionViewPlayableFragment {
    return CollectionViewPlayableFragment(unsafeResultMap: ["__typename": "LiveEventPlayable", "id": id, "kind": kind, "startTimeUtc": startTimeUtc, "catchupStop": catchupStop])
  }

  public static func makeVodPlayable(id: String, kind: PlayableKind, duration: Int? = nil, watchOffset: Int? = nil) -> CollectionViewPlayableFragment {
    return CollectionViewPlayableFragment(unsafeResultMap: ["__typename": "VodPlayable", "id": id, "kind": kind, "duration": duration, "watchOffset": watchOffset])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var fragments: Fragments {
    get {
      return Fragments(unsafeResultMap: resultMap)
    }
    set {
      resultMap += newValue.resultMap
    }
  }

  public struct Fragments {
    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var collectionViewBroadcastPlayableFragment: CollectionViewBroadcastPlayableFragment? {
      get {
        if !CollectionViewBroadcastPlayableFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return CollectionViewBroadcastPlayableFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }

    public var collectionViewVodPlayableFragment: CollectionViewVodPlayableFragment? {
      get {
        if !CollectionViewVodPlayableFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return CollectionViewVodPlayableFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }

    public var collectionViewLiveEventPlayableFragment: CollectionViewLiveEventPlayableFragment? {
      get {
        if !CollectionViewLiveEventPlayableFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return CollectionViewLiveEventPlayableFragment(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }
  }
}

public struct CollectionViewVodPlayableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment CollectionViewVODPlayableFragment on VodPlayable {
      __typename
      id
      kind
      duration
      watchOffset
    }
    """

  public static let possibleTypes: [String] = ["VodPlayable"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(String.self))),
      GraphQLField("kind", type: .nonNull(.scalar(PlayableKind.self))),
      GraphQLField("duration", type: .scalar(Int.self)),
      GraphQLField("watchOffset", type: .scalar(Int.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: String, kind: PlayableKind, duration: Int? = nil, watchOffset: Int? = nil) {
    self.init(unsafeResultMap: ["__typename": "VodPlayable", "id": id, "kind": kind, "duration": duration, "watchOffset": watchOffset])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var id: String {
    get {
      return resultMap["id"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  public var kind: PlayableKind {
    get {
      return resultMap["kind"]! as! PlayableKind
    }
    set {
      resultMap.updateValue(newValue, forKey: "kind")
    }
  }

  public var duration: Int? {
    get {
      return resultMap["duration"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "duration")
    }
  }

  public var watchOffset: Int? {
    get {
      return resultMap["watchOffset"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "watchOffset")
    }
  }
}

public struct CollectionViewBroadcastPlayableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment CollectionViewBroadcastPlayableFragment on BroadcastPlayable {
      __typename
      id
      kind
      channel {
        __typename
        id: magineId
        title
        logoDark: image(type: "logo-dark")
        logoLight: image(type: "logo-light")
      }
    }
    """

  public static let possibleTypes: [String] = ["BroadcastPlayable"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(String.self))),
      GraphQLField("kind", type: .nonNull(.scalar(PlayableKind.self))),
      GraphQLField("channel", type: .object(Channel.selections)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: String, kind: PlayableKind, channel: Channel? = nil) {
    self.init(unsafeResultMap: ["__typename": "BroadcastPlayable", "id": id, "kind": kind, "channel": channel.flatMap { (value: Channel) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var id: String {
    get {
      return resultMap["id"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  public var kind: PlayableKind {
    get {
      return resultMap["kind"]! as! PlayableKind
    }
    set {
      resultMap.updateValue(newValue, forKey: "kind")
    }
  }

  public var channel: Channel? {
    get {
      return (resultMap["channel"] as? ResultMap).flatMap { Channel(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "channel")
    }
  }

  public struct Channel: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Channel"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("magineId", alias: "id", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("image", alias: "logoDark", arguments: ["type": "logo-dark"], type: .scalar(String.self)),
        GraphQLField("image", alias: "logoLight", arguments: ["type": "logo-light"], type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(id: String, title: String? = nil, logoDark: String? = nil, logoLight: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Channel", "id": id, "title": title, "logoDark": logoDark, "logoLight": logoLight])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// use this id for urls and presentation
    public var id: String {
      get {
        return resultMap["id"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }

    public var title: String? {
      get {
        return resultMap["title"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "title")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var logoDark: String? {
      get {
        return resultMap["logoDark"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "logoDark")
      }
    }

    /// An image URL.
    /// 
    /// If no parameters are specified an image marked as default in the metadata will
    /// be picked. If no image is marked as default the first image in the list will
    /// be returned. In the case of no images available null is returned.
    /// 
    /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
    public var logoLight: String? {
      get {
        return resultMap["logoLight"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "logoLight")
      }
    }
  }
}

public struct CollectionViewLiveEventPlayableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment CollectionViewLiveEventPlayableFragment on LiveEventPlayable {
      __typename
      id
      kind
      startTimeUtc
      catchupStop
    }
    """

  public static let possibleTypes: [String] = ["LiveEventPlayable"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(String.self))),
      GraphQLField("kind", type: .nonNull(.scalar(PlayableKind.self))),
      GraphQLField("startTimeUtc", type: .nonNull(.scalar(Int.self))),
      GraphQLField("catchupStop", type: .scalar(Long.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: String, kind: PlayableKind, startTimeUtc: Int, catchupStop: Long? = nil) {
    self.init(unsafeResultMap: ["__typename": "LiveEventPlayable", "id": id, "kind": kind, "startTimeUtc": startTimeUtc, "catchupStop": catchupStop])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var id: String {
    get {
      return resultMap["id"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  public var kind: PlayableKind {
    get {
      return resultMap["kind"]! as! PlayableKind
    }
    set {
      resultMap.updateValue(newValue, forKey: "kind")
    }
  }

  /// Start time utc in seconds
  public var startTimeUtc: Int {
    get {
      return resultMap["startTimeUtc"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "startTimeUtc")
    }
  }

  public var catchupStop: Long? {
    get {
      return resultMap["catchupStop"] as? Long
    }
    set {
      resultMap.updateValue(newValue, forKey: "catchupStop")
    }
  }
}

public struct EpgChannelFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment EPGChannelFragment on Channel {
      __typename
      magineId
      title
      logoDefault: image
      logoDark: image(type: "logo-dark")
      logoLight: image(type: "logo-light")
      playable {
        __typename
        ...EPGPlayableFragment
      }
      broadcasts(day: $date) {
        __typename
        ...EPGBroadcastInfoFragment
      }
      entitlement {
        __typename
        offerId
      }
    }
    """

  public static let possibleTypes: [String] = ["Channel"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("image", alias: "logoDefault", type: .scalar(String.self)),
      GraphQLField("image", alias: "logoDark", arguments: ["type": "logo-dark"], type: .scalar(String.self)),
      GraphQLField("image", alias: "logoLight", arguments: ["type": "logo-light"], type: .scalar(String.self)),
      GraphQLField("playable", type: .nonNull(.object(Playable.selections))),
      GraphQLField("broadcasts", arguments: ["day": GraphQLVariable("date")], type: .list(.nonNull(.object(Broadcast.selections)))),
      GraphQLField("entitlement", type: .object(Entitlement.selections)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, logoDefault: String? = nil, logoDark: String? = nil, logoLight: String? = nil, playable: Playable, broadcasts: [Broadcast]? = nil, entitlement: Entitlement? = nil) {
    self.init(unsafeResultMap: ["__typename": "Channel", "magineId": magineId, "title": title, "logoDefault": logoDefault, "logoDark": logoDark, "logoLight": logoLight, "playable": playable.resultMap, "broadcasts": broadcasts.flatMap { (value: [Broadcast]) -> [ResultMap] in value.map { (value: Broadcast) -> ResultMap in value.resultMap } }, "entitlement": entitlement.flatMap { (value: Entitlement) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var logoDefault: String? {
    get {
      return resultMap["logoDefault"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "logoDefault")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var logoDark: String? {
    get {
      return resultMap["logoDark"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "logoDark")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var logoLight: String? {
    get {
      return resultMap["logoLight"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "logoLight")
    }
  }

  public var playable: Playable {
    get {
      return Playable(unsafeResultMap: resultMap["playable"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "playable")
    }
  }

  /// Get broadcasts for channel by day. If no day is provided it will default to today in UTC.
  public var broadcasts: [Broadcast]? {
    get {
      return (resultMap["broadcasts"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Broadcast] in value.map { (value: ResultMap) -> Broadcast in Broadcast(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Broadcast]) -> [ResultMap] in value.map { (value: Broadcast) -> ResultMap in value.resultMap } }, forKey: "broadcasts")
    }
  }

  /// Entitlement returns available entitlements for this viewable.
  /// 
  /// If the user is not authenticated it will always return null. You can use the
  /// viewer.isAuthenticated to check in the response from GraphQL.
  public var entitlement: Entitlement? {
    get {
      return (resultMap["entitlement"] as? ResultMap).flatMap { Entitlement(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "entitlement")
    }
  }

  public struct Playable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(EpgPlayableFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeChannelPlayable(id: String, duration: Int? = nil) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "ChannelPlayable", "id": id, "duration": duration])
    }

    public static func makeLiveEventPlayable() -> Playable {
      return Playable(unsafeResultMap: ["__typename": "LiveEventPlayable"])
    }

    public static func makeVodPlayable() -> Playable {
      return Playable(unsafeResultMap: ["__typename": "VodPlayable"])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var epgPlayableFragment: EpgPlayableFragment {
        get {
          return EpgPlayableFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Broadcast: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Broadcast"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(EpgBroadcastInfoFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var epgBroadcastInfoFragment: EpgBroadcastInfoFragment {
        get {
          return EpgBroadcastInfoFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Entitlement: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["EntitlementSubscribeType", "EntitlementBuyType", "EntitlementDefaultType", "EntitlementPassType", "EntitlementPurchaseType", "EntitlementRentType", "EntitlementThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("offerId", type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeEntitlementSubscribeType(offerId: String? = nil) -> Entitlement {
      return Entitlement(unsafeResultMap: ["__typename": "EntitlementSubscribeType", "offerId": offerId])
    }

    public static func makeEntitlementBuyType(offerId: String? = nil) -> Entitlement {
      return Entitlement(unsafeResultMap: ["__typename": "EntitlementBuyType", "offerId": offerId])
    }

    public static func makeEntitlementDefaultType(offerId: String? = nil) -> Entitlement {
      return Entitlement(unsafeResultMap: ["__typename": "EntitlementDefaultType", "offerId": offerId])
    }

    public static func makeEntitlementPassType(offerId: String? = nil) -> Entitlement {
      return Entitlement(unsafeResultMap: ["__typename": "EntitlementPassType", "offerId": offerId])
    }

    public static func makeEntitlementPurchaseType(offerId: String? = nil) -> Entitlement {
      return Entitlement(unsafeResultMap: ["__typename": "EntitlementPurchaseType", "offerId": offerId])
    }

    public static func makeEntitlementRentType(offerId: String? = nil) -> Entitlement {
      return Entitlement(unsafeResultMap: ["__typename": "EntitlementRentType", "offerId": offerId])
    }

    public static func makeEntitlementThirdPartyType(offerId: String? = nil) -> Entitlement {
      return Entitlement(unsafeResultMap: ["__typename": "EntitlementThirdPartyType", "offerId": offerId])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var offerId: String? {
      get {
        return resultMap["offerId"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "offerId")
      }
    }
  }
}

public struct EpgBroadcastInfoFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment EPGBroadcastInfoFragment on Broadcast {
      __typename
      id
      title
      start
      stop
      catchup {
        __typename
        from
        to
      }
      liveAvailable
    }
    """

  public static let possibleTypes: [String] = ["Broadcast"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .nonNull(.scalar(String.self))),
      GraphQLField("start", type: .nonNull(.scalar(Int.self))),
      GraphQLField("stop", type: .nonNull(.scalar(Int.self))),
      GraphQLField("catchup", type: .object(Catchup.selections)),
      GraphQLField("liveAvailable", type: .nonNull(.scalar(Bool.self))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: String, title: String, start: Int, stop: Int, catchup: Catchup? = nil, liveAvailable: Bool) {
    self.init(unsafeResultMap: ["__typename": "Broadcast", "id": id, "title": title, "start": start, "stop": stop, "catchup": catchup.flatMap { (value: Catchup) -> ResultMap in value.resultMap }, "liveAvailable": liveAvailable])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// A unique id for this broadcast
  public var id: String {
    get {
      return resultMap["id"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  /// Title of broadcast
  public var title: String {
    get {
      return resultMap["title"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  /// Start time of broadcast in unix timestamp (seconds from epoch time)
  public var start: Int {
    get {
      return resultMap["start"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "start")
    }
  }

  /// Stop time of broadcast in unix timestamp (seconds from epoch time)
  public var stop: Int {
    get {
      return resultMap["stop"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "stop")
    }
  }

  /// Recorded interval for when broadcast is available
  public var catchup: Catchup? {
    get {
      return (resultMap["catchup"] as? ResultMap).flatMap { Catchup(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "catchup")
    }
  }

  /// Is it allowed to play this live
  public var liveAvailable: Bool {
    get {
      return resultMap["liveAvailable"]! as! Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "liveAvailable")
    }
  }

  public struct Catchup: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Catchup"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("from", type: .nonNull(.scalar(Int.self))),
        GraphQLField("to", type: .nonNull(.scalar(Int.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(from: Int, to: Int) {
      self.init(unsafeResultMap: ["__typename": "Catchup", "from": from, "to": to])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var from: Int {
      get {
        return resultMap["from"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "from")
      }
    }

    public var to: Int {
      get {
        return resultMap["to"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "to")
      }
    }
  }
}

public struct EpgPlayableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment EPGPlayableFragment on Playable {
      __typename
      ...EPGChannelPlayable
      ...EPGBroadcastPlayable
    }
    """

  public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLFragmentSpread(EpgChannelPlayable.self),
      GraphQLFragmentSpread(EpgBroadcastPlayable.self),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public static func makeChannelPlayable(id: String, duration: Int? = nil) -> EpgPlayableFragment {
    return EpgPlayableFragment(unsafeResultMap: ["__typename": "ChannelPlayable", "id": id, "duration": duration])
  }

  public static func makeLiveEventPlayable() -> EpgPlayableFragment {
    return EpgPlayableFragment(unsafeResultMap: ["__typename": "LiveEventPlayable"])
  }

  public static func makeVodPlayable() -> EpgPlayableFragment {
    return EpgPlayableFragment(unsafeResultMap: ["__typename": "VodPlayable"])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var fragments: Fragments {
    get {
      return Fragments(unsafeResultMap: resultMap)
    }
    set {
      resultMap += newValue.resultMap
    }
  }

  public struct Fragments {
    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var epgChannelPlayable: EpgChannelPlayable? {
      get {
        if !EpgChannelPlayable.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return EpgChannelPlayable(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }

    public var epgBroadcastPlayable: EpgBroadcastPlayable? {
      get {
        if !EpgBroadcastPlayable.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return EpgBroadcastPlayable(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }
  }
}

public struct EpgChannelPlayable: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment EPGChannelPlayable on ChannelPlayable {
      __typename
      id
      duration
    }
    """

  public static let possibleTypes: [String] = ["ChannelPlayable"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(String.self))),
      GraphQLField("duration", type: .scalar(Int.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: String, duration: Int? = nil) {
    self.init(unsafeResultMap: ["__typename": "ChannelPlayable", "id": id, "duration": duration])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var id: String {
    get {
      return resultMap["id"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  public var duration: Int? {
    get {
      return resultMap["duration"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "duration")
    }
  }
}

public struct EpgBroadcastPlayable: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment EPGBroadcastPlayable on BroadcastPlayable {
      __typename
      id
      catchup {
        __typename
        from
        to
      }
    }
    """

  public static let possibleTypes: [String] = ["BroadcastPlayable"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(String.self))),
      GraphQLField("catchup", type: .nonNull(.object(Catchup.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: String, catchup: Catchup) {
    self.init(unsafeResultMap: ["__typename": "BroadcastPlayable", "id": id, "catchup": catchup.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var id: String {
    get {
      return resultMap["id"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  public var catchup: Catchup {
    get {
      return Catchup(unsafeResultMap: resultMap["catchup"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "catchup")
    }
  }

  public struct Catchup: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Catchup"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("from", type: .nonNull(.scalar(Int.self))),
        GraphQLField("to", type: .nonNull(.scalar(Int.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(from: Int, to: Int) {
      self.init(unsafeResultMap: ["__typename": "Catchup", "from": from, "to": to])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var from: Int {
      get {
        return resultMap["from"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "from")
      }
    }

    public var to: Int {
      get {
        return resultMap["to"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "to")
      }
    }
  }
}

public struct FavoritesPickerChannelFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment FavoritesPickerChannelFragment on Channel {
      __typename
      magineId
      title
      logoDefault: image
      logoDark: image(type: "logo-dark")
      logoLight: image(type: "logo-light")
      inMyList
    }
    """

  public static let possibleTypes: [String] = ["Channel"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("image", alias: "logoDefault", type: .scalar(String.self)),
      GraphQLField("image", alias: "logoDark", arguments: ["type": "logo-dark"], type: .scalar(String.self)),
      GraphQLField("image", alias: "logoLight", arguments: ["type": "logo-light"], type: .scalar(String.self)),
      GraphQLField("inMyList", type: .scalar(Bool.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(magineId: String, title: String? = nil, logoDefault: String? = nil, logoDark: String? = nil, logoLight: String? = nil, inMyList: Bool? = nil) {
    self.init(unsafeResultMap: ["__typename": "Channel", "magineId": magineId, "title": title, "logoDefault": logoDefault, "logoDark": logoDark, "logoLight": logoLight, "inMyList": inMyList])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var magineId: String {
    get {
      return resultMap["magineId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "magineId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var logoDefault: String? {
    get {
      return resultMap["logoDefault"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "logoDefault")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var logoDark: String? {
    get {
      return resultMap["logoDark"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "logoDark")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var logoLight: String? {
    get {
      return resultMap["logoLight"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "logoLight")
    }
  }

  public var inMyList: Bool? {
    get {
      return resultMap["inMyList"] as? Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "inMyList")
    }
  }
}

public struct OfferFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment OfferFragment on OfferInterfaceType {
      __typename
      id
      title
      usps
      ... on SubscribeType {
        __typename
        priceInCents
        currency
        recurringPeriod {
          __typename
          length
          unit
        }
      }
      ... on BuyType {
        __typename
        priceInCents
        currency
      }
      ... on PassType {
        __typename
        priceInCents
        currency
        purchaseAvailableUntil
      }
      ... on RentType {
        __typename
        priceInCents
        currency
      }
      ... on ThirdPartyType {
        __typename
        subtype
        providerName
        externalOfferId
        subtype
        entitlementDurationSec
      }
    }
    """

  public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLTypeCase(
        variants: ["SubscribeType": AsSubscribeType.selections, "BuyType": AsBuyType.selections, "PassType": AsPassType.selections, "RentType": AsRentType.selections, "ThirdPartyType": AsThirdPartyType.selections],
        default: [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("usps", type: .list(.nonNull(.scalar(String.self)))),
        ]
      )
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> OfferFragment {
    return OfferFragment(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
  }

  public static func makeSubscribeType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, recurringPeriod: AsSubscribeType.RecurringPeriod? = nil) -> OfferFragment {
    return OfferFragment(unsafeResultMap: ["__typename": "SubscribeType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "recurringPeriod": recurringPeriod.flatMap { (value: AsSubscribeType.RecurringPeriod) -> ResultMap in value.resultMap }])
  }

  public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> OfferFragment {
    return OfferFragment(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
  }

  public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> OfferFragment {
    return OfferFragment(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
  }

  public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> OfferFragment {
    return OfferFragment(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
  }

  public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> OfferFragment {
    return OfferFragment(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return resultMap["id"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var usps: [String]? {
    get {
      return resultMap["usps"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "usps")
    }
  }

  public var asSubscribeType: AsSubscribeType? {
    get {
      if !AsSubscribeType.possibleTypes.contains(__typename) { return nil }
      return AsSubscribeType(unsafeResultMap: resultMap)
    }
    set {
      guard let newValue = newValue else { return }
      resultMap = newValue.resultMap
    }
  }

  public struct AsSubscribeType: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["SubscribeType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("usps", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("priceInCents", type: .nonNull(.scalar(Long.self))),
        GraphQLField("currency", type: .nonNull(.scalar(String.self))),
        GraphQLField("recurringPeriod", type: .object(RecurringPeriod.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, recurringPeriod: RecurringPeriod? = nil) {
      self.init(unsafeResultMap: ["__typename": "SubscribeType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "recurringPeriod": recurringPeriod.flatMap { (value: RecurringPeriod) -> ResultMap in value.resultMap }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return resultMap["id"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }

    public var title: String? {
      get {
        return resultMap["title"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "title")
      }
    }

    public var usps: [String]? {
      get {
        return resultMap["usps"] as? [String]
      }
      set {
        resultMap.updateValue(newValue, forKey: "usps")
      }
    }

    /// Price in cents for the offer option
    public var priceInCents: Long {
      get {
        return resultMap["priceInCents"]! as! Long
      }
      set {
        resultMap.updateValue(newValue, forKey: "priceInCents")
      }
    }

    /// Currency for the offer option
    public var currency: String {
      get {
        return resultMap["currency"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "currency")
      }
    }

    /// Subscription renewal periodicity (i.e. Monthly/Yearly payment)
    public var recurringPeriod: RecurringPeriod? {
      get {
        return (resultMap["recurringPeriod"] as? ResultMap).flatMap { RecurringPeriod(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "recurringPeriod")
      }
    }

    public struct RecurringPeriod: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["RecurringPeriodType"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("length", type: .nonNull(.scalar(Int.self))),
          GraphQLField("unit", type: .nonNull(.scalar(RecurringPeriodUnitType.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(length: Int, unit: RecurringPeriodUnitType) {
        self.init(unsafeResultMap: ["__typename": "RecurringPeriodType", "length": length, "unit": unit])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// Length of subscriptionNumber of [unit]
      public var length: Int {
        get {
          return resultMap["length"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "length")
        }
      }

      /// Subscription unit
      public var unit: RecurringPeriodUnitType {
        get {
          return resultMap["unit"]! as! RecurringPeriodUnitType
        }
        set {
          resultMap.updateValue(newValue, forKey: "unit")
        }
      }
    }
  }

  public var asBuyType: AsBuyType? {
    get {
      if !AsBuyType.possibleTypes.contains(__typename) { return nil }
      return AsBuyType(unsafeResultMap: resultMap)
    }
    set {
      guard let newValue = newValue else { return }
      resultMap = newValue.resultMap
    }
  }

  public struct AsBuyType: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["BuyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("usps", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("priceInCents", type: .nonNull(.scalar(Long.self))),
        GraphQLField("currency", type: .nonNull(.scalar(String.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) {
      self.init(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return resultMap["id"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }

    public var title: String? {
      get {
        return resultMap["title"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "title")
      }
    }

    public var usps: [String]? {
      get {
        return resultMap["usps"] as? [String]
      }
      set {
        resultMap.updateValue(newValue, forKey: "usps")
      }
    }

    /// Price in cents for the offer option
    public var priceInCents: Long {
      get {
        return resultMap["priceInCents"]! as! Long
      }
      set {
        resultMap.updateValue(newValue, forKey: "priceInCents")
      }
    }

    /// Currency for the offer option
    public var currency: String {
      get {
        return resultMap["currency"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "currency")
      }
    }
  }

  public var asPassType: AsPassType? {
    get {
      if !AsPassType.possibleTypes.contains(__typename) { return nil }
      return AsPassType(unsafeResultMap: resultMap)
    }
    set {
      guard let newValue = newValue else { return }
      resultMap = newValue.resultMap
    }
  }

  public struct AsPassType: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["PassType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("usps", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("priceInCents", type: .nonNull(.scalar(Long.self))),
        GraphQLField("currency", type: .nonNull(.scalar(String.self))),
        GraphQLField("purchaseAvailableUntil", type: .scalar(Instant.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) {
      self.init(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return resultMap["id"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }

    public var title: String? {
      get {
        return resultMap["title"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "title")
      }
    }

    public var usps: [String]? {
      get {
        return resultMap["usps"] as? [String]
      }
      set {
        resultMap.updateValue(newValue, forKey: "usps")
      }
    }

    /// Price in cents for the offer option
    public var priceInCents: Long {
      get {
        return resultMap["priceInCents"]! as! Long
      }
      set {
        resultMap.updateValue(newValue, forKey: "priceInCents")
      }
    }

    /// Currency for the offer option
    public var currency: String {
      get {
        return resultMap["currency"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "currency")
      }
    }

    /// Offer is available until this date, format is in ISO-8601, if not set the offer is available indefinitely
    public var purchaseAvailableUntil: Instant? {
      get {
        return resultMap["purchaseAvailableUntil"] as? Instant
      }
      set {
        resultMap.updateValue(newValue, forKey: "purchaseAvailableUntil")
      }
    }
  }

  public var asRentType: AsRentType? {
    get {
      if !AsRentType.possibleTypes.contains(__typename) { return nil }
      return AsRentType(unsafeResultMap: resultMap)
    }
    set {
      guard let newValue = newValue else { return }
      resultMap = newValue.resultMap
    }
  }

  public struct AsRentType: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["RentType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("usps", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("priceInCents", type: .nonNull(.scalar(Long.self))),
        GraphQLField("currency", type: .nonNull(.scalar(String.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) {
      self.init(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return resultMap["id"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }

    public var title: String? {
      get {
        return resultMap["title"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "title")
      }
    }

    public var usps: [String]? {
      get {
        return resultMap["usps"] as? [String]
      }
      set {
        resultMap.updateValue(newValue, forKey: "usps")
      }
    }

    /// Price in cents for the offer option
    public var priceInCents: Long {
      get {
        return resultMap["priceInCents"]! as! Long
      }
      set {
        resultMap.updateValue(newValue, forKey: "priceInCents")
      }
    }

    /// Currency for the offer option
    public var currency: String {
      get {
        return resultMap["currency"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "currency")
      }
    }
  }

  public var asThirdPartyType: AsThirdPartyType? {
    get {
      if !AsThirdPartyType.possibleTypes.contains(__typename) { return nil }
      return AsThirdPartyType(unsafeResultMap: resultMap)
    }
    set {
      guard let newValue = newValue else { return }
      resultMap = newValue.resultMap
    }
  }

  public struct AsThirdPartyType: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("usps", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("subtype", type: .nonNull(.scalar(ThirdPartyOfferSubtype.self))),
        GraphQLField("providerName", type: .nonNull(.scalar(ProviderName.self))),
        GraphQLField("externalOfferId", type: .nonNull(.scalar(String.self))),
        GraphQLField("subtype", type: .nonNull(.scalar(ThirdPartyOfferSubtype.self))),
        GraphQLField("entitlementDurationSec", type: .scalar(Int.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) {
      self.init(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return resultMap["id"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }

    public var title: String? {
      get {
        return resultMap["title"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "title")
      }
    }

    public var usps: [String]? {
      get {
        return resultMap["usps"] as? [String]
      }
      set {
        resultMap.updateValue(newValue, forKey: "usps")
      }
    }

    /// The type of the 3rd party offer, i.e. 'subscription', 'est', 'rental', 'pass' or 'outsourced'.
    public var subtype: ThirdPartyOfferSubtype {
      get {
        return resultMap["subtype"]! as! ThirdPartyOfferSubtype
      }
      set {
        resultMap.updateValue(newValue, forKey: "subtype")
      }
    }

    /// The name of the provider, e.g. GOOGLE, APPLE, A-CUSTOM-PROVIDER.
    public var providerName: ProviderName {
      get {
        return resultMap["providerName"]! as! ProviderName
      }
      set {
        resultMap.updateValue(newValue, forKey: "providerName")
      }
    }

    /// The id of the offer in the external store or in the partner's backend.
    public var externalOfferId: String {
      get {
        return resultMap["externalOfferId"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "externalOfferId")
      }
    }

    /// The number of seconds a user will be entitled to the content.
    public var entitlementDurationSec: Int? {
      get {
        return resultMap["entitlementDurationSec"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "entitlementDurationSec")
      }
    }
  }
}

public struct PlayerBroadcastFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment PlayerBroadcastFragment on Broadcast {
      __typename
      id
      title
      start
      stop
      image
      description
      rights {
        __typename
        fastForward
        rewind
        pause
        adsFastForward
        adsRewind
        adsPause
      }
    }
    """

  public static let possibleTypes: [String] = ["Broadcast"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .nonNull(.scalar(String.self))),
      GraphQLField("start", type: .nonNull(.scalar(Int.self))),
      GraphQLField("stop", type: .nonNull(.scalar(Int.self))),
      GraphQLField("image", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("rights", type: .object(Right.selections)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: String, title: String, start: Int, stop: Int, image: String? = nil, description: String? = nil, rights: Right? = nil) {
    self.init(unsafeResultMap: ["__typename": "Broadcast", "id": id, "title": title, "start": start, "stop": stop, "image": image, "description": description, "rights": rights.flatMap { (value: Right) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// A unique id for this broadcast
  public var id: String {
    get {
      return resultMap["id"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  /// Title of broadcast
  public var title: String {
    get {
      return resultMap["title"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  /// Start time of broadcast in unix timestamp (seconds from epoch time)
  public var start: Int {
    get {
      return resultMap["start"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "start")
    }
  }

  /// Stop time of broadcast in unix timestamp (seconds from epoch time)
  public var stop: Int {
    get {
      return resultMap["stop"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "stop")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var image: String? {
    get {
      return resultMap["image"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "image")
    }
  }

  /// Description of broadcast
  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// Rights available: fastForward, pause and rewind rights
  public var rights: Right? {
    get {
      return (resultMap["rights"] as? ResultMap).flatMap { Right(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "rights")
    }
  }

  public struct Right: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Rights"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("fastForward", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("rewind", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("pause", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("adsFastForward", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("adsRewind", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("adsPause", type: .nonNull(.scalar(Bool.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(fastForward: Bool, rewind: Bool, pause: Bool, adsFastForward: Bool, adsRewind: Bool, adsPause: Bool) {
      self.init(unsafeResultMap: ["__typename": "Rights", "fastForward": fastForward, "rewind": rewind, "pause": pause, "adsFastForward": adsFastForward, "adsRewind": adsRewind, "adsPause": adsPause])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fastForward: Bool {
      get {
        return resultMap["fastForward"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "fastForward")
      }
    }

    public var rewind: Bool {
      get {
        return resultMap["rewind"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "rewind")
      }
    }

    public var pause: Bool {
      get {
        return resultMap["pause"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "pause")
      }
    }

    public var adsFastForward: Bool {
      get {
        return resultMap["adsFastForward"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "adsFastForward")
      }
    }

    public var adsRewind: Bool {
      get {
        return resultMap["adsRewind"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "adsRewind")
      }
    }

    public var adsPause: Bool {
      get {
        return resultMap["adsPause"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "adsPause")
      }
    }
  }
}

public struct PlayerViewableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment PlayerViewableFragment on ViewableInterface {
      __typename
      title
      sixteenNineImage: image(type: "sixteen-nine")
      ...Episode
    }
    """

  public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("image", alias: "sixteenNineImage", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
      GraphQLFragmentSpread(Episode.self),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public static func makeChannel(title: String? = nil, sixteenNineImage: String? = nil) -> PlayerViewableFragment {
    return PlayerViewableFragment(unsafeResultMap: ["__typename": "Channel", "title": title, "sixteenNineImage": sixteenNineImage])
  }

  public static func makeTrailer(title: String? = nil, sixteenNineImage: String? = nil) -> PlayerViewableFragment {
    return PlayerViewableFragment(unsafeResultMap: ["__typename": "Trailer", "title": title, "sixteenNineImage": sixteenNineImage])
  }

  public static func makeShow(title: String? = nil, sixteenNineImage: String? = nil) -> PlayerViewableFragment {
    return PlayerViewableFragment(unsafeResultMap: ["__typename": "Show", "title": title, "sixteenNineImage": sixteenNineImage])
  }

  public static func makeMovie(title: String? = nil, sixteenNineImage: String? = nil) -> PlayerViewableFragment {
    return PlayerViewableFragment(unsafeResultMap: ["__typename": "Movie", "title": title, "sixteenNineImage": sixteenNineImage])
  }

  public static func makeProgram(title: String? = nil, sixteenNineImage: String? = nil) -> PlayerViewableFragment {
    return PlayerViewableFragment(unsafeResultMap: ["__typename": "Program", "title": title, "sixteenNineImage": sixteenNineImage])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var sixteenNineImage: String? {
    get {
      return resultMap["sixteenNineImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "sixteenNineImage")
    }
  }

  public var fragments: Fragments {
    get {
      return Fragments(unsafeResultMap: resultMap)
    }
    set {
      resultMap += newValue.resultMap
    }
  }

  public struct Fragments {
    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var episode: Episode? {
      get {
        if !Episode.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
        return Episode(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap += newValue.resultMap
      }
    }
  }
}

public struct Episode: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment Episode on Episode {
      __typename
      seasonNumber
      episodeNumber
      show {
        __typename
        seasons {
          __typename
          seasonNumber
          episodes {
            __typename
            viewableId: magineId
            defaultPlayable {
              __typename
              playableId: id
            }
            episodeNumber
            seasonNumber
            title
            sixteenNineImage: image(type: "sixteen-nine")
            entitlement {
              __typename
              offerId
            }
            offers {
              __typename
              ...OfferFragment
            }
          }
        }
      }
    }
    """

  public static let possibleTypes: [String] = ["Episode"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("seasonNumber", type: .scalar(Int.self)),
      GraphQLField("episodeNumber", type: .scalar(Int.self)),
      GraphQLField("show", type: .object(Show.selections)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(seasonNumber: Int? = nil, episodeNumber: Int? = nil, show: Show? = nil) {
    self.init(unsafeResultMap: ["__typename": "Episode", "seasonNumber": seasonNumber, "episodeNumber": episodeNumber, "show": show.flatMap { (value: Show) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var seasonNumber: Int? {
    get {
      return resultMap["seasonNumber"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "seasonNumber")
    }
  }

  public var episodeNumber: Int? {
    get {
      return resultMap["episodeNumber"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "episodeNumber")
    }
  }

  public var show: Show? {
    get {
      return (resultMap["show"] as? ResultMap).flatMap { Show(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "show")
    }
  }

  public struct Show: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Show"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("seasons", type: .list(.nonNull(.object(Season.selections)))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(seasons: [Season]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Show", "seasons": seasons.flatMap { (value: [Season]) -> [ResultMap] in value.map { (value: Season) -> ResultMap in value.resultMap } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var seasons: [Season]? {
      get {
        return (resultMap["seasons"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Season] in value.map { (value: ResultMap) -> Season in Season(unsafeResultMap: value) } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Season]) -> [ResultMap] in value.map { (value: Season) -> ResultMap in value.resultMap } }, forKey: "seasons")
      }
    }

    public struct Season: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Season"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("seasonNumber", type: .scalar(Int.self)),
          GraphQLField("episodes", type: .list(.nonNull(.object(Episode.selections)))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(seasonNumber: Int? = nil, episodes: [Episode]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Season", "seasonNumber": seasonNumber, "episodes": episodes.flatMap { (value: [Episode]) -> [ResultMap] in value.map { (value: Episode) -> ResultMap in value.resultMap } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var seasonNumber: Int? {
        get {
          return resultMap["seasonNumber"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "seasonNumber")
        }
      }

      public var episodes: [Episode]? {
        get {
          return (resultMap["episodes"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Episode] in value.map { (value: ResultMap) -> Episode in Episode(unsafeResultMap: value) } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Episode]) -> [ResultMap] in value.map { (value: Episode) -> ResultMap in value.resultMap } }, forKey: "episodes")
        }
      }

      public struct Episode: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Episode"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("magineId", alias: "viewableId", type: .nonNull(.scalar(String.self))),
            GraphQLField("defaultPlayable", type: .object(DefaultPlayable.selections)),
            GraphQLField("episodeNumber", type: .scalar(Int.self)),
            GraphQLField("seasonNumber", type: .scalar(Int.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("image", alias: "sixteenNineImage", arguments: ["type": "sixteen-nine"], type: .scalar(String.self)),
            GraphQLField("entitlement", type: .object(Entitlement.selections)),
            GraphQLField("offers", type: .nonNull(.list(.nonNull(.object(Offer.selections))))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(viewableId: String, defaultPlayable: DefaultPlayable? = nil, episodeNumber: Int? = nil, seasonNumber: Int? = nil, title: String? = nil, sixteenNineImage: String? = nil, entitlement: Entitlement? = nil, offers: [Offer]) {
          self.init(unsafeResultMap: ["__typename": "Episode", "viewableId": viewableId, "defaultPlayable": defaultPlayable.flatMap { (value: DefaultPlayable) -> ResultMap in value.resultMap }, "episodeNumber": episodeNumber, "seasonNumber": seasonNumber, "title": title, "sixteenNineImage": sixteenNineImage, "entitlement": entitlement.flatMap { (value: Entitlement) -> ResultMap in value.resultMap }, "offers": offers.map { (value: Offer) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// use this id for urls and presentation
        public var viewableId: String {
          get {
            return resultMap["viewableId"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "viewableId")
          }
        }

        public var defaultPlayable: DefaultPlayable? {
          get {
            return (resultMap["defaultPlayable"] as? ResultMap).flatMap { DefaultPlayable(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "defaultPlayable")
          }
        }

        public var episodeNumber: Int? {
          get {
            return resultMap["episodeNumber"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "episodeNumber")
          }
        }

        public var seasonNumber: Int? {
          get {
            return resultMap["seasonNumber"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "seasonNumber")
          }
        }

        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        /// An image URL.
        /// 
        /// If no parameters are specified an image marked as default in the metadata will
        /// be picked. If no image is marked as default the first image in the list will
        /// be returned. In the case of no images available null is returned.
        /// 
        /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
        public var sixteenNineImage: String? {
          get {
            return resultMap["sixteenNineImage"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "sixteenNineImage")
          }
        }

        /// Entitlement returns available entitlements for this viewable.
        /// 
        /// If the user is not authenticated it will always return null. You can use the
        /// viewer.isAuthenticated to check in the response from GraphQL.
        public var entitlement: Entitlement? {
          get {
            return (resultMap["entitlement"] as? ResultMap).flatMap { Entitlement(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "entitlement")
          }
        }

        public var offers: [Offer] {
          get {
            return (resultMap["offers"] as! [ResultMap]).map { (value: ResultMap) -> Offer in Offer(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: Offer) -> ResultMap in value.resultMap }, forKey: "offers")
          }
        }

        public struct DefaultPlayable: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", alias: "playableId", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public static func makeBroadcastPlayable(playableId: String) -> DefaultPlayable {
            return DefaultPlayable(unsafeResultMap: ["__typename": "BroadcastPlayable", "playableId": playableId])
          }

          public static func makeChannelPlayable(playableId: String) -> DefaultPlayable {
            return DefaultPlayable(unsafeResultMap: ["__typename": "ChannelPlayable", "playableId": playableId])
          }

          public static func makeLiveEventPlayable(playableId: String) -> DefaultPlayable {
            return DefaultPlayable(unsafeResultMap: ["__typename": "LiveEventPlayable", "playableId": playableId])
          }

          public static func makeVodPlayable(playableId: String) -> DefaultPlayable {
            return DefaultPlayable(unsafeResultMap: ["__typename": "VodPlayable", "playableId": playableId])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var playableId: String {
            get {
              return resultMap["playableId"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "playableId")
            }
          }
        }

        public struct Entitlement: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["EntitlementSubscribeType", "EntitlementBuyType", "EntitlementDefaultType", "EntitlementPassType", "EntitlementPurchaseType", "EntitlementRentType", "EntitlementThirdPartyType"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("offerId", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public static func makeEntitlementSubscribeType(offerId: String? = nil) -> Entitlement {
            return Entitlement(unsafeResultMap: ["__typename": "EntitlementSubscribeType", "offerId": offerId])
          }

          public static func makeEntitlementBuyType(offerId: String? = nil) -> Entitlement {
            return Entitlement(unsafeResultMap: ["__typename": "EntitlementBuyType", "offerId": offerId])
          }

          public static func makeEntitlementDefaultType(offerId: String? = nil) -> Entitlement {
            return Entitlement(unsafeResultMap: ["__typename": "EntitlementDefaultType", "offerId": offerId])
          }

          public static func makeEntitlementPassType(offerId: String? = nil) -> Entitlement {
            return Entitlement(unsafeResultMap: ["__typename": "EntitlementPassType", "offerId": offerId])
          }

          public static func makeEntitlementPurchaseType(offerId: String? = nil) -> Entitlement {
            return Entitlement(unsafeResultMap: ["__typename": "EntitlementPurchaseType", "offerId": offerId])
          }

          public static func makeEntitlementRentType(offerId: String? = nil) -> Entitlement {
            return Entitlement(unsafeResultMap: ["__typename": "EntitlementRentType", "offerId": offerId])
          }

          public static func makeEntitlementThirdPartyType(offerId: String? = nil) -> Entitlement {
            return Entitlement(unsafeResultMap: ["__typename": "EntitlementThirdPartyType", "offerId": offerId])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var offerId: String? {
            get {
              return resultMap["offerId"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "offerId")
            }
          }
        }

        public struct Offer: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLFragmentSpread(OfferFragment.self),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
            return Offer(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
          }

          public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> Offer {
            return Offer(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
          }

          public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> Offer {
            return Offer(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
          }

          public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
            return Offer(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
          }

          public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> Offer {
            return Offer(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var fragments: Fragments {
            get {
              return Fragments(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }

          public struct Fragments {
            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public var offerFragment: OfferFragment {
              get {
                return OfferFragment(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }
          }
        }
      }
    }
  }
}

public struct PlayerChannelPlayableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment PlayerChannelPlayableFragment on ChannelPlayable {
      __typename
      rights {
        __typename
        fastForward
        rewind
        pause
        adsFastForward
        adsRewind
        adsPause
      }
      mms
      mmsOrigCode
    }
    """

  public static let possibleTypes: [String] = ["ChannelPlayable"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("rights", type: .nonNull(.object(Right.selections))),
      GraphQLField("mms", type: .nonNull(.scalar(Bool.self))),
      GraphQLField("mmsOrigCode", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(rights: Right, mms: Bool, mmsOrigCode: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "ChannelPlayable", "rights": rights.resultMap, "mms": mms, "mmsOrigCode": mmsOrigCode])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var rights: Right {
    get {
      return Right(unsafeResultMap: resultMap["rights"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "rights")
    }
  }

  public var mms: Bool {
    get {
      return resultMap["mms"]! as! Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "mms")
    }
  }

  public var mmsOrigCode: String? {
    get {
      return resultMap["mmsOrigCode"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "mmsOrigCode")
    }
  }

  public struct Right: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Rights"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("fastForward", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("rewind", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("pause", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("adsFastForward", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("adsRewind", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("adsPause", type: .nonNull(.scalar(Bool.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(fastForward: Bool, rewind: Bool, pause: Bool, adsFastForward: Bool, adsRewind: Bool, adsPause: Bool) {
      self.init(unsafeResultMap: ["__typename": "Rights", "fastForward": fastForward, "rewind": rewind, "pause": pause, "adsFastForward": adsFastForward, "adsRewind": adsRewind, "adsPause": adsPause])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fastForward: Bool {
      get {
        return resultMap["fastForward"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "fastForward")
      }
    }

    public var rewind: Bool {
      get {
        return resultMap["rewind"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "rewind")
      }
    }

    public var pause: Bool {
      get {
        return resultMap["pause"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "pause")
      }
    }

    public var adsFastForward: Bool {
      get {
        return resultMap["adsFastForward"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "adsFastForward")
      }
    }

    public var adsRewind: Bool {
      get {
        return resultMap["adsRewind"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "adsRewind")
      }
    }

    public var adsPause: Bool {
      get {
        return resultMap["adsPause"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "adsPause")
      }
    }
  }
}

public struct PlayerChannelFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment PlayerChannelFragment on Channel {
      __typename
      viewableId: magineId
      title
      logoDefault: image(type: "logo-dark")
      playable {
        __typename
        id
        ...PlayerChannelPlayableFragment
      }
    }
    """

  public static let possibleTypes: [String] = ["Channel"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("magineId", alias: "viewableId", type: .nonNull(.scalar(String.self))),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("image", alias: "logoDefault", arguments: ["type": "logo-dark"], type: .scalar(String.self)),
      GraphQLField("playable", type: .nonNull(.object(Playable.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(viewableId: String, title: String? = nil, logoDefault: String? = nil, playable: Playable) {
    self.init(unsafeResultMap: ["__typename": "Channel", "viewableId": viewableId, "title": title, "logoDefault": logoDefault, "playable": playable.resultMap])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// use this id for urls and presentation
  public var viewableId: String {
    get {
      return resultMap["viewableId"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "viewableId")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  /// An image URL.
  /// 
  /// If no parameters are specified an image marked as default in the metadata will
  /// be picked. If no image is marked as default the first image in the list will
  /// be returned. In the case of no images available null is returned.
  /// 
  /// If type is specified, it will pick an image with the specified type and if no match is found null is returned.
  public var logoDefault: String? {
    get {
      return resultMap["logoDefault"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "logoDefault")
    }
  }

  public var playable: Playable {
    get {
      return Playable(unsafeResultMap: resultMap["playable"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "playable")
    }
  }

  public struct Playable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["BroadcastPlayable", "ChannelPlayable", "LiveEventPlayable", "VodPlayable"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(PlayerChannelPlayableFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeBroadcastPlayable(id: String) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "BroadcastPlayable", "id": id])
    }

    public static func makeLiveEventPlayable(id: String) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "LiveEventPlayable", "id": id])
    }

    public static func makeVodPlayable(id: String) -> Playable {
      return Playable(unsafeResultMap: ["__typename": "VodPlayable", "id": id])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return resultMap["id"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var playerChannelPlayableFragment: PlayerChannelPlayableFragment? {
        get {
          if !PlayerChannelPlayableFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
          return PlayerChannelPlayableFragment(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct ProgramViewableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ProgramViewableFragment on Program {
      __typename
      inMyList
      webview
      providedBy {
        __typename
        ...ProvidedByFragment
      }
      related {
        __typename
        ...ViewableInterfaceFragment
      }
      offers {
        __typename
        ...OfferFragment
      }
      linkedViewables {
        __typename
        ...TrailerFragment
      }
      collections {
        __typename
        ...ViewablePosterCollection
        ...ViewableSixteenNineCollection
      }
    }
    """

  public static let possibleTypes: [String] = ["Program"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("inMyList", type: .scalar(Bool.self)),
      GraphQLField("webview", type: .scalar(String.self)),
      GraphQLField("providedBy", type: .object(ProvidedBy.selections)),
      GraphQLField("related", type: .list(.nonNull(.object(Related.selections)))),
      GraphQLField("offers", type: .nonNull(.list(.nonNull(.object(Offer.selections))))),
      GraphQLField("linkedViewables", type: .list(.nonNull(.object(LinkedViewable.selections)))),
      GraphQLField("collections", type: .list(.nonNull(.object(Collection.selections)))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(inMyList: Bool? = nil, webview: String? = nil, providedBy: ProvidedBy? = nil, related: [Related]? = nil, offers: [Offer], linkedViewables: [LinkedViewable]? = nil, collections: [Collection]? = nil) {
    self.init(unsafeResultMap: ["__typename": "Program", "inMyList": inMyList, "webview": webview, "providedBy": providedBy.flatMap { (value: ProvidedBy) -> ResultMap in value.resultMap }, "related": related.flatMap { (value: [Related]) -> [ResultMap] in value.map { (value: Related) -> ResultMap in value.resultMap } }, "offers": offers.map { (value: Offer) -> ResultMap in value.resultMap }, "linkedViewables": linkedViewables.flatMap { (value: [LinkedViewable]) -> [ResultMap] in value.map { (value: LinkedViewable) -> ResultMap in value.resultMap } }, "collections": collections.flatMap { (value: [Collection]) -> [ResultMap] in value.map { (value: Collection) -> ResultMap in value.resultMap } }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var inMyList: Bool? {
    get {
      return resultMap["inMyList"] as? Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "inMyList")
    }
  }

  public var webview: String? {
    get {
      return resultMap["webview"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "webview")
    }
  }

  public var providedBy: ProvidedBy? {
    get {
      return (resultMap["providedBy"] as? ResultMap).flatMap { ProvidedBy(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "providedBy")
    }
  }

  /// This attribute fetches related viewables based on attributes of the viewable.
  /// It should not be called for collections as it could be rejected because of
  /// high complexity. It should instead be called for views that render an
  /// individual viewable and the related viewables, e.g a detail page
  public var related: [Related]? {
    get {
      return (resultMap["related"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Related] in value.map { (value: ResultMap) -> Related in Related(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Related]) -> [ResultMap] in value.map { (value: Related) -> ResultMap in value.resultMap } }, forKey: "related")
    }
  }

  public var offers: [Offer] {
    get {
      return (resultMap["offers"] as! [ResultMap]).map { (value: ResultMap) -> Offer in Offer(unsafeResultMap: value) }
    }
    set {
      resultMap.updateValue(newValue.map { (value: Offer) -> ResultMap in value.resultMap }, forKey: "offers")
    }
  }

  /// A list of linked viewables
  /// 
  /// Important note: This should not be queried from a collection view but instead
  /// used only on detail pages. If you are using this, there is no need to also
  /// query for trailers, as the same information is available in this one.
  public var linkedViewables: [LinkedViewable]? {
    get {
      return (resultMap["linkedViewables"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [LinkedViewable] in value.map { (value: ResultMap) -> LinkedViewable in LinkedViewable(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [LinkedViewable]) -> [ResultMap] in value.map { (value: LinkedViewable) -> ResultMap in value.resultMap } }, forKey: "linkedViewables")
    }
  }

  /// Linked collections
  /// 
  /// A set of collections related to the viewable.
  /// Important note: This should not be queried from a collection view, but instead used only on detail pages.
  public var collections: [Collection]? {
    get {
      return (resultMap["collections"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Collection] in value.map { (value: ResultMap) -> Collection in Collection(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Collection]) -> [ResultMap] in value.map { (value: Collection) -> ResultMap in value.resultMap } }, forKey: "collections")
    }
  }

  public struct ProvidedBy: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ProvidedBy"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ProvidedByFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(brand: String, logo: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "ProvidedBy", "brand": brand, "logo": logo])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var providedByFragment: ProvidedByFragment {
        get {
          return ProvidedByFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Related: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewableInterfaceFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableInterfaceFragment: ViewableInterfaceFragment {
        get {
          return ViewableInterfaceFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Offer: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(OfferFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
    }

    public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
    }

    public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var offerFragment: OfferFragment {
        get {
          return OfferFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct LinkedViewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(TrailerFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeChannel() -> LinkedViewable {
      return LinkedViewable(unsafeResultMap: ["__typename": "Channel"])
    }

    public static func makeEpisode() -> LinkedViewable {
      return LinkedViewable(unsafeResultMap: ["__typename": "Episode"])
    }

    public static func makeShow() -> LinkedViewable {
      return LinkedViewable(unsafeResultMap: ["__typename": "Show"])
    }

    public static func makeMovie() -> LinkedViewable {
      return LinkedViewable(unsafeResultMap: ["__typename": "Movie"])
    }

    public static func makeProgram() -> LinkedViewable {
      return LinkedViewable(unsafeResultMap: ["__typename": "Program"])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var trailerFragment: TrailerFragment? {
        get {
          if !TrailerFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
          return TrailerFragment(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Collection: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["PosterCollection", "SixteenNineCollection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewablePosterCollection.self),
        GraphQLFragmentSpread(ViewableSixteenNineCollection.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewablePosterCollection: ViewablePosterCollection? {
        get {
          if !ViewablePosterCollection.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
          return ViewablePosterCollection(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap += newValue.resultMap
        }
      }

      public var viewableSixteenNineCollection: ViewableSixteenNineCollection? {
        get {
          if !ViewableSixteenNineCollection.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
          return ViewableSixteenNineCollection(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct MovieViewableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment MovieViewableFragment on Movie {
      __typename
      trailer
      inMyList
      webview
      countriesOfOrigin
      providedBy {
        __typename
        ...ProvidedByFragment
      }
      related {
        __typename
        ...ViewableInterfaceFragment
      }
      offers {
        __typename
        ...OfferFragment
      }
      linkedViewables {
        __typename
        ...TrailerFragment
      }
      collections {
        __typename
        ...ViewableSixteenNineCollection
        ...ViewablePosterCollection
      }
    }
    """

  public static let possibleTypes: [String] = ["Movie"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("trailer", type: .scalar(String.self)),
      GraphQLField("inMyList", type: .scalar(Bool.self)),
      GraphQLField("webview", type: .scalar(String.self)),
      GraphQLField("countriesOfOrigin", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("providedBy", type: .object(ProvidedBy.selections)),
      GraphQLField("related", type: .list(.nonNull(.object(Related.selections)))),
      GraphQLField("offers", type: .nonNull(.list(.nonNull(.object(Offer.selections))))),
      GraphQLField("linkedViewables", type: .list(.nonNull(.object(LinkedViewable.selections)))),
      GraphQLField("collections", type: .list(.nonNull(.object(Collection.selections)))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(trailer: String? = nil, inMyList: Bool? = nil, webview: String? = nil, countriesOfOrigin: [String]? = nil, providedBy: ProvidedBy? = nil, related: [Related]? = nil, offers: [Offer], linkedViewables: [LinkedViewable]? = nil, collections: [Collection]? = nil) {
    self.init(unsafeResultMap: ["__typename": "Movie", "trailer": trailer, "inMyList": inMyList, "webview": webview, "countriesOfOrigin": countriesOfOrigin, "providedBy": providedBy.flatMap { (value: ProvidedBy) -> ResultMap in value.resultMap }, "related": related.flatMap { (value: [Related]) -> [ResultMap] in value.map { (value: Related) -> ResultMap in value.resultMap } }, "offers": offers.map { (value: Offer) -> ResultMap in value.resultMap }, "linkedViewables": linkedViewables.flatMap { (value: [LinkedViewable]) -> [ResultMap] in value.map { (value: LinkedViewable) -> ResultMap in value.resultMap } }, "collections": collections.flatMap { (value: [Collection]) -> [ResultMap] in value.map { (value: Collection) -> ResultMap in value.resultMap } }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var trailer: String? {
    get {
      return resultMap["trailer"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "trailer")
    }
  }

  public var inMyList: Bool? {
    get {
      return resultMap["inMyList"] as? Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "inMyList")
    }
  }

  public var webview: String? {
    get {
      return resultMap["webview"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "webview")
    }
  }

  public var countriesOfOrigin: [String]? {
    get {
      return resultMap["countriesOfOrigin"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "countriesOfOrigin")
    }
  }

  public var providedBy: ProvidedBy? {
    get {
      return (resultMap["providedBy"] as? ResultMap).flatMap { ProvidedBy(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "providedBy")
    }
  }

  /// This attribute fetches related viewables based on attributes of the viewable.
  /// It should not be called for collections as it could be rejected because of
  /// high complexity. It should instead be called for views that render an
  /// individual viewable and the related viewables, e.g a detail page
  public var related: [Related]? {
    get {
      return (resultMap["related"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Related] in value.map { (value: ResultMap) -> Related in Related(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Related]) -> [ResultMap] in value.map { (value: Related) -> ResultMap in value.resultMap } }, forKey: "related")
    }
  }

  public var offers: [Offer] {
    get {
      return (resultMap["offers"] as! [ResultMap]).map { (value: ResultMap) -> Offer in Offer(unsafeResultMap: value) }
    }
    set {
      resultMap.updateValue(newValue.map { (value: Offer) -> ResultMap in value.resultMap }, forKey: "offers")
    }
  }

  /// A list of linked viewables
  /// 
  /// Important note: This should not be queried from a collection view but instead
  /// used only on detail pages. If you are using this, there is no need to also
  /// query for trailers, as the same information is available in this one.
  public var linkedViewables: [LinkedViewable]? {
    get {
      return (resultMap["linkedViewables"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [LinkedViewable] in value.map { (value: ResultMap) -> LinkedViewable in LinkedViewable(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [LinkedViewable]) -> [ResultMap] in value.map { (value: LinkedViewable) -> ResultMap in value.resultMap } }, forKey: "linkedViewables")
    }
  }

  /// Linked collections
  /// 
  /// A set of collections related to the viewable.
  /// Important note: This should not be queried from a collection view, but instead used only on detail pages.
  public var collections: [Collection]? {
    get {
      return (resultMap["collections"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Collection] in value.map { (value: ResultMap) -> Collection in Collection(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Collection]) -> [ResultMap] in value.map { (value: Collection) -> ResultMap in value.resultMap } }, forKey: "collections")
    }
  }

  public struct ProvidedBy: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ProvidedBy"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ProvidedByFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(brand: String, logo: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "ProvidedBy", "brand": brand, "logo": logo])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var providedByFragment: ProvidedByFragment {
        get {
          return ProvidedByFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Related: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewableInterfaceFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableInterfaceFragment: ViewableInterfaceFragment {
        get {
          return ViewableInterfaceFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Offer: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(OfferFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
    }

    public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
    }

    public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var offerFragment: OfferFragment {
        get {
          return OfferFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct LinkedViewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(TrailerFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeChannel() -> LinkedViewable {
      return LinkedViewable(unsafeResultMap: ["__typename": "Channel"])
    }

    public static func makeEpisode() -> LinkedViewable {
      return LinkedViewable(unsafeResultMap: ["__typename": "Episode"])
    }

    public static func makeShow() -> LinkedViewable {
      return LinkedViewable(unsafeResultMap: ["__typename": "Show"])
    }

    public static func makeMovie() -> LinkedViewable {
      return LinkedViewable(unsafeResultMap: ["__typename": "Movie"])
    }

    public static func makeProgram() -> LinkedViewable {
      return LinkedViewable(unsafeResultMap: ["__typename": "Program"])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var trailerFragment: TrailerFragment? {
        get {
          if !TrailerFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
          return TrailerFragment(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Collection: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["PosterCollection", "SixteenNineCollection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewableSixteenNineCollection.self),
        GraphQLFragmentSpread(ViewablePosterCollection.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableSixteenNineCollection: ViewableSixteenNineCollection? {
        get {
          if !ViewableSixteenNineCollection.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
          return ViewableSixteenNineCollection(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap += newValue.resultMap
        }
      }

      public var viewablePosterCollection: ViewablePosterCollection? {
        get {
          if !ViewablePosterCollection.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
          return ViewablePosterCollection(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct ChannelViewableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ChannelViewableFragment on Channel {
      __typename
      inMyList
      providedBy {
        __typename
        ...ProvidedByFragment
      }
      broadcastsForDate: broadcasts(day: $date) {
        __typename
        ...BroadcastFragment
      }
      webview
      ...ViewableInterfaceFragment
      offers {
        __typename
        ...OfferFragment
      }
      collections {
        __typename
        ...ViewableSixteenNineCollection
        ...ViewablePosterCollection
      }
    }
    """

  public static let possibleTypes: [String] = ["Channel"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("inMyList", type: .scalar(Bool.self)),
      GraphQLField("providedBy", type: .object(ProvidedBy.selections)),
      GraphQLField("broadcasts", alias: "broadcastsForDate", arguments: ["day": GraphQLVariable("date")], type: .list(.nonNull(.object(BroadcastsForDate.selections)))),
      GraphQLField("webview", type: .scalar(String.self)),
      GraphQLFragmentSpread(ViewableInterfaceFragment.self),
      GraphQLField("offers", type: .nonNull(.list(.nonNull(.object(Offer.selections))))),
      GraphQLField("collections", type: .list(.nonNull(.object(Collection.selections)))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var inMyList: Bool? {
    get {
      return resultMap["inMyList"] as? Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "inMyList")
    }
  }

  public var providedBy: ProvidedBy? {
    get {
      return (resultMap["providedBy"] as? ResultMap).flatMap { ProvidedBy(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "providedBy")
    }
  }

  /// Get broadcasts for channel by day. If no day is provided it will default to today in UTC.
  public var broadcastsForDate: [BroadcastsForDate]? {
    get {
      return (resultMap["broadcastsForDate"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [BroadcastsForDate] in value.map { (value: ResultMap) -> BroadcastsForDate in BroadcastsForDate(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [BroadcastsForDate]) -> [ResultMap] in value.map { (value: BroadcastsForDate) -> ResultMap in value.resultMap } }, forKey: "broadcastsForDate")
    }
  }

  public var webview: String? {
    get {
      return resultMap["webview"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "webview")
    }
  }

  public var offers: [Offer] {
    get {
      return (resultMap["offers"] as! [ResultMap]).map { (value: ResultMap) -> Offer in Offer(unsafeResultMap: value) }
    }
    set {
      resultMap.updateValue(newValue.map { (value: Offer) -> ResultMap in value.resultMap }, forKey: "offers")
    }
  }

  /// Linked collections
  /// 
  /// A set of collections related to the viewable.
  /// Important note: This should not be queried from a collection view, but instead used only on detail pages.
  public var collections: [Collection]? {
    get {
      return (resultMap["collections"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Collection] in value.map { (value: ResultMap) -> Collection in Collection(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Collection]) -> [ResultMap] in value.map { (value: Collection) -> ResultMap in value.resultMap } }, forKey: "collections")
    }
  }

  public var fragments: Fragments {
    get {
      return Fragments(unsafeResultMap: resultMap)
    }
    set {
      resultMap += newValue.resultMap
    }
  }

  public struct Fragments {
    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var viewableInterfaceFragment: ViewableInterfaceFragment {
      get {
        return ViewableInterfaceFragment(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }
  }

  public struct ProvidedBy: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ProvidedBy"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ProvidedByFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(brand: String, logo: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "ProvidedBy", "brand": brand, "logo": logo])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var providedByFragment: ProvidedByFragment {
        get {
          return ProvidedByFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct BroadcastsForDate: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Broadcast"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(BroadcastFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var broadcastFragment: BroadcastFragment {
        get {
          return BroadcastFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Offer: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(OfferFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
    }

    public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
    }

    public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var offerFragment: OfferFragment {
        get {
          return OfferFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Collection: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["PosterCollection", "SixteenNineCollection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewableSixteenNineCollection.self),
        GraphQLFragmentSpread(ViewablePosterCollection.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableSixteenNineCollection: ViewableSixteenNineCollection? {
        get {
          if !ViewableSixteenNineCollection.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
          return ViewableSixteenNineCollection(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap += newValue.resultMap
        }
      }

      public var viewablePosterCollection: ViewablePosterCollection? {
        get {
          if !ViewablePosterCollection.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
          return ViewablePosterCollection(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct EpisodeViewableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment EpisodeViewableFragment on Episode {
      __typename
      webview
      show {
        __typename
        ...ShowViewableFragment
      }
      related {
        __typename
        ...ViewableInterfaceFragment
      }
      ...ViewableInterfaceFragment
      offers {
        __typename
        ...OfferFragment
      }
      collections {
        __typename
        ...ViewableSixteenNineCollection
        ...ViewablePosterCollection
      }
    }
    """

  public static let possibleTypes: [String] = ["Episode"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("webview", type: .scalar(String.self)),
      GraphQLField("show", type: .object(Show.selections)),
      GraphQLField("related", type: .list(.nonNull(.object(Related.selections)))),
      GraphQLFragmentSpread(ViewableInterfaceFragment.self),
      GraphQLField("offers", type: .nonNull(.list(.nonNull(.object(Offer.selections))))),
      GraphQLField("collections", type: .list(.nonNull(.object(Collection.selections)))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var webview: String? {
    get {
      return resultMap["webview"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "webview")
    }
  }

  public var show: Show? {
    get {
      return (resultMap["show"] as? ResultMap).flatMap { Show(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "show")
    }
  }

  /// This attribute fetches related viewables based on attributes of the viewable.
  /// It should not be called for collections as it could be rejected because of
  /// high complexity. It should instead be called for views that render an
  /// individual viewable and the related viewables, e.g a detail page
  public var related: [Related]? {
    get {
      return (resultMap["related"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Related] in value.map { (value: ResultMap) -> Related in Related(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Related]) -> [ResultMap] in value.map { (value: Related) -> ResultMap in value.resultMap } }, forKey: "related")
    }
  }

  public var offers: [Offer] {
    get {
      return (resultMap["offers"] as! [ResultMap]).map { (value: ResultMap) -> Offer in Offer(unsafeResultMap: value) }
    }
    set {
      resultMap.updateValue(newValue.map { (value: Offer) -> ResultMap in value.resultMap }, forKey: "offers")
    }
  }

  /// Linked collections
  /// 
  /// A set of collections related to the viewable.
  /// Important note: This should not be queried from a collection view, but instead used only on detail pages.
  public var collections: [Collection]? {
    get {
      return (resultMap["collections"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Collection] in value.map { (value: ResultMap) -> Collection in Collection(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Collection]) -> [ResultMap] in value.map { (value: Collection) -> ResultMap in value.resultMap } }, forKey: "collections")
    }
  }

  public var fragments: Fragments {
    get {
      return Fragments(unsafeResultMap: resultMap)
    }
    set {
      resultMap += newValue.resultMap
    }
  }

  public struct Fragments {
    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var viewableInterfaceFragment: ViewableInterfaceFragment {
      get {
        return ViewableInterfaceFragment(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }
  }

  public struct Show: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Show"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ShowViewableFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var showViewableFragment: ShowViewableFragment {
        get {
          return ShowViewableFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Related: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewableInterfaceFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableInterfaceFragment: ViewableInterfaceFragment {
        get {
          return ViewableInterfaceFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Offer: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(OfferFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
    }

    public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
    }

    public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var offerFragment: OfferFragment {
        get {
          return OfferFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Collection: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["PosterCollection", "SixteenNineCollection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewableSixteenNineCollection.self),
        GraphQLFragmentSpread(ViewablePosterCollection.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableSixteenNineCollection: ViewableSixteenNineCollection? {
        get {
          if !ViewableSixteenNineCollection.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
          return ViewableSixteenNineCollection(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap += newValue.resultMap
        }
      }

      public var viewablePosterCollection: ViewablePosterCollection? {
        get {
          if !ViewablePosterCollection.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
          return ViewablePosterCollection(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct ShowEpisodeViewableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ShowEpisodeViewableFragment on Episode {
      __typename
      webview
      related {
        __typename
        ...ViewableInterfaceFragment
      }
      ...ViewableInterfaceFragment
      offers {
        __typename
        ...OfferFragment
      }
    }
    """

  public static let possibleTypes: [String] = ["Episode"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("webview", type: .scalar(String.self)),
      GraphQLField("related", type: .list(.nonNull(.object(Related.selections)))),
      GraphQLFragmentSpread(ViewableInterfaceFragment.self),
      GraphQLField("offers", type: .nonNull(.list(.nonNull(.object(Offer.selections))))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var webview: String? {
    get {
      return resultMap["webview"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "webview")
    }
  }

  /// This attribute fetches related viewables based on attributes of the viewable.
  /// It should not be called for collections as it could be rejected because of
  /// high complexity. It should instead be called for views that render an
  /// individual viewable and the related viewables, e.g a detail page
  public var related: [Related]? {
    get {
      return (resultMap["related"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Related] in value.map { (value: ResultMap) -> Related in Related(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Related]) -> [ResultMap] in value.map { (value: Related) -> ResultMap in value.resultMap } }, forKey: "related")
    }
  }

  public var offers: [Offer] {
    get {
      return (resultMap["offers"] as! [ResultMap]).map { (value: ResultMap) -> Offer in Offer(unsafeResultMap: value) }
    }
    set {
      resultMap.updateValue(newValue.map { (value: Offer) -> ResultMap in value.resultMap }, forKey: "offers")
    }
  }

  public var fragments: Fragments {
    get {
      return Fragments(unsafeResultMap: resultMap)
    }
    set {
      resultMap += newValue.resultMap
    }
  }

  public struct Fragments {
    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var viewableInterfaceFragment: ViewableInterfaceFragment {
      get {
        return ViewableInterfaceFragment(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }
  }

  public struct Related: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewableInterfaceFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableInterfaceFragment: ViewableInterfaceFragment {
        get {
          return ViewableInterfaceFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Offer: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(OfferFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
    }

    public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
    }

    public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var offerFragment: OfferFragment {
        get {
          return OfferFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct ShowViewableFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ShowViewableFragment on Show {
      __typename
      trailer
      inMyList
      webview
      countriesOfOrigin
      providedBy {
        __typename
        ...ProvidedByFragment
      }
      selectedEpisode {
        __typename
        title
        ...ViewableInterfaceFragment
      }
      seasons {
        __typename
        seasonNumber
        episodes {
          __typename
          ...ShowEpisodeViewableFragment
        }
      }
      related {
        __typename
        ...ViewableInterfaceFragment
      }
      offers {
        __typename
        ...OfferFragment
      }
      linkedViewables {
        __typename
        ...TrailerFragment
      }
      collections {
        __typename
        ...ViewableSixteenNineCollection
        ...ViewablePosterCollection
      }
    }
    """

  public static let possibleTypes: [String] = ["Show"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("trailer", type: .scalar(String.self)),
      GraphQLField("inMyList", type: .scalar(Bool.self)),
      GraphQLField("webview", type: .scalar(String.self)),
      GraphQLField("countriesOfOrigin", type: .list(.nonNull(.scalar(String.self)))),
      GraphQLField("providedBy", type: .object(ProvidedBy.selections)),
      GraphQLField("selectedEpisode", type: .object(SelectedEpisode.selections)),
      GraphQLField("seasons", type: .list(.nonNull(.object(Season.selections)))),
      GraphQLField("related", type: .list(.nonNull(.object(Related.selections)))),
      GraphQLField("offers", type: .nonNull(.list(.nonNull(.object(Offer.selections))))),
      GraphQLField("linkedViewables", type: .list(.nonNull(.object(LinkedViewable.selections)))),
      GraphQLField("collections", type: .list(.nonNull(.object(Collection.selections)))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(trailer: String? = nil, inMyList: Bool? = nil, webview: String? = nil, countriesOfOrigin: [String]? = nil, providedBy: ProvidedBy? = nil, selectedEpisode: SelectedEpisode? = nil, seasons: [Season]? = nil, related: [Related]? = nil, offers: [Offer], linkedViewables: [LinkedViewable]? = nil, collections: [Collection]? = nil) {
    self.init(unsafeResultMap: ["__typename": "Show", "trailer": trailer, "inMyList": inMyList, "webview": webview, "countriesOfOrigin": countriesOfOrigin, "providedBy": providedBy.flatMap { (value: ProvidedBy) -> ResultMap in value.resultMap }, "selectedEpisode": selectedEpisode.flatMap { (value: SelectedEpisode) -> ResultMap in value.resultMap }, "seasons": seasons.flatMap { (value: [Season]) -> [ResultMap] in value.map { (value: Season) -> ResultMap in value.resultMap } }, "related": related.flatMap { (value: [Related]) -> [ResultMap] in value.map { (value: Related) -> ResultMap in value.resultMap } }, "offers": offers.map { (value: Offer) -> ResultMap in value.resultMap }, "linkedViewables": linkedViewables.flatMap { (value: [LinkedViewable]) -> [ResultMap] in value.map { (value: LinkedViewable) -> ResultMap in value.resultMap } }, "collections": collections.flatMap { (value: [Collection]) -> [ResultMap] in value.map { (value: Collection) -> ResultMap in value.resultMap } }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var trailer: String? {
    get {
      return resultMap["trailer"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "trailer")
    }
  }

  public var inMyList: Bool? {
    get {
      return resultMap["inMyList"] as? Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "inMyList")
    }
  }

  public var webview: String? {
    get {
      return resultMap["webview"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "webview")
    }
  }

  public var countriesOfOrigin: [String]? {
    get {
      return resultMap["countriesOfOrigin"] as? [String]
    }
    set {
      resultMap.updateValue(newValue, forKey: "countriesOfOrigin")
    }
  }

  public var providedBy: ProvidedBy? {
    get {
      return (resultMap["providedBy"] as? ResultMap).flatMap { ProvidedBy(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "providedBy")
    }
  }

  public var selectedEpisode: SelectedEpisode? {
    get {
      return (resultMap["selectedEpisode"] as? ResultMap).flatMap { SelectedEpisode(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "selectedEpisode")
    }
  }

  public var seasons: [Season]? {
    get {
      return (resultMap["seasons"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Season] in value.map { (value: ResultMap) -> Season in Season(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Season]) -> [ResultMap] in value.map { (value: Season) -> ResultMap in value.resultMap } }, forKey: "seasons")
    }
  }

  /// This attribute fetches related viewables based on attributes of the viewable.
  /// It should not be called for collections as it could be rejected because of
  /// high complexity. It should instead be called for views that render an
  /// individual viewable and the related viewables, e.g a detail page
  public var related: [Related]? {
    get {
      return (resultMap["related"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Related] in value.map { (value: ResultMap) -> Related in Related(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Related]) -> [ResultMap] in value.map { (value: Related) -> ResultMap in value.resultMap } }, forKey: "related")
    }
  }

  public var offers: [Offer] {
    get {
      return (resultMap["offers"] as! [ResultMap]).map { (value: ResultMap) -> Offer in Offer(unsafeResultMap: value) }
    }
    set {
      resultMap.updateValue(newValue.map { (value: Offer) -> ResultMap in value.resultMap }, forKey: "offers")
    }
  }

  /// A list of linked viewables
  /// 
  /// Important note: This should not be queried from a collection view but instead
  /// used only on detail pages. If you are using this, there is no need to also
  /// query for trailers, as the same information is available in this one.
  public var linkedViewables: [LinkedViewable]? {
    get {
      return (resultMap["linkedViewables"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [LinkedViewable] in value.map { (value: ResultMap) -> LinkedViewable in LinkedViewable(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [LinkedViewable]) -> [ResultMap] in value.map { (value: LinkedViewable) -> ResultMap in value.resultMap } }, forKey: "linkedViewables")
    }
  }

  /// Linked collections
  /// 
  /// A set of collections related to the viewable.
  /// Important note: This should not be queried from a collection view, but instead used only on detail pages.
  public var collections: [Collection]? {
    get {
      return (resultMap["collections"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Collection] in value.map { (value: ResultMap) -> Collection in Collection(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Collection]) -> [ResultMap] in value.map { (value: Collection) -> ResultMap in value.resultMap } }, forKey: "collections")
    }
  }

  public struct ProvidedBy: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ProvidedBy"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ProvidedByFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(brand: String, logo: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "ProvidedBy", "brand": brand, "logo": logo])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var providedByFragment: ProvidedByFragment {
        get {
          return ProvidedByFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct SelectedEpisode: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLFragmentSpread(ViewableInterfaceFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var title: String? {
      get {
        return resultMap["title"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "title")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableInterfaceFragment: ViewableInterfaceFragment {
        get {
          return ViewableInterfaceFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Season: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Season"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("seasonNumber", type: .scalar(Int.self)),
        GraphQLField("episodes", type: .list(.nonNull(.object(Episode.selections)))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(seasonNumber: Int? = nil, episodes: [Episode]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Season", "seasonNumber": seasonNumber, "episodes": episodes.flatMap { (value: [Episode]) -> [ResultMap] in value.map { (value: Episode) -> ResultMap in value.resultMap } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var seasonNumber: Int? {
      get {
        return resultMap["seasonNumber"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "seasonNumber")
      }
    }

    public var episodes: [Episode]? {
      get {
        return (resultMap["episodes"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Episode] in value.map { (value: ResultMap) -> Episode in Episode(unsafeResultMap: value) } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Episode]) -> [ResultMap] in value.map { (value: Episode) -> ResultMap in value.resultMap } }, forKey: "episodes")
      }
    }

    public struct Episode: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Episode"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(ShowEpisodeViewableFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var showEpisodeViewableFragment: ShowEpisodeViewableFragment {
          get {
            return ShowEpisodeViewableFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }

  public struct Related: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewableInterfaceFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableInterfaceFragment: ViewableInterfaceFragment {
        get {
          return ViewableInterfaceFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Offer: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["SubscribeType", "BuyType", "DefaultType", "PassType", "RentType", "ThirdPartyType"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(OfferFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeBuyType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "BuyType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public static func makeDefaultType(id: String, title: String? = nil, usps: [String]? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "DefaultType", "id": id, "title": title, "usps": usps])
    }

    public static func makePassType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String, purchaseAvailableUntil: Instant? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "PassType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency, "purchaseAvailableUntil": purchaseAvailableUntil])
    }

    public static func makeRentType(id: String, title: String? = nil, usps: [String]? = nil, priceInCents: Long, currency: String) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "RentType", "id": id, "title": title, "usps": usps, "priceInCents": priceInCents, "currency": currency])
    }

    public static func makeThirdPartyType(id: String, title: String? = nil, usps: [String]? = nil, subtype: ThirdPartyOfferSubtype, providerName: ProviderName, externalOfferId: String, entitlementDurationSec: Int? = nil) -> Offer {
      return Offer(unsafeResultMap: ["__typename": "ThirdPartyType", "id": id, "title": title, "usps": usps, "subtype": subtype, "providerName": providerName, "externalOfferId": externalOfferId, "entitlementDurationSec": entitlementDurationSec])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var offerFragment: OfferFragment {
        get {
          return OfferFragment(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct LinkedViewable: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Channel", "Episode", "Trailer", "Show", "Movie", "Program"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(TrailerFragment.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeChannel() -> LinkedViewable {
      return LinkedViewable(unsafeResultMap: ["__typename": "Channel"])
    }

    public static func makeEpisode() -> LinkedViewable {
      return LinkedViewable(unsafeResultMap: ["__typename": "Episode"])
    }

    public static func makeShow() -> LinkedViewable {
      return LinkedViewable(unsafeResultMap: ["__typename": "Show"])
    }

    public static func makeMovie() -> LinkedViewable {
      return LinkedViewable(unsafeResultMap: ["__typename": "Movie"])
    }

    public static func makeProgram() -> LinkedViewable {
      return LinkedViewable(unsafeResultMap: ["__typename": "Program"])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var trailerFragment: TrailerFragment? {
        get {
          if !TrailerFragment.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
          return TrailerFragment(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Collection: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["PosterCollection", "SixteenNineCollection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ViewableSixteenNineCollection.self),
        GraphQLFragmentSpread(ViewablePosterCollection.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var viewableSixteenNineCollection: ViewableSixteenNineCollection? {
        get {
          if !ViewableSixteenNineCollection.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
          return ViewableSixteenNineCollection(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap += newValue.resultMap
        }
      }

      public var viewablePosterCollection: ViewablePosterCollection? {
        get {
          if !ViewablePosterCollection.possibleTypes.contains(resultMap["__typename"]! as! String) { return nil }
          return ViewablePosterCollection(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct ProvidedByFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ProvidedByFragment on ProvidedBy {
      __typename
      brand
      logo
    }
    """

  public static let possibleTypes: [String] = ["ProvidedBy"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("brand", type: .nonNull(.scalar(String.self))),
      GraphQLField("logo", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(brand: String, logo: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "ProvidedBy", "brand": brand, "logo": logo])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var brand: String {
    get {
      return resultMap["brand"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "brand")
    }
  }

  public var logo: String? {
    get {
      return resultMap["logo"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "logo")
    }
  }
}
