//
//  ViewController.swift
//  HackwichFive
//
//  Created by Rhysa Lee on 2/20/20.
//  Copyright © 2020 Rhysa Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var currentIndex: Int = 0
    
    var foodList = ["ice cream", "pancakes", "potatoes", "poke", "poi"]
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.topLabel.text = "My Favorite Foods"
    }

//Connection of the button to the code
    @IBAction func buttonPressed(_ sender: Any)
    {
//Changing the text of the bottom label to the things listed in the array & listing the first one since the currentIndex was set to 0
        self.bottomLabel.text = foodList[currentIndex]
 
//If-else statement that if the currentIndex is less than the count of the foodList (= 5)
               if self.currentIndex < self.foodList.count
               {
//Then it will add 1 to the currentIndex & the button will read "Next"
                   currentIndex += 1
                   buttonLabel.setTitle("Next", for: UIControl.State.normal)
               }
//If the currentIndex is not less than the count of the foodList (= 5)
               else
               {
//The button is disabled
                  (sender as! UIButton).isEnabled=false
               }
    }
}

