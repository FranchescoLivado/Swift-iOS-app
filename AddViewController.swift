//
//  AddViewController.swift
//  liva4130_a1
//
//  Created by Franchesco Livado on 2020-02-14.
//  Copyright © 2020 wlu. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var fruitNameLabel: UITextField!
    @IBOutlet weak var fruitImageUI: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = SharingFruitCollection()
        SharingFruitCollection.sharedFruitCollection.fruitCollection = FruitCollection()
        //initialize only once
        SharingFruitCollection.sharedFruitCollection.loadFruitCollection()
        
        sharedFruitCollection = SharingFruitCollection.sharedFruitCollection.fruitCollection
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addFruitObj(_ sender: UITapGestureRecognizer) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        guard let selectedPhoto = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            fatalError("Expected dictionary conaining image, but was provided with the following: \(info)")
        }
        fruitImageUI.image = selectedPhoto
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        sharedFruitCollection!.addFruit(fruitObj: Fruit(fruitName:fruitNameLabel.text!, fruitImage: fruitImageUI.image!, likes: 0, disLikes: 0)!)
        
        print("hi")
    }
    
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
