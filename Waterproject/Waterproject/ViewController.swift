//
//  ViewController.swift
//  Waterproject
//
//  Created by Tigger on 1/9/2020.
//  Copyright © 2020 Tigger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var litreVal: String?  = "?L"

    var watercalculator = WaterCalculator(w: 0,act: 0)

    
    @IBOutlet weak var litreLabel: UILabel!
    @IBOutlet weak var customButton: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Retrievedata
        //WaterCalculator(weight,activity)
        litreLabel.text = litreVal
        
    }

    @IBAction func customButtonPressed(_ sender: UIButton) {
        
        var textField = UITextField()

        let alert = UIAlertController(title: "Customise Daily Water Input", message: "", preferredStyle: .alert)

        let action = UIAlertAction(title: "Confirm", style: .default) { (action) in

            self.litreVal = (textField.text!)
            self.litreLabel.text = self.litreVal
//   self.defaults.set(self.itemArray, forKey: "TodoListArray")
            
        }

        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Please insert an amount in Litre"
            textField = alertTextField
        }

        alert.addAction(action)

        present(alert, animated: true, completion: nil)
    }
        
        //code to customise drinking water value
    
    @IBAction func showScreenButtonPressed(_ sender: UIButton) {
        //code to switch to the showscreen
    }
    
    
}
