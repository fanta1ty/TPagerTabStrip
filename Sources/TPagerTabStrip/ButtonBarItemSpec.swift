import Foundation
import UIKit

public enum ButtonBarItemSpec<CellType: UICollectionViewCell> {
    case nibFile(nibName: String, bundle: Bundle?, width: (IndicatorInfo) -> CGFloat)
    case cellClass(width: (IndicatorInfo) -> CGFloat)

    public var weight: (IndicatorInfo) -> CGFloat {
        switch self {
        case let .cellClass(widthCallback):
            return widthCallback
        case let .nibFile(_, _, widthCallback):
            return widthCallback
        }
    }
}
