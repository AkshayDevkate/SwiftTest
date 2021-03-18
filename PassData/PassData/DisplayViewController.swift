//
//  DisplayViewController.swift
//  PassData
//
//  Created by Akshay Devkate on 18/03/21.
//  Copyright © 2021 Akshay Devkate. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    

    
    @IBOutlet weak var ans: UILabel!
    
    var name: String?
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // name label
               ans.layer.borderWidth = 2

        // Do any additional setup after loading the view.
        ans.text = name
        
       
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
