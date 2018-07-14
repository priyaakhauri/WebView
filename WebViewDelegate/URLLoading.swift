//
//  URLLoading.swift
//  WebViewDelegate
//
//  Created by Ankur Akhauri on 13/07/18.
//  Copyright © 2018 DemoApp. All rights reserved.
//

import Foundation
import UIKit


class URLLoading : UIViewController,UIWebViewDelegate,UINavigationControllerDelegate
{
    
    @IBOutlet weak var webViewDelegateVar: UIWebView!
    
     override func viewDidLoad() {
        super.viewDidLoad()
        
        if Reachability.isConnectedToNetwork() == true {
            print("Internet connection OK")
        } else {
            print("Internet connection FAILED")
            
            let alert = UIAlertController(title: "Warning", message: "The Internet is not available", preferredStyle: .alert)
            let action = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
         webViewDelegateVar.delegate = self
        let myURL = URL(string: "https://docs.google.com/document/d/18Rdeu5pTNubSuhdU1AFql6ojAv_WDozXjsVyDG67jPU/edit")
        let myURLRequest:URLRequest = URLRequest(url: myURL!)
        webViewDelegateVar.loadRequest(myURLRequest)
    
    }
   
    
    
    
}
