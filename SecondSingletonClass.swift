//
//  SecondSingletonClass.swift
//  singletonTest
//
//  Created by Paulo Silva on 11/02/2021.
//

import Foundation

/**
 This is a simple, by the book, Api class implementing a Singleton
 */
// by declaring final, nobody can override the behavior of this class
// however, we can still add new features using extensions
class SecondSingletonClass {
    static let instance = SecondSingletonClass() // unique instance, but no need to define the method getInstance now
    // static let is constant and lazy loaded
    
    private init() {} // prevent users from instantiating (Singleton)
    
    // static indicated a type method (classes can use the class keyword instead)
    // so, this is not an instance method, since there is only one shared instance
//    static func getInstance() -> ApiSingletonRefactoring {
//        return instance
//    }
    
    // to prove our concept, let add a random property and verify the value on other classes
    let property = Int.random(in: 0...5)
    
    func login(completion: (LoggedInUser) -> Void) {
        // if we want to test that the LoginController is working properly
        // without making an actual Api call, how can we override/replace
        // this actual call with a mocked one?
        // for that we need to be abel to, at least, subclass it and apply property
        // injection
    }
}

// let's say we have a struct for Users
struct LoggedInUser {}
