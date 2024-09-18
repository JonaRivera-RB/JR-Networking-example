//
//  UserViewInput.swift
//  exampleSPM2
//
//  Created by Jonathan Rivera on 17/09/24.
//

/// A protocol that defines the interface for the view to communicate with the presenter.
/// It allows the presenter to update the view with user data or error messages.
protocol UserViewInput: AnyObject {
    
    /// Displays the list of users fetched by the presenter.
    ///
    /// - Parameter users: An array of `User` objects to be displayed in the UI.
    func displayUsers(_ users: [User])
    
    /// Displays an error message if there is an issue fetching user data.
    ///
    /// - Parameter error: A `String` representing the error message.
    func displayError(_ error: String)
}
