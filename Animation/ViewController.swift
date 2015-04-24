//
//  ViewController.swift
//  Animation
//
//  Created by jim Veneskey on 4/24/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var button: UIButton!

    @IBAction func buttonPressed(sender: UIButton) {
        // Create animation block to fade out when button is pressed
        UIView.animateWithDuration(3.0, animations: {
            // self.button.alpha = 0
            let grow = CGAffineTransformMakeScale(4,4)
            let angle = CGFloat(45)
            let rotate = CGAffineTransformMakeRotation(angle)
            self.button.transform = CGAffineTransformConcat(grow, rotate)
            self.button.alpha = 0
        })
        
    }
}

