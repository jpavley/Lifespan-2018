//
//  DayViewController.swift
//  Lifespan 2018
//
//  Created by jpavley12 on 2/18/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import UIKit

class DayViewController: UIViewController {
    
    var lifeSpan: Lifespan!
    var lifeClock: LifeClock!
    var userProfile: UserProfile!
    
    let minuteHandTag = 200
    let hourHandTag = 300
    let secondHandTag = 400
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var clockCaption: UILabel!
    @IBOutlet weak var clockKeyYears: UILabel!
    @IBOutlet weak var clockKeyMonths: UILabel!
    @IBOutlet weak var clockKeyWeeks: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        userProfile = UserProfile()
        updateView()
    }
    
    fileprivate func updateView() {
        updateLifeClock()
    }
    
    fileprivate func updateLifeClock() {
        lifeClock = createLifeClockForUser()
        setClock(with: lifeClock)
    }
    
    fileprivate func createLifeClockForUser() -> LifeClock {
        let birthDate = Lifespan.stringToDate(dateString: userProfile.dob)
        lifeSpan = Lifespan(name: userProfile.name, dateOfBirth: birthDate!, averageLifeExpectancy: userProfile.ale)
        let spanTime = lifeSpan.lifespanAsTime()
        return LifeClock(time: spanTime!)
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

