import Foundation
import UIKit

public protocol PagerTabStripIsProgressiveDelegate: PagerTabStripDelegate {
    func updateIndicator(
        for viewController: PagerTabStripViewController,
        fromIndex: Int,
        toIndex: Int,
        withProgressPercentage progressPercentage: CGFloat,
        indexWasChanged: Bool
    )
}
