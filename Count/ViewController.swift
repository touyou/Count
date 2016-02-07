//
//  ViewController.swift
//  Count
//
//  Created by 藤井陽介 on 2016/01/16.
//  Copyright © 2016年 com.litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int!
    var number2: Int!
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        number = 0
        number2 = 1
        label.text = String(number)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func colorChange() {
        if number >= 10 {
            label.textColor = UIColor.brownColor()
        } else if number <= -10 {
            label.textColor = UIColor.grayColor()
        } else {
            label.textColor = UIColor.whiteColor()
        }
    }
    
    
    @IBAction func plus() {
        number = number + 1
        label.text = String(number)
        colorChange()
    }
    
    @IBAction func minus() {
        number = number - 1
        label.text = String(number)
        colorChange()
    }
    
    @IBAction func times() {
        number = number * number2
        label.text = String(number)
        colorChange()
    }
    
    @IBAction func divede() {
        number = number / number2
        label.text = String(number)
        colorChange()
    }
    
    @IBAction func set() {
        number2 = number
        number = 0
        label.text = String(number)
        colorChange()
    }
    
    @IBAction func clear() {
        number = 0
        label.text = String(number)
        colorChange()
    }

}

