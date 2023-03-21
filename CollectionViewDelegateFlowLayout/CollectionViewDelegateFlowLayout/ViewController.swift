//
//  ViewController.swift
//  CollectionViewDelegateFlowLayout
//
//  Created by Rajeev on 08/03/23.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SingerImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)  as! MyCollectionCell
        cell.myImage.image = UIImage(named: SingerImage[indexPath.row])
        return cell
    }
    
    

    
    var SingerImage:[String]=["aliya","asvariya","dipika","kaira","rasmik","rekha","rasmik","rekha","shardha","shilpa","aliya","asvariya","dipika","kaira","rasmik","rekha","rasmik","rekha","shardha","shilpa","aliya","asvariya","dipika","kaira","rasmik","rekha","rasmik","rekha","shardha","shilpa"]
    
    @IBOutlet var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionwidth = myCollectionView.bounds.width
        return CGSize(width: collectionwidth/4-6, height: collectionwidth/4-6)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return  UIEdgeInsets(top: 5, left: 2, bottom: 2, right: 2)
    }

}

