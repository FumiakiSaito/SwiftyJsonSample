//
//  ViewController.swift
//  SwiftyJsonSample
//
//  Created by Fumiaki Saito on 2015/04/27.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var path = NSBundle.mainBundle().pathForResource("hilux", ofType: "json")
        var data = NSData(contentsOfFile: path!)
        let json = JSON(data: data!)
        println(json)
        println(json["色"])
        println(json["名前"])
        
        var path2 = NSBundle.mainBundle().pathForResource("tires", ofType: "json")
        var data2 = NSData(contentsOfFile: path2!)
        let json2 = JSON(data: data2!)
        println(json2)
        println(json2[0])
        println(json2[1]["price"])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

