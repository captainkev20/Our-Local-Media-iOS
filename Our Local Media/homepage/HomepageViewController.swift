import UIKit
import Kingfisher
import Firebase

class HomepageViewController: UIViewController,
    UICollectionViewDelegate,
    UICollectionViewDataSource,
    UICollectionViewDelegateFlowLayout {
    
    var imageViewCounter = 0
    var imageViewTimer: Timer?
    
    let homePageTopics = Constants.HomePageCardView.HomepageTopics
    let homePageDescriptions = Constants.HomePageCardView.HomepageDescriptions
    let homePageIcons = Constants.HomePageCardView.HomepageIcons
    let imageViewURLs = Constants.imageViewURLs.URLList
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
        
    @IBAction func imageViewTapRecognizer(_ sender: UITapGestureRecognizer) {
        
        let carouselWebPageViewController = storyboard?.instantiateViewController(withIdentifier: Constants.ViewControllerIdentifiers.CarouselWebView) as! CarouselWebPageViewController
        
        switch (imageViewCounter) {
        case 0:
            carouselWebPageViewController.links = Constants.ImageViewWebLinks.Link1
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.HomePageCarouselView1, parameters: nil)
        case 1:
            carouselWebPageViewController.links = Constants.ImageViewWebLinks.Link2
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.HomePageCarouselView2, parameters: nil)
        case 2:
            carouselWebPageViewController.links = Constants.ImageViewWebLinks.Link3
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.HomePageCarouselView3, parameters: nil)
        case 3:
            carouselWebPageViewController.links = Constants.ImageViewWebLinks.Link4
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.HomePageCarouselView4, parameters: nil)
        case 4:
            carouselWebPageViewController.links = Constants.ImageViewWebLinks.Link5
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.HomePageCarouselView5, parameters: nil)
        case 5:
            carouselWebPageViewController.links = Constants.ImageViewWebLinks.Link6
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.HomePageCarouselView6, parameters: nil)
        default:
            break
        }
    
        self.navigationController?.pushViewController(carouselWebPageViewController, animated: true)
    }
    
    // Number of main menu items to create
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return homePageTopics.count
    }
    
    // Create cells from prototype
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CellIdentifiers.HomePageCell, for: indexPath) as! HomepageCollectionViewCell
        
        cell.descriptionLabel.text? = homePageDescriptions[indexPath.row]
        cell.titleLabel.text = homePageTopics[indexPath.row]
        cell.iconLabel.font = UIFont(name: Constants.FontNames.OurLocalFont, size: 72.0)
        cell.iconLabel.text = homePageIcons[indexPath.row]
        
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
                let calendarViewController = storyboard?.instantiateViewController(withIdentifier: Constants.ViewControllerIdentifiers.CalendarVC)
                self.navigationController?.pushViewController(calendarViewController!, animated: true)
                FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.HomePageCalendarCard, parameters: nil)
            case 1:
                let couponViewController = storyboard?.instantiateViewController(withIdentifier: Constants.ViewControllerIdentifiers.CouponVC)
                self.navigationController?.pushViewController(couponViewController!, animated: true)
                FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.HomePageCouponCard, parameters: nil)
            case 2:
                let tappedCraftedViewController = storyboard?.instantiateViewController(withIdentifier: Constants.ViewControllerIdentifiers.TappedCraftedVC)
                self.navigationController?.pushViewController(tappedCraftedViewController!, animated: true)
                FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.HomePageTappedCard, parameters: nil)
            case 3:
                let directoryViewController = storyboard?.instantiateViewController(withIdentifier: Constants.ViewControllerIdentifiers.DirectoryVC)
                self.navigationController?.pushViewController(directoryViewController!, animated: true)
                FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.HomePageDirectoryCard, parameters: nil)
            case 4:
                let sportsViewController = storyboard?.instantiateViewController(withIdentifier: Constants.ViewControllerIdentifiers.SportsVC)
                self.navigationController?.pushViewController(sportsViewController!, animated: true)
                FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.HomePageSportsCard, parameters: nil)
            case 5:
                let aboutViewController = storyboard?.instantiateViewController(withIdentifier: Constants.ViewControllerIdentifiers.AboutVC)
                self.navigationController?.pushViewController(aboutViewController!, animated: true)
                FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.AboutUs, parameters: nil)
            default:
                break
            }
        default:
            break
        }
    }
    
    // MARK: Determine color to be applied upon cell highlight
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        
        let cell = collectionView.cellForItem(at: indexPath)
        
        cell?.backgroundColor = UIColor(white: 217.0/255.0, alpha: 1.0)
    }
    
    // MARK: Determine color to be applied upon cell unhighlight
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        
        let cell = collectionView.cellForItem(at: indexPath)
        
        cell?.backgroundColor = UIColor.white
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: self.collectionView.frame.width - 10, height: 100)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.kf.indicatorType = .activity
        
        imageViewTimer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(loadImageWithTimer), userInfo: nil, repeats: true)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture(sender:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        imageView.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture(sender:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.left
        imageView.addGestureRecognizer(swipeLeft)
        
        let urls = Constants.imageViewURLs.URLList
            .map { URL(string: $0)! }
        let prefetcher = ImagePrefetcher(urls: urls) {
            skippedResources, failedResources, completedResources in
            print("viewDidLoad prefetched: \(completedResources)")
        }
        prefetcher.start()
    }
    
    @objc func respondToSwipeGesture(sender: UISwipeGestureRecognizer) {
        
        if let swipeGesture = sender as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.left:
                if imageViewCounter == imageViewURLs.count - 1 {
                    imageViewCounter = 0
                } else {
                    imageViewCounter += 1
                }
                imageView.kf.setImage(with: URL(string: imageViewURLs[imageViewCounter]))
            
            case UISwipeGestureRecognizerDirection.right:
                if imageViewCounter == 0 {
                    imageViewCounter = imageViewURLs.count - 1
                } else {
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
