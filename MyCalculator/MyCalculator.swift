//
//  MyCalculator.swift
//  MyCalculator
//
//  Created by Your Host on 3/29/19.
//  Copyright © 2019 Mati Kos. All rights reserved.
//

import Foundation
var outcome: Double = 0

func toInt(outcome lol: Double) -> Int? {
    if lol > Double(Int.min) && lol < Double(Int.max) {
        return Int(lol)
    } else {
        return nil
    }
        
}


