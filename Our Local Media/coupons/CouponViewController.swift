import UIKit
import WebKit

class CouponViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var couponWebView: UIWebView!
    
    var links: String = "http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=216058"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: links)
        let myRequest = URLRequest(url: myURL!)
        couponWebView.loadRequest(myRequest)
        self.automaticallyAdjustsScrollViewInsets = false
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
