//
//  ViewController.swift
//  CollectionViewWithTableView
//
//  Created by Rajeev on 05/03/23.
//

import UIKit

var eData =  [
              Entertenment(sectionType: "hollywood Singer", imageGallery: ["ho1","ho2","ho3","ho4","ho5","ho6"]),
              Entertenment(sectionType: "Bhojpuri Singer", imageGallery: ["bh1","bh2","bh3","bh4","bh5","bh6"]),
              Entertenment(sectionType: "hindi Singer", imageGallery: ["hn1","hn2","hn3","hn4","hn5","hn6"]),
              Entertenment(sectionType: "punjabi Singer", imageGallery: ["pn1","pn2","pn3","pn4","pn5","pn6"])
             ]
class ViewController: UIViewController
{
    @IBOutlet var myTable: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
        cell.myCollectionView.tag=indexPath.section
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return eData[section].sectionType
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return eData.count
        
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .yellow
    }
    
    
    
}
