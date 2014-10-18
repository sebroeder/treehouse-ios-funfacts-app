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
    @IBOutlet weak var funFactButton: UIButton!

    var factBook = FactBook()
    var colorWheel = ColorWheel()

    override func viewDidLoad() {
        super.viewDidLoad()
        displayNextFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAnotherFunFact() {
        displayNextFact()
    }

    func displayNextFact() {
        let color = colorWheel.nextColor()
        view.backgroundColor = color
        funFactButton.tintColor = color
        funFactLabel.text = factBook.nextFunFact()
    }

}