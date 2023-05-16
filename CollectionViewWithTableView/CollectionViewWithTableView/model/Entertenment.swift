//
//  Entertenment.swift
//  CollectionViewWithTableView
//
//  Created by Rajeev on 05/03/23.
//

import Foundation

struct Entertenment
{
    private(set) public var sectionType:String
    private(set) public var  imageGallery:[String]
   // let label:[String]
    
    init(_sectionType: String, _imageGallery: [String]) {
        self.sectionType = _sectionType
        self.imageGallery = _imageGallery
    }
}
