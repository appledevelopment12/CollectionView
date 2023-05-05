//
//  ViewController.swift
//  collection
//
//  Created by Rajeev on 04/05/23.
//

import UIKit

class ViewController: UIViewController {

    var image = ["1","3","2","5","3","1","3","2","5","3","1","3","2","5","3","1","3","2","5","3","1","3","2","5","3","1","3","2","5","3"]
    
    
    @IBOutlet var collection1:UICollectionView!
   // @IBOutlet var collection2:UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


}
extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection1.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!
        nCollectionViewCell
        cell.img.image = UIImage(named: image[indexPath.row])
        cell.img.layer.cornerRadius = 20
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return  20
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      //  let wedth = collectionView.bounds.width
        let wedth = collection1.bounds.width
        
        return CGSize(width: wedth/4-20, height: wedth/4-20)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
    }
    
  
    
}
