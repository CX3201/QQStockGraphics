//
//  ViewController.swift
//  QQStockGraphics
//
//  Created by abelchen on 2018/3/27.
//  Copyright © 2018年 abelchen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(test)))
    }

    @objc func test() {
        let n = 1000000
        
        let v1 = QSGVector.QSGRandomVector(count: n)
        let v2 = QSGVector.QSGRandomVector(count: n)
        
        print("vector: ", QSGBenchmark(count: 1) {
            do{
                let _ = try QSGDiv(v1: v1, v2: v2)
            }catch QSGError.CaculatorError {
                
            }catch{
                
            }
        })
        
        print("normal: ", QSGBenchmark(count: 1) {
            var result = QSGVector.QSGMakeVector(count: n)
            for i in 0..<n {
                result[i] = v1[i] / v2[i]
            }
        })
        
        let v = QSGVector.QSGIndexVector(count: 10)
        let _ = v
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

