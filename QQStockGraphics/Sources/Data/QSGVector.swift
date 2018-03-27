//
//  QSGVector.swift
//  QQStockGraphics
//
//  Created by abelchen on 2018/3/27.
//  Copyright © 2018年 abelchen. All rights reserved.
//

import UIKit

class QSGVector {
    private var data : Array<Double> = []
    
    var count : Int {
        get {
            return data.count
        }
    }
    
    subscript(i : Int) -> Double {
        get {
            if(i < data.count){
                return data[i]
            }else{
                return QSGType.InvalidValue
            }
        }
        set {
            for _ in data.count...i {
                data.append(QSGType.InvalidValue)
            }
            data[i] = newValue
        }
    }
}
