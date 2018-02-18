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

class ViewController: UIViewController {

    // MARK:- Properties -
    
    var mode = UserMode.day
    var name = "john"
    
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
    }
    
    // MARK:- Overrides -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUX()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

