import UIKit
import WebKit

class CalendarWebPageViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var calendarWebView: UIWebView!
    
    var links: String = "http://336events.spingo.com/mobile/events?sections=&amp;radius_miles=100"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: links)
        let myRequest = URLRequest(url: myURL!)
        self.automaticallyAdjustsScrollViewInsets = false
        calendarWebView.loadRequest(myRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
