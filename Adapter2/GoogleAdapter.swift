//
//  GoogleAdapter.swift
//  Adapter2
//
//  Created by Марк Фокша on 28.04.2023.
//

import Foundation

class GoogleAdapter: AuthService {
    private var googleAuth = GoogleAuth()
    
    func login(email: String, password: String, success: @escaping (User, Token) -> (), failure: @escaping (Error?) -> ()) {
        googleAuth.login(email: email, password: password) { googleUser, error in
            guard let googleUser = googleUser else {
                return failure(error!)
            }
            
            let user = User(email: googleUser.email, password: googleUser.password)
            let token = Token(value: googleUser.token)
            
            success(user, token)
        }
    }
}
