//
//  QSGCaculator.swift
//  QQStockGraphics
//
//  Created by abelchen on 2018/3/27.
//  Copyright © 2018年 abelchen. All rights reserved.
//

import UIKit
import Accelerate

func QSGBenchmark(count:Int, block:(()->Void)) -> TimeInterval {
    let start = Date().timeIntervalSince1970
    for _ in 1...count {
        block()
    }
    let end = Date().timeIntervalSince1970
    
    return Double(Int((end - start) * 100000)) / 100
}


func QSGAdd(v: QSGVector, a: QSGValue) -> QSGVector {
    var result = QSGVector.QSGMakeVector(count: v.count)
    var k = a
    vDSP_vsaddD(v, 1, &k, &(result), 1, vDSP_Length(v.count))
    return result
}

func QSGAdd(v1: QSGVector, v2: QSGVector) throws -> QSGVector {
    if(v1.count != v2.count){
        throw QSGError.CaculatorError
    }
    var result = QSGVector.QSGMakeVector(count: v1.count)
    vDSP_vaddD(v1, 1, v2, 1, &result, 1, vDSP_Length(v1.count))
    return result
}

func QSGSub(v: QSGVector, a: QSGValue) -> QSGVector {
    return QSGAdd(v: v, a: -a)
}

func QSGSub(v1: QSGVector, v2: QSGVector) throws -> QSGVector {
    if(v1.count != v2.count){
        throw QSGError.CaculatorError
    }
    var result = QSGVector.QSGMakeVector(count: v1.count)
    vDSP_vsubD(v2, 1, v1, 1, &result, 1, vDSP_Length(v1.count))
    return result
}

func QSGMul(v: QSGVector, a: QSGValue) -> QSGVector {
    var result = QSGVector.QSGMakeVector(count: v.count)
    var k = a
    vDSP_vsmulD(v, 1, &k, &result, 1, vDSP_Length(v.count))
    return result
}

func QSGMul(v1: QSGVector, v2: QSGVector) throws -> QSGVector {
    if(v1.count != v2.count){
        throw QSGError.CaculatorError
    }
    var result = QSGVector.QSGMakeVector(count: v1.count)
    vDSP_vmulD(v2, 1, v1, 1, &result, 1, vDSP_Length(v1.count))
    return result
}

func QSGDiv(v: QSGVector, a: QSGValue) -> QSGVector {
    var result = QSGVector.QSGMakeVector(count: v.count)
    var k = a
    vDSP_vsdivD(v, 1, &k, &result, 1, vDSP_Length(v.count))
    return result
}

func QSGDiv(v1: QSGVector, v2: QSGVector) throws -> QSGVector {
    if(v1.count != v2.count){
        throw QSGError.CaculatorError
    }
    var result = QSGVector.QSGMakeVector(count: v1.count)
    vDSP_vdivD(v2, 1, v1, 1, &result, 1, vDSP_Length(v1.count))
    return result
}
