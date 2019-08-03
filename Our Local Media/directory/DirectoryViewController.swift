import UIKit
import WebKit

class DirectoryViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var directoryWebView: UIWebView!
    
    var links: String = Constants.DirectoryURLs.DirectoryURL
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: links)
        let myRequest = URLRequest(url: myURL!)
        self.automaticallyAdjustsScrollViewInsets = false
        directoryWebView.loadRequest(myRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
