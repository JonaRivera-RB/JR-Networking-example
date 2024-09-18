//
//  UserInteractorInput.swift
//  exampleSPM2
//
//  Created by Jonathan Rivera on 17/09/24.
//

/// A protocol that defines the methods for the interactor to handle user-related business logic.
/// It allows the presenter to request data fetching operations.
protocol UserInteractorInput: AnyObject {
    
    /// Requests the interactor to fetch user data from the network.
    func fetchUsers()
}
