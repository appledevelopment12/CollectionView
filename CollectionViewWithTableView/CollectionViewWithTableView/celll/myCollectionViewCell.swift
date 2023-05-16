//
//  myCollectionViewCell.swift
//  CollectionViewWithTableView
//
//  Created by Rajeev on 05/03/23.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell
{
        
   // @IBOutlet weak var stack: UIStackView!

    @IBOutlet var myImagee: UIImageView!
   // @IBOutlet var mylabel:UILabel!
  
    override class func awakeFromNib() {
        
    }
    
    func setUpcell(_Entertentment:Entertenment)
    {
        myImagee.image = UIImage(named: _Entertentment.sectionType)
    }
}
