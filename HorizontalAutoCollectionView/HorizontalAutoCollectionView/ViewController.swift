//
//  ViewController.swift
//  HorizontalAutoCollectionView
//
//  Created by Rajeev on 07/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var MypageControl: UIPageControl!
    @IBOutlet var myCollectionView: UICollectionView!
    var newOfferImages = ["a","b","c","d","e"]
    var currentIndex = 0
    var timer:Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        timer=Timer.scheduledTimer(timeInterval: 2.0, target:self,selector:#selector(slideTonext),userInfo:nil,repeats:true)
        
    }
    @objc func slideTonext()
    {
        
        if currentIndex < newOfferImages.count-1
        {
            currentIndex = currentIndex+1
        }
        else
        {
            currentIndex = 0
        }
        myCollectionView.scrollToItem(at: IndexPath(item: currentIndex, section: 0), at: .right, animated: true)
        myCollectionView.scrollToItem(at: IndexPath(item: currentIndex, section: 0), at: .right, animated: true)
    }


}
extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newOfferImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.myImageview.image = UIImage(named: newOfferImages[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: myCollectionView.frame.width, height: myCollectionView.frame.height)
    }
    
    
}

