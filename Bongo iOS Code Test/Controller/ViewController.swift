//
//  ViewController.swift
//  Bongo iOS Code Test
//
//  Created by MD SAZID HASAN DIP on 24/7/20.
//  Copyright © 2020 MD SAZID HASAN DIP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
 
    
    @IBOutlet weak var showButton: RoundedButton!
    var networkManager = NetworkManger()
    
    
    @IBOutlet weak var resultTextView: CustomTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        networkManager.delegate = self
        
        
        
    }
    
    @IBAction func showButton(_ sender: RoundedButton) {
        
        getTheValueFromTheAPI()
        
    }
    
    
    private func getTheValueFromTheAPI(){
        networkManager.performRequest(urlString: URL)
        
    }
    
    
}





extension ViewController: NetworkManagerDelegate {
    
    func printAndPassData(_ string: NSString) {
        
        
        DispatchQueue.main.async {
            
            //MARK:- Show The Last Charecter
        
            self.resultTextView.text = "The Last Character: \(self.showLastCharecter(string)) \n"
            
   
            //MARK:- Printing every 10th charecter

            self.resultTextView.text += self.countOfEveryNthCharecter(string)
           
        
            //MARK:- Print The Count of All Words 1136
            
            let showCountOfAllWords = self.countOfEveryWord(string)
            self.resultTextView.text += "\nThe Count of Total Words: \(showCountOfAllWords)\n"
            
            
            //MARK:- Printing the Count of each words
            
            self.resultTextView.text += "\nThe Count of Each Words: \n\n \((self.countOfEachWords(string))) \n"
            self.resultTextView.isHidden = false
          
        }

    }
    
  
    
}







