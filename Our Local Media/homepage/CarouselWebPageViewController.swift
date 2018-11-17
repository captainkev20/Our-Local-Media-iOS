import UIKit
import WebKit

class CarouselWebPageViewController: UIViewController, UIWebViewDelegate {
    
    var links: String = "https://www.apple.com"

    @IBOutlet weak var CarouselWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: links)
        let myRequest = URLRequest(url: myURL!)
        self.automaticallyAdjustsScrollViewInsets = false
        CarouselWebView.loadRequest(myRequest)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
