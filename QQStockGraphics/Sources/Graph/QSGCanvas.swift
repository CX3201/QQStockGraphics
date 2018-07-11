//
//  QSGCanvas.swift
//  QQStockGraphics
//
//  Created by Abelchen on 2018/3/27.
//  Copyright © 2018年 abelchen. All rights reserved.
//

import UIKit

typealias QSGColor = UInt32

extension QSGColor {
    var toUIColor: UIColor {
        get {
            let r = CGFloat((self & 0xFF000000) >> 24) / 256
            let g = CGFloat((self & 0x00FF0000) >> 16) / 256
            let b = CGFloat((self & 0x0000FF00) >> 8) / 256
            let a = CGFloat((self & 0x000000FF) >> 0) / 256
            
            return UIColor(red: r, green: g, blue: b, alpha: a)
        }
    }
}

struct QSGPoint {
    let x: QSGValue
    let y: QSGValue
    let color: QSGColor
}

class QSGCanvas : CALayer {
    var color: UIColor = UIColor.black
    var lineWidth: Double = 1;
}

class QSGUniformCanvas : QSGCanvas {
    
}
