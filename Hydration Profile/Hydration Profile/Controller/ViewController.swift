//
//  ViewController.swift
//  Hydration Profile
//
//  Created by Jason So on 1/9/2020.
//  Copyright © 2020 Jason So. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var femaleButton: UIButton!
    @IBOutlet weak var activityLevelZero: UIButton!
    @IBOutlet weak var activityLevelOne: UIButton!
    @IBOutlet weak var activityLevelTwo: UIButton!
    @IBOutlet weak var activityLevelThree: UIButton!
    
    
    var gender : String = ""
    var age : Int = 0
    var height : Double = 0.0
    var weight : Double = 0.0
    var activity : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func genderChanged(_ sender: UIButton) {
        if sender.currentTitle == "Male" {
            maleButton.isSelected = true
            femaleButton.isSelected = false
        } else {
            maleButton.isSelected = false
            femaleButton.isSelected = true
        }
        gender = sender.currentTitle!
        print(gender)
    }
    
    
    @IBAction func activityLevelChanged(_ sender: UIButton) {
        
        switch sender.currentTitle {
            case "0" :
                activityLevelZero.isSelected = true
                activityLevelOne.isSelected = false
                activityLevelTwo.isSelected = false
                activityLevelThree.isSelected = false
            case "1" :
                activityLevelZero.isSelected = false
                activityLevelOne.isSelected = true
                activityLevelTwo.isSelected = false
                activityLevelThree.isSelected = false
            case "2" :
                activityLevelZero.isSelected = false
                activityLevelOne.isSelected = false
                activityLevelTwo.isSelected = true
                activityLevelThree.isSelected = false
            case "3" :
                activityLevelZero.isSelected = false
                activityLevelOne.isSelected = false
                activityLevelTwo.isSelected = false
                activityLevelThree.isSelected = true
            default:
                activityLevelZero.isSelected = false
                activityLevelOne.isSelected = false
                activityLevelTwo.isSelected = false
                activityLevelThree.isSelected = false
        }
        
        activity = sender.currentTitle!
        
    }
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        height = Double(heightTextField.text!)!           //FORCE UNWRAP FOR NOW FIX LATER
        weight = Double(weightTextField.text!)!
        age = Int(ageTextField.text!)!
        
        let userProfile = UserProfile(gender: gender, age: age, height: height, weight: weight, activity: activity)
        
        print(userProfile.waterTarget)
    }
}

