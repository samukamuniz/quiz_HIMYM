//
//  ExtraFunctions.swift
//  VP2_Quiz
//
//  Created by ios on 17/04/17.
//  Copyright © 2017 Samuel. All rights reserved.
//

import Foundation

extension Array
{
    mutating func shuffle()
    {
        for _ in 0..<10
        {
            sort { (_,_) in arc4random() < arc4random() }
        }
    }
}
