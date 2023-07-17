import Foundation
import TPagerTabStrip

class SegmentedExampleViewController: SegmentedPagerTabStripViewController {
    var isReload = false

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // change segmented style
        settings.style.segmentedControlColor = .white
    }

    // MARK: - PagerTabStripDataSource

    override func viewControllers(for _: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = TableChildExampleViewController(style: .plain, itemInfo: "Table View")
        let child_2 = ChildExampleViewController(itemInfo: "View")
        let child_3 = TableChildExampleViewController(style: .grouped, itemInfo: "Table View 2")
        let child_4 = ChildExampleViewController(itemInfo: "View 2")

        guard isReload else {
            return [child_1, child_2, child_3, child_4]
        }

        var childViewControllers = [child_1, child_2, child_3, child_4]
        let count = childViewControllers.count

        for index in childViewControllers.indices {
            let nElements = count - index
            let n = (Int(arc4random()) % nElements) + index
            if n != index {
                childViewControllers.swapAt(index, n)
            }
        }
        let nItems = 1 + (arc4random() % 4)
        return Array(childViewControllers.prefix(Int(nItems)))
    }

    @IBAction
    func reloadTapped(_: UIBarButtonItem) {
        isReload = true
        pagerBehaviour = .common(skipIntermediateViewControllers: arc4random() % 2 == 0)
        reloadPagerTabStripView()
    }
}
