//
//  AnalysisViewController.swift
//  Lifespan 2018
//
//  Created by jpavley12 on 2/24/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import UIKit
import WebKit

class AnalysisViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    var lifeSpan: Lifespan!
    var lifeClock: LifeClock!
    var userProfile: UserProfile!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // WebUtilities.loadHTMLFile(named: "web/analysis", webView: webView)
        WebUtilities.loadHTMLString(html: generateText(), webView: webView)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    fileprivate func generateText() -> String {
        
//        John F. Pavley was born <mark>57</mark> years ago in the year <mark>1961</mark>. His life expectancy of <mark>83</mark> years is influenced by a <mark>low</mark> level of physical activity and a <mark>high</mark> level of mental stress, and thus <mark>reduced</mark> to <mark>75</mark> years, <mark>robbing</mark> him of <mark>8</mark> years. If he <mark>doesn’t improve</mark> his life style he could die in <mark>18</mark> years from today, in the year <mark>2036</mark>.</p>
        
        let name = userProfile.name
        let age = Int(userProfile.age.rounded(.awayFromZero))
        let birthYear = Int(userProfile.birthYear.setting.rounded(.awayFromZero))
        let lifeExpectancy = Int(userProfile.ale.rounded(.awayFromZero))
        let modifiedLifeExpectancy = Int(lifeSpan.modifiedALE!.rounded(.awayFromZero))
        let missingYears = modifiedLifeExpectancy - lifeExpectancy
        let deathYear = birthYear + modifiedLifeExpectancy
        let cal = CalendarUtilities.utcCal()
        let thisYear = cal.component(.year, from: Date())
        let yearsLeft = deathYear - thisYear
        
        
        return "\(name) was born <mark>\(age)</mark> years ago in the year <mark>\(birthYear)</mark>. His life expectancy of <mark>\(lifeExpectancy)</mark> years is influenced by a <mark>low</mark> level of physical activity and a <mark>high</mark> level of mental stress, and thus <mark>reduced</mark> to <mark>\(modifiedLifeExpectancy)</mark> years, <mark>robbing</mark> him of <mark>\(missingYears)</mark> years. If he <mark>doesn’t improve</mark> his life style he could die in <mark>\(yearsLeft)</mark> years from today, in the year <mark>\(deathYear)</mark>.</p>"
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
