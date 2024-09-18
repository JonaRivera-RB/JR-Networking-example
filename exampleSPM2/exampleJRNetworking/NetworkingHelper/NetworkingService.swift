//
//  NetworkingService.swift
//  exampleJRNetworking
//
//  Created by Jonathan Rivera on 16/09/24.
//

import UIKit
import Foundation
import JRNetworking

/// A service responsible for configuring and providing network client configurations.
/// This service creates the required settings such as the base URL, headers, and session configurations
/// for making HTTP requests.
final class NetworkingService {
    
    /// Instance of UserDefaults for storing user preferences and settings.
    let userDefaults = UserDefaults.standard
    
    /// The network client configuration, which includes the base URL, HTTP headers, and session configuration.
    /// This is a computed property that returns a `ClientConfiguration` object when accessed.
    var configuration: ClientConfiguration! {
        return makeConfiguration()
    }
    
    // MARK: - Private Methods
    
    /// Creates and returns a `ClientConfiguration` object.
    /// The configuration includes the base URL, HTTP headers, and session configuration.
    ///
    /// - Returns: A `ClientConfiguration` object used for network requests.
    private func makeConfiguration() -> ClientConfiguration {
        let configuration = ClientConfiguration(baseURL: makeHost(),
                                                httpHeaders: makeHeaders(),
                                                sessionConfiguration: makeSessionConfiguration())
        
        return configuration
    }
    
    /// Returns the base URL used for network requests.
    /// The base URL changes depending on the build configuration.
    ///
    /// - Returns: A `String` representing the base URL for network requests.
    private func makeHost() -> String {
        #if DEBUG
        return "https://jsonplaceholder.typicode.com" // Base URL for debug builds.
        #else
        return "https://jsonplaceholder.typicode.com" // Base URL for release builds.
        #endif
    }
    
    /// Returns the HTTP headers required for the network requests.
    /// This currently only includes the `Content-Type` header set to `application/json`.
    ///
    /// - Returns: A dictionary containing the HTTP headers for the requests.
    private func makeHeaders() -> [String: String] {
        ["Content-Type" : "application/json"]
    }
    
    /// Configures and returns a session configuration for network requests.
    /// The session configuration includes timeout settings for both the request and resource.
    ///
    /// - Returns: A `URLSessionConfiguration` with custom timeout intervals.
    private func makeSessionConfiguration() -> URLSessionConfiguration {
        let sessionConfiguration = URLSessionConfiguration.default
        
        sessionConfiguration.timeoutIntervalForRequest = 330 // Timeout for requests.
        sessionConfiguration.timeoutIntervalForResource = 330 // Timeout for resources.
        
        return sessionConfiguration
    }
}
