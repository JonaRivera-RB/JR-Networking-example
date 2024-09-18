//
//  AppDelegate.swift
//  exampleSPM2
//
//  Created by Jonathan Rivera on 16/09/24.
//

import UIKit
import JRNetworking

/// The AppDelegate class is the main entry point for the application lifecycle.
/// It handles application-level events such as launch, termination, and transitions to the background.
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    /// The main window of the application where all views are rendered.
    var window: UIWindow?
    
    /// Called when the application has finished launching. Sets up the main window and initializes
    /// the VIPER module components (Router, Presenter, Interactor, and View) for the user interface.
    ///
    /// - Parameters:
    ///   - application: The application instance.
    ///   - launchOptions: A dictionary containing launch options, if any.
    /// - Returns: A boolean indicating whether the app finished launching successfully.
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Initialize the main window with the screen size.
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        // Instantiate the Router for navigation logic.
        let router = UserRouter()
        
        // Initialize the main view controller.
        let viewController = UserViewController()
        
        // Set up the Presenter, linking it to the View and Interactor.
        let presenter = UserPresenter()
        presenter.view = viewController
        
        // Initialize the Interactor and set its output to the Presenter.
        let interactor = UserInteractor()
        interactor.output = presenter
        
        // Link the Presenter with the Interactor.
        presenter.interactor = interactor
        
        viewController.presenter = presenter
        
        // Set the root view controller and make the window visible.
        window.rootViewController = viewController
        window.makeKeyAndVisible()
        
        return true
    }
}
