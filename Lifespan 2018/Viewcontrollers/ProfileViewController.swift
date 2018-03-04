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
    @IBOutlet weak var birthYearField: UITextField!
    @IBOutlet weak var lifeExpectancyField: UITextField!
    @IBOutlet weak var activityLevelField: UITextField!
    @IBOutlet weak var stressLevelField: UITextField!
    
    @IBOutlet weak var birthYearSlider: UISlider!
    @IBOutlet weak var lifeExpectancySlider: UISlider!
    @IBOutlet weak var activityLevelSlider: UISlider!
    @IBOutlet weak var stressLevelSlider: UISlider!

    
    @IBAction func nameEdited(_ sender: Any) {
        userProfile.name = nameField.text!
    }
    
    @IBAction func birthYearSliderChanged(_ sender: Any) {
        let slider = sender as! UISlider
        let sliderValue = slider.value.rounded(.toNearestOrAwayFromZero)
        birthYearField.text = String(format: "%.0f", sliderValue)
        userProfile.birthYear.setting = sliderValue
        
        let userAge = CalendarUtilities.thisYear() - userProfile.birthYear.setting
        
        userProfile.lifeExpectancy.min = userAge
        
        lifeExpectancySlider.minimumValue = userAge
        if userProfile.lifeExpectancy.setting < userAge {
            userProfile.lifeExpectancy.setting = userAge
            lifeExpectancyField.text = String(format: "%.0f", userAge)
            lifeExpectancySlider.value = userAge
        }
    }
    
    @IBAction func lifeExpectancySliderChanged(_ sender: Any) {
        let slider = sender as! UISlider
        let sliderValue = slider.value.rounded(.toNearestOrAwayFromZero)
        lifeExpectancyField.text = String(format: "%.0f", sliderValue)
        userProfile.lifeExpectancy.setting = sliderValue
    }

    @IBAction func activityLevelChanged(_ sender: Any) {
    }

    @IBAction func stressLevelSliderChanged(_ sender: Any) {
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameField.text = userProfile.name
        updateBirthYear()
        updateLifeExpentency()
    }
    
    fileprivate func updateBirthYear() {
        birthYearSlider.minimumValue = userProfile.birthYear.min
        birthYearSlider.maximumValue = userProfile.birthYear.max
        birthYearSlider.value = userProfile.birthYear.setting
        birthYearField.text = String(format: "%.0f", userProfile.birthYear.setting)
    }
    
    fileprivate func updateLifeExpentency() {
        lifeExpectancySlider.minimumValue = userProfile.lifeExpectancy.min
        lifeExpectancySlider.maximumValue = userProfile.lifeExpectancy.max
        lifeExpectancySlider.value = userProfile.lifeExpectancy.setting
        lifeExpectancyField.text = String(format: "%.0f", userProfile.lifeExpectancy.setting)
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
    
    func debugSliderValues() {
        print("")
        print("birthYear      \(userProfile.birthYear.min), \(userProfile.birthYear.max), \(userProfile.birthYear.setting)")
        print("lifeExpectancy \(userProfile.lifeExpectancy.min), \(userProfile.lifeExpectancy.max), \(userProfile.lifeExpectancy.setting)")
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
