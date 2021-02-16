//
//  singletonTestTests.swift
//  singletonTestTests
//
//  Created by Paulo Silva on 11/02/2021.
//

import XCTest
@testable import singletonTest

class singletonTestTests: XCTestCase {

    func test_FirstSingletonClass_print_property() {
        let class1 = UsingSingleton()
        let class2 = UsingSingleton2()
        //Singleton.instance points to the same memory address on the debugger
        class1.printProperty()
        class2.printProperty()
        XCTAssertEqual(class1.instance.property, class2.instance2.property)
    }
    
    func test_FirstSingletonClassRefactoring_print_property() {
        let class1 = UsingSingletonRefactoring()
        let class2 = UsingSingleton2Refactoring()
        //Singleton.instance points to the same memory address on the debugger
        class1.printProperty()
        class2.printProperty()
        print(State.one)
        XCTAssertEqual(class1.instance.property, class2.instance2.property)
    }

}

enum State {
    case one
    case two
}
