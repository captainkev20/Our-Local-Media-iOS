//
//  ViewControllerTableViewCell.swift
//  Our Local Media
//
//  Created by Kevin Walker on 5/5/18.
//  Copyright © 2018 Kevin Walker. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var tableTitle: UILabel!
    @IBOutlet weak var tableDescription: UILabel!
    @IBOutlet weak var tableImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
