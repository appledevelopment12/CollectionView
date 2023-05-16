//
//  dataserviceFile.swift
//  CollectionViewWithTableView
//
//  Created by Rajeev on 05/05/23.
//

import Foundation
//var eData =  [
//    Entertenment(sectionType: "hollywood Singer", imageGallery: ["ho1","ho2","ho3","ho4","ho5","ho6"]),
//    Entertenment(sectionType: "Bhojpuri Singer", imageGallery: ["bh1","bh2","bh3","bh4","bh5","bh6"]),
//    Entertenment(sectionType: "hindi Singer", imageGallery: ["hn1","hn2","hn3","hn4","hn5","hn6"]),
//    Entertenment(sectionType: "punjabi Singer", imageGallery: ["pn1","pn2","pn3","pn4","pn5","pn6"])
//             ]

class dataservice
{
    static let instance = dataservice()
    private let eData = [
        Entertenment(_sectionType: "hollywood Singer", _imageGallery: ["ho1","ho2","ho3","ho4","ho5","ho6"]),
        Entertenment(_sectionType: "Bhojpuri Singer", _imageGallery: ["bh1","bh2","bh3","bh4","bh5","bh6"]),
        Entertenment(_sectionType: "hindi Singer", _imageGallery: ["hn1","hn2","hn3","hn4","hn5","hn6"]),
        Entertenment(_sectionType: "punjabi Singer", _imageGallery: ["pn1","pn2","pn3","pn4","pn5","pn6"])
    
                        ]
    
    
    func getCategories() ->[Entertenment]
    {
        return eData
    }
}
