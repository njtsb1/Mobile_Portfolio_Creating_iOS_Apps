import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        GeneratedPluginRegistrant.register(with: self)
        
        // Configures the main native iOS window to overlay the stream.
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        let navigationController = UINavigationController()

        let coordinator = MainCoordinator(navigationController: navigationController)
        coordinator.start() // Coordinator triggers the initialization

        window.rootViewController = navigationController
        self.window = window
        window.makeKeyAndVisible()
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
