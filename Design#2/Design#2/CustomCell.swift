//
//  CustomCell.swift
//  Design#2
//
//  Created by Sree Lakshman on 09/05/22.
//

import UIKit

class CustomCell: UITableViewCell {

   
    @IBOutlet weak var homeCustomView: UIView!
    @IBOutlet weak var homeImage: UIImageView!
    
    @IBOutlet weak var homeUpperLabel: UILabel!
    
    @IBOutlet weak var homeLowerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = .black
        self.homeCustomView.layer.cornerRadius = 20
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
