import UIKit
import WebKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var aboutUs: UITextView!
    let privacyString: String = Constants.AboutCardView.PrivacyPolicy
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Apply HTML formatting to text
        aboutUs.attributedText = privacyString.htmlToAttributed
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// Handle conversion of HTML to String
extension String{
    var htmlToAttributed: NSAttributedString? {
        do {
            guard let data = data(using: String.Encoding.utf8) else {
                return nil
            }
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            print("error: ",error)
            return nil
        }
    }
}
