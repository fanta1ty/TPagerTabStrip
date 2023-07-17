import Foundation
import UIKit

public protocol PagerTabStripDataSource: AnyObject {
    func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController]
}
