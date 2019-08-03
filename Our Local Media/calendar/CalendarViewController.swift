import UIKit
import Firebase

class CalendarViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let calendarListItems = Constants.CalendarCardView.CalendarSubtopics
    let calendarLinks = Constants.CalendarCardView.CalendarLinks
    let calendarIcons = Constants.CalendarCardView.CalendarIcons
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return calendarListItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let calendarCell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CellIdentifiers.CalendarCell, for: indexPath) as! CalendarCollectionViewCell
        
        calendarCell.calendarSubtopicLabel.text = calendarListItems[indexPath.row]
        calendarCell.iconLabel.font = UIFont(name: Constants.FontNames.OurLocalFont, size: 26.0)
        calendarCell.iconLabel.text = calendarIcons[indexPath.row]
        
        CardViewHelper.cardView(cell: calendarCell)
        
        return calendarCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.CalendarAllRegional, parameters: nil)
        case 1:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.CalendarArtsCulture, parameters: nil)
        case 2:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.CalendarBusinessNetworking, parameters: nil)
        case 3:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.CalendarCommunityFamily, parameters: nil)
        case 4:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.CalendarFestivals, parameters: nil)
        case 5:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.CalendarSportsRecreation, parameters: nil)
        case 6:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.CalendarWineBrew, parameters: nil)
        case 7:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.CalendarFoodDrink, parameters: nil)
        case 8:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.CalendarFoodTrucks, parameters: nil)
        case 9:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.CalendarNightlife, parameters: nil)
        case 10:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.CalendarLiveMusic, parameters: nil)
        case 11:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.CalendarKaraoke, parameters: nil)
        case 12:
            FIRAnalytics.logEvent(withName: Constants.FirebaseAnalyticsEvents.CalendarPostEvent, parameters: nil)
        default:
            break
        }
        performSegue(withIdentifier: Constants.SegueIdentifiers.CalendarWebViewSegue, sender: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: self.collectionView.bounds.size.width - 10, height: 53)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.SegueIdentifiers.CalendarWebViewSegue {
            if let indexPath = collectionView?.indexPathsForSelectedItems?.first {
                let destination = segue.destination as? WebPageViewController
                destination?.links = calendarLinks[indexPath.row]
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
