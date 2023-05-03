//
//  ViewController.swift
//  newcollection
//
//  Created by Rajeev on 02/05/23.
//

import UIKit

class ViewController: UIViewController {

    
      var birds = ["1","2","3","4","5","6","3","1","2","3","4","5","6","3","1","2","3","4","5","6","4","4","2","2","1",
      "2","1","2","3","4","5","6","4","4","2","2","1","2","3","4","5","6","4","4","2","2","1","2","3","4","5","6","4","4","2","2","1","2","3","4","5","6","4","4","2","2"]
    var birdCollectionView:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        birdCollectionView = UICollectionView(frame: .zero,collectionViewLayout: layout)
        view.addSubview(birdCollectionView)
        
        birdCollectionView.translatesAutoresizingMaskIntoConstraints = false
        birdCollectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        birdCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: -10).isActive = true
        birdCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 10).isActive = true
        birdCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        birdCollectionView.backgroundColor = UIColor.clear
        
        birdCollectionView.dataSource = self
        birdCollectionView.delegate = self
        birdCollectionView.register(CustomBirdCell.self, forCellWithReuseIdentifier: "cell")
    }


}
extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return birds.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = birdCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomBirdCell
        cell.birdImageView.image = UIImage(named: birds[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout:UICollectionViewLayout,sizeforItemAt indexPath:IndexPath) -> CGSize{
     //   return CGSize(width: view.frame.width/2-20, height: 200)
    return     CGSize(width: view.frame.size.width/3-3, height: view.frame.size.width/3-3)
        
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
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print("bird \(indexPath.row+1)is tapped")
//    }
}
class CustomBirdCell: UICollectionViewCell
{
    let birdImageView = UIImageView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(birdImageView)
        birdImageView.translatesAutoresizingMaskIntoConstraints = false
        birdImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        birdImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        birdImageView.bottomAnchor.constraint(equalTo:bottomAnchor).isActive = true
        birdImageView.trailingAnchor.constraint(equalTo:trailingAnchor).isActive = true
        
        birdImageView.layer.cornerRadius = 20
    }
    required init?(coder aDecoder:NSCoder)
    {
        fatalError("init(coder:) has been implemented")
    }
}

