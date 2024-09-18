//
//  UserClientProvider.swift
//  exampleSPM2
//
//  Created by Jonathan Rivera on 16/09/24.
//

import JRNetworking
import Combine

/// A protocol that defines the interface for retrieving user data from a network service.
protocol UserClientProvider {
    
    /// Fetches a list of users from the network.
    ///
    /// - Returns: A publisher that emits an array of `User` objects or an error.
    func getUser() -> AnyPublisher<[User], Error>
}

/// A concrete implementation of `UserClientProvider` that interacts with a REST API
/// to fetch user data. Inherits from `RestServiceClient` to leverage network request capabilities.
final class UserClient: RestServiceClient, UserClientProvider {
    
    /// Fetches user data from the REST API using the `UserResources.users` endpoint.
    ///
    /// - Returns: A publisher that emits an array of `User` objects or an error if the request fails.
    func getUser() -> AnyPublisher<[User], any Error> {
        request(resource: UserResources.users,
                type: [User].self,
                errorType: APIError.self)
    }
}
