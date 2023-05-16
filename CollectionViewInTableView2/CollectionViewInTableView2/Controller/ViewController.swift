//
//  ViewController.swift
//  CollectionViewInTableView2
//
//  Created by Rajeev on 05/05/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var mycollectionview1:UICollectionView!
    

    var mobileList=[MobileData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func fillData()
    {
        let mobileDModels1 = MobileModels(mobileModelName: ["realme1","relame2","relame3","realme4","realme5","realme6"],mobileModelImage: ["realme1","realme2","relame3","realme4","realme5","realme6"])
        let mobile1 = MobileData(mobileCompane: "realme", mobileModels: mobileDModels1)
        mobileList.append(mobile1)
        
        let mobileDModels2 = MobileModels(mobileModelName: ["sumsumg1","sumsumg2","sumsumg3","sumsumg4","sumsung5","sumsung6"],mobileModelImage: ["sumsumg1","sumsumg2","sumsumg3","sumsumg4","sumsumg5","sumsumg6"])
        let mobile2 = MobileData(mobileCompane: "sumsung", mobileModels: mobileDModels1)
        mobileList.append(mobile2)
        
        let mobileDModels3 = MobileModels(mobileModelName: ["a1","a2","a3","a4","a5","a6"],mobileModelImage: ["a1","a2","a3","a4","a5","a6"])
        let mobile3 = MobileData(mobileCompane: "oppo", mobileModels: mobileDModels1)
        mobileList.append(mobile3)
        
        let mobileDModels4 = MobileModels(mobileModelName: ["realme1","relame2","relame3","realme5","realme6"],mobileModelImage: ["realme1","realme2","relame3","realme4","realme5","realme6"])
        let mobile4 = MobileData(mobileCompane: "reliance", mobileModels: mobileDModels1)
        mobileList.append(mobile4)
        
        let mobileDModels5 = MobileModels(mobileModelName: ["realme1","relame2","relame3","realme5","realme6"],mobileModelImage: ["realme1","realme2","relame3","realme4","realme5","realme6"])
        let mobile5 = MobileData(mobileCompane: "nokia", mobileModels: mobileDModels1)
        mobileList.append(mobile5)
        
        let mobileDModels6 = MobileModels(mobileModelName: ["realme1","relame2","relame3","realme5","realme6"],mobileModelImage: ["realme1","realme2","relame3","realme4","realme5","realme6"])
        let mobile6 = MobileData(mobileCompane: "vivo", mobileModels: mobileDModels1)
        mobileList.append(mobile6)
     
    }
    

}
extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mobileList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mycollectionview1.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCollectionViewCell
        
        cell.myimage1.image = UIImage(named: mobileList[indexPath.row].mobileCompane)
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 2
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width-19)/2
        return CGSize(width: size, height: size)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "viewmobiles") as? SecondViewController
        vc?.mobilesmodelList = mobileList[indexPath.row].mobileModels
        vc?.title = "Mobile Model of   \(mobileList[indexPath.row ].mobileCompane)"
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    
}
