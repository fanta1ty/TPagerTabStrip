import UIKit
import TPagerTabStrip

class ReloadExampleViewController: UIViewController {

    @IBOutlet lazy var titleLabel: UILabel! = {
        let label = UILabel()
        return label
    }()

    lazy var bigLabel: UILabel = {
        let bigLabel = UILabel()
        bigLabel.backgroundColor = .clear
        bigLabel.textColor = .white
        bigLabel.font = UIFont.boldSystemFont(ofSize: 20)
        bigLabel.adjustsFontSizeToFitWidth = true
        return bigLabel
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        if navigationController != nil {
            navigationItem.titleView = bigLabel
            bigLabel.sizeToFit()
        }

        if let pagerViewController = childViewControllers.first as? PagerTabStripViewController {
            updateTitle(of: pagerViewController)
        }
    }

    @IBAction func reloadTapped(_ sender: UIBarButtonItem) {
        for childViewController in childViewControllers {
            guard let child = childViewController as? PagerTabStripViewController else {
                continue
            }
            child.reloadPagerTabStripView()
            updateTitle(of: child)
            break
        }
    }

    @IBAction func closeTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    func updateTitle(of pagerTabStripViewController: PagerTabStripViewController) {
        func stringFromBool(_ bool: Bool) -> String {
            return bool ? "YES" : "NO"
        }

        titleLabel.text = "Progressive = \(stringFromBool(pagerTabStripViewController.pagerBehaviour.isProgressiveIndicator))  ElasticLimit = \(stringFromBool(pagerTabStripViewController.pagerBehaviour.isElasticIndicatorLimit))"

        (navigationItem.titleView as? UILabel)?.text = titleLabel.text
        navigationItem.titleView?.sizeToFit()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
