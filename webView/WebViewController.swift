//
//  ViewController.swift
//  webView
//
//  Created by 張書涵 on 2019/5/6.
//  Copyright © 2019 張書涵. All rights reserved.
//
/* https://developer.apple.com/documentation/uikit/uiwebview
 Note:
 In apps that run in iOS 8 and later, use the WKWebView class instead of using UIWebView. Additionally, consider setting the WKPreferences property javaScriptEnabled to false if you render files that are not supposed to run JavaScript.
 
 Deprecated
 
 */

import UIKit

class UIWebViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://en.wikipedia.org/wiki/Swift_(programming_language)") {
            let requset = URLRequest(url: url)
            webView.loadRequest(requset)
            webView.delegate = self
        }
    }
    
}
