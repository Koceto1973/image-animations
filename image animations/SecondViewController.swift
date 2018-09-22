//
//  SecondViewController.swift
//  image animations
//
//  Created by К.К. on 22.09.18.
//  Copyright © 2018 TeamK. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    var timer = Timer()
    var counter:Int = 2
    
    @IBAction func buttonClick(_ sender: Any) {
        if button.titleLabel?.text == "Play" {
            button.setTitle("Stop", for: .normal )
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.processTimer), userInfo: nil, repeats: true)
        } else {
            button.setTitle("Play", for: .normal )
            timer.invalidate()
        }
    }
    
    @objc func processTimer(){
        imageView.image = UIImage(named: "frame_\(counter)_delay-0.07s.png")
        counter += 1
        if counter == 46 {
            counter = 2
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.image = UIImage(named: "frame_2_delay-0.07s.png")
    }


}

