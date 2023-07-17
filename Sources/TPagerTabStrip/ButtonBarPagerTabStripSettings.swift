import Foundation
import UIKit

public struct ButtonBarPagerTabStripSettings {
    public struct Style {
        public var buttonBarBackgroundColor: UIColor?
        public var buttonBarMinimumInteritemSpacing: CGFloat?
        public var buttonBarMinimumLineSpacing: CGFloat?
        public var buttonBarLeftContentInset: CGFloat?
        public var buttonBarRightContentInset: CGFloat?

        public var selectedBarBackgroundColor = UIColor.black
        public var selectedBarHeight: CGFloat = 5
        public var selectedBarVerticalAlignment: SelectedBarVerticalAlignment = .bottom

        public var buttonBarItemBackgroundColor: UIColor?
        public var buttonBarItemFont = UIFont.systemFont(ofSize: 18)
        public var buttonBarItemLeftRightMargin: CGFloat = 8
        public var buttonBarItemTitleColor: UIColor?
        public var buttonBarItemsShouldFillAvailableWidth = true
        public var buttonBarHeight: CGFloat?
    }

    public var style = Style()
}
