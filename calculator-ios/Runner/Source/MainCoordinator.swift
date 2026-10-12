import UIKit

/// Protocol that defines the blueprint for all application coordinators
public protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    func start()
}

/// Responsible for controlling the navigation flow of the UIKit application
public class MainCoordinator: Coordinator {
    public var navigationController: UINavigationController
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    /// Starts the app flow by rendering the first screen
    public func start() {
        let mainVC = MainViewController()
        mainVC.coordinator = self // Links the coordinator back to the controller
        navigationController.pushViewController(mainVC, animated: false)
    }
    
    /// Navigates to the secondary details view
    public func showDetails() {
        let detailsVC = DetailsViewController()
        detailsVC.coordinator = self
        navigationController.pushViewController(detailsVC, animated: true)
    }
    
    /// Navigates to the final settings panel
    public func showSettings() {
        let settingsVC = SettingsViewController()
        navigationController.pushViewController(settingsVC, animated: true)
    }
}
