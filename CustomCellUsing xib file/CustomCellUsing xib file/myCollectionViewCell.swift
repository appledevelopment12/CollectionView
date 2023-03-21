//
//  myCollectionViewCell.swift
//  CustomCellUsing xib file
//
//  Created by Rajeev on 05/03/23.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell
{

    @IBOutlet var myVegetableImage: UIImageView!
    @IBOutlet var myVegetableName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
