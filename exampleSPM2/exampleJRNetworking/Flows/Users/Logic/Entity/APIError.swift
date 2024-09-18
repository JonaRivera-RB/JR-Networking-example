//
//  APIError.swift
//  exampleSPM2
//
//  Created by Jonathan Rivera on 16/09/24.
//

/// A model representing an error response from the API.
/// This struct conforms to `Decodable` to support decoding from JSON error data.
struct APIError: Decodable {
    
    /// A descriptive message explaining the error that occurred.
    let message: String
}
