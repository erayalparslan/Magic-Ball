//
//  ViewController.swift
//  Magic Ball
//
//  Created by ruroot on 6/8/18.
//  Copyright © 2018 Eray Alparslan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var ballIndex: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        roll()
    }

    @IBOutlet weak var ballImage: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        roll()
    }
    func roll(){
        ballIndex = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named: ballArray[ballIndex])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        roll()
    }
    
    
}

