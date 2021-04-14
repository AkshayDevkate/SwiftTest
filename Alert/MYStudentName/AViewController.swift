//
//  ViewController.swift
//  MYStudentName
//
//  Created by Akshay Devkate on 11/04/21.
//  Copyright © 2021 Akshay Devkate. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

  // create a button action here which will init aalert when tapped on the button
    @IBAction func ButtonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "New Alert", message: "You can write an alert message here.", preferredStyle: .alert)

        // You can add actions using the following code
        alert.addAction(UIAlertAction(title: NSLocalizedString("Close Alert", comment: "This closes alert"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))

        // This part of code inits alert view
        self.present(alert, animated: true, completion: nil)
    }
    
}
