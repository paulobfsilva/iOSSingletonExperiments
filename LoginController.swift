//
//  LoginViewController.swift
//  singletonTest
//
//  Created by Paulo Silva on 11/02/2021.
//

import Foundation

class LoginController {
    var api = SecondSingletonClass.instance // we can replace this variable now in tests
    func didPressLoginButton() {
        // this would be difficult to test
        SecondSingletonClass.instance.login() { user in // change this to api.login() { user in }
            // show next screen
        }
    }
}

class LoginController2 {
    var api = ThirdSingletonClass.shared
    func wantsToLogin() {
        api.login() { user in
            // show feed screen
        }
    }
}

