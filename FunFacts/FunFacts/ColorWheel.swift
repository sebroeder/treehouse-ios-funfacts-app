//
//  ColorWheel.swift
//  FunFacts
//
//  Created by Sebastian Röder on 18/10/14.
//  Copyright (c) 2014 Sebastian Röder. All rights reserved.
//

import Foundation
import UIKit

class ColorWheel {

    let colors: [UIColor]
    var colorIndex: Int

    init() {
        let teal     = UIColor(red:  90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0)
        let yellow   = UIColor(red: 222/255.0, green: 171/255.0, blue:  66/255.0, alpha: 1.0)
        let red      = UIColor(red: 223/255.0, green:  86/255.0, blue:  94/255.0, alpha: 1.0)
        let orange   = UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0)
        let darkGray = UIColor(red:  77/255.0, green:  75/255.0, blue:  82/255.0, alpha: 1.0)
        let purple   = UIColor(red: 105/255.0, green:  94/255.0, blue: 133/255.0, alpha: 1.0)
        let green    = UIColor(red:  85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0)

        colors = [teal, yellow, red, orange, darkGray, purple, green]
        colorIndex = 0
    }

    func nextColor() -> UIColor {
        let color = colors[colorIndex]
        // TODO: Why does this only work in a class, not in a struct?
        colorIndex = (colorIndex + 1) % colors.count
        return color
    }

}
