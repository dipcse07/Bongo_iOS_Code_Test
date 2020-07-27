//
//  Counter.swift
//  Bongo iOS Code Test
//
//  Created by MD SAZID HASAN DIP on 26/7/20.
//  Copyright © 2020 MD SAZID HASAN DIP. All rights reserved.
//

import Foundation
extension ViewController {
    
    func showLastCharecter(_ string: NSString) -> String {
       

        let lastString = string.substring(from: string.length - 1)
        let showLastString = "\nThe last Character: \(lastString) \n"
        print(showLastString)
        
        return lastString
    }
    
    
    
    func countOfEveryNthCharecter(_ string: NSString) -> String{
          
          let stringLength = string.length
          let charecterCounter = stringLength / 10
          
          let castedString = String(string)
          let mappedArray = castedString.map { String($0) }
        
         var showTheNthCharecter = "Showing the result of Every 10th Character \n"

          for i in 1...charecterCounter {
              if i * 10 < string.length {
                  let index = i * 10 - 1
                 showTheNthCharecter += "\( i * 10)th charecter at index \(index) is \(mappedArray[index])\n"
              }
          }
        print(showTheNthCharecter)
        return showTheNthCharecter
          
      }
      
      
    func countOfEachWords(_ string: NSString) -> [String : Int]{
          
           let castedString = String(string)
         // print("The Casted String: " + castedString)
                    var count = 0
                    var wordStarted = false
                    var tmpWord = ""
                    var resultDictionary: [String: Int] = [:]
                    
                    for char in castedString {
                        //print("each Charecter : \(char)")
                        
                        if (!char.isLetter && wordStarted) {

                            count += 1
                            wordStarted = false
                            

                            if (resultDictionary.keys.contains(tmpWord)){
                                resultDictionary[tmpWord]! += 1
                              // print(" counter increased for \(tmpWord) and the result Dictionary: \(resultDictionary)" )

                            }else {
                                resultDictionary.updateValue(1, forKey: tmpWord )
                              // print("Updated Dictionary after added a Word: \(resultDictionary)")
                            }

                            tmpWord.removeAll()
                        }
                        else if (char.isLetter){
                            wordStarted = true
                            tmpWord += "\(char)"
                            //print(tmpWord)
                        }
                    }

                    if(wordStarted){
                        if(resultDictionary.keys.contains(tmpWord)){
                            resultDictionary[tmpWord]! += 1
                        }
                        else {
                            resultDictionary.updateValue(1, forKey: tmpWord)
                        }
                    }
        return resultDictionary
          
      }
    
    
    
    func countOfEveryWord(_ string: NSString) -> Int {
        
        let resultDictionary = countOfEachWords(string)
        let resultOfCount = resultDictionary.reduce(0) {$0 + $1.value}
        
        print("The count of All Words: \(resultOfCount)")
        return resultOfCount
            
       
    }
}

