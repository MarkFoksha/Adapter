//
//  Google Authenticator.swift
//  Adapter2
//
//  Created by Марк Фокша on 28.04.2023.
//

import Foundation

struct GoogleUser {
    let email: String
    let password: String
    let token: String
}

class GoogleAuth {
    func login(email: String, password: String, completion: @escaping(GoogleUser?, Error?) -> ()) {
        let token = "google-token"
        let user = GoogleUser(email: email, password: password, token: token)
        
        completion(user, nil)
    }
}
