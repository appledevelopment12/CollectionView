//
//  ViewController.swift
//  HeaderFooterInCollectioview
//
//  Created by Rajeev on 10/03/23.
//

import UIKit

class ViewController: UIViewController {

    
    var imageList = ["food","home","toys","ETools","food","home","toys","ETools","food","home","toys","ETools","food","home","toys","ETools"]
    @IBOutlet var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}
extension ViewController:UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCollectionViewCell
        cell.myImageView.image = UIImage(named: imageList[indexPath.row])
        cell.layer.borderWidth = 1
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (myCollectionView.frame.size.width-10)/2
        return  CGSize(width: size, height: 200)
        
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind{
        case UICollectionView.elementKindSectionHeader:
            if let headerview = myCollectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerCell", for: indexPath) as? HeaderReusableView
            {
                headerview.headerImageView.image = UIImage(named: "header")
                return headerview
            }
       case UICollectionView.elementKindSectionFooter:
            if let footerview = myCollectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "footerCell", for: indexPath) as? FooterReusableView
            {
                footerview.footerImageView.image = UIImage(named: "footer")
                return footerview
            }
        default :
            
            return UICollectionReusableView()
        }
        return UICollectionReusableView()
        
    }
    
}

