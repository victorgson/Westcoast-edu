//
//  CourseCategoryTableViewCell.swift
//  Westcoast Education
//
//  Created by Victor Gustafsson on 2022-01-20.
//

import UIKit

class CourseCategoryTableViewCell: UITableViewCell {

    @IBOutlet var courseCategoryName: UILabel!
    @IBOutlet var courseImageName: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
