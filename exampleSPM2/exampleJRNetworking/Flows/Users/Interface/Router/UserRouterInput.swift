//
//  UserRouterInput.swift
//  exampleSPM2
//
//  Created by Jonathan Rivera on 17/09/24.
//

/// A protocol that defines the methods for navigation within the user module.
/// It allows the router to handle transitions between different view controllers or screens.
protocol UserRouterInput {
    
    /// Initiates navigation to the user detail screen from the given view.
    ///
    /// - Parameter view: The view from which the navigation is initiated. It must conform to `UserViewInput` to ensure proper casting.
    func navigateToUserDetail(from view: UserViewInput)
}
