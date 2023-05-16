//
//  myTableViewCell.swift
//  CollectionViewWithTableView
//
//  Created by Rajeev on 05/03/23.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet var myCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        myCollectionView.backgroundColor = .magenta
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}



extension  myTableViewCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       // return eData[myCollectionView.tag].imageGallery.count
        retun Entertenment[m]
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  =  myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! myCollectionViewCell
        cell.myImagee.image=UIImage(named: eData[myCollectionView.tag].imageGallery[indexPath.row])
        cell.layer.cornerRadius = 20
        cell.backgroundColor = .magenta
        
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
  
}
