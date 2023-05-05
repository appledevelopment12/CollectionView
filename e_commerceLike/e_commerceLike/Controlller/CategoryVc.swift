//
//  ViewController.swift
//  e_commerceLike
//
//  Created by Rajeev on 05/05/23.
//

import UIKit

class CategoryVc: UIViewController{
  
    

    
    
    @IBOutlet weak var categoryColllectionn: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryColllectionn.delegate = self
        categoryColllectionn.dataSource = self
        
    }


}
extension CategoryVc:UICollectionViewDelegate,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataService.instance.getCategoires().count
    }
    
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = categoryColllectionn.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as?
            CategoryCell
        {
            let category_indexpath = DataService.instance.getCategoires()[indexPath.row]
            cell.setupCell(_Category: category_indexpath)
            cell.categoryImage.layer.cornerRadius = 10
            return cell
        }
        return CategoryCell()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let category = DataService.instance.getCategoires()[indexPath.row]
        performSegue(withIdentifier: "TopProductVc", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? productVc
        {
            productVC.Products(_Category: sender as!  Category)
            
        }
    }
}

