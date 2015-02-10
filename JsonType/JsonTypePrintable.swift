//
//  JsonTypePrintable.swift
//  JsonType
//
//  Created by bakaneko on 10/02/2015.
//  Copyright (c) 2015 bakaneko. All rights reserved.
//

import Foundation


extension JsonType : Printable {
    public var name: String {
        return "🐱"
    }

    public var description: String {
        switch self {
        case .InvalidType(let errors):
            return ".InvalidType: " + errors.description
        default:
            return printableString()
        }
    }

    func printableString(indent: String = "") -> String {
        switch self {
        case .DictionaryType(let dictionary):
            return dictionary.description

        case .ArrayType(let array):
            return array.description

        case .StringType(let string):
            return "\"\(string)\""

        case .NumberType(let number):
            return number.description

        case .BoolType(let bool):
            return bool.description

        case .NullType:
            return "(null)"

        case .InvalidType(let errors):
            return "Invalid JSON value"
            
        default:
            return "not implemented"
        }
    }
}
