import Foundation
import UIKit

open class ButtonBarViewCell: UICollectionViewCell {
    @IBOutlet open var imageView: UIImageView!
    @IBOutlet open var label: UILabel!

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        isAccessibilityElement = true
        accessibilityTraits.insert([.button, .header])
    }

    override open var isSelected: Bool {
        get {
            super.isSelected
        }
        set {
            super.isSelected = newValue
            if newValue {
                accessibilityTraits.insert(.selected)
            } else {
                accessibilityTraits.remove(.selected)
            }
        }
    }
}
