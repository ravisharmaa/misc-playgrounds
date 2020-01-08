//
//  ViewController.swift
//  CustomCells
//
//  Created by Ravi Bastola on 10/24/19.
//  Copyright © 2019 Ravi Bastola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello")
       
        HttpRequest().get(url: Constants.apiUrl, type: Result.self)
    }


}

