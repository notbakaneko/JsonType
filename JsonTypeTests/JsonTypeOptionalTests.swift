//
//  JsonTypeOptionalTests.swift
//  JsonType
//
//  Created by bakaneko on 9/02/2015.
//  Copyright (c) 2015 nekonyan. All rights reserved.
//

import Foundation
import XCTest
import JsonType


class JsonTypeOptionalTests: XCTestCase {
    lazy var testDictionary: NSDictionary = {
        return [
            "string": "This is a string.",
            "scalar": 3,
            "scalar_string": "7",
            "float": 0.9,
            "float_string": "0.9",
            "bool": true,
            "bool_string": "true",
            "array": [ "a", "b", "c", "d" ],
            "dictionary": [ "k": "v" ]
        ]
        }()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }


    func test_String() {
        let string: String? = <-?testDictionary["string"]
        XCTAssert(string == "This is a string.")

        let scalar: String? = <-?testDictionary["scalar"]
        XCTAssert(scalar == nil)

        let scalarString: String? = <-?testDictionary["scalar_string"]
        XCTAssert(scalarString == "7")

        let float: String? = <-?testDictionary["float"]
        XCTAssert(float == nil)

        let floatString: String? = <-?testDictionary["float_string"]
        XCTAssert(floatString == "0.9")

        let bool: String? = <-?testDictionary["bool"]
        XCTAssert(bool == nil)

        let boolString: String? = <-?testDictionary["bool_string"]
        XCTAssert(boolString == "true")

        let array: String? = <-?testDictionary["array"]
        XCTAssert(array == nil)

        let dictionary: String? = <-?testDictionary["dictionary"]
        XCTAssert(dictionary == nil)
    }


    func test_Int() {
        let string: Int? = <-?testDictionary["string"]
        XCTAssert(string == 0)  // 0 because of integerValue

        let scalar: Int? = <-?testDictionary["scalar"]
        XCTAssert(scalar == 3)

        let scalarString: Int? = <-?testDictionary["scalar_string"]
        XCTAssert(scalarString == 7)

        let float: Int? = <-?testDictionary["float"]
        XCTAssert(float == 0) // 0 because of integerValue

        let floatString: Int? = <-?testDictionary["float_string"]
        XCTAssert(floatString == 0)   // 0 because of integerValue

        let bool: Int? = <-?testDictionary["bool"]
        XCTAssert(bool == 1)

        let boolString: Int? = <-?testDictionary["bool_string"]
        XCTAssert(boolString == 0)    // 0 because of integerValue

        let array: Int? = <-?testDictionary["array"]
        XCTAssert(array == nil)

        let dictionary: Int? = <-?testDictionary["dictionary"]
        XCTAssert(dictionary == nil)
    }


    func test_Double() {
        let string: Double? = <-?testDictionary["string"]
        XCTAssert(string == 0.0)

        let scalar: Double? = <-?testDictionary["scalar"]
        XCTAssert(scalar == 3.0)

        let scalarString: Double? = <-?testDictionary["scalar_string"]
        XCTAssert(scalarString == 7.0)

        let float: Double? = <-?testDictionary["float"]
        XCTAssert(float == 0.9)

        let floatString: Double? = <-?testDictionary["float_string"]
        XCTAssert(floatString == 0.9)

        let bool: Double? = <-?testDictionary["bool"]
        XCTAssert(bool == 1)

        let boolString: Double? = <-?testDictionary["bool_string"]
        XCTAssert(boolString == 0.0)

        let array: Double? = <-?testDictionary["array"]
        XCTAssert(array == nil)

        let dictionary: Double? = <-?testDictionary["dictionary"]
        XCTAssert(dictionary == nil)
    }


    func test_Bool() {
        let string: Bool? = <-?testDictionary["string"]
        XCTAssert(string == nil)

        let scalar: Bool? = <-?testDictionary["scalar"]
        XCTAssert(scalar == true)

        let scalarString: Bool? = <-?testDictionary["scalar_string"]
        XCTAssert(scalarString == nil)

        let float: Bool? = <-?testDictionary["float"]
        XCTAssert(float == true)

        let floatString: Bool? = <-?testDictionary["float_string"]
        XCTAssert(floatString == nil)

        let bool: Bool? = <-?testDictionary["bool"]
        XCTAssert(bool == true)

        let boolString: Bool? = <-?testDictionary["bool_string"]
        XCTAssert(boolString == nil)

        let array: Bool? = <-?testDictionary["array"]
        XCTAssert(array == nil)

        let dictionary: Bool? = <-?testDictionary["dictionary"]
        XCTAssert(dictionary == nil)
    }


    func test_Array() {
        let string: NSArray? = <-?testDictionary["string"]
        XCTAssert(string == nil)

        let scalar: NSArray? = <-?testDictionary["scalar"]
        XCTAssert(scalar == nil)

        let scalarString: NSArray? = <-?testDictionary["scalar_string"]
        XCTAssert(scalarString == nil)

        let float: NSArray? = <-?testDictionary["float"]
        XCTAssert(float == nil)

        let floatString: NSArray? = <-?testDictionary["float_string"]
        XCTAssert(floatString == nil)

        let bool: NSArray? = <-?testDictionary["bool"]
        XCTAssert(bool == nil)

        let boolString: NSArray? = <-?testDictionary["bool_string"]
        XCTAssert(boolString == nil)

        let array: NSArray? = <-?testDictionary["array"]
        XCTAssert(array == [ "a", "b", "c", "d" ])

        let dictionary: NSArray? = <-?testDictionary["dictionary"]
        XCTAssert(dictionary == nil)
    }


    func test_Dictionary() {
        let string: NSDictionary? = <-?testDictionary["string"]
        XCTAssert(string == nil)

        let scalar: NSDictionary? = <-?testDictionary["scalar"]
        XCTAssert(scalar == nil)

        let scalarString: NSDictionary? = <-?testDictionary["scalar_string"]
        XCTAssert(scalarString == nil)

        let float: NSDictionary? = <-?testDictionary["float"]
        XCTAssert(float == nil)

        let floatString: NSDictionary? = <-?testDictionary["float_string"]
        XCTAssert(floatString == nil)

        let bool: NSDictionary? = <-?testDictionary["bool"]
        XCTAssert(bool == nil)
        
        let boolString: NSDictionary? = <-?testDictionary["bool_string"]
        XCTAssert(boolString == nil)
        
        let array: NSDictionary? = <-?testDictionary["array"]
        XCTAssert(array == nil)
        
        let dictionary: NSDictionary? = <-?testDictionary["dictionary"]
        XCTAssert(dictionary == ["k": "v"])
    }
}
