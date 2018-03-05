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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        let message = "The Value is: \(currentValue)"
        
        //1. Create alert View
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        
        //2. Button that user taps to dismuss view controller
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        //3. Add the button to the alertview
        alert.addAction(action)
        
        //4. present alertview on the screen
        present(alert, animated: true, completion: nil)
        
       
    }
    
}

