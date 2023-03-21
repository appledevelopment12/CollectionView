//
//  ViewController.swift
//  CustomCellUsing xib file
//
//  Created by Rajeev on 05/03/23.
//

import UIKit

class ViewController: UIViewController
{

    
    @IBOutlet var myCollectionViewCelll: UICollectionView!
    var vegetablenamee:[String] = ["carrot","garlic","cauliflower","bringal","beetroot","corn","potato","banana","cucumber"]
    var vegetableImagee:[String] = ["carrot","garlic","cauliflower","bringal","beetroot","corn","potato","banana","cucumber"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nibCell = UINib(nibName: "myCollectionViewCell", bundle: nil)
        myCollectionViewCelll.register(nibCell, forCellWithReuseIdentifier: "cell")
       
        
    }


}
extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vegetablenamee.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  myCollectionViewCelll.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCollectionViewCell
        cell.myVegetableName.text = vegetablenamee[indexPath.row]
        cell.myVegetableImage.image=UIImage(named: vegetableImagee[indexPath.row])
        return cell
    }
    
    
}
