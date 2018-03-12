//
//  ViewController.swift
//  HackWhichSix
//
//  Created by Mariah Hortillano on 3/5/18.
//  Copyright © 2018 Mariah Hortillano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var slider: UISlider!
    //create a variable that can hold the value of the slider
    var currentValue: Int = 0
    
    //create a variable to hold the target value
    var targetValue: Int = 0
    
    @IBOutlet var targetLabel: UILabel!
    func updateTargetLabel() {
       targetLabel.text = String(targetValue)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //set currentValue to the initial value of the slider
        currentValue = lroundf(slider.value)
        //call startNewRound
        startNewRound()
        //set constant variable to store slider's image:
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, for: .normal)
    }

    func startNewRound() {
        
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        
        updateTargetLabel()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SliderHasMoved(_ sender: Any) {
        print("The Value of the slider is:\(slider.value)")
        currentValue = lroundf(slider.value)
    }
    
    @IBAction func MyGuessButtonPressed(_ sender: Any) {
        
        //5. New Variable message that displays a message that includes currentValue
        let message = "The Value is: \(currentValue)" + "\nThe target Value is: \(targetValue)"
        
        //1. Create alert View
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        
        //2. Button that user taps to dismuss view controller
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        //3. Add the button to the alertview
        alert.addAction(action)
        
        //4. present alertview on the screen
        present(alert, animated: true, completion: nil)
        
        startNewRound()
       
    }
}
