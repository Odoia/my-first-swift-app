//
//  UserDetail.swift
//  my_first_swift_projectUITests
//
//  Created by Tiago Jácome Henrique do Carmo on 07/12/19.
//  Copyright © 2019 Tiago Jácome Henrique do Carmo. All rights reserved.
//

import XCTest

class UserDetail{
    let app: XCUIApplication
    init(app:XCUIApplication) {
        self.app = app
    }
    
    var labelNameDetail: XCUIElement{ return app.staticTexts["label_name_user_detail"] }
    var labelEmailDetail: XCUIElement{ return app.staticTexts["label_email_user_detail"] }
    var labelNicknameDetail: XCUIElement{ return app.staticTexts["label_nickname_user_detail"] }
    var labelBirthdayDetail: XCUIElement{ return app.staticTexts["label_birthday_user_detail"] }
    var labelPhoneDetail: XCUIElement{ return app.staticTexts["label_phone_user_detail"] }
}
