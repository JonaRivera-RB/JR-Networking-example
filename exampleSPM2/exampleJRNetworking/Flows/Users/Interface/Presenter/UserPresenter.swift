//
//  UserPresenter.swift
//  exampleSPM2
//
//  Created by Jonathan Rivera on 16/09/24.
//

import Combine
import JRNetworking

/// The presenter in the VIPER architecture responsible for handling user-related business logic.
/// It communicates with the interactor to fetch data and updates the view with results.
class UserPresenter: UserPresenterInput {
    
    /// The interactor that fetches user data and performs business logic.
    public var interactor: UserInteractorInput!
    
    /// The view that displays user data or error messages.
    public weak var view: UserViewInput!
    
    /// Requests the interactor to fetch the list of users when the view is ready to display the data.
    func didLoadUsers() {
        interactor.fetchUsers()
    }
}

extension UserPresenter: UserInteractorOuput {
    
    /// Called when the interactor successfully fetches user data. This method updates the view with the retrieved users.
    ///
    /// - Parameter users: An array of `User` objects fetched from the API.
    func didGetUsers(users: [User]) {
        view?.displayUsers(users)
    }
    
    /// Called when the interactor fails to fetch user data. This method notifies the view to display an error message.
    ///
    /// - Parameter error: A `String` representing the error message.
    func didFailGettingUsers(error: String) {
        view?.displayError(error)
    }
}
