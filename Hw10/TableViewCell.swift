//
//  TableViewCell.swift
//  Hw10
//
//  Created by Sergii Kotyk on 18/3/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var dataLab: UILabel!
    
    @IBOutlet weak var witchButton: UISwitch!
    
    @IBOutlet weak var switchButton: UISwitch!
    @IBOutlet weak var GrayLab: UILabel!
    
    @IBOutlet weak var redLab: UILabel!
    
    @IBOutlet weak var fakePicView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
