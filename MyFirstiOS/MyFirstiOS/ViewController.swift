//
//  ViewController.swift
//  MyFirstiOS
//
//  Created by 北田晴佳 on 2018/05/14.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomNumbers()
    }
    
    fileprivate func generateRandomNumbers() {
        // OnCreate
        // generte 2 random nnumbers and display to each button
        let rand1 = arc4random_uniform(100)
        let rand2 = arc4random_uniform(100)
        leftButton.setTitle(String(rand1), for: .normal)
        rightButton.setTitle(String(rand2), for: .normal)
    }
    
    private func checkTheAnswer(_ rightButt: Bool) {
        if let left = leftButton.titleLabel?.text, let right = rightButton.titleLabel?.text {
            if rightButt {
                if Int(left)! < Int(right)! {
                    // correct
                    score += 1
                } else {
                    // incorrect
                    score -= 1
                }
            } else {
                if Int(left)! > Int(right)! {
                    // correct
                    score += 1
                } else {
                    // incorrect
                    score -= 1
                }
            }
        }
        scoreLabel.text = "Score: \(score)"
        generateRandomNumbers()
    }

    @IBAction func leftButtonClicked(_ sender: UIButton) {
        checkTheAnswer(false)
    }
    
    @IBAction func rightButtonClicked(_ sender: UIButton) {
        checkTheAnswer(true)
    }
    
}

