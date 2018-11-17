import UIKit
import Firebase



class DirectoryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var directoryCollectionView: UICollectionView!
        
    let directoryListItems =
        ["All Businesses"
            ,"Coupons"
            ,"Dining"
            ,"Nightlife","Tourism","Shopping","Arts","Automotive","Fashion","Nails & Skin","Property Repair"]
    let directoryLinks =
        ["http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215477"
        ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=216058"
        ,"http://ourlocalsearch.com/dining"
        ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215393"
        ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215480"
        ,"http://ourlocalsearch.com/shopping"
        ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215389"
        ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215187"
        ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215390"
        ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215181"
        ,"http://ourlocalsearch.com/mobiledirectory?mode=businesses&categories=215485"]
    let directoryIcons = ["\u{e914}","\u{e90f}","\u{e91a}","\u{e90e}","\u{e91b}","\u{e919}","\u{e91c}","\u{e91d}","\u{e91e}","\u{e91f}","\u{e90b}"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return directoryListItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let directoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "directoryCell", for: indexPath) as! DirectoryCollectionViewCell
        
        directoryCell.directorySubTopicLabel.text = directoryListItems[indexPath.row]
        directoryCell.directoryIcon.font = UIFont(name: "icomoon", size: 26.0)
        directoryCell.directoryIcon.text = directoryIcons[indexPath.row]
        
        CardViewHelper.cardView(cell: directoryCell)
        
        return directoryCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        myIndex = indexPath.row
        
        switch indexPath.row {
        case 0:
            FIRAnalytics.logEvent(withName: "directory_all_businesses", parameters: nil)
        case 1:
            FIRAnalytics.logEvent(withName: "directory_coupons", parameters: nil)
            
        case 2:
            FIRAnalytics.logEvent(withName: "directory_dining", parameters: nil)
            
        case 3:
            FIRAnalytics.logEvent(withName: "directory_nightlife", parameters: nil)
            
        case 4:
            FIRAnalytics.logEvent(withName: "directory_tourism", parameters: nil)
            
        case 5:
            FIRAnalytics.logEvent(withName: "directory_shopping", parameters: nil)
            
        case 6:
            FIRAnalytics.logEvent(withName: "directory_arts", parameters: nil)
            
        case 7:
            FIRAnalytics.logEvent(withName: "directory_automotive", parameters: nil)
            
        case 8:
            FIRAnalytics.logEvent(withName: "directory_fashion", parameters: nil)
            
        case 9:
            FIRAnalytics.logEvent(withName: "directory_nails_and_skin", parameters: nil)
            
        case 10:
            FIRAnalytics.logEvent(withName: "directory_property_repair", parameters: nil)
            
            
        default: break
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.directoryCollectionView.bounds.size.width - 10, height: 53)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "directoryWebViewSegue" {
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
