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

var currIndex = SharingFruitCollection.sharedFruitCollection.fruitCollection!.getIndex()
var currFruit = (SharingFruitCollection.sharedFruitCollection.fruitCollection?.getFruit())
var sharedFruitCollection : FruitCollection?

class ViewController: UIViewController {
    
    @IBOutlet weak var dislikeLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var fruitImage: UIImageView!
    
    var fruitCollection = FruitCollection()
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
            sharedFruitCollection = SharingFruitCollection.sharedFruitCollection.fruitCollection // if we forget thisline, the fruit collection is not the same collection of the sharing fruit collection!

        SharingFruitCollection.sharedFruitCollection.loadFruitCollection()
    }
    
    override func viewDidLoad() {
        

        super.viewDidLoad()
        _ = SharingFruitCollection()
        SharingFruitCollection.sharedFruitCollection.fruitCollection = FruitCollection()
        //initialize only once
        SharingFruitCollection.sharedFruitCollection.loadFruitCollection()
        
        sharedFruitCollection = SharingFruitCollection.sharedFruitCollection.fruitCollection
        
        //currFruit = (sharedFruitCollection!.getFruit())
        fruitImage.image = currFruit?.returnUIimage()
        likeLabel.text = String(currFruit!.checkLikes())
        dislikeLabel.text = String(currFruit!.checkDislikes())
        

    }
    
 
    @IBAction func dislike(_ sender: Any) {
        
        //currFruit = (sharedFruitCollection!.getFruit())
        currFruit!.upDislike()

        dislikeLabel.text = String(currFruit!.checkDislikes())

       SharingFruitCollection.sharedFruitCollection.saveFruitCollection()

    }
    
    @IBAction func like(_ sender: Any) {
        
        //currFruit = (sharedFruitCollection!.getFruit())
        currFruit!.upLike()
        likeLabel.text = String(currFruit!.checkLikes())

        SharingFruitCollection.sharedFruitCollection.saveFruitCollection()
    }
    
        
    @IBAction func next(_ sender: Any) {
        //increments current fruitCollection index
        sharedFruitCollection!.incrementCurrent()
        
        //getIndex() returns current index of collection
        let currIndex = (sharedFruitCollection!.getIndex())
        
        //if current index > arraySize
        if (currIndex > (sharedFruitCollection!.arraySize()-1)){
            sharedFruitCollection!.setIndex(index: 0)
        }

        print(currIndex)


        currFruit = (sharedFruitCollection?.getFruit())
        fruitImage.image = currFruit?.returnUIimage()
        likeLabel.text = String(currFruit!.checkLikes())
        dislikeLabel.text = String(currFruit!.checkDislikes())
        
        SharingFruitCollection.sharedFruitCollection.saveFruitCollection()
        
    }

    
}
