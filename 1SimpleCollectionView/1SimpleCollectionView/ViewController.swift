//
//  ViewController.swift
//  1SimpleCollectionView
//
//  Created by Rajeev on 04/03/23.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet var myCollectionView: UICollectionView!
    let productTypeName:[String] = ["fruiti","masala","whiteOnion","oilETC","packet","groceryBag","flour","fastFood"]
    let productImage:[String] = ["fruiti","masala","whiteOnion","oilETC","packet","groceryBag","flour","fastFood"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
    }


}
extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  =  myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCollectionViewCell
        cell.myImage.image = UIImage(named: productImage[indexPath.row])
        cell.myLabel.text  = productTypeName[indexPath.row]
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.blue.cgColor
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width-10)/2
        return CGSize(width: size, height: size)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       // let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let anybody = UIStoryboard(name: "Main", bundle: nil)
        let anyobj = anybody.instantiateViewController(withIdentifier: "celllll2") as! HomeViewController
        anyobj.receivedImage = UIImage(named: productImage[indexPath.row])
        anyobj.receivedLabel = productTypeName[indexPath.row]
        self.navigationController?.pushViewController(anyobj, animated: true)
    }
   
    func collectionView(_ CollectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,sizeforItemAt indexPath:IndexPath) -> CGSize
    {
       // CGSize(width: collectionView.frame.size.width / 3, height: collectionView.frame.size.height / 5)
        CGSize(width: CollectionView.frame.size.width/3, height: CollectionView.frame.size.width/5)
    }
}
