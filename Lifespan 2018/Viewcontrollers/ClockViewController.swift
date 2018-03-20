//
//  DayViewController.swift
//  Lifespan 2018
//
//  Created by jpavley12 on 2/18/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import UIKit

class ClockViewController: UIViewController {
    
    @IBOutlet weak var remainingField: UILabel!
    @IBOutlet weak var spentField: UILabel!
    
    var lifeSpan: Lifespan!
    var lifeClock: LifeClock!
    var userProfile: UserProfile!
    
    let minuteHandTag = 200
    let hourHandTag = 300
    let secondHandTag = 400
    
    let spentSegment = 0
    let remainingSegment = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateView()
    }
    
    override func willMove(toParentViewController parent: UIViewController?) {
        if parent == nil {
            return
        }
        
        let masterVC = parent as! MasterViewController
        userProfile = masterVC.userProfile
        updateView()
    }
    
    fileprivate func updateView() {
        updateLifeClock()
        
        remainingField.text = lifeSpan.clockDescriptionRemaining
        spentField.text = lifeSpan.clockDescriptionSpent
    }
    
    fileprivate func updateLifeClock() {
        lifeClock = createLifeClockForUser()
        setClock(with: lifeClock)
        
        // DEBUG
        print("lifeClock.time \(lifeClock.time) for user \(userProfile.name)")
        
        if CalendarUtilities.stringToTime(timeString: "00:00:00") == lifeClock.time {
            userProfile.livingOnBorrowedTime = true
        } else {
            userProfile.livingOnBorrowedTime = false
        }
    }
    
    fileprivate func createLifeClockForUser() -> LifeClock {
        
        let birthDate = CalendarUtilities.stringToDate(dateString: userProfile.dob)
        lifeSpan = Lifespan(name: userProfile.name, dateOfBirth: birthDate!, averageLifeExpectancy: userProfile.ale)
        
        lifeSpan.spanModifiers!["activityLevel"] = CGFloat(userProfile.activityLevel.setting)
        lifeSpan.spanModifiers!["stressLevel"] = CGFloat(userProfile.stressLevel.setting)
        
        let spanTime = lifeSpan.lifespanAsTime()
        let lifeClock = LifeClock(time: spanTime!)
        return lifeClock
    }
    
    fileprivate func setClock(with lifeClock: LifeClock) {
        let hourHand = view.viewWithTag(hourHandTag) as! HourHandView
        let minuteHand = view.viewWithTag(minuteHandTag) as! MinuteHandView
        let secondHand = view.viewWithTag(secondHandTag) as! SecondHandView
        
        hourHand.angle = lifeClock.hourHandAngle
        minuteHand.angle = lifeClock.minuteHandAngle
        secondHand.angle = lifeClock.secondHandAngle

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

