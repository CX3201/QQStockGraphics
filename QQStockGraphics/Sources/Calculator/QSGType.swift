//
//  QSGType.swift
//  QQStockGraphics
//
//  Created by abelchen on 2018/3/27.
//  Copyright © 2018年 abelchen. All rights reserved.
//

import UIKit

class QSGType {
    static let InvalidValue = Double.nan // 任何数与nan运算都是nan
}

extension Double {
    var QSGValid: Bool { get { return self != QSGType.InvalidValue } }
}

class QSGVector : CustomStringConvertible {
    private var data: Array<Double> = []
    
    var count: Int { get { return data.count } }
    
    subscript(i: Int) -> Double {
        get {
            if(i < data.count){
                return data[i]
            }else{
                return QSGType.InvalidValue
            }
        }
        set {
            if(data.count <= i){
                for _ in data.count...i {
                    data.append(QSGType.InvalidValue)
                }
            }
            data[i] = newValue
        }
    }
    
    ///////////// Debug /////////////
    var description: String {
        get {
            var desc = "[";
            var first = true
            for value in data {
                if(!first){
                    desc.append(",")
                }else{
                    first = false
                }
                desc.append("\(value)")
            }
            desc.append("]")
            return desc
        }
    }
}
