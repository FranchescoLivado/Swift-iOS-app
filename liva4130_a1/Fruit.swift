//
//  Fruit.swift
//  liva4130_a1
//
//  Created by Franchesco Livado on 2020-01-28.
//  Copyright © 2020 wlu. All rights reserved.
//

import Foundation

    struct Fruit{
        let fruitImageName:String
        let fruitName:String
        var likes = 0
        var dislikes = 0
        
        init(fruitName: String, fruitImageName: String){
            self.fruitImageName = fruitImageName
            self.fruitName = fruitName
            
        }
    }
