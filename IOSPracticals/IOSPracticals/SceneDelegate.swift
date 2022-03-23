import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // MARK: SceneDelegate Life Cycle Methods
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print("SceneDelegate: Scene Connected")
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        print("SceneDelegate: Scene disconnected")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        print("SceneDelegate: Scene Activated")
    }

    func sceneWillResignActive(_ scene: UIScene) {
        print("SceneDelegate: Scene Deactivated")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        print("SceneDelegate: Scene Entered in Foreground")
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        print("SceneDelegate: Scene Entered in Background")
    }
    
}

