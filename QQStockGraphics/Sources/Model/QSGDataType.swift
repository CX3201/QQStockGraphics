//
//  QSGDataType.swift
//  QQStockGraphics
//
//  Created by abelchen on 2018/6/21.
//  Copyright © 2018年 abelchen. All rights reserved.
//

import Foundation

enum QSGMarketType : UInt {
    case HS = 0
    case HK
    case US
    case UNKNOWN
}

enum QSGStockType : UInt {
    case STOCK = 0
    case INDEX
    case UNKNOWN
}
