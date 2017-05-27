//
//  WebViewController.swift
//  fasion
//
//  Created by 石森愛海 on 2017/05/13.
//  Copyright © 2017年 石森愛海. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    
    
    var url:String = "https://www.google.co.jp"
    
    
    // loadURL関数を定義
    func loadURL() {
        let requestURL = NSURL(string: url)
        let request = NSURLRequest(url: requestURL! as URL)
        webview.loadRequest(request as URLRequest)
    }

    override func viewDidLoad() {
        
        self.setupSwipeGestures()
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // viewのローディング終了後にlaodURL関数を実行
        loadURL()
        
        webview.scrollView.isScrollEnabled = true
    }
    
    func setupSwipeGestures() {
        // 右方向へのスワイプ
        let gestureToRight = UISwipeGestureRecognizer(target: self.webview, action: "goBack")
        gestureToRight.direction = UISwipeGestureRecognizerDirection.right
        self.webview.addGestureRecognizer(gestureToRight)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
