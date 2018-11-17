import UIKit
import Kingfisher
import Firebase
import AACarousel

class ViewController: UIViewController,
    UICollectionViewDelegate, UICollectionViewDataSource,
    UICollectionViewDelegateFlowLayout {
    
    var imageViewCounter = 0
    var imageViewTimer: Timer?
    
    let tableTitles = ["CALENDAR","COUPONS","TAPPED INTO CRAFT","DIRECTORY","SPORTS"]
    let tableDescriptions = ["All Regional Events   Arts/Culture                Nightlife     Food & Drink Specials", "Great deals on local fare!", "Breweries, Wineries and Distillers", "Everything the Triad has to offer", "Catch a local ball game..."]
    let segueIdentifier = ["calendarSegue"]
    let tableIcons = ["\u{e904}","\u{e90f}","\u{e910}","\u{e903}","\u{e905}"]
    let imageViewURLs = ["http://ourlocalmedia.com/wp-content/uploads/OurLocalMobile1.png",
                         "http://ourlocalmedia.com/wp-content/uploads/OurLocalMobile2.png",
                         "http://ourlocalmedia.com/wp-content/uploads/OurLocalMobile3.png",
                         "http://ourlocalmedia.com/wp-content/uploads/OurLocalMobile4.png",
                         "http://ourlocalmedia.com/wp-content/uploads/OurLocalMobile5.png",
                         "http://ourlocalmedia.com/wp-content/uploads/OurLocalMobile6.png"]
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
        
    @IBAction func imageViewTapRecognizer(_ sender: UITapGestureRecognizer) {
        let carouselWebPageViewController = storyboard?.instantiateViewController(withIdentifier: "carouselWebView") as! CarouselWebPageViewController
        
        switch (imageViewCounter) {
        case 0:
            carouselWebPageViewController.links = "http://ourlocalmedia.com/promo1/"
            FIRAnalytics.logEvent(withName: "homepage_carousel_view_1", parameters: nil)
        case 1:
            carouselWebPageViewController.links = "http://ourlocalmedia.com/promo2/"
            FIRAnalytics.logEvent(withName: "homepage_carousel_view_2", parameters: nil)
        case 2:
            carouselWebPageViewController.links = "http://ourlocalmedia.com/promo3/"
            FIRAnalytics.logEvent(withName: "homepage_carousel_view_3", parameters: nil)
        case 3:
            carouselWebPageViewController.links = "http://ourlocalmedia.com/promo4/"
            FIRAnalytics.logEvent(withName: "homepage_carousel_view_4", parameters: nil)
        case 4:
            carouselWebPageViewController.links = "http://ourlocalmedia.com/promo5/"
            FIRAnalytics.logEvent(withName: "homepage_carousel_view_5", parameters: nil)
        case 5:
            carouselWebPageViewController.links = "http://ourlocalmedia.com/promo6/"
            FIRAnalytics.logEvent(withName: "homepage_carousel_view_6", parameters: nil)
            
        default: break
        }
        
        self.navigationController?.pushViewController(carouselWebPageViewController, animated: true)
    }
    
    // Number of main menu items to create
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tableTitles.count
    }
    
    // Create cells from prototype
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ViewCollectionViewCell
        
        cell.descriptionLabel.text? = tableDescriptions[indexPath.row]
        cell.titleLabel.text = tableTitles[indexPath.row]
        cell.iconLabel.font = UIFont(name: "icomoon", size: 72.0)
        cell.iconLabel.text = tableIcons[indexPath.row]
        
        // Helper method to to apply Android like "Card View" to underlying view
        CardViewHelper.cardView(cell: cell)

        return cell
    }
    
    // Determine section user has selected
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // Switch depending on section & row selected
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                let calendarViewController = storyboard?.instantiateViewController(withIdentifier: "CalendarViewController")
                self.navigationController?.pushViewController(calendarViewController!, animated: true)
                FIRAnalytics.logEvent(withName: "homepage_calendar_card", parameters: nil)
            case 1:
                let couponViewController = storyboard?.instantiateViewController(withIdentifier: "CouponViewController")
                self.navigationController?.pushViewController(couponViewController!, animated: true)
                FIRAnalytics.logEvent(withName: "homepage_coupon_card", parameters: nil)
            case 2:
                let tappedCraftedViewController = storyboard?.instantiateViewController(withIdentifier: "tappedCraftedViewController")
                self.navigationController?.pushViewController(tappedCraftedViewController!, animated: true)
                FIRAnalytics.logEvent(withName: "homepage_tapped_crafted_card", parameters: nil)
            case 3:
                let directoryViewController = storyboard?.instantiateViewController(withIdentifier: "directoryViewController")
                self.navigationController?.pushViewController(directoryViewController!, animated: true)
                FIRAnalytics.logEvent(withName: "homepage_directory_card", parameters: nil)
            case 4:
                let sportsViewController = storyboard?.instantiateViewController(withIdentifier: "sportsViewController")
                self.navigationController?.pushViewController(sportsViewController!, animated: true)
                FIRAnalytics.logEvent(withName: "homepage_sports_card", parameters: nil)
            
            default: break
            }
            
        default: break
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.width - 10, height: 100)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.kf.indicatorType = .activity
        imageView.kf.setImage(with: URL(string: imageViewURLs[imageViewCounter]))
        
        imageViewTimer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(loadImageWithTimer), userInfo: nil, repeats: true)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture(sender:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        imageView.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture(sender:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.left
        imageView.addGestureRecognizer(swipeLeft)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func respondToSwipeGesture(sender: UISwipeGestureRecognizer) {
        if let swipeGesture = sender as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.left:
                if imageViewCounter == imageViewURLs.count - 1 {
                    imageViewCounter = 0
                }else{
                    imageViewCounter += 1
                }
                imageView.kf.setImage(with: URL(string: imageViewURLs[imageViewCounter]))
                
            case UISwipeGestureRecognizerDirection.right:
                if imageViewCounter == 0 {
                    imageViewCounter = imageViewURLs.count - 1
                }else{
                    imageViewCounter -= 1
                }
                imageView.kf.setImage(with: URL(string: imageViewURLs[imageViewCounter]))
            default:
                break
            }
        }
    }
    
    // Attached to 3 second timer in viewDidLoad
    @objc func loadImageWithTimer() {
        if imageViewCounter < imageViewURLs.count - 1 {
            imageViewCounter += 1
        } else {
            imageViewCounter = 0
        }
        
        imageView.kf.indicatorType = .activity
        imageView.kf.setImage(with: URL(string: imageViewURLs[imageViewCounter]))
    }
}
