//
//  ViewController.swift
//  SpringAnimation
//
//  Crea/Users/krllgslnkv/Desktop/SpringAnimation/SpringAnimationted by Kirill Guselnikov on 24.11.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animationValue: SpringLabel!
    @IBOutlet var animationText: SpringLabel!
    @IBOutlet var animationView: SpringImageView!
    
    private var animation = Animation.randomAnimation()
    
    @IBAction func startAnimation(_ sender: UIButton) {

        animationValue.text = animation.valueAnimation
      
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animation = Animation.randomAnimation()
        sender.setTitle("Start \(animation.preset)", for: .normal)

    }
    

}

