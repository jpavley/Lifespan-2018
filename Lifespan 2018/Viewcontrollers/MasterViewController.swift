//
//  MasterViewController.swift
//  Lifespan 2018
//
//  Created by jpavley12 on 2/24/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    private lazy var dayViewController: ClockViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "ClockViewController") as! ClockViewController
        self.add(asChildViewController: viewController)
        return viewController
    }()
    
    private lazy var weekViewController: ProfileViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        self.add(asChildViewController: viewController)
        return viewController
    }()
    
    private lazy var monthViewController: MonthViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "MonthViewController") as! MonthViewController
        self.add(asChildViewController: viewController)
        return viewController
    }()
    
    private lazy var yearViewController: YearViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "YearViewController") as! YearViewController
        self.add(asChildViewController: viewController)
        return viewController
    }()
    
    let daySegmentID = 0
    let weekSegmentID = 1
    let monthSegmentID = 2
    let yearSegmentID = 3
    
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
        currentSegmentID = daySegmentID
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
            
        case daySegmentID:
            remove(asChildViewController: dayViewController)

        case weekSegmentID:
            remove(asChildViewController: weekViewController)

        case monthSegmentID:
            remove(asChildViewController: monthViewController)

        case yearSegmentID:
            remove(asChildViewController: yearViewController)

        default:
            ()
        }
        
        switch segmentedControl.selectedSegmentIndex {
            
        case daySegmentID:
            add(asChildViewController: dayViewController)
            
        case weekSegmentID:
            add(asChildViewController: weekViewController)
            
        case monthSegmentID:
            add(asChildViewController: monthViewController)
            
        case yearSegmentID:
            add(asChildViewController: yearViewController)
            
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
