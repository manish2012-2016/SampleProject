//
//  myTableViewCell.swift
//  examNSUSerDefaults
//
//  Created by Manish Kumar on 22/02/17.
//  Copyright © 2017 appface. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var displayFruitName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
