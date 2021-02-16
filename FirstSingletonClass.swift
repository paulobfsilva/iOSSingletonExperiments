//
//  File.swift
//  singletonTest
//
//  Created by Paulo Silva on 11/02/2021.
//

import Foundation

/**
 This is a simple, by the book, Api class implementing a Singleton
 */
class ApiSingleton {
    private static let instance = ApiSingleton() // unique instance
    
    private init() {} // prevent users from instantiating (Singleton)
    
    // static indicated a type method (classes can use the class keyword instead)
    // so, this is not an instance method, since there is only one shared instance
    static func getInstance() -> ApiSingleton {
        return instance
    }
    
    // to prove our concept, let add a random property and verify the value on other classes
    let property = Int.random(in: 0...5)
}

class UsingSingleton {
    // this is a Singleton
    let instance = ApiSingleton.getInstance()
    // if we would like to instantiate a different instance of ApiSingleton, we can't
   // let anotherInstance = ApiSingleton( //error)
    func printProperty () {
        print(instance.property)
    }
}

class UsingSingleton2 {
    // this is the same Singleton
    let instance2 = ApiSingleton.getInstance()
    func printProperty () {
        print(instance2.property)
    }
}
