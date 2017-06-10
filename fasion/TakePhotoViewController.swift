//
//  TakePhotoViewController.swift
//  fashion
//
//  Created by 石森愛海 on 2017/05/27.
//  Copyright © 2017年 石森愛海. All rights reserved.
//

import UIKit

class TakePhotoViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate,  UIPickerViewDelegate,UIPickerViewDataSource{
    
    @IBOutlet var CIV:UIImageView!
    
    var myUIPicker: UIPickerView = UIPickerView()
    var mUIPicker: UIPickerView = UIPickerView()
    var salarymanArr: NSArray = ["春","夏","秋","冬"]
    var yArr: NSArray = ["普段","友達と","デート","その他"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        myUIPicker.frame = CGRect(x: 50, y: 350, width: 100, height: 250)
        myUIPicker.delegate = self as! UIPickerViewDelegate
        myUIPicker.dataSource = self as! UIPickerViewDataSource
        self.view.addSubview(myUIPicker)
        
        mUIPicker.frame = CGRect(x: 200, y: 350, width: 100, height: 250)
        mUIPicker.delegate = self as! UIPickerViewDelegate
        mUIPicker.dataSource = self as! UIPickerViewDataSource
        self.view.addSubview(mUIPicker)

    }
    
    @IBAction func takePhoto(){
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let picker = UIImagePickerController()
            picker.sourceType = .camera
            picker.delegate = self
            picker.allowsEditing = true
            
            present(picker, animated: true, completion: nil)
        }else{
            print("error")
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        CIV.image = info[UIImagePickerControllerEditedImage] as?UIImage
        
        dismiss(animated: true, completion: nil)
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
    
    
    @IBAction func tsuika(sender: UIButton){
//        let AddViewController: AddViewController = self.storyboard?.instantiateViewController(withIdentifier: "AddViewController") as! AddViewController
        // アニメーションを設定する.
        //secondViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        // 値渡ししたい時 hoge -> piyo
        //secondViewController.piyo = self.hoge
        // Viewの移動する.
//        self.present(AddViewController, animated: true, completion: nil)
        
        dismiss(animated: true, completion: nil)
        

    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
