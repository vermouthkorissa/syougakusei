//
//  ProverbTableViewCell.swift
//  Kotowaza
//
//  Created by 鈴木理紗子 on 2023/06/17.
//

import UIKit

class ProverbTableViewCell: UITableViewCell {

    @IBOutlet var proLabel: UILabel!
    @IBOutlet var verbLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
