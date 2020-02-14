//
//  ViewController.swift
//  liva4130_a1
//
//  Created by Franchesco Livado on 2020-01-13.
//  Copyright © 2020 wlu. All rights reserved.
//

import UIKit

var counter = 1;
/*
class fruitStats{
    var likes: Int
    var dislikes: Int
    var image: UIImage?
    init(fruit: UIImage? = nil){
        self.likes = 0;
        self.dislikes = 0;
        self.image = fruit;
    }
}
var pineapple = fruitStats()

var durian = fruitStats()

var dragFruit = fruitStats()

var rambutan = fruitStats()
*/
let imgRambutan = UIImage(named:"images/rambutan")
let imgPineapple = UIImage(named:"images/pineapple")
let imgDragFruit = UIImage(named:"images/dragon fruit")
let imgDurian = UIImage(named:"images/durian")

var currIndex = SharingFruitCollection.sharedFruitCollection.fruitCollection!.current
var currFruit = (SharingFruitCollection.sharedFruitCollection.fruitCollection?.collection[currIndex])
class ViewController: UIViewController {
    
    @IBOutlet weak var dislikeLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var fruitImage: UIImageView!
    
    var fruitCollection = FruitCollection()
    var sharedFruitCollection : FruitCollection?
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
            sharedFruitCollection = SharingFruitCollection.sharedFruitCollection.fruitCollection // if we forget thisline, the fruit collection is not the same collection of the sharing fruit collection!
//        fruitImage.image = currFruit?.fruitImage
//        likeLabel.text = String(currFruit!.likes)
//        dislikeLabel.text = String(currFruit!.disLikes)
        
    }
    
    override func viewDidLoad() {
        

        super.viewDidLoad()
        SharingFruitCollection.sharedFruitCollection.loadFruitCollection()
        _ = SharingFruitCollection()
        SharingFruitCollection.sharedFruitCollection.fruitCollection = FruitCollection() //initialize only once
        // set up the view } //viewDidLoad
     
        /*
        
        let fruit = FruitCollection.currentFruit()
        
        if fruit.fruitImageName == "images/rambutan" {
            fruitImage.image = imgRambutan
        }
        if fruit.fruitImageName == "images/pineapple" {
            fruitImage.image = imgPineapple
        }
        if fruit.fruitImageName == "images/dragon fruit" {
            fruitImage.image = imgDragFruit
        }
        if fruit.fruitImageName == "images/durian" {
            fruitImage.image = imgDurian
        }
         */
    }
    
 
    @IBAction func dislike(_ sender: Any) {
        currIndex = SharingFruitCollection.sharedFruitCollection.fruitCollection!.current
        currFruit = (SharingFruitCollection.sharedFruitCollection.fruitCollection?.collection[currIndex])
        currFruit!.disLikes = currFruit!.disLikes + 1
        dislikeLabel.text = String(currFruit!.disLikes)

       //SharingFruitCollection.sharedFruitCollection.saveFruitCollection()

    }
    
    @IBAction func like(_ sender: Any) {
        currIndex = SharingFruitCollection.sharedFruitCollection.fruitCollection!.current
        currFruit = (SharingFruitCollection.sharedFruitCollection.fruitCollection?.collection[currIndex])
        currFruit!.likes = currFruit!.likes + 1
        likeLabel.text = String(currFruit!.likes)
        //SharingFruitCollection.sharedFruitCollection.saveFruitCollection()
    }
    
        
    @IBAction func next(_ sender: Any) {
        //let arraySize = ((SharingFruitCollection.sharedFruitCollection.fruitCollection?.collection.count)!)-1
        SharingFruitCollection.sharedFruitCollection.fruitCollection!.current += 1
        var currIndex = (SharingFruitCollection.sharedFruitCollection.fruitCollection!.current)
        //currFruit = (SharingFruitCollection.sharedFruitCollection.fruitCollection?.collection[currIndex])
        if (currIndex > ((SharingFruitCollection.sharedFruitCollection.fruitCollection?.collection.count)!-1)){
            SharingFruitCollection.sharedFruitCollection.fruitCollection!.current = 0
            currIndex = 0
        }
//        if (currIndex == arraySize){
//            currIndex = 0
//        }
//        else{
//            currIndex += 1
//        }
        print(currIndex)
//        print(arraySize)

        currFruit = (SharingFruitCollection.sharedFruitCollection.fruitCollection?.collection[currIndex])
        fruitImage.image = currFruit?.fruitImage
        likeLabel.text = String(currFruit!.likes)
        dislikeLabel.text = String(currFruit!.disLikes)
        
        
    }

    
}
