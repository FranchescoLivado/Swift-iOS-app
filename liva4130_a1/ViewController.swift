//
//  ViewController.swift
//  liva4130_a1
//
//  Created by Franchesco Livado on 2020-01-13.
//  Copyright © 2020 wlu. All rights reserved.
//

import UIKit
var counter = 1;

let imgRambutan = UIImage(named:"images/rambutan")
let imgPineapple = UIImage(named:"images/pineapple")
let imgDragFruit = UIImage(named:"images/dragon fruit")
let imgDurian = UIImage(named:"images/durian")

class fruitStats{
    var likes: Int
    var dislikes: Int
    var image: UIImage
    init(fruit: UIImage){
        self.likes = 0;
        self.dislikes = 0;
        self.image = fruit;
    }
}
var imgSet = [imgRambutan, imgPineapple, imgDragFruit, imgDurian]

let pineapple = fruitStats(fruit: imgPineapple!)

let durian = fruitStats(fruit: imgDurian!)

let dragFruit = fruitStats(fruit: imgDragFruit!)

let rambutan = fruitStats(fruit: imgRambutan!)

var fruitSet = [pineapple, durian, dragFruit, rambutan]

class ViewController: UIViewController {

    @IBOutlet weak var dislikeLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var fruitImage: UIImageView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    

    
    
    @IBAction func dislike(_ sender: Any) {
        for fruit in fruitSet{
            if fruit.image == imgDurian{
                fruit.dislikes = fruit.dislikes + 1
                dislikeLabel.text = String(fruit.dislikes)            }
            if fruit.image == imgDragFruit{
                fruit.dislikes = fruit.dislikes + 1
                 dislikeLabel.text = String(fruit.dislikes)            }
            if fruit.image == imgPineapple{
                fruit.dislikes = fruit.dislikes + 1
                 dislikeLabel.text = String(fruit.dislikes)            }
            if fruit.image == imgRambutan{
                fruit.dislikes = fruit.dislikes + 1
                 dislikeLabel.text = String(fruit.dislikes)            }
        }
        
    }
    
    @IBAction func like(_ sender: Any) {
             for fruit in fruitSet{
                      if fruit.image == imgDurian{
                          fruit.likes = fruit.likes + 1
                        likeLabel.text = String(fruit.likes)                      }
                      if fruit.image == imgDragFruit{
                          fruit.likes = fruit.likes + 1
                          likeLabel.text = String(fruit.likes)                         }
                      if fruit.image == imgPineapple{
                          fruit.likes = fruit.likes + 1
                          likeLabel.text = String(fruit.likes)                         }
                      if fruit.image == imgRambutan{
                          fruit.likes = fruit.likes + 1
                          likeLabel.text = String(fruit.likes)                         }
           }
        
    }
    
    @IBAction func next(_ sender: Any) {
                counter += 1
        
        if (counter == 1){
            fruitImage.image = imgPineapple

        }
        else if (counter == 2){
            fruitImage.image = imgDurian
        }
        else if (counter == 3){
            fruitImage.image = imgDragFruit

        }
        else{
            counter = 0
            fruitImage.image = imgRambutan
        }
        
    }
    
}
