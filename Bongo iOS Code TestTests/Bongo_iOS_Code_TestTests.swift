//
//  Bongo_iOS_Code_TestTests.swift
//  Bongo iOS Code TestTests
//
//  Created by MD SAZID HASAN DIP on 24/7/20.
//  Copyright © 2020 MD SAZID HASAN DIP. All rights reserved.
//

import XCTest
@testable import Bongo_iOS_Code_Test

class Bongo_iOS_Code_TestTests: XCTestCase {
    
    var sut: ViewController!
    
    override func setUpWithError() throws {
        super.setUp()
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyBoard.instantiateViewController(identifier: "mainStoryBoard") as! ViewController
        sut.loadViewIfNeeded()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        super.tearDown()
    }
    
    //MARK:- TextOfLastCharacter
    func testShowTheLastCharecter(){
        let string = NSString("abc, def, egh,ik book")
        XCTAssertEqual(sut.showLastCharecter(string), "k")
    }
    
    
    //MARK:- TestOfTotalNumberOfWords
    func testcountOfTotalWords(){
        let string = NSString("abc,def, egh,ik book")
        
        XCTAssertEqual(sut.countOfEveryWord(string), 5)
        
        
    }
    
    //MARK:- CounterForEachWords
    func testCountForEachWords(){
        let string = NSString("abc,def,")
        
        let res = [ "abc": 1, "def": 1]
        XCTAssertEqual(sut.countOfEachWords(string), res)
        
    }
    
    //MARK:- After show button TextView Sould not Be nil
    func testTextView(){
        sut.showButton(sut.showButton)
        XCTAssertNotNil(sut.resultTextView.text!)
    }
    
}
