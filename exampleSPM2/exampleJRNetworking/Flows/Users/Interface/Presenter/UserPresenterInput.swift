//
//  UserPresenterInput.swift
//  exampleSPM2
//
//  Created by Jonathan Rivera on 17/09/24.
//

/// A protocol defining the input methods for the `UserPresenter`.
/// These methods are called by the view to notify the presenter of user interactions or lifecycle events.
protocol UserPresenterInput {
    
    /// Notifies the presenter that the view has finished loading and is ready to request user data.
    func didLoadUsers()
}
