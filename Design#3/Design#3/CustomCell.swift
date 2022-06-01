//
//  CustomCell.swift
//  Design#3
//
//  Created by Sree Lakshman on 10/05/22.
//

import UIKit

class CustomCell: UITableViewCell {

    
    @IBOutlet weak var customView:UIView!
    @IBOutlet weak var customImage:UIImageView!
    @IBOutlet weak var upperLabel:UILabel!
    @IBOutlet weak var lowerLabel:UILabel!
    @IBOutlet weak var sideLabel:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = .black
        self.customImage.layer.cornerRadius = 35
        // Initialization code
        self.customView.layer.cornerRadius = 10
        customView.backgroundColor = .darkGray
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

