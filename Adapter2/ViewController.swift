//
//  ViewController.swift
//  Adapter2
//
//  Created by Марк Фокша on 28.04.2023.
//

import UIKit

class ViewController: UIViewController {

    let authUser: AuthService = GoogleAdapter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createUser(email: "email@example.com", password: "j8ghof2l-2f")
    }

    func createUser(email: String, password: String) {
        authUser.login(email: email, password: password) { googleUser, token in
            
            print(googleUser.password)
            print(googleUser.email)
            print(token.value)
            
        } failure: { error in
            
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }
}

