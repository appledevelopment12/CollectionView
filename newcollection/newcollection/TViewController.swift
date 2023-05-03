//
//  TViewController.swift
//  newcollection
//
//  Created by Rajeev on 02/05/23.
//

import UIKit

class TViewController: UIViewController {

//   var a = ["1","2","3","4","5","1","2","3","4","5","1","2","3","4","5","2","3","4","5","1","2","3","4","5","1","2","3","4","5","2","3","4","5","1","2","3","4","5","1","2","3","4","5","2","3","4","5","1","2","3","4","5","1","2","3","4","5","2","3","4","5","1","2","3","4","5","1","2","3","4","5"]
//
    var data = [ToDo]()
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
        
        fetchingApiData(URL: "https://api.opendota.com/api/heroStats") {
            result in self.data = result
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }
    func fetchingApiData(URL url:String,completion: @escaping([ToDo]) -> Void)
    {
        let url = URL(string: url)
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url!)
        {
            data,response,error in
            if data != nil && error == nil{
                do{
                    let parsingData = try JSONDecoder().decode([ToDo].self, from: data!)
                    completion(parsingData)
                }
                catch
                {
                    print("Parsing error")
                }
            }
        }
        dataTask.resume()
    }
   
    override func viewDidLayoutSubviews() {
        collectionView.frame = view.bounds
    }
    

    
}
extension TViewController:UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: tCollectionViewCell.identifier, for: indexPath) as! tCollectionViewCell
        
        
       let apiData:ToDo
        apiData = data[indexPath.row]
        let string = "https://api.opendota.com"+(apiData.img)
        let url = URL(string: string)
        cell.imageView.downloaded(from: url!,contentMode: .scaleToFill)
        cell.imageView.layer.cornerRadius = 20
        
       // cell.imageView.image = UIImage(named: a[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
}
extension TViewController:UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width/3-5, height: view.frame.size.width/3-5)
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

extension UIImageView
{
    func downloaded(from url: URL,contentMode mode: ContentMode = .scaleToFill)
    {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data,response,error in guard
            let httpURLResponse = response as? HTTPURLResponse,httpURLResponse.statusCode == 200,
            let mimeType = response?.mimeType,mimeType.hasPrefix("image"),
            let data = data,error == nil,
            let image = UIImage(data: data)
            else
            {
                return
            }
            DispatchQueue.main.async(){ [weak self] in
                self?.image = image
            }
        }.resume()
    }
    func downloaded(from link: String,contentMode mode: ContentMode = .scaleAspectFit)
    {
        guard let url = URL(string: link) else {return }
        downloaded(from: url,contentMode: mode)
    }
    
}

