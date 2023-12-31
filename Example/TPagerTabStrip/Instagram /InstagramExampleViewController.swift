import Foundation
import TPagerTabStrip

class InstagramExampleViewController: ButtonBarPagerTabStripViewController {
    @IBOutlet var shadowView: UIView!
    let blueInstagramColor = UIColor(red: 37 / 255.0, green: 111 / 255.0, blue: 206 / 255.0, alpha: 1.0)

    override func viewDidLoad() {
        // change selected bar color
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.selectedBarBackgroundColor = blueInstagramColor
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0

        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, _: CGFloat, changeCurrentIndex: Bool, _: Bool) in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .black
            newCell?.label.textColor = self?.blueInstagramColor
        }
        super.viewDidLoad()
    }

    // MARK: - PagerTabStripDataSource

    override func viewControllers(for _: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = TableChildExampleViewController(style: .plain, itemInfo: "FOLLOWING")
        let child_2 = ChildExampleViewController(itemInfo: "YOU")
        return [child_1, child_2]
    }

    // MARK: - Custom Action

    @IBAction
    func closeAction(_: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
