//
//  CalendarViewController.swift
//  Our Local Media
//
//  Created by Kevin Walker on 5/14/18.
//  Copyright © 2018 Kevin Walker. All rights reserved.
//

import UIKit

var myIndex = 0

class CalendarViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

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
        calendarCell.clipsToBounds = true
        calendarCell.layer.cornerRadius = 10.0
        calendarCell.layer.borderWidth = 0.2
        calendarCell.layer.borderColor = UIColor.lightGray.cgColor
        calendarCell.layer.masksToBounds = false
        calendarCell.layer.shadowColor = UIColor.lightGray.cgColor
        calendarCell.layer.shadowOffset = CGSize(width: 0, height: 3.0)
        calendarCell.layer.shadowRadius = 2.0
        calendarCell.layer.shadowOpacity = 0.5
        calendarCell.layer.masksToBounds = false
        calendarCell.layer.shadowPath = UIBezierPath(roundedRect: calendarCell.bounds, cornerRadius: calendarCell.layer.cornerRadius).cgPath
        
        return calendarCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "webViewSegue", sender: self)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
