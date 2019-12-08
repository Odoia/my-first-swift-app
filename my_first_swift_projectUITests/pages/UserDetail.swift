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
    
    var labelDetail: XCUIElement{ return app.staticTexts["label_user_detail"] }
}
