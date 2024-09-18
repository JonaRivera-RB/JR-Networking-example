//
//  UserResources.swift
//  exampleSPM2
//
//  Created by Jonathan Rivera on 16/09/24.
//

import JRNetworking

/// Enum that defines the different user-related API resources for the network client.
/// Each case in this enum represents a specific API endpoint.
enum UserResources: JRResource {
    
    /// Endpoint to fetch a list of users.
    case users
    
    /// Provides the HTTP method and route for each API resource.
    ///
    /// - Returns: A tuple containing the HTTP method and the API route as a string.
    var jrResource: (method: HTTPMethod, route: String) {
        switch self {
        case .users:
            return (.get, "/users") // HTTP GET method for fetching users.
        }
    }
}
