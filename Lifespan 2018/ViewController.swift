//
//  ViewController.swift
//  Lifespan 2018
//
//  Created by jpavley12 on 2/18/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import UIKit

enum UserMode: String {
    case day = "day"
    case week = "week"
    case month = "month"
    case year = "year"
}

struct Identifiers {
    static let clockGroundTag = 10
    static let clockfaceView = 100
    static let minuteHandTag = 200
    static let hourHandTag = 300
    static let secondHandTag = 400
}

class ViewController: UIViewController {

    // MARK:- Properties -
    
    var mode = UserMode.day
    var name = "john"
    var dob = "02-13-1961"
    var ale = CGFloat(82.9) // https://www.ssa.gov/planners/lifeexpectancy.html
    
    // MARK:- Outlets -
    
    @IBOutlet weak var titleLabel: UILabel!
    
    // MARK:- Actions -
    
    @IBAction func optionsAction(_ sender: Any) {
    }
    
    @IBAction func dayAction(_ sender: Any) {
        mode = .day
        updateUX()
    }
    
    @IBAction func weekAction(_ sender: Any) {
        mode = .week
        updateUX()
    }
    
    @IBAction func monthAction(_ sender: Any) {
        mode = .month
        updateUX()
    }
    
    @IBAction func yearAction(_ sender: Any) {
        mode = .year
        updateUX()
    }
    
    // MARK:- Methods -
    
    func updateUX() {
        
        titleLabel.text = "\(name)'s life in a \(mode.rawValue)".capitalized
        
        let clockGround = view.viewWithTag(Identifiers.clockGroundTag)
        
        switch mode {
        case .day:
            clockGround!.isHidden = false
            updateLifeClock()
        case .week:
            clockGround!.isHidden = true
        case .month:
            clockGround!.isHidden = true
        case .year:
            clockGround!.isHidden = true
        }
    }
    
    // MARK:- Overrides -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUX()
    }
    
    fileprivate func updateLifeClock() {
        let lifeClock = createLifeClockForUser()
        setClock(with: lifeClock)
    }
    
    fileprivate func createLifeClockForUser() -> LifeClock {
        let birthDate = Lifespan.stringToDate(dateString: dob)
        let lifeSpan = Lifespan(name: name, dateOfBirth: birthDate!, averageLifeExpectancy: ale)
        let spanTime = lifeSpan.lifespanAsTime()
        return LifeClock(time: spanTime!)
    }
    
    fileprivate func setClock(with lifeClock: LifeClock) {
        let hourHand = view.viewWithTag(Identifiers.hourHandTag) as! HourHandView
        let minuteHand = view.viewWithTag(Identifiers.minuteHandTag) as! MinuteHandView
        let secondHand = view.viewWithTag(Identifiers.secondHandTag) as! SecondHandView
        
        hourHand.angle = lifeClock.hourHandAngle
        minuteHand.angle = lifeClock.minuteHandAngle
        secondHand.angle = lifeClock.secondHandAngle

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

