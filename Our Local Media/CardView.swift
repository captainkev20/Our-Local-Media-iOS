//
//  CardView.swift
//  Our Local Media
//
//  Created by Kevin Walker on 5/3/18.
//  Copyright © 2018 Kevin Walker. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func cardViewLayout(cell: UICollectionViewCell) -> UICollectionViewCell {
        //cell.sportsLabel.text = sportsListItems[indexPath.row]
        cell.clipsToBounds = true
        cell.layer.cornerRadius = 10.0
        cell.layer.borderWidth = 0.2
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.masksToBounds = true
        cell.layer.shadowColor = UIColor.lightGray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 3.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.layer.cornerRadius).cgPath
        
        return cell
    }
}
