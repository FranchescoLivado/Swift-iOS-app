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

    init(/*Fruit: Fruit, Index: Int*/){
        /*
        let index = FruitCollection.current
        if index == 0{
            FruitCollection.collection.insert(Fruit, at: index)
        }
        else{
            FruitCollection.collection.insert(Fruit, at: index+1)
        }*/
       
        FruitCollection.collection.append(Fruit(fruitName: "pineapple", fruitImageName: "images/pineapple"))
        FruitCollection.collection.append(Fruit(fruitName: "rambutan", fruitImageName: "images/rambutan"))
        FruitCollection.collection.append(Fruit(fruitName: "dragon fruit", fruitImageName: "images/dragon fruit"))
        FruitCollection.collection.append(Fruit(fruitName: "durian", fruitImageName: "images/durian"))
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
