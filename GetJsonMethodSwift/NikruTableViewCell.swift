//
//  NikruTableViewCell.swift
//  GetJsonMethodSwift
//
//  Created by Office on 29/06/19.
//  Copyright © 2019 Office. All rights reserved.
//

import UIKit

class NikruTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nikruNameLbl: UILabel!
    
    @IBOutlet weak var nikruUserNAme: UILabel!
    
    @IBOutlet weak var nikruEmailAddress: UILabel!
    
    @IBOutlet weak var nikruPhone: UILabel!
    
    
    @IBOutlet weak var nikruCompanyName: UILabel!
    
    
    
    @IBOutlet weak var nkkruPharse: UILabel!
    
    
    @IBOutlet weak var nikruAddress: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
