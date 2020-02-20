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
    
    var foodList = ["ice cream", "pancakes", "potatoes", "fried rice", "poi"]
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: Any)
    {
        self.bottomLabel.text = foodList[currentIndex]
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.topLabel.text = "My Favorite Foods"
    }


}

