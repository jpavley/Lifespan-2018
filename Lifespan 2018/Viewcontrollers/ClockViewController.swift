//
//  ClockViewController.swift
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
    
    var userProfile: UserProfile?
    
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
    }
    
    fileprivate func updateView() {
        
        updateLifeClock()
        
        userNameLabel.text = userProfile!.name
        
        let birthYear = String(format: "%.0f", userProfile!.birthYear.setting)
        let deathYear = String(format: "%.0f", CGFloat(userProfile!.birthYear.setting) + lifeSpan!.modifiedALE!)
        timeSpanLabel.text = "\(birthYear) to \(deathYear)"
        
        let age = String(format: "%.0f", lifeSpan!.modifiedALE!)
        agedLabel.text = "Aged \(age)"
        
    }
    
    fileprivate func updateLifeClock() {
        
        let ls = createLifespanForUser()
        let lc = createLifeClockForUser(with: ls!)
        setClock(with: lc)
        
        if CalendarUtilities.stringToTime(timeString: "00:00:00") == lc.time {
            userProfile!.livingOnBorrowedTime = true
        } else {
            userProfile!.livingOnBorrowedTime = false
        }
        
    }
    
    fileprivate func createLifeClockForUser(with ls: Lifespan) -> LifeClock {
        
        let spanTime = ls.lifespanAsTime()
        let lc = LifeClock(time: spanTime!)
        return lc
    }
    
    fileprivate func createLifespanForUser() -> Lifespan? {
        
        let birthDate = CalendarUtilities.stringToDate(dateString: userProfile!.dob)
        let ls = Lifespan(name: userProfile!.name, dateOfBirth: birthDate!, averageLifeExpectancy: userProfile!.ale)
        
        let activityLevelMod = SpanModifier(name: "activityLevel", value: CGFloat(userProfile!.activityLevel.setting), positive: true)
        ls.spanModifiers?.append(activityLevelMod)
        
        let stressLevelMod = SpanModifier(name: "stressLevel", value: CGFloat(userProfile!.stressLevel.setting), positive: false)
        ls.spanModifiers?.append(stressLevelMod)
        
        return ls
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

