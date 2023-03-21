//
//  SpiderCollectionViewCell.swift
//  PassDataOneCollectionViewToAnotherCollectionView
//
//  Created by Rajeev on 11/03/23.
//

import UIKit

class SpiderCollectionViewCell: UIViewController
{
    
    @IBOutlet var spiderImage: UIImageView!
    
    var imageReceived = UIImage()
    override func viewDidLoad() {
        spiderImage.image = imageReceived
    }
}
