//
//  CategoryModel.swift
//  e_commerceLike
//
//  Created by Rajeev on 05/05/23.
//

import Foundation



struct Category{
  private(set) public var title:String
    private(set) public var imgName:String
    
    init(_title: String, _imgName: String) {
        self.title = _title
        self.imgName = _imgName
    }
}
