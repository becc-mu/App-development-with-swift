//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Rebecca Mulugeta on 22/04/2018.
//  Copyright © 2018 Rebecca Mulugeta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var changeTitle: UIButton!
    @IBOutlet weak var changeBack: UIButton!
    
    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text = "This app rocks!"
    }
    
    @IBAction func changeBack(_ sender: Any) {
        mainLabel.text = ""
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

