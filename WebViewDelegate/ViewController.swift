//
//  ViewController.swift
//  WebViewDelegate
//
//  Created by Ankur Akhauri on 13/07/18.
//  Copyright © 2018 DemoApp. All rights reserved.
//

import UIKit
import SystemConfiguration
import QuickLook

class ViewController: UIViewController, UIWebViewDelegate,UINavigationControllerDelegate, QLPreviewControllerDataSource {
    
    var  quickLookControllerTC = QLPreviewController()
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return 1
    }
    
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        
        guard let url = Bundle.main.url(forResource: "Terms and condition", withExtension: "pdf") else {
            
            fatalError("Could not load Terms and condition")
            
        }
        
        return url as QLPreviewItem
    }
    

    @IBAction func LaodPdfBtnFunc(_ sender: UIButton) {
         self.navigationController?.pushViewController(quickLookControllerTC, animated: true)
    }
    
    @IBAction func LoadURLFunc(_ sender: UIButton) {
        let storyBoard = UIStoryboard (name : "Main", bundle : nil)
        let loadUrlView = storyBoard.instantiateViewController(withIdentifier : "UrlLoading") as! URLLoading
        self.navigationController?.pushViewController(loadUrlView, animated: true)
        
        
    }
    
    func webViewDidStartLoad(_ webView: UIWebView)
    {
        
    }
    func webViewDidFinishLoad(_ webView: UIWebView)
    {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         quickLookControllerTC.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

