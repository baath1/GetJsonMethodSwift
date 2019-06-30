//
//  getNikruData.swift
//  GetJsonMethodSwift
//
//  Created by Office on 30/06/19.
//  Copyright © 2019 Office. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class getNikruData {
    var name = String()
     var username = String()
     var email = String()
     var phone = String()
    
    var nikruAddress: getNikruAddress?
    var nikruCompany: getNikruCompany?
    
    init(nikruJSON: JSON) {
        self.name = nikruJSON["name"].stringValue
        self.username = nikruJSON["username"].stringValue
        self.email = nikruJSON["email"].stringValue
        self.phone = nikruJSON["phone"].stringValue
        self.nikruAddress = getNikruAddress(nikruAddress1: nikruJSON["address"])
        self.nikruCompany = getNikruCompany(nikruCompany: nikruJSON["company"])
        
        
    }
    
    
}

class getNikruAddress {
    var street = String()
     var suite = String()
     var city = String()
    
    init(nikruAddress1: JSON) {
        self.street = nikruAddress1["street"].stringValue
        self.suite = nikruAddress1["suite"].stringValue
        self.city = nikruAddress1["city"].stringValue
    }
    
    
    
}

class getNikruCompany {
    
    
    var name = String()
    var catchPhrase = String()
    var bs = String()
    
    init(nikruCompany: JSON) {
        self.name = nikruCompany["name"].stringValue
        self.catchPhrase = nikruCompany["catchPhrase"].stringValue
        self.bs = nikruCompany["bs"].stringValue
    }
    

}
