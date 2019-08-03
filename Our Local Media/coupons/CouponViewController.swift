import UIKit
import WebKit

class CouponViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var couponWebView: UIWebView!
    
    var links: String = Constants.CouponURLs.CouponURL
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: links)
        let myRequest = URLRequest(url: myURL!)
        couponWebView.loadRequest(myRequest)
        self.automaticallyAdjustsScrollViewInsets = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
