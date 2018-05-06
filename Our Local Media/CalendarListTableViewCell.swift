//
//  CalendarListTableViewCell.swift
//  Our Local Media
//
//  Created by Kevin Walker on 5/6/18.
//  Copyright © 2018 Kevin Walker. All rights reserved.
//

import UIKit

class CalendarListTableViewCell: UITableViewCell {

    
    let calendarListItems = ["All Regional Events","Arts and Culture","Business Networking","Community and Family","Festivals","Sports and Rec","Wineries and Breweries","Food Drink Specials","Food Trucks","Nightlife","Live Music","Karaoke and DJ","Post an Event!"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return calendarListItems.count
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
