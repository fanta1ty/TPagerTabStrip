import Foundation
import UIKit

open class BarPagerTabStripViewController: PagerTabStripViewController, PagerTabStripDataSource, PagerTabStripIsProgressiveDelegate {
    public var settings = BarPagerTabStripSettings()

    @IBOutlet public var barView: BarView!

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        delegate = self
        datasource = self
    }

    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        delegate = self
        datasource = self
    }

    override open func viewDidLoad() {
        super.viewDidLoad()
        barView = barView ?? {
            let barView = BarView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: settings.style.barHeight))
            barView.autoresizingMask = .flexibleWidth
            barView.backgroundColor = .black
            barView.selectedBar.backgroundColor = .white
            return barView
        }()

        barView.backgroundColor = settings.style.barBackgroundColor ?? barView.backgroundColor
        barView.selectedBar.backgroundColor = settings.style.selectedBarBackgroundColor ?? barView.selectedBar.backgroundColor
    }

    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if barView.superview == nil {
            view.addSubview(barView)
        }
        barView.optionsCount = viewControllers.count
        barView.moveTo(index: currentIndex, animated: false)
    }

    override open func reloadPagerTabStripView() {
        super.reloadPagerTabStripView()
        barView.optionsCount = viewControllers.count
        if isViewLoaded {
            barView.moveTo(index: currentIndex, animated: false)
        }
    }

    // MARK: - PagerTabStripDelegate

    open func updateIndicator(for _: PagerTabStripViewController, fromIndex: Int, toIndex: Int, withProgressPercentage progressPercentage: CGFloat, indexWasChanged _: Bool) {
        barView.move(fromIndex: fromIndex, toIndex: toIndex, progressPercentage: progressPercentage)
    }

    open func updateIndicator(for _: PagerTabStripViewController, fromIndex _: Int, toIndex: Int) {
        barView.moveTo(index: toIndex, animated: true)
    }
}
