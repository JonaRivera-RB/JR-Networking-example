//
//  UserRouter.swift
//  exampleSPM2
//
//  Created by Jonathan Rivera on 16/09/24.
//

import UIKit

/// The router responsible for handling navigation within the user module.
/// It manages transitions between different screens or view controllers.
class UserRouter: UserRouterInput {
    
    /// Handles navigation from the user view to the user detail screen.
    ///
    /// - Parameter view: The view from which the navigation is initiated. It must be castable to a `UIViewController`.
    func navigateToUserDetail(from view: UserViewInput) {
        guard let viewController = view as? UIViewController else { return }
        // Implement navigation logic here
        print("Navigating to user detail")
    }
}
