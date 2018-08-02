//
//  MovieCell.swift
//  Flix
//
//  Created by user143252 on 8/1/18.
//  Copyright © 2018 notserpp. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
   
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var overviewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
