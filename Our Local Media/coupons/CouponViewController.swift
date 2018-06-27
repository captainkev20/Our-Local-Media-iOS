//
//  CouponViewController.swift
//  Our Local Media
//
//  Created by Kevin Walker on 6/6/18.
//  Copyright © 2018 Kevin Walker. All rights reserved.
//

import UIKit
import WebKit

class CouponViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var couponWebView: WKWebView!
    
    var links: String = "http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=216058"
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        couponWebView = WKWebView(frame: .zero, configuration: webConfiguration)
        couponWebView.uiDelegate = self
        view = couponWebView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: links)
        let myRequest = URLRequest(url: myURL!)
        couponWebView.load(myRequest)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
