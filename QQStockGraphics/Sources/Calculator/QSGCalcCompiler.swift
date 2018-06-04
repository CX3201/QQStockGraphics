//
//  QSGCalcCompiler.swift
//  QQStockGraphics
//
//  Created by abelchen on 2018/5/30.
//  Copyright © 2018年 abelchen. All rights reserved.
//

/********* 语法 **********
 1、变量
 2、表达式
 3、函数
 4、类型系统，Double、Vector
 ************************/

import Foundation

class QSGCalcCompiler {
    func compile(code:String) -> [QSGCalculator] {
        return []
    }
    
    enum Token {
        case EOF
        case IDENTIFIER
        case NUMBER
    }
}
