import UIKit
import Firebase

var myIndex = 0

class CalendarViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let calendarListItems = ["All Regional Events","Arts & Culture","Business & Networking","Community & Family","Festivals","Sports & Recreation","Wine, Brew & Spirits","Food & Drink Specials","Food Trucks","Nightlife","Live Music","Karaoke & DJ","Post an Event"]
    let calendarLinks = ["http://336events.spingo.com/mobile/events?sections=&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38472,38479&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38473,38483&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38475,38476,38484&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38476,38490&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38482,38484&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=71811,71812,71813&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38917,38490,38492,38493&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=71651&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38487,38488,38489,38490,38491,38917&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38490&amp;radius_miles=100","http://336events.spingo.com/mobile/events?sections=38488,38489&amp;radius_miles=100","http://4info.org/mobiledirectory?mode=businesses&amp;categories=216058"]
    let calendarIcons = ["\u{e91b}","\u{e91c}","\u{e902}","\u{e912}","\u{e916}","\u{e905}",
                         "\u{e910}","\u{e91a}","\u{e91a}","\u{e90e}","\u{e916}","\u{e916}","\u{e904}"]
    let segueIdentifier = ["calendarWebPage"]
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return calendarListItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let calendarCell = collectionView.dequeueReusableCell(withReuseIdentifier: "calendarTableCell", for: indexPath) as! CalendarCollectionViewCell
        
        calendarCell.calendarSubtopicLabel.text = calendarListItems[indexPath.row]
        calendarCell.iconLabel.font = UIFont(name: "icomoon", size: 26.0)
        calendarCell.iconLabel.text = calendarIcons[indexPath.row]
        
        CardViewHelper.cardView(cell: calendarCell)
        
        return calendarCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        myIndex = indexPath.row
        
        switch indexPath.row {
        case 0:
            FIRAnalytics.logEvent(withName: "calendar_all_regional_events", parameters: nil)
        case 1:
            FIRAnalytics.logEvent(withName: "calendar_arts_and_culture", parameters: nil)

        case 2:
            FIRAnalytics.logEvent(withName: "calendar_business_networking", parameters: nil)

        case 3:
            FIRAnalytics.logEvent(withName: "calendar_community_and_family", parameters: nil)

        case 4:
            FIRAnalytics.logEvent(withName: "calendar_festivals", parameters: nil)

        case 5:
            FIRAnalytics.logEvent(withName: "calendar_sports_and_recreation", parameters: nil)

        case 6:
            FIRAnalytics.logEvent(withName: "calendar_wine_brew_spirits", parameters: nil)

        case 7:
            FIRAnalytics.logEvent(withName: "calendar_food_drink_specials", parameters: nil)

        case 8:
            FIRAnalytics.logEvent(withName: "calendar_food_trucks", parameters: nil)

        case 9:
            FIRAnalytics.logEvent(withName: "calendar_nightlife", parameters: nil)

        case 10:
            FIRAnalytics.logEvent(withName: "calendar_live_music", parameters: nil)

        case 11:
            FIRAnalytics.logEvent(withName: "calendar_karaoke_and_dj", parameters: nil)

        case 12:
            FIRAnalytics.logEvent(withName: "calendar_post_an_event", parameters: nil)

        default: break

        }
        performSegue(withIdentifier: "webViewSegue", sender: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.bounds.size.width - 10, height: 53)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "webViewSegue" {
            if let indexPath = collectionView?.indexPathsForSelectedItems?.first {
                let destination = segue.destination as? WebPageViewController
                destination?.links = calendarLinks[indexPath.row]
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
