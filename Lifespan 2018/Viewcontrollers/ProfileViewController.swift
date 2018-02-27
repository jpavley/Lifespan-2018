//
//  ProfileViewController.swift
//  Lifespan 2018
//
//  Created by jpavley12 on 2/24/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var userProfile: UserProfile!
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var dateOfBirthField: UITextField!
    @IBOutlet weak var lifeExpentencyField: UITextField!
    @IBOutlet weak var activitySlider: UISlider!
    @IBOutlet weak var caloriesSlider: UISlider!
    @IBOutlet weak var smokingSwitch: UISwitch!
    @IBOutlet weak var drinkingSwitch: UISwitch!

    @IBAction func nameEdited(_ sender: Any) {
        userProfile.name = nameField.text!
    }
    
    @IBAction func dateOfBirthEdited(_ sender: Any) {
        userProfile.dob = dateOfBirthField.text!
    }
    
    @IBAction func lifeExpentencyEdited(_ sender: Any) {
        if let lifeExpentancyValue = Double(lifeExpentencyField.text!) {
            userProfile.ale = CGFloat(lifeExpentancyValue)
        }
    }
    
    @IBAction func activityEdited(_ sender: Any) {
        userProfile.activity = Double(activitySlider.value)
    }
    
    @IBAction func caloriesEdited(_ sender: Any) {
        userProfile.calories = Double(caloriesSlider.value)
    }
    
    @IBAction func smokingEdited(_ sender: Any) {
        userProfile.smoking = smokingSwitch.isOn
    }
    
    @IBAction func drinkingEdited(_ sender: Any) {
        userProfile.drinking = drinkingSwitch.isOn
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameField.text = userProfile.name
        dateOfBirthField.text = userProfile.dob
        lifeExpentencyField.text = "\(userProfile.ale)"
        activitySlider.setValue(Float(userProfile.activity), animated: false)
        caloriesSlider.setValue(Float(userProfile.calories), animated: false)
        smokingSwitch.isOn = userProfile.smoking
        drinkingSwitch.isOn = userProfile.drinking
    }
    
    override func willMove(toParentViewController parent: UIViewController?) {
        if parent == nil {
            return
        }
        
        let masterVC = parent as! MasterViewController
        userProfile = masterVC.userProfile
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
