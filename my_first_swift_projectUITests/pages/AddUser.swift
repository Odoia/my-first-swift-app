//
//  AddUser.swift
//  my_first_swift_projectUITests
//
//  Created by Tiago Jácome Henrique do Carmo on 07/12/19.
//  Copyright © 2019 Tiago Jácome Henrique do Carmo. All rights reserved.
//

import XCTest

class AddUser{
    let app: XCUIApplication
    init(app:XCUIApplication) {
        self.app = app
    }
    
    var title: XCUIElement{ return app.staticTexts["title_add_user"] }
    var nameInput: XCUIElement{ return app.textFields["name_add_user"] }
    var emailInput: XCUIElement{ return app.textFields["email_add_user"] }
    var nicknameInput: XCUIElement{ return app.textFields["nickname_add_user"] }
    var birthdayInput: XCUIElement{ return app.textFields["birthday_add_user"] }
    var phoneInput: XCUIElement{ return app.textFields["phone_add_user"] }
    var buttonAdd: XCUIElement{ return app.buttons["button_add_user"] }
}
