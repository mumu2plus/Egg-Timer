//
//  ViewController.swift
//  Egg Timer
//
//  Created by 加加林 on 2019/3/27.
//  Copyright © 2019 mumu2plus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var time = 210

    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func decreaseTimer() {
        
        if time > 0 {
            
            time -= 1
            
            timerLabel.text = String(time)
            
        } else {
            
            timer.invalidate()
            
        }
        
        
        
    }

    @IBAction func play(_ sender: UIBarButtonItem) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(_ sender: UIBarButtonItem) {
        
        timer.invalidate()
        
    }
    
    @IBAction func plusTen(_ sender: UIBarButtonItem) {
        
        time += 10
        
        timerLabel.text = String(time)
        
    }
    
    @IBAction func minusTen(_ sender: UIBarButtonItem) {
        
        if time > 10 {
            
            time -= 10
            
            timerLabel.text = String(time)
            
        }
        
    }
    
    @IBAction func resetTimer(_ sender: UIBarButtonItem) {
        
        time = 210
        
        timerLabel.text = String(time)
        
    }
    
    
}

