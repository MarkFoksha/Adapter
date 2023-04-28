//
//  TwitterAdapter.swift
//  Adapter2
//
//  Created by Марк Фокша on 28.04.2023.
//

import Foundation

class TwitterAdapter: AuthService {
    private var twitterAuth = TwitterAuth()
    
    func login(email: String, password: String, success: @escaping (User, Token) -> (), failure: @escaping (Error?) -> ()) {
        
        twitterAuth.login(email: email, password: password) { twitterUser, error in
            guard let twitterUser = twitterUser else {
                return failure(error!)
            }
            
            let user = User(email: twitterUser.email, password: twitterUser.password)
            let token = Token(value: twitterUser.token)
            
            success(user, token)
        }
    }
}
