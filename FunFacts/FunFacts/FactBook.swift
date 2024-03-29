//
//  FactBook.swift
//  FunFacts
//
//  Created by Sebastian Röder on 18/10/14.
//  Copyright (c) 2014 Sebastian Röder. All rights reserved.
//

import Foundation

class FactBook {
    let funFacts = [
        "Ants stretch when they wake up in the morning.",
        "Ostriches can run faster than horses.",
        "Olympic gold medals are actually made mostly of silver.",
        "You are born with 300 bones; by the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "The state of Florida is bigger than England.",
        "Some penguins can leap 2-3 meters out of the water.",
        "On average, it takes 66 days to form a new habit.",
        "Mammoths still walked the earth when the Great Pyramid was being built.",
    ]

    var factIndex = 0

    func nextFunFact() -> String {
        let funFact = funFacts[factIndex]
        // TODO: Why does this only work in a class, not in a struct?
        factIndex = (factIndex + 1) % funFacts.count
        return funFact
    }
}