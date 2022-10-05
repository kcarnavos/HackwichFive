//
//  ViewController.swift
//  HackwichFive
//
//  Created by Kaylene Carnavos on 10/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    
    
    var currentIndex = 0
    
  
   var favoriteFoodsArray = ["Pasta", "Sushi", "'Ulu", "Gyros", "Beyond Burgers"]
    
    
    //view.did.load = whatever we want set when the app first opens!!!!!!!!!
    
    @IBAction func buttonPressed(_ sender: Any) {
        if self.currentIndex < favoriteFoodsArray.count
        {
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            currentIndex += 1
        }
        else
        {
            print("button has been disabled")
            (buttonLabel!).isEnabled = false
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        topLabel.text = "My Favorite Foods"
        
        bottomLabel.text = favoriteFoodsArray[currentIndex]
        
        //on my own... what are we supposed to comment?? in my own words.. what?
        //Your line 30= so the programs recognizes all 5 foods?
        //Your line 32= so the app shows the names of food on the bottom label
        //Your line 34= each time the button is pressed, the program filters through list of foods once
        //Your line 38= once its gone through all the foods, it will print "button has been disabled"
        //Your line 39= actually disables the button once its gone through all the foods

    }


    
    
    
    
}

