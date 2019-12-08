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
    var userDetailScreen: UserDetail?
    
    override func setUp() {
        super.setUp()
        bundle = Bundle(for: AddUserUiTests.self)
        addUserScreen = AddUser(app: app)
        userDetailScreen = UserDetail(app: app)
        
        app.launch()
    }
    
    func testAddUserLabel(){
        XCTAssertEqual(addUserScreen?.title.label, "ADD USER")
        self.checkAllInputs()
        self.fillAllInputs()
        XCTAssertEqual(addUserScreen?.buttonAdd.label, "ADD USER")
        addUserScreen?.buttonAdd.tap()
        XCTAssertTrue(userDetailScreen?.labelDetail.exists ?? false)
    }
    
    private func checkInput(input: XCUIElement?, placeholder: String){
        XCTAssertTrue(input?.exists ?? false)
        XCTAssertEqual(input?.placeholderValue, placeholder)
    }
    
    private func fillInputs(input: XCUIElement?, inputText: String){
        input?.tap()
        input?.typeText(inputText)
        addUserScreen?.title.tap()
    }
    
    private func checkAllInputs(){
        self.checkInput(input: addUserScreen?.nameInput, placeholder: "ADD NAME")
        self.checkInput(input: addUserScreen?.emailInput, placeholder: "ADD EMAIL")
        self.checkInput(input: addUserScreen?.nicknameInput, placeholder: "ADD NICKNAME")
        self.checkInput(input: addUserScreen?.birthdayInput, placeholder: "ADD BIRTHDAY")
        self.checkInput(input: addUserScreen?.phoneInput, placeholder: "ADD PHONE")
    }
    
    private func fillAllInputs(){
        self.fillInputs(input: addUserScreen?.nameInput, inputText: "Name Test")
        self.fillInputs(input: addUserScreen?.emailInput, inputText: "test@email.com")
        self.fillInputs(input: addUserScreen?.nicknameInput, inputText: "Nickname Test")
        self.fillInputs(input: addUserScreen?.birthdayInput, inputText: "Birthday Test")
        self.fillInputs(input: addUserScreen?.phoneInput, inputText: "Phone Test")
    }
}
