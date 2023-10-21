//
//  NSObject+Extensions.swift
//
//
//  Created by Kristóf Kálai on 2023. 09. 14..
//

import Foundation

extension NSObject {
    @discardableResult public static func swizzle<T: NSObject>(
        from originalSelector: Selector,
        to targetSelector: Selector,
        of targetClass: T.Type
    ) -> Bool {
        swizzleMethods(from: originalSelector, of: Self.self, to: targetSelector, of: targetClass)
    }

    @discardableResult public func swizzle<T: NSObject>(
        from originalSelector: Selector,
        to targetSelector: Selector,
        of targetClass: T.Type
    ) -> Bool {
        Self.swizzle(from: originalSelector, to: targetSelector, of: targetClass)
    }
}
