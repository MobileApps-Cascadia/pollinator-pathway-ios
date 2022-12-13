//
//  FacebookVC.swift
//  PollinatorPathway
//
//  Created by Student Account on 12/5/22.
//

import FirebaseAuth
import SwiftUI
import UIKit
import WebKit

class Facebook_VC: UIViewController, WKUIDelegate{
    var webView: WKWebView!
    
        
        override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            
            let myURL = URL(string:"https://www.youtube.com/channel/UCheGu_TXY3OUeKg1Qagoxsw")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }
    
    
    
}

