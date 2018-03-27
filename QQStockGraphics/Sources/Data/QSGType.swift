//
//  QSGType.swift
//  QQStockGraphics
//
//  Created by abelchen on 2018/3/27.
//  Copyright © 2018年 abelchen. All rights reserved.
//

import UIKit

class QSGType {
    static let InvalidValue = Double.nan
}

extension Double {
    var QSGValid : Bool {
        get {
            return self != QSGType.InvalidValue
        }
    }
}
