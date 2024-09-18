//
//  UserInteractorOuput.swift
//  exampleSPM2
//
//  Created by Jonathan Rivera on 17/09/24.
//

/// A protocol that defines the output methods for the interactor.
/// It allows the interactor to communicate results or errors back to the presenter.
protocol UserInteractorOuput: AnyObject {
    
    /// Called when the interactor successfully fetches user data.
    ///
    /// - Parameter users: An array of `User` objects that were retrieved.
    func didGetUsers(users: [User])
    
    /// Called when the interactor fails to fetch user data.
    ///
    /// - Parameter error: A `String` describing the error that occurred.
    func didFailGettingUsers(error: String)
}
