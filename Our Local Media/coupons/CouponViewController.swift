//
//  CouponViewController.swift
//  Our Local Media
//
//  Created by Kevin Walker on 6/6/18.
//  Copyright © 2018 Kevin Walker. All rights reserved.
//

import UIKit
import WebKit

class CouponViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var couponWebView: WKWebView!
    
    var links: String = "http://4info.org/mobiledirectory?mode=businesses&amp;categories=216058"
    
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
