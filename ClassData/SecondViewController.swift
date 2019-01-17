//
//  SecondViewController.swift
//  ClassData
//
//  Created by Artem Karmaz on 1/17/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var myModel: SuperModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction private func saveInModel() {
        myModel?.data = "This data is save from Second View Controller"
    }
    
    @IBAction private func exit(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
