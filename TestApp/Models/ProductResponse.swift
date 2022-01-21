//
//  GetTripDetailResponse.swift
//  SafeTruck-Passenger
//
//  Created by UmarFarooq on 29/12/2020.
//  Copyright © 2020 UmarFarooq. All rights reserved.
//

import UIKit
import ObjectMapper

class ProductResponse: Mappable {
    
       var resulObj: [prodObj]?
       var status: String?
       var message: String?
       
       required init?(map: Map) {
           
       }
       
       func mapping(map: Map) {
           resulObj <- map["Result"]
           message <- map["Message"]
           status <- map["Status"]
       }
}

class prodObj: Mappable{
    var id: String?
    var title: Int?
    var price: String?
    var description: String?
    var category: String?
    var image: String?
    
    
    init (){}
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        title <- map["title"]
        price <- map["price"]
        description <- map["description"]
        category <- map["category"]
        image <- map["image"]
        
    }
}

