//
//  ViewController.swift
//  Our Local Media
//
//  Created by Kevin Walker on 5/2/18.
//  Copyright © 2018 Kevin Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var ourLocalLogo: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    let tableTitles = ["CALENDAR","COUPONS","TAPPED INTO CRAFTED","DIRECTORY","SPORTS"]
    let tableDescriptions = ["All Regional Events   Arts/Culture", "Great deals on local fare!", "See local brews!", "See directory", "Catch a local game!"]
    //let tableImages = ["
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableTitles.count
    }
    
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        
        cell.tableDescription.text? = tableDescriptions[indexPath.row]
        cell.tableTitle.text? = tableTitles[indexPath.row]
        //cell.tableImage.image? = UIImage(named: "calendar-page-empty (1).png")!
        
        let imageName = UIImage(named: tableTitles[indexPath.row])
        cell.imageView?.image = imageName
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

