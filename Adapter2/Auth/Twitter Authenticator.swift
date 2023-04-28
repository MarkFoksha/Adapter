//
//  Twitter Authenticator.swift
//  Adapter2
//
//  Created by Марк Фокша on 28.04.2023.
//

import Foundation

struct TwitterUser {
    let email: String
    let password: String
    let token: String
}

class TwitterAuth {
    func login(email: String, password: String, completion: @escaping(TwitterUser?, Error?) -> ()) {
        let token = "google-token"
        let user = TwitterUser(email: email, password: password, token: token)
        
        completion(user, nil)
    }
}
