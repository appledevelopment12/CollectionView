//
//  ViewController.swift
//  CollectionViewWithHorizontal
//
//  Created by Rajeev on 05/03/23.
//

import UIKit

class ViewController: UIViewController
{
    var  singerImage:[String] = ["pn1","pn2","pn3","pn4","pn5","pn6"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return singerImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCollectionCell
        cell.mySingerImage.image=UIImage(named: singerImage[indexPath.row])
        cell.mySingerImage.layer.cornerRadius = 50
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let  abc = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        abc.receivedImage = UIImage(named: singerImage[indexPath.row])
        
        self.navigationController?.pushViewController(abc, animated: true)
    }
    
    
}

