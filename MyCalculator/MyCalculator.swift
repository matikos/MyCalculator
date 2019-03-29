//
//  MyCalculator.swift
//  MyCalculator
//
//  Created by Your Host on 3/29/19.
//  Copyright © 2019 Mati Kos. All rights reserved.
//

import Foundation
var outcome: Double = 0

func toInt() -> Int? {
    if outcome > Double(Int.min) && outcome < Double(Int.max) {
        return Int(outcome)
    } else {
        return nil
    }
}

var EndResult = toInt()
