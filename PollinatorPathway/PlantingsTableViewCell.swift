//
//  PlantingsTableViewCell.swift
//  PollinatorPathway
//
//  Created by Student Account on 5/30/22.
//

import UIKit

class PlantingsTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var photo: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
