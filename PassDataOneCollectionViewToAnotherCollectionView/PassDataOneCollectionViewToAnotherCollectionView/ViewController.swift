//
//  ViewController.swift
//  PassDataOneCollectionViewToAnotherCollectionView
//
//  Created by Rajeev on 11/03/23.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet var mycolllection: UICollectionView!
    
     var imageGallery = ["spiderman1","spiderman2","spiderman3","spiderman4","spiderman5","spiderman6","spiderman7","spiderman8"]
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
       
    }


}

extension ViewController:UICollectionViewDataSource,UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mycolllection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.myImage.image = UIImage(named: imageGallery[indexPath.row])
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 4
        cell.myImage.layer.cornerRadius = 50
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageGallery.count
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let mainstoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let desVC = mainstoryBoard.instantiateViewController(withIdentifier: "SpiderCollectionViewCell") as! SpiderCollectionViewCell
        desVC.imageReceived  = UIImage(named: imageGallery[indexPath.row])!
       // desVC.spiderImage.layer.cornerRadius = 20
        desVC.spiderImage?.layer.cornerRadius = 20
        desVC.spiderImage?.layer.borderWidth = 100
        desVC.spiderImage?.layer.borderColor = UIColor.red.cgColor
        self.navigationController?.pushViewController(desVC, animated: true)
    }
}
