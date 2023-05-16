//
//  ViewController.swift
//  CollectionViewWithTableView
//
//  Created by Rajeev on 05/03/23.
//

import UIKit


class ViewController: UIViewController
{
    @IBOutlet var myTable: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTable.backgroundColor = .magenta
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
        cell.myCollectionView.backgroundColor = UIColor.magenta
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return eData[section].sectionType
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return eData.count
        
    }
//    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        view.tintColor = .yellow
//    }
    
    
    
}
