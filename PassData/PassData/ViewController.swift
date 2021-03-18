//
//  ViewController.swift
//  PassData
//
//  Created by Akshay Devkate on 18/03/21.
//  Copyright © 2021 Akshay Devkate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var nameTextField: UITextField!
        
    @IBOutlet weak var clearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // next button
        nextButton.layer.borderWidth = 2
        

        // clear button
        clearButton.layer.borderWidth = 2
        
        // text field
        nameTextField.layer.borderWidth = 2
        
        
        
        
    }

    
    
    
    // Next button tapped
    
    @IBAction func NextTapped(_ sender: Any) {
        
        // perform segue
        self.performSegue(withIdentifier: "InputVCToDisplayVC", sender: self)
        
        
    }
    
    
    
    
    // next button tapped
    @IBAction func ClearTapped(_ sender: Any) {
        
        self.nameTextField.text = ""
    }
    
  
    
    // override segue and pass data
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "InputVCToDisplayVC"){
            let displayVC = segue.destination as! DisplayViewController
            displayVC.name = nameTextField.text
            
        }
    }
}

