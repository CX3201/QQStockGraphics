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
        let v = QSGVector()
        print(v[0], v[100], v[1000])
        v[0] = 0
        v[100] = 100
        v[1000] = 1000
        v[50000] = 50000
        print(v[0], v[100], v[1000], v[50000])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

