//
//  ViewController.swift
//  Day07_UI_exercises
//
//  Created by Hoang Tung on 10/27/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var pauseButton: UIButton!
    
    @IBOutlet weak var restartButton: UIButton!
    
    var timer: Timer!
    
    var count: Int = 0
    
    var startOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designButton(buttons: [startButton, pauseButton, restartButton])
    }

    func designButton(buttons: [UIButton]) {
        for button in buttons {
            button.layer.borderWidth = 2
            button.layer.cornerRadius = 16
            button.layer.borderColor = UIColor.systemPink.cgColor
        }
    }
    
    @objc func runTimer() {
        count += 1
        countLabel.text = String(count)
    }
    
    @IBAction func onStart(_ sender: Any) {
        if !startOn {
            startOn = true
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
        }
    }
    
    
    @IBAction func onPause(_ sender: Any) {
        timer.invalidate()
        startOn = false
    }
    
    @IBAction func onRestart(_ sender: Any) {
        countLabel.text = "0"
        count = 0
    }
    
}

