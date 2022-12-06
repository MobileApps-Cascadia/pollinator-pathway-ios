//
//  SupportVC.swift
//  PollinatorPathway
//
//  Created by Student Account on 12/5/22.
//


import FirebaseAuth
import SwiftUI
import UIKit
import WebKit

class Support_VC: UIViewController, WKUIDelegate{
    var webView: WKWebView!
    
        
        override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            
            let myURL = URL(string:"https://www.reddit.com/user/PacNWPolPathAppTest")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }
    
    
    
}

/*class Support_VC: UIViewController{
  /*  @IBAction func handleTwitter(sender: AnyObject){
        Link("Twitter", destination: URL(string: "https://twitter.com/PacNWPollinPath")!)
    }
    
    @IBAction func handleYoutube(sender: AnyObject){
        Link("Youtube", destination: URL(string: "https://www.youtube.com/channel/UCheGu_TXY3OUeKg1Qagoxsw")!)
    }
        
    @IBAction func handleFacebook(sender: AnyObject){
        Link("Facebook", destination: URL(string: "https://www.youtube.com/channel/UCheGu_TXY3OUeKg1Qagoxsw")!)
    }
    
    @IBAction func handleReddit(sender: AnyObject){
        Link("Reddit", destination: URL(string: "https://www.reddit.com/user/PacNWPolPathAppTest")!)
        
    }
    */

    
        override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
}
*/


