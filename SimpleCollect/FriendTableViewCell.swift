//
//  FriendTableViewCell.swift
//  SimpleCollect
//
//  Created by Apple on 2017/4/8.
//  Copyright © 2017年 NJU. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    @IBOutlet weak var smallPhotoView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descipttionLabel: UILabel!
    @IBOutlet weak var ableToSeeSwitch: UISwitch!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
