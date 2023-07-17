import Foundation
import UIKit

open class ExampleBaseButtonBarPagerTabStripViewController: BaseButtonBarPagerTabStripViewController<ButtonBarViewCell> {
    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        initialize()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }

    open func initialize() {
        #if SWIFT_PACKAGE
            var bundle = Bundle.module
        #else
            var bundle = Bundle(for: ButtonBarViewCell.self)
        #endif
        if let resourcePath = bundle.path(forResource: "TPagerTabStrip", ofType: "bundle") {
            if let resourcesBundle = Bundle(path: resourcePath) {
                bundle = resourcesBundle
            }
        }

        buttonBarItemSpec = .nibFile(nibName: "ButtonCell", bundle: bundle, width: { [weak self] childItemInfo -> CGFloat in
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = self?.settings.style.buttonBarItemFont ?? label.font
            label.text = childItemInfo.title
            let labelSize = label.intrinsicContentSize
            return labelSize.width + CGFloat(self?.settings.style.buttonBarItemLeftRightMargin ?? 8 * 2)
        })
    }

    override open func configure(cell: ButtonBarViewCell, for indicatorInfo: IndicatorInfo) {
        cell.label.text = indicatorInfo.title
        cell.accessibilityLabel = indicatorInfo.accessibilityLabel
        if let image = indicatorInfo.image {
            cell.imageView.image = image
        }
        if let highlightedImage = indicatorInfo.highlightedImage {
            cell.imageView.highlightedImage = highlightedImage
        }
    }
}

