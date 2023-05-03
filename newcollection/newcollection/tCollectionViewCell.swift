//
//  tCollectionViewCell.swift
//  newcollection
//
//  Created by Rajeev on 02/05/23.
//

import UIKit

class tCollectionViewCell: UICollectionViewCell
{
  static   let identifier = "tCollectionViewCell"
    
    var a:UILabel!
    public let imageView:UIImageView =
    {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        imageView.backgroundColor = .green

//              let arrImage = [UIImage(named: "1"),
//                              UIImage(named: "2"),
//                              UIImage(named: "3"),
//                              UIImage(named: "4"),
//                              UIImage(named: "5"),
//                              UIImage(named: "6"),
//                              UIImage(named: "3"),
//                              UIImage(named: "2"),
//                              UIImage(named: "1"),
//                              UIImage(named: "5"),
//                              UIImage(named: "6"),
//                              UIImage(named: "2"),
//                              UIImage(named: "1"),
//                              UIImage(named: "1"),
//                                              UIImage(named: "2"),
//                                              UIImage(named: "3"),
//                                              UIImage(named: "4"),
//                                              UIImage(named: "5"),
//                                              UIImage(named: "6"),
//                                              UIImage(named: "3"),
//                                              UIImage(named: "2"),
//                                              UIImage(named: "1"),
//                                              UIImage(named: "5"),
//                                              UIImage(named: "6"),
//                                              UIImage(named: "2"),
//                                              UIImage(named: "1")
//              ].compactMap({$0})
//        imageView.image = arrImage.randomElement()
//        //["1","2","3","4","5","6","3","1","2","3","4","5","6","3","1","2","3","4","5","6","4","4","2","2","1",
////                        "2","1","2","3","4","5","6","4","4","2","2","1","2","3","4","5","6","4","4","2","2","1","2","3","4","5","6","4","4","2","2","1","2","3","4","5","6","4","4","2","2"].compactMap({$0})
////      //  imageView.image = UIImage(named: arrImage)
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.frame
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
   
}
