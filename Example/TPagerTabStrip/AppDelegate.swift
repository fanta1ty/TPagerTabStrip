import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UITabBar.appearance().tintColor = UIColor.init(red: 0.027, green: 0.725, blue: 0.608, alpha: 1)
        _ = YoutubeExampleViewController(nibName: nil, bundle: nil)
        return true
    }
}
