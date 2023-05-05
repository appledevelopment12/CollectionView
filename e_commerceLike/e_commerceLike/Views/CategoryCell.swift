//
//  CategoryCell.swift
//  e_commerceLike
//
//  Created by Rajeev on 05/05/23.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
    
    @IBOutlet weak var categoryImage: UIImageView!
    
    @IBOutlet weak var categoryTitle: UILabel!
    
    
    
    override func awakeFromNib() {
        SetViewCell()
    }
    func setupCell(_Category:Category)
    {
        categoryImage.image = UIImage(named: _Category.imgName)
        categoryTitle.text = _Category.title
        
    }
    func SetViewCell()
    {
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
    }
    
}
