//
//  ViewController.swift
//  ResetFrameToItsConstraints
//
//  Created by ERU on 2019/05/26.
//  Copyright © 2019 HackingGate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttonCenterXCons: NSLayoutConstraint!
    @IBOutlet weak var centerButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func centerButtonClicked(_ sender: UIButton) {
        for con in sender.constraints {
            con.isActive = true
            print("con=\(con)")
        }
        UIView.animate(withDuration: 1.5, animations: {
            sender.frame.origin.y = 20.0
            self.buttonCenterXCons.isActive = false
        }) { (completed) in
            // TODO: return to its original positon use constrains
            // Trying to solve https://stackoverflow.com/q/48291941/4063462
            // Donnie's implement, or another way to slove
            self.buttonCenterXCons.isActive = true
            self.centerButton.setNeedsLayout()
        }
        
    }

}

