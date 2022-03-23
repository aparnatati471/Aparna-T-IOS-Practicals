import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: AppDelegate Life Cycle Methods
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("AppDelegate: didFinishLaunchingWithOptions")
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        print("AppDelegate: connectingSceneSession")
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        print("AppDelegate: didDiscardSceneSessions")
    }
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("AppDelegate: willFinishLaunchingWithOptions")
        return true
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("AppDelegate: applicationWillEnterForeground")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("AppDelegate: applicationDidBecomeActive")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print("AppDelegate: applicationWillResignActive")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("AppDelegate: applicationDidEnterBackground")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("AppDelegate: applicationWillTerminate")
    }
    
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        print("AppDelegate: applicationDidReceiveMemoryWarning")
    }
    
}


