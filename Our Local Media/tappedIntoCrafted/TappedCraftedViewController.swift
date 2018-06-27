//
//  TappedCraftedViewController.swift
//  Our Local Media
//
//  Created by Kevin Walker on 6/7/18.
//  Copyright © 2018 Kevin Walker. All rights reserved.
//

import UIKit
import WebKit


class TappedCraftedViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var tappedCraftedWebView: WKWebView!
    
    var links: String = "http://ourlocalsearch.com/tapped-into-craft"

    override func loadView() {
        super.loadView()
        self.tappedCraftedWebView = WKWebView()
        self.view = self.tappedCraftedWebView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: links)
        let myRequest = URLRequest(url: myURL!)
        tappedCraftedWebView.load(myRequest)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
