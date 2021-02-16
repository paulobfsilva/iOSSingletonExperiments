//
//  MockApiClientTests.swift
//  singletonTestTests
//
//  Created by Paulo Silva on 11/02/2021.
//

import Foundation
@testable import singletonTest

class MockApiClient: SecondSingletonClass {
    // now, this class can override the login method and implement
    // something else, intercepting the actual API request
    override func login(completion: (LoggedInUser) -> Void) {
        // insted of 
    }
}
