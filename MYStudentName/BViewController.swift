//
//  BViewController.swift
//  MYStudentName
//
//  Created by Akshay Devkate on 11/04/21.
//  Copyright © 2021 Akshay Devkate. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    
    @IBOutlet weak var Name: UITextField!
    
    var Full: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        Name.text = Full
        
    }
    

    

}
