import Foundation
import UIKit

public struct TwitterPagerTabStripSettings {
    public struct Style {
        public var dotColor = UIColor(white: 1, alpha: 0.4)
        public var selectedDotColor = UIColor.white
        public var portraitTitleFont = UIFont.systemFont(ofSize: 18)
        public var landscapeTitleFont = UIFont.systemFont(ofSize: 15)
        public var titleColor = UIColor.white
    }

    public var style = Style()
}
