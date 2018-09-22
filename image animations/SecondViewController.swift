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
    @IBAction func FadeIn(_ sender: Any) {
        imageView.alpha = 0
        UIView.animate(withDuration: 1, animations: {
            self.imageView.alpha = 1
        })
    }
    @IBAction func SlideIn(_ sender: Any) {
        imageView.center = CGPoint(x: imageView.center.x - 500, y: imageView.center.y )
        UIView.animate(withDuration: 2, animations: {
            self.imageView.center = CGPoint(x: self.imageView.center.x + 500, y: self.imageView.center.y )
        })
    }
    @IBAction func Grow(_ sender: Any) {
        let width  = imageView.frame.size.width
        let height = imageView.frame.size.height
        
        imageView.frame = CGRect(x: imageView.frame.origin.x, y: imageView.frame.origin.y, width: 0, height: 0)
        UIView.animate(withDuration: 2, animations: {
            self.imageView.frame = CGRect(x: self.imageView.frame.origin.x, y: self.imageView.frame.origin.y, width: width, height: height)
        })    }
    
    // stack the image set for the animation into array
    // set folder "Relative to Group"
    //for index in 2...45{
    //var prefixName = "frame_"
    //let suffuxName = "_delay-0.07s.png"
    //prefixName += String(index)+suffuxName
    //imageArray.append( UIImage(named: prefixName)!)
    //}
    // animate
    //self.ImageView.animationImages = imageArray
    //self.ImageView.animationDuration = 4

}

