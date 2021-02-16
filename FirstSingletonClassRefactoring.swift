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
// by declaring final, nobody can override the behavior of this class
// however, we can still add new features using extensions
class ApiSingletonRefactoring {
    static let instance = ApiSingletonRefactoring() // unique instance, but no need to define the method getInstance now
    // static let is constant and lazy loaded
    
    private init() {} // prevent users from instantiating (Singleton)
    
    // static indicated a type method (classes can use the class keyword instead)
    // so, this is not an instance method, since there is only one shared instance
//    static func getInstance() -> ApiSingletonRefactoring {
//        return instance
//    }
    
    // to prove our concept, let add a random property and verify the value on other classes
    let property = Int.random(in: 0...5)
}

class UsingSingletonRefactoring {
    // this is a Singleton
    let instance = ApiSingletonRefactoring.instance
    // if we would like to instantiate a different instance of ApiSingleton, we can't
   // let anotherInstance = ApiSingleton( //error)
    func printProperty () {
        print(instance.property)
    }
}

class UsingSingleton2Refactoring {
    // this is the same Singleton
    let instance2 = ApiSingletonRefactoring.instance
    func printProperty () {
        print(instance2.property)
    }
}
