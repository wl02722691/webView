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

class WKViewController: UIViewController, WKUIDelegate, WKNavigationDelegate{
    
    @IBOutlet weak var forwardBtn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let webConfiguration = WKWebViewConfiguration()
        
        webConfiguration.accessibilityPerformEscape()
        webView.navigationDelegate = self
        webView.uiDelegate = self
        
        if let url = URL(string: "https://en.wikipedia.org/wiki/Swift_(programming_language)") {
            let requset = URLRequest(url: url)
            webView.load(requset)
        }
        
        
        
    }
    
    //自定義上下頁按鈕
    @IBAction func backBtn(_ sender: Any) {

        if webView.canGoBack{
            webView.goBack()
        }
        
        
    }
    
    @IBAction func forwardBtn(_ sender: Any) {
        if webView.canGoForward{
            webView.goForward()
        }
    }
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        backBtn.isEnabled = webView.canGoBack
        forwardBtn.isEnabled = webView.canGoForward
    }
    
}
