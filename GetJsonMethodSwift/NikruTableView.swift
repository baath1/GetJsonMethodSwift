//
//  NikruTableView.swift
//  GetJsonMethodSwift
//
//  Created by Office on 30/06/19.
//  Copyright © 2019 Office. All rights reserved.
//

import UIKit

class NikruTableView: UITableView, UITableViewDataSource, UITableViewDelegate {
   
    var nikruDataSourceArray = [getNikruData]() {
        
        didSet{
            
            reloadData()
        }
    }
    
    override init(frame: CGRect, style: Style){
        super.init(frame: frame, style: style)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
       
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.delegate = self
        self.dataSource = self
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 326
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.nikruDataSourceArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nikruCell") as! NikruTableViewCell
        
        let myNikruUser  = nikruDataSourceArray[indexPath.row]
        
        
        
        
        cell.nikruNameLbl.text = myNikruUser.name
        
        
        cell.nikruUserNAme.text = myNikruUser.username
        
        cell.nikruEmailAddress.text = myNikruUser.email
        cell.nikruPhone.text = myNikruUser.phone
        cell.nikruCompanyName.text = myNikruUser.nikruCompany?.name
        
        cell.nikruAddress.text = myNikruUser.nikruAddress?.street
        cell.nkkruPharse.text = myNikruUser.nikruAddress?.suite
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    

}
