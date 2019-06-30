//
//  NikruApiManager.swift
//  GetJsonMethodSwift
//
//  Created by Office on 30/06/19.
//  Copyright © 2019 Office. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON
import Alamofire

class NikruApiManager {
    
    static let nikruSharedInstance = NikruApiManager()
    
    private init() {
        
    }
    
    func nikruGetUsersFromUrl(nikruOnCompletion: @escaping (JSON) -> Void) {
       
            
            let nikruURL = URL(string: Nikru_Fetch_URL_REQUEST)
            var nikruRequest = URLRequest(url: nikruURL!)
            nikruRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            Alamofire.request(nikruRequest).responseJSON(){ nikruResponse in
                switch nikruResponse.result {
                case .success(let nikruData):
                    print("i got my nikru data", nikruData)
              let nikruTempResponse = JSON(nikruData)
                    nikruOnCompletion(nikruTempResponse)
                   
                case .failure(let nikruError):
                    print("Eror in nikru data \(nikruError)")
                    nikruOnCompletion(nikruError as! JSON)
                }
                
                
            }
       
        }
    
}
