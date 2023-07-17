import Foundation
import UIKit

public protocol PagerTabStripDelegate: AnyObject {
    func updateIndicator(for viewController: PagerTabStripViewController, fromIndex: Int, toIndex: Int)
}
