//
//  WKViewController.swift
//  webView
//
//  Created by 張書涵 on 2019/5/6.
//  Copyright © 2019 張書涵. All rights reserved.
//
//https://developer.apple.com/documentation/webkit/wkwebview

import UIKit
import WebKit

class WKViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://en.wikipedia.org/wiki/Swift_(programming_language)") {
            let requset = URLRequest(url: url)
            webView.load(requset)
        }
        
    }
  
}
