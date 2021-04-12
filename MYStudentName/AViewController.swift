//
//  ViewController.swift
//  MYStudentName
//
//  Created by Akshay Devkate on 11/04/21.
//  Copyright © 2021 Akshay Devkate. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

   
    @IBOutlet weak var NameTwo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
        
    }

    @IBAction func ButtonTapped(_ sender: Any) {
        // next button tapped
    self.performSegue(withIdentifier: "FirstVC", sender: self)
    }
    
    // this function will override segue and trnasfer name form AViewController to BViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if (segue.identifier == "FirstVC"){
              let displayVC = segue.destination as! BViewController
           
            //Assigns the name entered in the AViewController to display it in BViewController
            
            displayVC.Full = NameTwo.text
              
          }
      }
}
