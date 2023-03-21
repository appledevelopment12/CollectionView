//
//  HomeViewController.swift
//  1SimpleCollectionView
//
//  Created by Rajeev on 12/03/23.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet var homeImage: UIImageView!
    
    @IBOutlet var homeLabel: UILabel!
    
    var receivedLabel:String!
    var receivedImage:UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        homeImage.image = receivedImage
        homeLabel.text = receivedLabel
        
        
    }
    

  
}
