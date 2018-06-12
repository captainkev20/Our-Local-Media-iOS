//
//  ViewController.swift
//  Our Local Media
//
//  Created by Kevin Walker on 5/2/18.
//  Copyright © 2018 Kevin Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let tableTitles = ["CALENDAR","COUPONS","TAPPED INTO CRAFT","DIRECTORY","SPORTS"]
    let tableDescriptions = ["All Regional Events   Arts/Culture", "Great deals on local fare!", "Breweries, Wineries and Distillers", "Everything the Triad has to offer", "Catch a local ball game..."]
    let segueIdentifier = ["calendarSegue"]
    let tableIcons = ["\u{e904}","\u{e90f}","\u{e910}","\u{e903}","\u{e905}"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // Number of main menu items to create
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tableTitles.count
    }
    
    // Create cells from prototype
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ViewCollectionViewCell
        
        // Modifications to apply Android like "Card View" to underlying view
        cell.descriptionLabel.text? = tableDescriptions[indexPath.row]
        cell.titleLabel.text = tableTitles[indexPath.row]
        cell.iconLabel.font = UIFont(name: "icomoon", size: 72.0)
        cell.iconLabel.text = tableIcons[indexPath.row]
        
        cell.clipsToBounds = true
        cell.layer.cornerRadius = 10.0
        cell.layer.borderWidth = 0.2
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.lightGray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 3.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.layer.cornerRadius).cgPath
        
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
                
            case 1:
                let couponViewController = storyboard?.instantiateViewController(withIdentifier: "CouponViewController")
                self.navigationController?.pushViewController(couponViewController!, animated: true)
                
            case 2:
                let tappedCraftedViewController = storyboard?.instantiateViewController(withIdentifier: "tappedCraftedViewController")
                self.navigationController?.pushViewController(tappedCraftedViewController!, animated: true)
                
            case 3:
                let directoryViewController = storyboard?.instantiateViewController(withIdentifier: "directoryViewController")
                self.navigationController?.pushViewController(directoryViewController!, animated: true)
                
            case 4:
                let sportsViewController = storyboard?.instantiateViewController(withIdentifier: "sportsViewController")
                self.navigationController?.pushViewController(sportsViewController!, animated: true)
            
            default: break
            }
            
        default: break
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.width - 10, height: 175)
    }
    

    @IBOutlet weak var ourLocalLogo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

