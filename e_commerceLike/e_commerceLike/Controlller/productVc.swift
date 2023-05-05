//
//  productVc.swift
//  e_commerceLike
//
//  Created by Rajeev on 05/05/23.
//

import UIKit

class productVc: UIViewController {

    
    @IBOutlet weak var productsCollection: UICollectionView!
    private(set) public var products = [Product]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.delegate = self
        productsCollection.dataSource = self
    }
    
    func Products(_Category:Category)
    {
        products = DataService.instance.getProducts(Title: _Category.title)
    }


}
extension productVc:UICollectionViewDelegate,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = productsCollection.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? productCell
        {
            let products_indexPath = products[indexPath.row]
            cell.setUpCell(_products: products_indexPath)
            cell.productImg.layer.cornerRadius = 20
            return cell
        }
        return productCell()
    }
    
    
}
