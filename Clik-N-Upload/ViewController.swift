//
//  ViewController.swift
//  Clik-N-Upload
//
//  Created by Abdullah Shaikh on 06/05/2017.
//  Copyright © 2017 Abdullah Shaikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate

{
    

    @IBOutlet weak var myImg: UIImageView!
    

    @IBAction func Click(_ sender: AnyObject)
    {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
            
        }
        
        let imageData = UIImagePNGRepresentation(myImg.image!)
        let compresedImage = UIImage(data: imageData!)
        UIImageWriteToSavedPhotosAlbum(compresedImage!, nil, nil, nil)
        
        let alert = UIAlertController(title: "Saved", message: "Your image has been saved", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    
    /*
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            myImg.contentMode = .scaleToFill
            myImg.image = pickedImage
        }
        picker.dismiss(animated: true, completion: nil)
    }
*/
    
    /*
    @IBAction func savePhoto(_ sender: AnyObject) {
        let imageData = UIImagePNGRepresentation(myImg.image!)
        let compresedImage = UIImage(data: imageData!)
        UIImageWriteToSavedPhotosAlbum(compresedImage!, nil, nil, nil)
        
        let alert = UIAlertController(title: "Saved", message: "Your image has been saved", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    */
    
    @IBAction func pickPhoto(_ sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    /*
    @IBAction func Click(_ sender: AnyObject)
    {
        let image = UIImagePickerController()
        image.delegate=self
        //image.sourceType=UIImagePickerControllerSourceType.photoLibrary
        image.sourceType=UIImagePickerControllerSourceType.camera
        image.allowsEditing=false
        self.present(image, animated: true)
        {
            
        }
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            myImageView.image = image
        }
        else
        {
            //Error
        }
        
        self.dismiss(animated: true, completion: nil)
    }
   
    
    */

  


override func viewDidLoad()
{
    super.viewDidLoad()
    
    }
    
    
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    }



}

