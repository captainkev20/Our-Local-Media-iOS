import UIKit
import Firebase

class DirectoryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var directoryCollectionView: UICollectionView!
        
    let directoryListItems = Constants.DirectoryCardView.DirectorySubtopics
    let directoryLinks = Constants.DirectoryCardView.DirectoryLinks
    let directoryIcons = Constants.DirectoryCardView.DirectoryIcons
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return directoryListItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let directoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CellIdentifiers.DirectoryCell, for: indexPath) as! DirectoryCollectionViewCell
        
        directoryCell.directorySubTopicLabel.text = directoryListItems[indexPath.row]
        directoryCell.directoryIcon.font = UIFont(name: Constants.FontNames.OurLocalFont, size: 26.0)
        directoryCell.directoryIcon.text = directoryIcons[indexPath.row]
        
        CardViewHelper.cardView(cell: directoryCell)
        
        return directoryCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.DirectoryAllBusinesses, parameters: nil)
        case 1:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.DirectoryCoupons, parameters: nil)
        case 2:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.DirectoryDining, parameters: nil)
        case 3:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.DirectoryNightlife, parameters: nil)
        case 4:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.DirectoryTourism, parameters: nil)
        case 5:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.DirectoryShopping, parameters: nil)
        case 6:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.DirectoryArts, parameters: nil)
        case 7:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.DirectoryAutomotive, parameters: nil)
        case 8:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.DirectoryFashion, parameters: nil)
        case 9:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.DirectoryNailsSkin, parameters: nil)
        case 10:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.DirectoryPropertyRepair, parameters: nil)
        default:
            break
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: self.directoryCollectionView.bounds.size.width - 10, height: 53)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == Constants.SegueIdentifiers.DirectoryWebViewSegue {
            if let indexPath = directoryCollectionView?.indexPathsForSelectedItems?.first {
                let destination = segue.destination as? DirectoryWebPageViewController
                destination?.links = directoryLinks[indexPath.row]
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
