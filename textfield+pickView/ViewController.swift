//
//  ViewController.swift
//  ce
//
//  Created by yihui on 2017/11/18.
//  Copyright © 2017年 yihui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var text : UITextField = {
        let w : CGFloat = 200
        let h : CGFloat = 30
        let x : CGFloat = (UIScreen.main.bounds.width - w) * 0.5
        let y : CGFloat = 100
        let text = PickerTextField(frame: CGRect(x: x, y: y, width: w, height: h))
        text.borderStyle = UITextBorderStyle.roundedRect
        text.font = UIFont.systemFont(ofSize: 14)
        text.textAlignment = NSTextAlignment.left // 居中对齐
        text.clearButtonMode = UITextFieldViewMode.whileEditing
        text.keyboardType = UIKeyboardType.default
//        text.delegate = self
       return text
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.addSubview(text)
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "closePicker"), object: nil)
    }

}





















































