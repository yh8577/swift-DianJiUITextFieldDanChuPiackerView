//
//  PickerTextField.swift
//  ce
//
//  Created by yihui on 2017/11/18.
//  Copyright © 2017年 yihui. All rights reserved.
//

import UIKit

class PickerTextField: UITextField, UIPickerViewDelegate, UIPickerViewDataSource {

    var pickView : UIPickerView!
    fileprivate var dateArray : [String] = Array()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        for i in 1...31 {
            dateArray.append("\(String(i))")
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    override func draw(_ rect: CGRect) {
        
        pickView = UIPickerView()
        pickView.center = self.center
        pickView.backgroundColor = UIColor.white
        pickView.delegate = self
        pickView.dataSource = self
        inputView = pickView
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.closePicker), name: NSNotification.Name("closePicker"), object: nil)
       
    }
    
    @objc func closePicker() {
        resignFirstResponder()
    }
    
    deinit {
        
        NotificationCenter.default.removeObserver(self)
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return dateArray.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return dateArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        text = dateArray[row]
    }
    
    

}
