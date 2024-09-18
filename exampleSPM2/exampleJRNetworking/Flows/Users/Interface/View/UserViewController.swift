//
//  ViewController.swift
//  exampleSPM2
//
//  Created by Jonathan Rivera on 16/09/24.
//

import UIKit
import JRNetworking

/// The view controller responsible for displaying user data in the UI.
/// It interacts with the presenter to request and display the list of users.
class UserViewController: UIViewController {
    
    /// The presenter that handles the business logic and provides data to the view.
    public var presenter: UserPresenterInput!
    
    /// Called when the view has finished loading. It sets up the UI and triggers the presenter to load users.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        presenter.didLoadUsers()
    }
    
    /// Sets up the basic UI components of the view.
    private func setupUI() {
        view.backgroundColor = .white
        // Set up your UI components here
    }
}

extension UserViewController: UserViewInput {
    
    /// Displays the list of users fetched by the presenter.
    ///
    /// - Parameter users: An array of `User` objects to be displayed in the UI.
    func displayUsers(_ users: [User]) {
        // Update the UI with the user data
        print("Received users: \(users)")
    }
    
    /// Displays an error message in case the presenter fails to retrieve the users.
    ///
    /// - Parameter error: A `String` representing the error message.
    func displayError(_ error: String) {
        // Show error to the user
        print("Error occurred: \(error)")
    }
}
