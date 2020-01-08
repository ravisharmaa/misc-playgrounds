//
//  ViewController.swift
//  FoodTracker
//
//  Created by Ravi Bastola on 12/6/18.
//  Copyright © 2018 Ravi Bastola. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate,
    
                     UIImagePickerControllerDelegate, UINavigationControllerDelegate  {

    //MARK: Properties
    
    @IBOutlet weak var textFieldName: UITextField!
    
    @IBOutlet weak var foodLabelName: UILabel!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var ratingControl: RatingController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       textFieldName.delegate = self
    }
    
   
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
       
        foodLabelName.text = textField.text
        textField.text = ""

    }
    
    // MARK: UIImagePickerControllerDelegate
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else  {
            
            fatalError("Expected Image but got \(info)")
        }
        
        photoImageView.image = selectedImage
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    //MARK: Actions
    
    @IBAction func selectImageFromLibrary(_ sender: UITapGestureRecognizer) {
        
        // Hide the key board if the user touches the image view
        textFieldName.resignFirstResponder()
        
        // Set the image picker controller
        let imagePickerController = UIImagePickerController()
        
        // Only allow the photos to be picked not taken
        imagePickerController.sourceType = .photoLibrary
        
        imagePickerController.delegate = self
        
        present(imagePickerController, animated: true, completion: nil)
        
        
    }
    
    

}

