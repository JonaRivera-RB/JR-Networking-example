//
//  User.swift
//  exampleSPM2
//
//  Created by Jonathan Rivera on 16/09/24.
//

/// A model representing a user with basic information.
/// This struct conforms to `Decodable` to support decoding from JSON data.
struct User: Decodable {
    
    /// The unique identifier of the user.
    let id: Int
    
    /// The name of the user.
    let name: String
    
    /// The email address of the user.
    let email: String
}
