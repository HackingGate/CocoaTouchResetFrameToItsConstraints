//
//  ViewController.swift
//  ResetFrameToItsConstraints
//
//  Created by ERU on 2019/05/26.
//  Copyright © 2019 HackingGate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var centerButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func centerButtonClicked(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1.5, animations: {
            sender.frame.origin.y = 20.0
        }) { (completed) in
            // TODO: return to its original positon use constrains
            // Trying to solve https://stackoverflow.com/q/48291941/4063462
            
        }
        
    }

}

