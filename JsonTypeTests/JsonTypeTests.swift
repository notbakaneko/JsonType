//
//  JsonTypeTests.swift
//  JsonTypeTests
//
//  Created by bakaneko on 9/02/2015.
//  Copyright (c) 2015 nekonyan. All rights reserved.
//

import Foundation
import XCTest
import JsonType


class JsonTypeTests: XCTestCase {
    lazy var testDictionary: NSDictionary = {
        return [
            "string": "This is a string.",
            "scalar": 3,
            "scalar_string": "7",
            "float": 1.9,
            "float_string": "1.9",
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
        let iv = ""
        var string = iv
        string <- testDictionary["string"]
        XCTAssert(string == "This is a string.")

        var scalar = iv
        scalar <- testDictionary["scalar"]
        XCTAssert(scalar == iv)

        var scalarString = iv
        scalarString <- testDictionary["scalar_string"]
        XCTAssert(scalarString == "7")

        var float = iv
        float <- testDictionary["float"]
        XCTAssert(float == iv)

        var floatString = iv
        floatString <- testDictionary["float_string"]
        XCTAssert(floatString == "1.9")

        var bool = iv
        bool <- testDictionary["bool"]
        XCTAssert(bool == iv)

        var boolString = iv
        boolString <- testDictionary["bool_string"]
        XCTAssert(boolString == "true")

        var array = iv
        array <- testDictionary["array"]
        XCTAssert(array == iv)

        var dictionary = iv
        dictionary <- testDictionary["dictionary"]
        XCTAssert(dictionary == iv)
    }


    func test_Int() {
        let iv = 0
        var string = iv
        string <- testDictionary["string"]
        XCTAssert(string == iv)

        var scalar = iv
        scalar <- testDictionary["scalar"]
        XCTAssert(scalar == 3)

        var scalarString = 0
        scalarString <- testDictionary["scalar_string"]
        XCTAssert(scalarString == 7)

        var float = iv
        float <- testDictionary["float"]
        XCTAssert(float == 1)

        var floatString = iv
        floatString <- testDictionary["float_string"]
        XCTAssert(floatString == iv)

        var bool = iv
        bool <- testDictionary["bool"]
        XCTAssert(bool == 1)

        var boolString = iv
        boolString <- testDictionary["bool_string"]
        XCTAssert(boolString == iv)

        var array = iv
        array <- testDictionary["array"]
        XCTAssert(array == iv)

        var dictionary = iv
        dictionary <- testDictionary["dictionary"]
        XCTAssert(dictionary == iv)
    }


    func test_Double() {
        let iv = 0.0
        var string = iv
        string <- testDictionary["string"]
        XCTAssert(string == iv)

        var scalar = iv
        scalar <- testDictionary["scalar"]
        XCTAssert(scalar == 3.0)

        var scalarString = iv
        scalarString <- testDictionary["scalar_string"]
        XCTAssert(scalarString == 7.0)

        var float = iv
        float <- testDictionary["float"]
        XCTAssert(float == 1.9)

        var floatString = iv
        floatString <- testDictionary["float_string"]
        XCTAssert(floatString == 1.9)

        var bool = iv
        bool <- testDictionary["bool"]
        XCTAssert(bool == 1)

        var boolString = iv
        boolString <- testDictionary["bool_string"]
        XCTAssert(boolString == iv)

        var array = iv
        array <- testDictionary["array"]
        XCTAssert(array == iv)

        var dictionary = iv
        dictionary <- testDictionary["dictionary"]
        XCTAssert(dictionary == iv)
    }


    func test_Bool() {
        let iv = false
        var string = iv
        string <- testDictionary["string"]
        XCTAssert(string == iv)

        var scalar = iv
        scalar <- testDictionary["scalar"]
        XCTAssert(scalar == true)

        var scalarString = iv
        scalarString <- testDictionary["scalar_string"]
        XCTAssert(scalarString == iv)

        var float = iv
        float <- testDictionary["float"]
        XCTAssert(float == true)

        var floatString = iv
        floatString <- testDictionary["float_string"]
        XCTAssert(floatString == iv)

        var bool = iv
        bool <- testDictionary["bool"]
        XCTAssert(bool == true)

        var boolString = iv
        boolString <- testDictionary["bool_string"]
        XCTAssert(boolString == iv)

        var array = iv
        array <- testDictionary["array"]
        XCTAssert(array == iv)

        var dictionary = iv
        dictionary <- testDictionary["dictionary"]
        XCTAssert(dictionary == iv)
    }


    func test_Array() {
        let iv = NSArray()
        var string = iv
        string <- testDictionary["string"]
        XCTAssert(string == iv)

        var scalar = iv
        scalar <- testDictionary["scalar"]
        XCTAssert(scalar == iv)

        var scalarString = iv
        scalarString <- testDictionary["scalar_string"]
        XCTAssert(scalarString == iv)

        var float = iv
        float <- testDictionary["float"]
        XCTAssert(float == iv)

        var floatString = iv
        floatString <- testDictionary["float_string"]
        XCTAssert(floatString == iv)

        var bool = iv
        bool <- testDictionary["bool"]
        XCTAssert(bool == iv)

        var boolString = iv
        boolString <- testDictionary["bool_string"]
        XCTAssert(boolString == iv)

        var array = iv
        array <- testDictionary["array"]
        XCTAssert(array == [ "a", "b", "c", "d" ])

        var dictionary = iv
        dictionary <- testDictionary["dictionary"]
        XCTAssert(dictionary == iv)
    }


    func test_Dictionary() {
        let iv = NSDictionary()
        var string = iv
        string <- testDictionary["string"]
        XCTAssert(string == iv)

        var scalar = iv
        scalar <- testDictionary["scalar"]
        XCTAssert(scalar == iv)

        var scalarString = iv
        scalarString <- testDictionary["scalar_string"]
        XCTAssert(scalarString == iv)

        var float = iv
        float <- testDictionary["float"]
        XCTAssert(float == iv)

        var floatString = iv
        floatString <- testDictionary["float_string"]
        XCTAssert(floatString == iv)

        var bool = iv
        bool <- testDictionary["bool"]
        XCTAssert(bool == iv)

        var boolString = iv
        boolString <- testDictionary["bool_string"]
        XCTAssert(boolString == iv)

        var array = iv
        array <- testDictionary["array"]
        XCTAssert(array == iv)

        var dictionary = iv
        dictionary <- testDictionary["dictionary"]
        XCTAssert(dictionary == ["k": "v"])
    }
}
