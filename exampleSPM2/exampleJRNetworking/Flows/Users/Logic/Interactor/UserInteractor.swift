//
//  UserInteractor.swift
//  exampleSPM2
//
//  Created by Jonathan Rivera on 16/09/24.
//

import Combine
import Foundation
import JRNetworking

/// The interactor in the VIPER architecture responsible for fetching user data.
/// It communicates with the `UserClient` to retrieve data and processes the result to inform the presenter.
class UserInteractor: UserInteractorInput {
    
    /// The service responsible for networking operations.
    lazy var networkingService: NetworkingService = NetworkingService()
    
    /// The client used to perform API requests related to user data.
    lazy var userClient: UserClientProvider = UserClient(configuration: networkingService.configuration)
    
    /// A set to store and manage Combine cancellables to handle subscription lifecycles.
    var cancellables: Set<AnyCancellable> = []
    
    /// The output interface to communicate with the presenter.
    weak var output: UserInteractorOuput!
    
    /// Fetches user data from the network using the `UserClient`.
    /// Processes the result and informs the presenter about success or failure.
    func fetchUsers() {
        userClient.getUser()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { [weak self] completion in
                switch completion {
                case .failure(let networkingError as JRNetworkingError):
                    switch networkingError {
                    case .invalidResponse:
                        self?.output.didFailGettingUsers(error: "Invalid response from server.")
                    case .noInternetConnection:
                        self?.output.didFailGettingUsers(error: "No internet connection available.")
                    case .apiError(_, error: let error):
                        self?.output.didFailGettingUsers(error: "API error")
                    case .parsingError(_, _):
                        self?.output.didFailGettingUsers(error: "Error parsing response data.")
                    default:
                        self?.output.didFailGettingUsers(error: "An unknown error occurred.")
                    }
                default:
                    break
                }
            }, receiveValue: { [weak self] response in
                if !response.isEmpty {
                    self?.output.didGetUsers(users: response)
                } else {
                    self?.output.didFailGettingUsers(error: "No users found.")
                }
            }).store(in: &cancellables)
    }
}
