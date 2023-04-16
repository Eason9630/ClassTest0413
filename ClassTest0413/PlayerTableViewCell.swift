//
//  PlayerTableViewCell.swift
//  ClassTest0413
//
//  Created by 林祔利 on 2023/4/13.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {


    @IBOutlet weak var imageName: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
