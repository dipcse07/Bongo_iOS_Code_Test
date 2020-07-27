//
//  NetworManager.swift
//  Bongo iOS Code Test
//
//  Created by MD SAZID HASAN DIP on 24/7/20.
//  Copyright © 2020 MD SAZID HASAN DIP. All rights reserved.
//

import Foundation

struct NetworkManger {
    
    
    
    var delegate: NetworkManagerDelegate?
    
    
    func performRequest(urlString: String) {
       /// var theData:NSString

        if  let url = Foundation.URL(string: urlString){
  
            let session = URLSession(configuration: .default)
          
            
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    let dataString = NSString(data: safeData, encoding: String.Encoding.utf8.rawValue)
                
//                    theData = dataString!
                    
                    print(dataString)
                    
                    self.delegate?.printAndPassData(dataString!)

                }

            }

            task.resume()
        }
        
    }
    
  

}
