//
//  AddUserUiTests.swift
//  my_first_swift_projectUITests
//
//  Created by Tiago Jácome Henrique do Carmo on 07/12/19.
//  Copyright © 2019 Tiago Jácome Henrique do Carmo. All rights reserved.
//

import XCTest
@testable import my_first_swift_project

class AddUserUiTests: XCTestCase {
   
    let app = XCUIApplication()
    var bundle: Bundle?
    var addUserScreen: AddUser?
    
    override func setUp() {
        super.setUp()
        bundle = Bundle(for: AddUserUiTests.self)
        addUserScreen = AddUser(app: app)
        
        app.launch()
    }
    
    func testAddUserLabel(){
        XCTAssertEqual(addUserScreen?.title.label, "ADD USER")
        XCTAssertTrue(addUserScreen?.nameInput.exists ?? false)
        XCTAssertTrue(addUserScreen?.emailInput.exists ?? false)
        XCTAssertTrue(addUserScreen?.nicknameInput.exists ?? false)
        XCTAssertTrue(addUserScreen?.birthdayInput.exists ?? false)
        XCTAssertTrue(addUserScreen?.phoneInput.exists ?? false)
        XCTAssertTrue(addUserScreen?.buttonAdd.exists ?? false)
    }
    
}
