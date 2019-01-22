//
//  RippleViewController.swift
//  Animation
//
//  Created by Myunggu Kim on 18/01/2019.
//  Copyright © 2019 myunggukim. All rights reserved.
//

import UIKit

class RippleViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func applyRippleEffect(_ sender: Any) {
        rippleEffect()
    }
    
    func rippleEffect() {
        let animation = CATransition()
        animation.duration = 2.0
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        animation.type = CATransitionType(rawValue: "rippleEffect")
        imageView.layer.add(animation, forKey: nil)
    }

}

