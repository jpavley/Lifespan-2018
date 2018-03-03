//
//  MasterViewController.swift
//  Lifespan 2018
//
//  Created by jpavley12 on 2/24/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import UIKit

// TODO: On startup there are 3 call to create the ClockViewController!
//       Two removes() and an add(). Each time the ClockViewController and its
//       objects are re-created. On remove() does the ClockViewController
//       need to be created? Probably yes, so it can respond to willMove().

class MasterViewController: UIViewController {
    
    var userProfile = UserProfile()

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    private lazy var clockViewController: ClockViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "ClockViewController") as! ClockViewController
        self.add(asChildViewController: viewController)
        return viewController
    }()
    
    private lazy var profileViewController: ProfileViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        self.add(asChildViewController: viewController)
        return viewController
    }()
    
    private lazy var analysisViewController: AnalysisViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "AnalysisViewController") as! AnalysisViewController
        self.add(asChildViewController: viewController)
        return viewController
    }()
    
    private lazy var infoViewController: InfoViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "InfoViewController") as! InfoViewController
        self.add(asChildViewController: viewController)
        return viewController
    }()
    
    let clockSegmentID = 0
    let profileSegmentID = 1
    let analysisSegmentID = 2
    let infoSegmentID = 3
    
    var currentSegmentID = 0
    
    /// Add a child view controller to a container view controller.
    ///
    /// - Parameter viewController: child view controller
    private func add(asChildViewController viewController: UIViewController) {
        // upon adding child VC recieves willMove(toParentViewController:)
        addChildViewController(viewController)
        
        // container VC's view responsible for the size and position
        // of the child VS's view.
        view.addSubview(viewController.view)
        viewController.view.frame = view.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // let the child VC know the addition is complete
        viewController.didMove(toParentViewController: self)
    }
    
    
    /// Remove a child view controller from a container view controller
    ///
    /// - Parameter viewController: child view controller
    private func remove(asChildViewController viewController: UIViewController) {
        viewController.willMove(toParentViewController: nil)
        viewController.view.removeFromSuperview()
        viewController.removeFromParentViewController()
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        currentSegmentID = clockSegmentID
        setupView()
    }
    
    fileprivate func setupView() {
        setupSegmentedControl()
        updateView()
    }
    
    fileprivate func setupSegmentedControl() {
        segmentedControl.addTarget(self, action: #selector(selectionDidChange(_:)), for: .valueChanged)
        segmentedControl.selectedSegmentIndex = 0
    }
    
    @objc func selectionDidChange(_ sender: UISegmentedControl) {
        updateView()
    }
    
    fileprivate func updateView() {
        
        switch currentSegmentID {
            
        case clockSegmentID:
            remove(asChildViewController: clockViewController)

        case profileSegmentID:
            remove(asChildViewController: profileViewController)

        case analysisSegmentID:
            remove(asChildViewController: analysisViewController)

        case infoSegmentID:
            remove(asChildViewController: infoViewController)

        default:
            ()
        }
        
        switch segmentedControl.selectedSegmentIndex {
            
        case clockSegmentID:
            add(asChildViewController: clockViewController)
            
        case profileSegmentID:
            add(asChildViewController: profileViewController)
            
        case analysisSegmentID:
            add(asChildViewController: analysisViewController)
            
        case infoSegmentID:
            add(asChildViewController: infoViewController)
            
        default:
            ()
        }
        
        currentSegmentID = segmentedControl.selectedSegmentIndex
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
