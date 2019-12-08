//
//  UserDetailViewController.swift
//  my_first_swift_project
//
//  Created by Tiago Jácome Henrique do Carmo on 07/12/19.
//  Copyright © 2019 Tiago Jácome Henrique do Carmo. All rights reserved.
//

import UIKit

class UserDetailViewController: UIViewController {
    public static let NIB_NAME = "UserDetailViewController"
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyBoard))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyBoard(){
        self.view.endEditing(true)
    }
}

