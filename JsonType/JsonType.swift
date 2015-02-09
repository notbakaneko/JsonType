//
//  File.swift
//  JsonType
//
//  Created by bakaneko on 6/02/2015.
//  Copyright (c) 2015 bakaneko. All rights reserved.
//

import Foundation


public enum JsonType {
    case DictionaryType(NSDictionary)
    case ArrayType(NSArray)
    case StringType(String)
    case NumberType(NSNumber)
    case BoolType(Bool)
    case NullType
    case InvalidType([String:AnyObject])

    public init(_ rawValue: AnyObject) {
        switch rawValue {
        case let raw as NSNull:
            self = .NullType

        case let raw as NSString:
            self = .StringType(raw)

        case let raw as NSNumber:
            self = .NumberType(raw)

        case let raw as NSArray:
            self = .ArrayType(raw)

        case let raw as Bool:
            self = .BoolType(raw)

        case let raw as NSDictionary:
            self = .DictionaryType(raw)

        default:
            self = .InvalidType([:])
        }
    }

    // MARK:- value overloads
    public func value() -> String? {
        switch self {
        case .StringType(let value): return value
        default: return nil
        }
    }

    public func value() -> NSURL? {
        switch self {
        case .StringType(let value): return NSURL(string: value)
        default: return nil
        }
    }

    public func value() -> Int? {
        switch self {
        case .NumberType(let value): return Int(value)
        case .StringType(let value): return value.toInt()
        case .BoolType(let value): return Int(value)
        default: return nil
        }
    }

    public func value() -> UInt? {
        switch self {
        case .NumberType(let value): return value.unsignedLongValue
        case .StringType(let value):
            if let int = value.toInt() {
                return UInt(int)
            } else {
                return nil
            }
        case .BoolType(let value): return UInt(value)
        default: return nil
        }
    }

    public func value() -> Bool? {
        switch self {
        case .BoolType(let value): return value
        case .NumberType(let value): return value.boolValue
        default: return nil
        }
    }

    public func value() -> Double? {
        switch self {
        case .NumberType(let value): return value.doubleValue
        case .StringType(let value): return ((value as NSString).doubleValue)   // use strtod?
        default: return nil
        }
    }

    public func value() -> NSDictionary? {
        switch self {
        case .DictionaryType(let value): return value
        default: return nil
        }
    }

    public func value() -> NSArray? {
        switch self {
        case .ArrayType(let value): return value
        default: return nil
        }
    }


    // MARK:- non-operator format
    public static func jsonType(json: [String: AnyObject], _ key: String) -> JsonType? {
        let type = json[key].map { JsonType($0) }
        return type
    }
}


// MARK:- operators
infix operator <- { associativity right precedence 90 }
public func <-(inout left: Int, right: AnyObject?) {
    let type = right.map { JsonType($0) }
    type?.value().map { left = $0 }
}

public func <-(inout left: Int?, right: AnyObject?) {
    let type = right.map { JsonType($0) }
    type?.value().map { left = $0 }
}

public func <-(inout left: UInt, right: AnyObject?) {
    let type = right.map { JsonType($0) }
    type?.value().map { left = $0 }
}

public func <-(inout left: UInt?, right: AnyObject?) {
    let type = right.map { JsonType($0) }
    type?.value().map { left = $0 }
}

public func <-(inout left: Double, right: AnyObject?) {
    let type = right.map { JsonType($0) }
    type?.value().map { left = $0 }
}

public func <-(inout left: Double?, right: AnyObject?) {
    let type = right.map { JsonType($0) }
    type?.value().map { left = $0 }
}

public func <-(inout left: String, right: AnyObject?) {
    let type = right.map { JsonType($0) }
    type?.value().map { left = $0 }
}

public func <-(inout left: String?, right: AnyObject?) {
    let type = right.map { JsonType($0) }
    type?.value().map { left = $0 }
}

public func <-(inout left: Bool, right: AnyObject?) {
    let type = right.map { JsonType($0) }
    type?.value().map { left = $0 }
}

public func <-(inout left: Bool?, right: AnyObject?) {
    let type = right.map { JsonType($0) }
    type?.value().map { left = $0 }
}

public func <-(inout left: NSDictionary, right: AnyObject?) {
    let type = right.map { JsonType($0) }
    type?.value().map { left = $0 }
}

public func <-(inout left: NSDictionary?, right: AnyObject?) {
    let type = right.map { JsonType($0) }
    type?.value().map { left = $0 }
}

public func <-(inout left: NSArray, right: AnyObject?) {
    let type = right.map { JsonType($0) }
    type?.value().map { left = $0 }
}

public func <-(inout left: NSArray?, right: AnyObject?) {
    let type = right.map { JsonType($0) }
    type?.value().map { left = $0 }
}





// MARK:- operators for direct assignment
prefix operator <-? {}
public prefix func <-?(right: AnyObject?) -> Int? {
    let type = right.map { JsonType($0) }
    return type?.value()
}

public prefix func <-?(right: AnyObject?) -> UInt? {
    let type = right.map { JsonType($0) }
    return type?.value()
}

public prefix func <-?(right: AnyObject?) -> Double? {
    let type = right.map { JsonType($0) }
    return type?.value()
}

public prefix func <-?(right: AnyObject?) -> String? {
    let type = right.map { JsonType($0) }
    return type?.value()
}

public prefix func <-?(right: AnyObject?) -> Bool? {
    let type = right.map { JsonType($0) }
    return type?.value()
}

public prefix func <-?(right: AnyObject?) -> NSDictionary? {
    let type = right.map { JsonType($0) }
    return type?.value()
}

public prefix func <-?(right: AnyObject?) -> NSArray? {
    let type = right.map { JsonType($0) }
    return type?.value()
}


