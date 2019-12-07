//
//  ViewUtils.swift
//  my_first_swift_project
//
//  Created by Tiago Jácome Henrique do Carmo on 07/12/19.
//  Copyright © 2019 Tiago Jácome Henrique do Carmo. All rights reserved.
//

import Foundation

class ViewUtils{
    static func loadNibNamed<T>(_ nibName: String, owner: Any?) -> T {
        return Bundle.main.loadNibNamed(nibName, owner: owner, options: nil)?[0] as! T
    }
}
