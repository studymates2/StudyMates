//
//  GroupsTableViewCell.swift
//  StudyMates
//
//  Created by Kenneth Li on 5/6/19.
//  Copyright © 2019 Kenneth Li. All rights reserved.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {

    @IBOutlet weak var groupNameField: UITextField!
    @IBOutlet weak var groupImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        groupImage.image = UIImage(named: "Pupp")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
