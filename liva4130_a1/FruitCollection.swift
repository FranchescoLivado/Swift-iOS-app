//
//  FruitCollection.swift
//  liva4130_a1
//
//  Created by Franchesco Livado on 2020-01-28.
//  Copyright © 2020 wlu. All rights reserved.
//

import Foundation
struct FruitCollection{
    static var collection = [Fruit]()
    static var current:Int = 0

    init(){
        
    }

    static func currentFruit() -> Fruit{
        let fruit = FruitCollection.collection[FruitCollection.current]
        return fruit
    }

    static func setCurrentIndex(to index: Int){
        return FruitCollection.current = index
    }
    
    static func getCurrentIndex() -> Int{
        return FruitCollection.current
    }
}
