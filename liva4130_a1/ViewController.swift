//
//  ViewController.swift
//  liva4130_a1
//
//  Created by Franchesco Livado on 2020-01-13.
//  Copyright © 2020 wlu. All rights reserved.
//

import UIKit

var counter = 1;



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

let imgRambutan = UIImage(named:"images/rambutan")
let imgPineapple = UIImage(named:"images/pineapple")
let imgDragFruit = UIImage(named:"images/dragon fruit")
let imgDurian = UIImage(named:"images/durian")

class ViewController: UIViewController {



    @IBOutlet weak var dislikeLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var fruitImage: UIImageView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let imgRambutan = UIImage(named:"images/rambutan")
        let imgPineapple = UIImage(named:"images/pineapple")
        let imgDragFruit = UIImage(named:"images/dragon fruit")
        let imgDurian = UIImage(named:"images/durian")
        pineapple = fruitStats(fruit: imgPineapple!)
        durian  = fruitStats(fruit: imgDurian!)
        dragFruit = fruitStats(fruit: imgDragFruit!)
        rambutan = fruitStats(fruit: imgRambutan!)
        fruitImage.image = imgPineapple
    }
    
    

    

    
    
    @IBAction func dislike(_ sender: Any) {
    
        if fruitImage.image == imgDurian{
                durian.dislikes = durian.dislikes + 1
                dislikeLabel.text = String(durian.dislikes)
                likeLabel.text = String(durian.likes)
            
        }
        if fruitImage.image == imgDragFruit{
                dragFruit.dislikes = dragFruit.dislikes + 1
                dislikeLabel.text = String(dragFruit.dislikes)
                likeLabel.text = String(dragFruit.likes)
            
        }
        if fruitImage.image == imgPineapple{
                pineapple.dislikes = pineapple.dislikes + 1
                dislikeLabel.text = String(pineapple.dislikes)
                likeLabel.text = String(pineapple.likes)
            
        }
        if fruitImage.image == imgRambutan{
                rambutan.dislikes = rambutan.dislikes + 1
                dislikeLabel.text = String(rambutan.dislikes)
                likeLabel.text = String(rambutan.likes)
        }
        
        
    }
    
    @IBAction func like(_ sender: Any) {
        
            if fruitImage.image == imgDurian{
                        durian.likes = durian.likes + 1
                        likeLabel.text = String(durian.likes)
                        dislikeLabel.text = String(durian.dislikes)
                
            }
            if fruitImage.image == imgDragFruit{
                        dragFruit.likes = dragFruit.likes + 1
                        likeLabel.text = String(dragFruit.likes)
                        dislikeLabel.text = String(dragFruit.dislikes)
            }
            if fruitImage.image == imgPineapple{
                        pineapple.likes = pineapple.likes + 1
                        likeLabel.text = String(pineapple.likes)
                        dislikeLabel.text = String(pineapple.dislikes)
                
            }
            if fruitImage.image == imgRambutan{
                        rambutan.likes = rambutan.likes + 1
                        likeLabel.text = String(rambutan.likes)
                        dislikeLabel.text = String(rambutan.dislikes)
                
            }
                
        
        
    }
    
    
    @IBAction func next(_ sender: Any) {
                counter += 1
        
        if (counter == 1){
            fruitImage.image = imgPineapple
            likeLabel.text = String(pineapple.likes)
            dislikeLabel.text = String(pineapple.dislikes)
        }
        else if (counter == 2){
            fruitImage.image = imgDurian
            likeLabel.text = String(durian.likes)
            dislikeLabel.text = String(durian.dislikes)
        }
        else if (counter == 3){
            fruitImage.image = imgDragFruit
            likeLabel.text = String(dragFruit.likes)
            dislikeLabel.text = String(dragFruit.dislikes)
        }
        else{
            counter = 0
            fruitImage.image = imgRambutan
            likeLabel.text = String(rambutan.likes)
            dislikeLabel.text = String(rambutan.dislikes)
        }
        
    }
    
}
