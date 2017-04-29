//
//  Dictionary+Extensions.swift
//  Pods
//
//  Created by Sergey Galezdinov on 29.04.17.
//
//

import Foundation

extension Dictionary {
    mutating func memoize(_ key: Key, memoize: @autoclosure () -> Value) -> Value {
        if let existingValue = self[key] {
            return existingValue
        }
        let value = memoize()
        self[key] = value
        return value
    }
    mutating func memoize(_ key: Key, memoize: () -> Value) -> Value {
        return self.memoize(key, memoize: memoize())
    }
}
