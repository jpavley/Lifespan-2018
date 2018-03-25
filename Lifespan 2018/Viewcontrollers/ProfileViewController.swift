//
//  ProfileViewController.swift
//  Lifespan 2018
//
//  Created by jpavley12 on 2/24/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITextFieldDelegate, SharedState {
    
    var userProfile: UserProfile?
    var lifeSpan: Lifespan?
    var lifeClock: LifeClock?
    
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
        guard let userProfile = userProfile else {
            return
        }

        userProfile.name = nameField.text!
    }
    
    /// Update the birth year and life expectancy sliders.
    /// As birth year changes life expectancy min and current setting changes:
    /// - You can't live less than your current age.
    /// - Your live expectancy has to be more than your current age.
    ///
    /// This logic should really be in the UserProfile object but
    /// UserProject should not know about the UX. So it here and
    /// not there.
    ///
    /// - Parameter sender: birth year slider as a generic object
    @IBAction func birthYearSliderChanged(_ sender: Any) {
        let sliderValue = birthYearSlider.value.rounded(.toNearestOrAwayFromZero)
        birthYearField.text = String(format: "%.0f", sliderValue)
        
        // set birth year
        guard let userProfile = userProfile else {
            return
        }

        userProfile.birthYear.setting = sliderValue
        
        // when the birth year changes the min value of life expenctancy changes
        // (cant live live less than your current age!)
        let userAge = CalendarUtilities.thisYear() - userProfile.birthYear.setting
        
        // set live expectancy min
        userProfile.lifeExpectancy.min = userAge
        
        // update the slider to reflect the change
        lifeExpectancySlider.minimumValue = userAge
        
        // if the current life expectancy is now less than the user's age
        // update life expectancy to the user's age
        if userProfile.lifeExpectancy.setting < userAge {
            
            // set life expectancy
            userProfile.lifeExpectancy.setting = userAge
            
            // update the UX to refect the change
            lifeExpectancyField.text = String(format: "%.0f", userAge)
            lifeExpectancySlider.value = userAge
        }
    }
    
    @IBAction func lifeExpectancySliderChanged(_ sender: Any) {
        let sliderValue = lifeExpectancySlider.value.rounded(.toNearestOrAwayFromZero)
        lifeExpectancyField.text = String(format: "%.0f", sliderValue)
        
        // set life expectancy
        guard let userProfile = userProfile else {
            return
        }

        userProfile.lifeExpectancy.setting = sliderValue
    }

    @IBAction func activityLevelChanged(_ sender: Any) {
        let sliderValue = activityLevelSlider.value.rounded(.toNearestOrAwayFromZero)
        activityLevelField.text = String(format: "%.0f", sliderValue)
        
        // set actively level
        guard let userProfile = userProfile else {
            return
        }

        userProfile.activityLevel.setting = sliderValue
    }

    @IBAction func stressLevelSliderChanged(_ sender: Any) {
        let sliderValue = stressLevelSlider.value.rounded(.toNearestOrAwayFromZero)
        stressLevelField.text = String(format: "%.0f", sliderValue)
        
        // set stress level
        guard let userProfile = userProfile else {
            return
        }

        userProfile.stressLevel.setting = sliderValue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let userProfile = userProfile else {
            return
        }
        
        nameField.delegate = self
        nameField.text = userProfile.name
        
        updateBirthYear()
        updateLifeExpentency()
        updateActivityLevel()
        updateStressLevel()
    }
    
    fileprivate func updateBirthYear() {
        guard let userProfile = userProfile else {
            return
        }

        birthYearSlider.minimumValue = userProfile.birthYear.min
        birthYearSlider.maximumValue = userProfile.birthYear.max
        birthYearSlider.value = userProfile.birthYear.setting
        birthYearField.text = String(format: "%.0f", userProfile.birthYear.setting)
    }
    
    fileprivate func updateLifeExpentency() {
        guard let userProfile = userProfile else {
            return
        }

        lifeExpectancySlider.minimumValue = userProfile.lifeExpectancy.min
        lifeExpectancySlider.maximumValue = userProfile.lifeExpectancy.max
        lifeExpectancySlider.value = userProfile.lifeExpectancy.setting
        lifeExpectancyField.text = String(format: "%.0f", userProfile.lifeExpectancy.setting)
    }
    
    fileprivate func updateActivityLevel() {
        guard let userProfile = userProfile else {
            return
        }

        activityLevelSlider.minimumValue = userProfile.activityLevel.min
        activityLevelSlider.maximumValue = userProfile.activityLevel.max
        activityLevelSlider.value = userProfile.activityLevel.setting
        activityLevelField.text = String(format: "%.0f", userProfile.activityLevel.setting)
    }
    
    fileprivate func updateStressLevel() {
        guard let userProfile = userProfile else {
            return
        }

        stressLevelSlider.minimumValue = userProfile.stressLevel.min
        stressLevelSlider.maximumValue = userProfile.stressLevel.max
        stressLevelSlider.value = userProfile.stressLevel.setting
        stressLevelField.text = String(format: "%.0f", userProfile.stressLevel.setting)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
    
    func debugSliderValues() {
        guard let userProfile = userProfile else {
            return
        }
        
        print("")
        print("birthYear      \(userProfile.birthYear.min), \(userProfile.birthYear.max), \(userProfile.birthYear.setting)")
        print("lifeExpectancy \(userProfile.lifeExpectancy.min), \(userProfile.lifeExpectancy.max), \(userProfile.lifeExpectancy.setting)")
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        prepareState(for: segue)
    }
    

}
