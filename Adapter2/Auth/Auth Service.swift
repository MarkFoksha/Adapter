//
//  Auth Service.swift
//  Adapter2
//
//  Created by Марк Фокша on 28.04.2023.
//

import Foundation

public struct User {
    let email: String
    let password: String
}

public struct Token {
    let value: String
}

public protocol AuthService {
    func login(email: String,
               password: String,
               success: @escaping (User, Token) -> (),
               failure: @escaping (Error?) -> ())
}
