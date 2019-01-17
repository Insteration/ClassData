//
//  ViewController.swift
//  ClassData
//
//  Created by Artem Karmaz on 1/17/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myModel = SuperModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //
    
    @IBOutlet weak var consoleLabel: UILabel!
    
    @IBAction func goToSecondViewController(_ sender: UIButton) {
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "second") as! SecondViewController
        secondVC.myModel = myModel
        present(secondVC, animated: true, completion: nil)
    }
    
    @IBAction func printInConsole(_ sender: UIButton) {
        consoleLabel.text = myModel.data
        print(myModel.data)
    }
    
}

