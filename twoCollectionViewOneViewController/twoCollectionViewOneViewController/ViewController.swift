//
//  ViewController.swift
//  twoCollectionViewOneViewController
//
//  Created by Rajeev on 04/05/23.
//

import UIKit

class ViewController: UIViewController {

    
    var imageArrayA=[UIImage(named: "1"),
                    UIImage(named: "2"),
                    UIImage(named: "3"),
                    UIImage(named: "4"),
                    UIImage(named: "5"),
                    UIImage(named: "6"),
                    UIImage(named: "7")
                      ]
    var imageArrayB = [UIImage(named: "1"),
                       UIImage(named: "2"),
                       UIImage(named: "3"),
                       UIImage(named: "4"),
                       UIImage(named: "5"),
                       UIImage(named: "6"),
                       UIImage(named: "7"),
                       UIImage(named: "1"),
                                          UIImage(named: "2"),
                                          UIImage(named: "3"),
                                          UIImage(named: "4"),
                                          UIImage(named: "5"),
                                          UIImage(named: "6"),
                                          UIImage(named: "7"),
                       UIImage(named: "1"),
                                          UIImage(named: "2"),
                                          UIImage(named: "3"),
                                          UIImage(named: "4"),
                                          UIImage(named: "5"),
                                          UIImage(named: "6"),
                                          UIImage(named: "7"),
                       UIImage(named: "2"),
                       UIImage(named: "3"),
                       UIImage(named: "4"),
                       UIImage(named: "5"),
                       UIImage(named: "6"),
                       UIImage(named: "7"),
                       UIImage(named: "2"),
                       UIImage(named: "3"),
                       UIImage(named: "4"),
                       UIImage(named: "5"),
                       UIImage(named: "6"),
                       UIImage(named: "7"),
                       UIImage(named: "2"),
                       UIImage(named: "3"),
                       UIImage(named: "4"),
                       UIImage(named: "5"),
                       UIImage(named: "6"),
                       UIImage(named: "7")
                         ]
    
    var labelA=["car1","car2","car3","car4","car5","car6","car7"]
    var labelB=["Bike1","Bike2","Bike3","Bike4","Bike5","Bike6","Bike7","Bike1","Bike2","Bike3","Bike4","Bike5","Bike6","Bike7","Bike1","Bike2","Bike3","Bike4","Bike5","Bike6","Bike7","Bike1","Bike2","Bike3","Bike4","Bike5","Bike6","Bike7","Bike1","bike2","bike3","bike5","bik","ikk","hhh","kdd","fkdjk","jkdfk","jfdk"]
    @IBOutlet weak var collectionViewA: UICollectionView!
    @IBOutlet weak var collectionViewB: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewA.dataSource = self
        collectionViewA.delegate = self
        collectionViewB.dataSource = self
        collectionViewB.delegate = self
    
        
    }


}
extension ViewController:UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionViewA
        {
            return imageArrayA.count
        }
        else
        {
            return imageArrayB.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionViewA
        {
            let CellA = collectionView.dequeueReusableCell(withReuseIdentifier: "Coll1", for: indexPath) as!
            Coll1
            CellA.imageA.image = imageArrayA[indexPath.row]
            CellA.lablA.text = labelA[indexPath.row]
            
            return CellA
        }
        else
        {
            let CellB = collectionView.dequeueReusableCell(withReuseIdentifier: "Coll1", for: indexPath) as!
            Coll1
            CellB.imageB.image = imageArrayB[indexPath.row]
            CellB.labeelB.text = labelB[indexPath.row]
            
            return CellB
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return  5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      //  let wedth = collectionView.bounds.width
        let wedth = collectionViewB.bounds.width
        
        return CGSize(width: wedth/4-5, height: wedth/4-5)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
    }
    
    
}

