//
//  ThirdSingletonClass.swift
//  singletonTest
//
//  Created by Paulo Silva on 11/02/2021.
//

import Foundation

class ThirdSingletonClass {
    // create as var breaks the Singleton patters, by introducing a settable property,
    // creating a global shared state
    static let shared = ThirdSingletonClass()
    // now, by removing the private initializer, we can create own own instance
  //  private init() {}
    func login(completion: (LoggedInUser) -> Void) {
        
    }
    
    func loadFeed(completion: ([FeedItem]) -> Void) {
        
    }
    // this structure is becoming a problem. There more features we need, the more
    // methods we will need in this class...
}

/**
 In tests we can do ApiClient.instance = MockApiClient() on the setUp() and replace it back on tearDown()
 */


struct FeedItem {}
