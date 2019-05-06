//
//  SFViewController.swift
//  webView
//
//  Created by 張書涵 on 2019/5/6.
//  Copyright © 2019 張書涵. All rights reserved.
//
//https://developer.apple.com/documentation/safariservices/sfsafariviewcontroller

import UIKit
import SafariServices

class SFViewController: UIViewController,SFSafariViewControllerDelegate {
    
    @IBAction func showSFVC(_ sender: Any) {
        if let url = URL(string: "https://en.wikipedia.org/wiki/Swift_(programming_language)"){
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true
            config.barCollapsingEnabled = true
            let vc = SFSafariViewController(url: url, configuration: config)
            vc.preferredControlTintColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            self.present(vc, animated: true, completion: nil)
        }
    }
    

    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: true)
    }
}
