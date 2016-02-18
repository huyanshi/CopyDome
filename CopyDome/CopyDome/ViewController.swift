//
//  ViewController.swift
//  CopyDome
//
//  Created by 胡琰士 on 16/2/18.
//  Copyright © 2016年 胡琰士. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation
class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var copyLabel: UILabel!
    
    @IBOutlet weak var stickTextField: UITextField!
    
    @IBOutlet weak var inputNumTextField: UITextField!
    
    @IBAction func copyAction(sender: AnyObject) {
        let pboard = UIPasteboard.generalPasteboard()
        pboard.string = copyLabel.text
    }
    
    @IBAction func inputAction(sender: AnyObject) {
        //设置扫码区域参数
        var style = LBXScanViewStyle()
        style.centerUpOffset = 44;
        style.photoframeAngleStyle = LBXScanViewPhotoframeAngleStyle.Inner;
        style.photoframeLineW = 2;
        style.photoframeAngleW = 18;
        style.photoframeAngleH = 18;
        style.isNeedShowRetangle = false;
        
        style.anmiationStyle = LBXScanViewAnimationStyle.LineMove;
        
        style.colorAngle = UIColor(red: 0.0/255, green: 200.0/255.0, blue: 20.0/255.0, alpha: 1.0)
        
        
        style.animationImage = UIImage(named: "CodeScan.bundle/qrcode_Scan_weixin_Line")
        
        weak var weakSelf = self
        let vc = LBXScanViewController();
        vc.scanStyle = style
        vc.resultString = {(result:LBXScanResult) in
            weakSelf?.inputNumTextField.text = result.strScanned
        }
            
        
        self.navigationController?.pushViewController(vc, animated: true)
        
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

