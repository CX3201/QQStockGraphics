//
//  QSGType.swift
//  QQStockGraphics
//
//  Created by abelchen on 2018/3/27.
//  Copyright © 2018年 abelchen. All rights reserved.
//

import UIKit

typealias QSGValue = Double
typealias QSGVector = [QSGValue]

extension QSGValue {
    var QSGValid: Bool { get { return !(isNaN) } }
}

extension Array where Element == QSGValue {
    static func QSGMakeVector(count: Int) -> QSGVector {
        return QSGVector(repeating: QSGValue.nan, count: count)
    }
    
    static func QSGRandomVector(count: Int) -> QSGVector {
        var v = QSGMakeVector(count: count)
        for i in 0..<count {
            v[i] = QSGValue(arc4random()) / Double(arc4random() / 2 + 1)
        }
        return v
    }
    
    static func QSGIndexVector(count: Int) -> QSGVector {
        var v = QSGMakeVector(count: count)
        for i in 0..<count {
            v[i] = QSGValue(i)
        }
        return v
    }
}
