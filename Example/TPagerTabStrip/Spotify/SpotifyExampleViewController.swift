import Foundation
import TPagerTabStrip

class SpotifyExampleViewController: ButtonBarPagerTabStripViewController {
    @IBOutlet var shadowView: UIView!

    let graySpotifyColor = UIColor(red: 21 / 255.0, green: 21 / 255.0, blue: 24 / 255.0, alpha: 1.0)
    let darkGraySpotifyColor = UIColor(red: 19 / 255.0, green: 20 / 255.0, blue: 20 / 255.0, alpha: 1.0)

    override func viewDidLoad() {
        // change selected bar color
        settings.style.buttonBarBackgroundColor = graySpotifyColor
        settings.style.buttonBarItemBackgroundColor = graySpotifyColor
        settings.style.selectedBarBackgroundColor = UIColor(red: 33 / 255.0, green: 174 / 255.0, blue: 67 / 255.0, alpha: 1.0)
        settings.style.buttonBarItemFont = UIFont(name: "HelveticaNeue-Light", size: 14) ?? UIFont.systemFont(ofSize: 14)
        settings.style.selectedBarHeight = 3.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailableWidth = true

        settings.style.buttonBarLeftContentInset = 20
        settings.style.buttonBarRightContentInset = 20

        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, _: CGFloat, changeCurrentIndex: Bool, _: Bool) in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = UIColor(red: 138 / 255.0, green: 138 / 255.0, blue: 144 / 255.0, alpha: 1.0)
            newCell?.label.textColor = .white
        }
        super.viewDidLoad()
    }

    // MARK: - PagerTabStripDataSource

    override func viewControllers(for _: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = TableChildExampleViewController(style: .plain, itemInfo: IndicatorInfo(title: "FRIENDS"))
        child_1.blackTheme = true
        let child_2 = TableChildExampleViewController(style: .plain, itemInfo: IndicatorInfo(title: "FEATURED"))
        child_2.blackTheme = true
        return [child_1, child_2]
    }

    // MARK: - Actions

    @IBAction
    func closeAction(_: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
