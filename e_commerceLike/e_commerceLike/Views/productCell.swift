//
//  productCell.swift
//  e_commerceLike
//
//  Created by Rajeev on 05/05/23.
//

import UIKit

class productCell: UICollectionViewCell {
    
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    
    override  func awakeFromNib() {
        setViewCell()
    }
    
    func setUpCell(_products:Product)
    {
        self.productImg.image = UIImage(named:_products.productImgName)
        self.productTitle.text = _products.ProductTitle
        self.productPrice.text = _products.productPrice
    }
    
    
    func setViewCell()
    {
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
    }
}
