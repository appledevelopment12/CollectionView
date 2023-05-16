//
//  SecondViewController.swift
//  CollectionViewInTableView2
//
//  Created by Rajeev on 05/05/23.
//

import UIKit

class SecondViewController: UIViewController {

    
  @IBOutlet  var myCollectionView2:UICollectionView!
    
    
    var mobilesmodelList:MobileModels = MobileModels(mobileModelName: [""], mobileModelImage: [" "])
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
extension SecondViewController:UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mobilesmodelList.mobileModelName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView2.dequeueReusableCell(withReuseIdentifier: "mobilecell", for: indexPath) as!
        myCollectionViewCell2
        cell.myimage2.image = UIImage(named: mobilesmodelList.mobileModelImage[indexPath.row])
        cell.mylabelView.text = mobilesmodelList.mobileModelName[indexPath.row]
        cell.layer.borderWidth = 1
        cell.layer.borderColor  =  UIColor.black.cgColor
        return cell
    }
    
    
}
