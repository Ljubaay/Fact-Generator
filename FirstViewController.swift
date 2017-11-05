//
//  FirstViewController.swift
//  Fact Generator
//
//  Created by Macbook Pro on 10/16/17.
//  Copyright © 2017 Macbook Pro. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        funFactLabel.text = factProvider.randomFact()
        funFactButton.tintColor = UIColor (red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showFact(_ sender: Any) {
        funFactLabel.text = factProvider.randomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
}
