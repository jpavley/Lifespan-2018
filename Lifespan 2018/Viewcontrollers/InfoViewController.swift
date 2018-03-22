//
//  InfoViewController.swift
//  Lifespan 2018
//
//  Created by jpavley12 on 2/24/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import UIKit
import WebKit

class InfoViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadHTMLFile(named: "web/info")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    fileprivate func loadHTMLFile(named name: String) {
        do {
            guard
                let filePath = Bundle.main.path(forResource: name, ofType: "html")
                else {
                    print("file read error")
                    return
            }
            let contents = try String(contentsOfFile: filePath, encoding: .utf8)
            let url = URL(fileURLWithPath: filePath)
            webView.loadHTMLString(contents as String, baseURL: url)
        } catch {
            print("cant load HTML file")
        }
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
