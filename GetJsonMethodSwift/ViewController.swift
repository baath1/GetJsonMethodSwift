//
//  ViewController.swift
//  GetJsonMethodSwift
//
//  Created by Office on 29/06/19.
//  Copyright © 2019 Office. All rights reserved..
//

import UIKit
import Alamofire
import SwiftyJSON

//https://jsonplaceholder.typicode.com/users
class ViewController: UIViewController {

    var nikruJsonResponse : JSON = nil ?? 0
    var getNikruDatas: [getNikruData] = []
    
    @IBOutlet weak var nikruTable: NikruTableView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
      
 
      self.nikruFetchUser()
    }
    
    func nikruFetchUser(){

        
         NikruApiManager.nikruSharedInstance.nikruGetUsersFromUrl() { (nikruJSON) -> Void in
            
            if nikruJSON != nil{
                
                self.nikruJsonResponse = nikruJSON
                
                for nikruI in 0..<self.nikruJsonResponse.count{
                    let nikruSingleUser = getNikruData(nikruJSON: self.nikruJsonResponse[nikruI])
                    self.getNikruDatas.append(nikruSingleUser)
                }
                
                DispatchQueue.main.async {
                    
                    self.nikruTable.nikruDataSourceArray = self.getNikruDatas
                    //self.nikruTable.reloadData()
                }
            }
            
            
            
        }
        
        
        //print("the nikru json response is : ", nikruResponse)
        
    }


    
}

