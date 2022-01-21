//
//  CourseTableViewCell.swift
//  Westcoast Education
//
//  Created by Victor Gustafsson on 2022-01-20.
//

import UIKit

class CourseTableViewCell: UITableViewCell {

    @IBOutlet var courseNameLabel: UILabel!
    @IBOutlet var availabilityLabel: UILabel!
    @IBOutlet var thumbnailImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

