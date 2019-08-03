import UIKit
import Firebase

class SportsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var sportsCollectionView: UICollectionView!
    
    let sportsListItems = Constants.SportsCardView.SportsSubtopics
    let sportsLinks = Constants.SportsCardView.SportsLinks

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return sportsListItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let sportsCell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CellIdentifiers.SportsCell, for: indexPath) as! SportsCollectionViewCell
            
        sportsCell.sportsLabel.text = sportsListItems[indexPath.row]
        
        CardViewHelper.cardView(cell: sportsCell)
        
        return sportsCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.SportsNFL, parameters: nil)
        case 1:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.SportsNHL, parameters: nil)
        case 2:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.SportsNCAA, parameters: nil)
        case 3:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.SportsNBA, parameters: nil)
        case 4:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.SportsMLB, parameters: nil)
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.SegueIdentifiers.SportsWebViewSegue {
            if let indexPath = sportsCollectionView?.indexPathsForSelectedItems?.first {
                let destination = segue.destination as? SportsWebPageViewController
                destination?.links = sportsLinks[indexPath.row]
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: self.sportsCollectionView.bounds.size.width - 10, height: 53)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
