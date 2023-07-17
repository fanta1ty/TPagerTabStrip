import Foundation

public enum PagerTabStripBehaviour {
    case common(skipIntermediateViewControllers: Bool)
    case progressive(skipIntermediateViewControllers: Bool, elasticIndicatorLimit: Bool)

    public var skipIntermediateViewControllers: Bool {
        switch self {
        case let .common(skipIntermediateViewControllers):
            return skipIntermediateViewControllers
        case let .progressive(skipIntermediateViewControllers, _):
            return skipIntermediateViewControllers
        }
    }

    public var isProgressiveIndicator: Bool {
        switch self {
        case .common:
            return false
        case .progressive:
            return true
        }
    }

    public var isElasticIndicatorLimit: Bool {
        switch self {
        case .common:
            return false
        case let .progressive(_, elasticIndicatorLimit):
            return elasticIndicatorLimit
        }
    }
}
