//
//  ViewController.swift
//  AppEventCount
//
//  Created by Gina Sprint on 10/29/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var didFinishLaunchingLabel: UILabel!
    var didLaunchCount = 0

    @IBOutlet var willResignActiveLabel: UILabel!
    var willResignActiveCount = 0

    @IBOutlet var didEnterBackgroundLabel: UILabel!
    var didEnterBackgroundCount = 0

    @IBOutlet var willEnterForegroundLabel: UILabel!
    var willEnterForegroundCount = 0

    @IBOutlet var didBecomeActiveLabel: UILabel!
    var didBecomeActiveCount = 0

    @IBOutlet var willTerminateLabel: UILabel!
    var willTerminateCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateView()
    }

    func updateView() {
        didFinishLaunchingLabel.text = "The app launched \(didLaunchCount) time(s)"
        willResignActiveLabel.text = "The app will resign active \(willResignActiveCount) time(s)"
        didEnterBackgroundLabel.text = "The app did enter background \(didEnterBackgroundCount) time(s)"
        willEnterForegroundLabel.text = "The app will enter foreground \(willEnterForegroundCount) time(s)"
        didBecomeActiveLabel.text = "The app did become active \(didBecomeActiveCount) time(s)"
        willTerminateLabel.text = "The app will terminate \(willTerminateCount) time(s)"
    }

}

