//
//  TViewController.swift
//  newcollection
//
//  Created by Rajeev on 02/05/23.
//

import UIKit

class TViewController: UIViewController {

   
    private  let collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout()
    )
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(tCollectionViewCell.self, forCellWithReuseIdentifier: tCollectionViewCell.identifier)

        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
        
        
    }
   
    override func viewDidLayoutSubviews() {
        collectionView.frame = view.bounds
    }
    

    
}
extension TViewController:UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: tCollectionViewCell.identifier, for: indexPath)
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
}
extension TViewController:UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width/3-2, height: view.frame.size.width/3-2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
    }
}
extension TViewController: UICollectionViewDelegate
{
    
}


