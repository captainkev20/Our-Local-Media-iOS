import UIKit
import WebKit

class TappedCraftedViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var tappedWebView: UIWebView!
    
    var links: String = Constants.TappedIntoCraftedURLs.TappedIntoCraftedURL
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: links)
        let myRequest = URLRequest(url: myURL!)
        self.automaticallyAdjustsScrollViewInsets = false
        tappedWebView.loadRequest(myRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
