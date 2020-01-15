//
//  ViewController.swift
//  liva4130_a1
//
//  Created by Franchesco Livado on 2020-01-13.
//  Copyright © 2020 wlu. All rights reserved.
//

import UIKit

var imgRambutan = UIImage(named: "images/durian")
var imgPineapple = UIImage(named:  "images/pineapple")
var imgDragFruit = UIImage(named:  "images/dragon_fruit")
var imgDurian = UIImage(named: "images/durian")

var imgSet = [imgRambutan, imgPineapple, imgDragFruit, imgDurian]

var pineapple = fruitStats(fruit: imgPineapple ?? <#default value#>)

var durian = fruitStats(fruit: imgDurian ?? <#default value#>)

var dragFruit = fruitStats(fruit: imgDragFruit ?? <#default value#>)

var rambutan = fruitStats(fruit: imgRambutan ?? <#default value#>)

var fruitSet = [pineapple, durian, dragFruit, rambutan]

class fruitStats{
    var likes: Int
    var dislikes: Int
    var image: UIImage??
    init(fruit: UIImage){
        self.likes = 0;
        self.dislikes = 0;
        self.image = fruit;
    }
}
class ViewController: UIViewController {
    @IBOutlet weak var likeButton: UILabel!
    @IBOutlet weak var dislikeButton: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func like(_ sender: Any) {
        
        for fruit in fruitSet{
            if fruit.image == imgDurian{
                fruit.likes = fruit.likes + 1
                
            }
            if fruit.image == imgDragFruit{
                fruit.likes = fruit.likes + 1
                
            }
            if fruit.image == imgPineapple{
                fruit.likes = fruit.likes + 1
                
            }
            if fruit.image == imgRambutan{
                fruit.likes = fruit.likes + 1
                
            }
        }
    }
    
    @IBAction func dislike(_ sender: Any) {
        for fruit in fruitSet{
            if fruit.image == imgDurian{
                fruit.dislikes = fruit.dislikes + 1
                
            }
            if fruit.image == imgDragFruit{
                fruit.dislikes = fruit.dislikes + 1
                
            }
            if fruit.image == imgPineapple{
                fruit.dislikes = fruit.dislikes + 1
                
            }
            if fruit.image == imgRambutan{
                fruit.dislikes = fruit.dislikes + 1
                
            }
        }
    }
    
    @IBAction func next(_ sender: Any) {
        
    }
}

