//
//  DayViewController.swift
//  Lifespan 2018
//
//  Created by jpavley12 on 2/18/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import UIKit

class ClockViewController: UIViewController {
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var timeSpanLabel: UILabel!
    @IBOutlet weak var agedLabel: UILabel!
    
    weak var lifeSpan: Lifespan!
    weak var lifeClock: LifeClock!
    weak var userProfile: UserProfile!
    
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
    
    // TODO: willMove is called twice at startup, which means LifeClock is created twice
    override func willMove(toParentViewController parent: UIViewController?) {
        if parent == nil {
            return
        }

        let masterVC = parent as! MasterViewController
        userProfile = masterVC.userProfile
        lifeSpan = masterVC.lifeSpan
        lifeClock = masterVC.lifeClock
    }
    
    fileprivate func updateView() {
        //updateLifeClock()
        
        userNameLabel.text = userProfile.name
        
        let birthYear = String(format: "%.0f", userProfile.birthYear.setting)
        let deathYear = String(format: "%.0f", CGFloat(userProfile.birthYear.setting) + lifeSpan.modifiedALE!)
        timeSpanLabel.text = "\(birthYear) to \(deathYear)"
        
        let age = String(format: "%.0f", lifeSpan.modifiedALE!)
        agedLabel.text = "Aged \(age)"
        
    }
    
    fileprivate func updateLifeClock() {
        lifeClock = createLifeClockForUser()
        setClock(with: lifeClock)
        
        // DEBUG
        // print("lifeClock.time \(lifeClock.time) for user \(userProfile.name)")
        
        if CalendarUtilities.stringToTime(timeString: "00:00:00") == lifeClock.time {
            userProfile.livingOnBorrowedTime = true
        } else {
            userProfile.livingOnBorrowedTime = false
        }
    }
    
    fileprivate func createLifeClockForUser() -> LifeClock {
        
        let birthDate = CalendarUtilities.stringToDate(dateString: userProfile.dob)
        lifeSpan = Lifespan(name: userProfile.name, dateOfBirth: birthDate!, averageLifeExpectancy: userProfile.ale)
        
        let activityLevelMod = SpanModifier(name: "activityLevel", value: CGFloat(userProfile.activityLevel.setting), positive: true)
        lifeSpan.spanModifiers?.append(activityLevelMod)
        
        let stressLevelMod = SpanModifier(name: "stressLevel", value: CGFloat(userProfile.stressLevel.setting), positive: false)
        lifeSpan.spanModifiers?.append(stressLevelMod)

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
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.destination is MasterViewController {
            let destination = segue.destination as! MasterViewController
            destination.userProfile = userProfile
            destination.lifeSpan = lifeSpan
            destination.lifeClock = lifeClock
        }
    }


}

