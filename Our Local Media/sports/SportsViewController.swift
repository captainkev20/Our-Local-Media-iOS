import UIKit
import Firebase

class SportsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var sportsCollectionView: UICollectionView!
    
    let sportsListItems = ["NFL Schedule","NHL Schedule","NCAA Sports","NBA Schedule","MLB Schedule"]
    let sportsLinks = ["http://www.nfl.com/schedules/2018/REG1","https://www.nhl.com/schedule","https://www.ncaa.com","http://stats.nba.com/schedule","http://m.mlb.com/schedule"]
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sportsListItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let sportsCell = collectionView.dequeueReusableCell(withReuseIdentifier: "sportsCell", for: indexPath) as! SportsCollectionViewCell
        
            
        sportsCell.sportsLabel.text = sportsListItems[indexPath.row]
        sportsCell.clipsToBounds = true
        sportsCell.layer.cornerRadius = 10.0
        sportsCell.layer.borderWidth = 0.2
        sportsCell.layer.borderColor = UIColor.lightGray.cgColor
        sportsCell.layer.masksToBounds = true
        sportsCell.layer.shadowColor = UIColor.lightGray.cgColor
        sportsCell.layer.shadowOffset = CGSize(width: 0, height: 3.0)
        sportsCell.layer.shadowRadius = 2.0
        sportsCell.layer.shadowOpacity = 0.5
        sportsCell.layer.masksToBounds = false
        sportsCell.layer.shadowPath = UIBezierPath(roundedRect: sportsCell.bounds, cornerRadius: sportsCell.layer.cornerRadius).cgPath
        
        return sportsCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        myIndex = indexPath.row
        
        switch indexPath.row {
        case 0:
            FIRAnalytics.logEvent(withName: "sports_nfl_schedule", parameters: nil)
        case 1:
            FIRAnalytics.logEvent(withName: "sports_nhl_schedule", parameters: nil)
            
        case 2:
            FIRAnalytics.logEvent(withName: "sports_ncaa_sports", parameters: nil)
            
        case 3:
            FIRAnalytics.logEvent(withName: "sports_nba_schedule", parameters: nil)
            
        case 4:
            FIRAnalytics.logEvent(withName: "sports_mlb_schedule", parameters: nil)
            
        default: break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sportsSegue" {
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
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
