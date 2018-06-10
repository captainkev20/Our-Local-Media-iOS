//
//  DirectoryViewController.swift
//  Our Local Media
//
//  Created by Kevin Walker on 6/7/18.
//  Copyright © 2018 Kevin Walker. All rights reserved.
//

import UIKit



class DirectoryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var directoryCollectionView: UICollectionView!
    
    let directoryListItems = ["All Businesses","Coupons","Dining","Nightlife","Tourism","Shopping","Arts","Automotive","Fashion","Nails & Skin","Property Repair"]
    
    let directoryLinks = ["http://4info.org/mobiledirectory?mode=businesses&amp;categories=215477","http://4info.org/mobiledirectory?mode=businesses&amp;categories=216058","http://4info.org/dining","http://4info.org/mobiledirectory?mode=businesses&amp;categories=215393","http://4info.org/mobiledirectory?mode=businesses&amp;categories=215480","http://4info.org/shopping","http://4info.org/mobiledirectory?mode=businesses&amp;categories=215389","http://4info.org/mobiledirectory?mode=businesses&amp;categories=215187","http://4info.org/mobiledirectory?mode=businesses&amp;categories=215390","http://4info.org/mobiledirectory?mode=businesses&amp;categories=215181","http://4info.org/mobiledirectory?mode=businesses&amp;categories=215485"]
    
    
    let directoryIcons = ["\u{e914}","\u{e90f}","\u{e91a}","\u{e90e}","\u{e91b}","\u{e919}","\u{e91c}","\u{e91d}","\u{e91e}","\u{e91f}","\u{e90b}"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return directoryListItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let directoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "directoryCell", for: indexPath) as! DirectoryCollectionViewCell
        
        
        directoryCell.directorySubTopicLabel.text = directoryListItems[indexPath.row]
        directoryCell.directoryIcon.font = UIFont(name: "icomoon", size: 26.0)
        directoryCell.directoryIcon.text = directoryIcons[indexPath.row]
        directoryCell.clipsToBounds = true
        directoryCell.layer.cornerRadius = 10.0
        directoryCell.layer.borderWidth = 0.2
        directoryCell.layer.borderColor = UIColor.lightGray.cgColor
        directoryCell.layer.masksToBounds = false
        directoryCell.layer.shadowColor = UIColor.lightGray.cgColor
        directoryCell.layer.shadowOffset = CGSize(width: 0, height: 3.0)
        directoryCell.layer.shadowRadius = 2.0
        directoryCell.layer.shadowOpacity = 0.5
        directoryCell.layer.masksToBounds = false
        directoryCell.layer.shadowPath = UIBezierPath(roundedRect: directoryCell.bounds, cornerRadius: directoryCell.layer.cornerRadius).cgPath
        
        return directoryCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "directoryWebViewSegue", sender: self)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
