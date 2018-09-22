//
//  FirstViewController.swift
//  image animations
//
//  Created by К.К. on 22.09.18.
//  Copyright © 2018 TeamK. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.image = UIImage(named: "frame_2_delay-0.07s.png")
    }

    var counter:Int = 2
    @IBAction func Next(_ sender: Any) {
        if counter < 45 {
            counter += 1
        } else {
            counter = 2
        }
        imageView.image = UIImage(named: "frame_\(counter)_delay-0.07s.png")
        
    }
    
}

