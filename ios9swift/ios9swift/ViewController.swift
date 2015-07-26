//
//  ViewController.swift
//  ios9swift
//
//  Created by karai on 2015/07/26.
//  Copyright © 2015年 karai. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIWebViewDelegate{
    
    //UIWebView
    var webView:UIWebView?
    
    override func loadView() {
        super.loadView();
        self.view.backgroundColor = UIColor.redColor();
        
        
        
        
        
        self.webView = UIWebView(frame: self.view.bounds);
        self.webView?.scalesPageToFit = true;
        self.view.addSubview((self.webView)!);
        self.webView?.loadRequest(NSURLRequest(URL: NSURL(string: "http://qiita.com/cotrpepe/items/518c4476ca957a42f5f1")!));
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        return true;
    }
}

