//
//  ViewController.swift
//  CopyDome
//
//  Created by 胡琰士 on 16/2/18.
//  Copyright © 2016年 胡琰士. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var copyLabel: UILabel!
    
    @IBOutlet weak var stickTextField: UITextField!
    
    @IBAction func copyAction(sender: AnyObject) {
        var pboard = UIPasteboard.generalPasteboard()
        pboard.string = copyLabel.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

