import UIKit
import WebKit

class WebPageViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var calendarWebView: UIWebView!
    
    var links: String = "http://336events.spingo.com/mobile/events?sections=&amp;radius_miles=100"
    
    //override func loadView() {
    //    super.loadView()
    //    self.webView = WKWebView()
    //    self.view = self.webView
    //}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: links)
        let myRequest = URLRequest(url: myURL!)
        self.automaticallyAdjustsScrollViewInsets = false
        calendarWebView.loadRequest(myRequest)

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
