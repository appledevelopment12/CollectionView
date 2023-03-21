//
//  HomeViewController.swift
//  CollectionViewWithHorizontal
//
//  Created by Rajeev on 12/03/23.
//

import UIKit

class HomeViewController: UIViewController {

    
    
    
    @IBOutlet var homeimage: UIImageView!
    
    var receivedImage:UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeimage.image = receivedImage

    }
    

  
}
