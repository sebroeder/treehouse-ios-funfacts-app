//
//  ViewController.swift
//  FunFacts
//
//  Created by Sebastian Röder on 17/10/14.
//  Copyright (c) 2014 Sebastian Röder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAnotherFunFact() {
        funFactLabel.text = "Another fun fact!"
    }

}

