//
//  QSGCanvas.swift
//  QQStockGraphics
//
//  Created by Abelchen on 2018/3/27.
//  Copyright © 2018年 abelchen. All rights reserved.
//

import UIKit

protocol QSGCanvas {
    var color: UIColor { get set }
    var lineWidth: Double { get set }
}

class QSGCGCanvas : QSGCanvas {
    var color: UIColor = UIColor.black
    var lineWidth: Double = 1;
}
