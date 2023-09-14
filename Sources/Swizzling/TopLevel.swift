//
//  TopLevel.swift
//
//
//  Created by Kristóf Kálai on 2023. 09. 14..
//

import Foundation

@discardableResult public func swizzleMethods<T: NSObject, P: NSObject>(
    from originalSelector: Selector,
    of sourceClass: T.Type,
    to targetSelector: Selector,
    of targetClass: P.Type
) -> Bool {
    guard let originalMethod = class_getInstanceMethod(T.self, originalSelector),
          let swizzledMethod = class_getInstanceMethod(P.self, targetSelector) else { return false }
    method_exchangeImplementations(originalMethod, swizzledMethod)
    return true
}
