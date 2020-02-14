//
//  FruitCollection.swift
//  liva4130_a1
//
//  Created by Franchesco Livado on 2020-01-28.
//  Copyright © 2020 wlu. All rights reserved.
//

/* A2 Implementation
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
 */
import Foundation
import UIKit

class FruitCollection: NSObject, NSCoding {
    
    var collection = [Fruit]() // a collection is an array of fruits
    var current:Int = 0 // the current fruit in the collection (to be shown in the scene
    
    let collectionKey = "collectionKey"
    let currentKey = "currentKey"
    
    // MARK: - NSCoding methods
    override init(){
        super.init()
        setup()
        
    }
    
    required convenience init?(coder decoder: NSCoder) {
    self.init()
    collection = (decoder.decodeObject(forKey: collectionKey) as? [Fruit])!
    current = (decoder.decodeInteger(forKey: currentKey))
    }
    
    func encode(with acoder: NSCoder) {
        acoder.encode(collection, forKey: collectionKey)
        acoder.encode(current, forKey: currentKey)
    }
    
    func setup(){
        collection.append(Fruit(fruitName: "rambutan", fruitImage: UIImage(named:"images/rambutan")!, likes: 0, disLikes: 0)!)
        collection.append(Fruit(fruitName: "pineapple", fruitImage: UIImage(named:"images/pineapple")!, likes: 0, disLikes: 0)!)
        
        collection.append(Fruit(fruitName: "dragon fruit", fruitImage: UIImage(named:"images/dragon fruit")!, likes: 0, disLikes: 0)!)
        collection.append(Fruit(fruitName: "durian", fruitImage: UIImage(named:"images/durian")!, likes: 0, disLikes: 0)!)
        
    }
    
}
