//
//  SarchViewController.swift
//  fasion
//
//  Created by 石森愛海 on 2017/05/13.
//  Copyright © 2017年 石森愛海. All rights reserved.
//

import UIKit

class SarchViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource  {
    
    
    var myUIPicker: UIPickerView = UIPickerView()
    var mUIPicker: UIPickerView = UIPickerView()
    var salarymanArr: NSArray = ["春","夏","秋","冬"]
    var yArr: NSArray = ["普段","友達と","デート","その他"]
    
    
    @IBOutlet var cameraImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        myUIPicker.frame = CGRect(x: 70, y: 40, width: 250, height: 250)
        myUIPicker.delegate = self
        myUIPicker.dataSource = self as! UIPickerViewDataSource
        self.view.addSubview(myUIPicker)
        
        mUIPicker.frame = CGRect(x: 70, y: 280, width: 250, height: 250)
        mUIPicker.delegate = self
        mUIPicker.dataSource = self as! UIPickerViewDataSource
        self.view.addSubview(mUIPicker)
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //表示個数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == myUIPicker {
            return salarymanArr.count
        } else {
            return yArr.count
        }
    }
    
    //表示内容
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == myUIPicker {
            return salarymanArr[row] as! String
        } else {
            return yArr[row] as! String        }
    }
    
    //選択時
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("列: \(row)")
        print("値: \(salarymanArr[row])")
        
        print("列: \(row)")
        print("値: \(yArr[row])")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
